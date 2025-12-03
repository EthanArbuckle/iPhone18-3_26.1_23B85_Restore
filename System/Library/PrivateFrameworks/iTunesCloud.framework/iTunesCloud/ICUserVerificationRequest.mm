@interface ICUserVerificationRequest
- (ICUserVerificationRequest)initWithVerificationContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation ICUserVerificationRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [ICUserVerificationOperation operationWithVerificationRequest:self];
  v5 = v4;
  if (v4)
  {
    [v4 setResponseHandler:handlerCopy];
    v6 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:self->_qualityOfService];
    [v6 addOperation:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v6);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithVerificationContext:", self->_verificationContext}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_qualityOfService;
    objc_storeStrong((v4 + 16), self->_storeRequestContext);
  }

  return v5;
}

- (ICUserVerificationRequest)initWithVerificationContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = ICUserVerificationRequest;
  v5 = [(ICUserVerificationRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_qualityOfService = 25;
    v7 = [contextCopy copy];
    verificationContext = v6->_verificationContext;
    v6->_verificationContext = v7;
  }

  return v6;
}

@end