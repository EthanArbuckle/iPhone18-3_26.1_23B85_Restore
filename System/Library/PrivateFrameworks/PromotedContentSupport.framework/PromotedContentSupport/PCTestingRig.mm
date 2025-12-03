@interface PCTestingRig
+ (void)invokeTestingRigHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler;
@end

@implementation PCTestingRig

+ (void)invokeTestingRigHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  messageCopy = message;
  v10 = objc_alloc_init(PCSupportRequester);
  [(PCSupportRequester *)v10 invokeTestingRigHandlerForMessage:messageCopy payload:payloadCopy completionHandler:handlerCopy];
}

@end