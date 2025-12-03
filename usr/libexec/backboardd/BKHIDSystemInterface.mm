@interface BKHIDSystemInterface
+ (BKHIDSystemInterface)sharedInstance;
- (BKHIDSystemInterface)init;
- (BOOL)_routeSqueezeEventToSystem;
- (id)destinationsForEvent:(__IOHIDEvent *)event fromSender:(id)sender overrideSenderDescriptor:(id)descriptor;
- (id)dispatcherForEvent:(__IOHIDEvent *)event;
- (unint64_t)permittedRuleChangeMaskForAuditToken:(id)token;
- (void)handleIncomingDeliveryManagerConnection:(id)connection;
- (void)handleIncomingDeliveryObserverConnection:(id)connection;
- (void)hidSystem:(id)system receivedUpdatedDeviceOrientation:(int64_t)orientation;
- (void)postEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)startEventProcessing;
- (void)startServer;
@end

@implementation BKHIDSystemInterface

+ (BKHIDSystemInterface)sharedInstance
{
  if (qword_100126158 != -1)
  {
    dispatch_once(&qword_100126158, &stru_1000FD3D8);
  }

  v3 = qword_100126150;

  return v3;
}

- (void)hidSystem:(id)system receivedUpdatedDeviceOrientation:(int64_t)orientation
{
  v5 = sub_100005110();
  sub_100092450(v5, orientation);
}

- (void)postEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  v4 = [BKHIDSystemInterface destinationsForEvent:"destinationsForEvent:fromSender:" fromSender:?];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        BKSendHIDEventToClientWithDestination();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)destinationsForEvent:(__IOHIDEvent *)event fromSender:(id)sender overrideSenderDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    senderCopy = sender;
    descriptorCopy = [senderCopy senderDescriptorForEventType:IOHIDEventGetType()];
  }

  deliveryManager = [(BKHIDSystem *)self->_system deliveryManager];
  v11 = [deliveryManager destinationsForEvent:event sender:descriptorCopy];

  return v11;
}

- (id)dispatcherForEvent:(__IOHIDEvent *)event
{
  Type = IOHIDEventGetType();
  selfCopy = self;
  if (Type == 39)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue < 2 || IntegerValue == 5 && ![(BKHIDSystemInterface *)selfCopy _routeSqueezeEventToSystem])
    {
      v7 = +[BKTouchDeliveryGenericGestureFocusObserver sharedInstance];

      selfCopy = v7;
    }
  }

  return selfCopy;
}

- (BOOL)_routeSqueezeEventToSystem
{
  v2 = +[BKIOHIDServicePersistentPropertyController digitizerServicePersistentPropertyController];
  v11 = @"SqueezeIsSystemShortcut";
  isSqueezeForSystemShortcutEnabled = 1;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  v5 = [NSSet setWithArray:v4];
  v6 = +[BKSHIDEventSenderDescriptor stylusOpaqueTouchDigitizer];
  v7 = [v2 persistentPropertiesForKeys:v5 forSenderDescriptor:v6];

  v8 = [v7 valueForKey:@"SqueezeIsSystemShortcut"];
  if (([v8 BOOLValue] & 1) == 0)
  {
    v9 = +[BKSDefaults localDefaults];
    isSqueezeForSystemShortcutEnabled = [v9 isSqueezeForSystemShortcutEnabled];
  }

  return isSqueezeForSystemShortcutEnabled;
}

- (unint64_t)permittedRuleChangeMaskForAuditToken:(id)token
{
  tokenCopy = token;
  v4 = +[BKSystemShellSentinel sharedInstance];
  v7 = 0u;
  v8 = 0u;
  if (tokenCopy)
  {
    [tokenCopy realToken];
  }

  if ([v4 auditTokenRepresentsSystemApp:&v7])
  {
    v5 = 255;
  }

  else
  {
    v5 = 250;
  }

  return v5;
}

- (void)handleIncomingDeliveryObserverConnection:(id)connection
{
  system = self->_system;
  connectionCopy = connection;
  deliveryManager = [(BKHIDSystem *)system deliveryManager];
  observerService = [deliveryManager observerService];
  [connectionCopy acceptConnectionWithMappedObject:observerService];
}

- (void)handleIncomingDeliveryManagerConnection:(id)connection
{
  system = self->_system;
  connectionCopy = connection;
  deliveryManager = [(BKHIDSystem *)system deliveryManager];
  [connectionCopy acceptConnectionWithMappedObject:deliveryManager];
}

- (void)startServer
{
  v3 = sub_1000300C0("BKHIDSystem MiG server");
  HIDSystemChannel = self->_HIDSystemChannel;
  self->_HIDSystemChannel = v3;

  v5 = BKLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "starting HID server...", v6, 2u);
  }

  [(BKHIDSystem *)self->_system startServerWithChannel:self->_HIDSystemChannel];
}

- (void)startEventProcessing
{
  v12 = +[BKHIDEventProcessorRegistry sharedInstance];
  v3 = objc_alloc_init(BKHIDEventProcessorCreationContext);
  [v3 setSystemInterface:self];
  [v3 setEventDispatcher:self];
  [v3 setServiceMatcherDataProvider:self];
  [v3 setEventProcessorRegistry:v12];
  v4 = BKHIDCreatePrimaryEventProcessor();
  v5 = objc_alloc_init(BKMainDisplayObserver);
  v6 = [[BKHIDEventDeliveryObserverServer alloc] initWithIncomingServiceConnectionHandler:self];
  deliveryObserverServer = self->_deliveryObserverServer;
  self->_deliveryObserverServer = v6;

  v8 = [[BKHIDEventDeliveryObserverService alloc] initWithServer:self->_deliveryObserverServer];
  v9 = [[BKHIDEventDeliveryManager alloc] initWithObserverService:v8];
  v10 = [[BKHIDEventDeliveryManagerServer alloc] initWithIncomingServiceConnectionHandler:self ruleChangeAuthority:self];
  deliveryManagerServer = self->_deliveryManagerServer;
  self->_deliveryManagerServer = v10;

  [(BKHIDSystem *)self->_system startEventProcessor:v4 mainDisplayObserver:v5 deliveryManager:v9 dispatcherProvider:self];
  [(BKHIDEventDeliveryObserverServer *)self->_deliveryObserverServer activate];
  [(BKHIDEventDeliveryManagerServer *)self->_deliveryManagerServer activate];
}

- (BKHIDSystemInterface)init
{
  v6.receiver = self;
  v6.super_class = BKHIDSystemInterface;
  v2 = [(BKHIDSystemInterface *)&v6 init];
  if (v2)
  {
    v3 = +[BKHIDSystem sharedInstance];
    system = v2->_system;
    v2->_system = v3;

    [(BKHIDSystem *)v2->_system setDelegate:v2];
  }

  return v2;
}

@end