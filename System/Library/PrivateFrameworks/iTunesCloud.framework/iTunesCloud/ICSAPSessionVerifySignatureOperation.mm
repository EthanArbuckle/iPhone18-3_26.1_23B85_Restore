@interface ICSAPSessionVerifySignatureOperation
- (void)executeWithSAPContext:(id)a3;
- (void)finishWithSAPContextPreparationError:(id)a3;
@end

@implementation ICSAPSessionVerifySignatureOperation

- (void)finishWithSAPContextPreparationError:(id)a3
{
  v4 = a3;
  responseHandler = self->_responseHandler;
  v6 = v4;
  if (responseHandler)
  {
    responseHandler[2](responseHandler, 0, v4);
    v4 = v6;
  }

  [(ICSAPSessionAbstractOperation *)self finishWithError:v4];
}

- (void)executeWithSAPContext:(id)a3
{
  signatureData = self->_signatureData;
  data = self->_data;
  v11 = 0;
  v7 = [a3 processResponseWithSignatureData:signatureData data:data error:&v11];
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