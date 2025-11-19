@interface CSDVoIPApplicationMessageContext
- (CSDVoIPApplicationMessageContext)initWithMessage:(id)a3 assertion:(id)a4 applicationShouldPostIncomingCall:(BOOL)a5;
@end

@implementation CSDVoIPApplicationMessageContext

- (CSDVoIPApplicationMessageContext)initWithMessage:(id)a3 assertion:(id)a4 applicationShouldPostIncomingCall:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CSDVoIPApplicationMessageContext;
  v11 = [(CSDVoIPApplicationMessageContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, a3);
    objc_storeStrong(&v12->_assertion, a4);
    v12->_applicationShouldPostIncomingCall = a5;
  }

  return v12;
}

@end