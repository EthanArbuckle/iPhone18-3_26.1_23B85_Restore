@interface CSDVoIPApplicationMessageContext
- (CSDVoIPApplicationMessageContext)initWithMessage:(id)message assertion:(id)assertion applicationShouldPostIncomingCall:(BOOL)call;
@end

@implementation CSDVoIPApplicationMessageContext

- (CSDVoIPApplicationMessageContext)initWithMessage:(id)message assertion:(id)assertion applicationShouldPostIncomingCall:(BOOL)call
{
  messageCopy = message;
  assertionCopy = assertion;
  v14.receiver = self;
  v14.super_class = CSDVoIPApplicationMessageContext;
  v11 = [(CSDVoIPApplicationMessageContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, message);
    objc_storeStrong(&v12->_assertion, assertion);
    v12->_applicationShouldPostIncomingCall = call;
  }

  return v12;
}

@end