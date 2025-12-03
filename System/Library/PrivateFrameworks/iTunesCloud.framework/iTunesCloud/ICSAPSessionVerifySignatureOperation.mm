@interface ICSAPSessionVerifySignatureOperation
- (void)executeWithSAPContext:(id)context;
- (void)finishWithSAPContextPreparationError:(id)error;
@end

@implementation ICSAPSessionVerifySignatureOperation

- (void)finishWithSAPContextPreparationError:(id)error
{
  errorCopy = error;
  responseHandler = self->_responseHandler;
  v6 = errorCopy;
  if (responseHandler)
  {
    responseHandler[2](responseHandler, 0, errorCopy);
    errorCopy = v6;
  }

  [(ICSAPSessionAbstractOperation *)self finishWithError:errorCopy];
}

- (void)executeWithSAPContext:(id)context
{
  signatureData = self->_signatureData;
  data = self->_data;
  v11 = 0;
  v7 = [context processResponseWithSignatureData:signatureData data:data error:&v11];
  v8 = v11;
  v9 = v8;
  if ((v7 & 1) == 0 && !v8)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
  }

  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    responseHandler[2](responseHandler, (v9 == 0) & v7, v9);
  }

  [(ICSAPSessionAbstractOperation *)self finishWithError:v9];
}

@end