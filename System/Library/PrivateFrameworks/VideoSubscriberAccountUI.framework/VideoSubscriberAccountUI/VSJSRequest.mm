@interface VSJSRequest
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VSJSRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VSJSRequest allocWithZone:zone];
  appContext = [(IKJSObject *)self appContext];
  v6 = [(IKJSObject *)v4 initWithAppContext:appContext];

  v7 = [(NSString *)self->_requestType copy];
  requestType = v6->_requestType;
  v6->_requestType = v7;

  v9 = [(NSString *)self->_requestBody copy];
  requestBody = v6->_requestBody;
  v6->_requestBody = v9;

  v11 = [(NSString *)self->_currentAuthentication copy];
  currentAuthentication = v6->_currentAuthentication;
  v6->_currentAuthentication = v11;

  v13 = [(NSString *)self->_appleVerificationToken copy];
  appleVerificationToken = v6->_appleVerificationToken;
  v6->_appleVerificationToken = v13;

  v15 = [(NSString *)self->_requestorVerificationToken copy];
  requestorVerificationToken = v6->_requestorVerificationToken;
  v6->_requestorVerificationToken = v15;

  return v6;
}

@end