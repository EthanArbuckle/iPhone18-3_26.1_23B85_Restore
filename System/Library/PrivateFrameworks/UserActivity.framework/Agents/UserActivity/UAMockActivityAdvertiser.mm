@interface UAMockActivityAdvertiser
- (UAMockActivityAdvertiser)initWithController:(id)controller;
- (void)advertiseAdvertisementPayload:(id)payload options:(id)options;
- (void)fetchPeerForUUID:(id)d withCompletionHandler:(id)handler;
- (void)fetchSFPeerDevicesWithCompletionHandler:(id)handler;
@end

@implementation UAMockActivityAdvertiser

- (UAMockActivityAdvertiser)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = UAMockActivityAdvertiser;
  v6 = [(UAMockActivityAdvertiser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (void)advertiseAdvertisementPayload:(id)payload options:(id)options
{
  optionsCopy = options;
  payloadCopy = payload;
  controller = [(UAMockActivityAdvertiser *)self controller];
  [controller doAdvertiseAdvertisementPayload:payloadCopy options:optionsCopy];
}

- (void)fetchSFPeerDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  controller = [(UAMockActivityAdvertiser *)self controller];
  pairedPeer = [controller pairedPeer];

  if (pairedPeer)
  {
    controller2 = [(UAMockActivityAdvertiser *)self controller];
    pairedPeer2 = [controller2 pairedPeer];
    v8 = [NSSet setWithObject:pairedPeer2];
    handlerCopy[2](handlerCopy, v8, 0);

    handlerCopy = pairedPeer2;
  }

  else
  {
    controller2 = [NSError errorWithDomain:UAContinuityErrorDomain code:-1 userInfo:0];
    (handlerCopy[2])(handlerCopy, 0);
  }
}

- (void)fetchPeerForUUID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    controller = [(UAMockActivityAdvertiser *)self controller];
    pairedPeer = [controller pairedPeer];
    if (pairedPeer)
    {
      v9 = pairedPeer;
      controller2 = [(UAMockActivityAdvertiser *)self controller];
      pairedPeer2 = [controller2 pairedPeer];
      uniqueID = [pairedPeer2 uniqueID];
      v13 = [uniqueID isEqual:dCopy];

      if (v13)
      {
        controller3 = [(UAMockActivityAdvertiser *)self controller];
        pairedPeer3 = [controller3 pairedPeer];
        handlerCopy[2](handlerCopy, pairedPeer3, 0);

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  controller3 = [NSError errorWithDomain:UAContinuityErrorDomain code:-1 userInfo:0];
  (handlerCopy)[2](handlerCopy, 0, controller3);
LABEL_7:
}

@end