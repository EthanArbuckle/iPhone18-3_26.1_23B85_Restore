@interface ICSAPSessionSignDataOperation
- (void)executeWithSAPContext:(id)context;
- (void)finishWithSAPContextPreparationError:(id)error;
@end

@implementation ICSAPSessionSignDataOperation

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
  data = self->_data;
  v12 = 0;
  v13 = 0;
  v6 = [context signData:data returningSignatureData:&v13 error:&v12];
  v7 = v13;
  v8 = v12;
  v9 = v8;
  if ((v6 & 1) == 0 && !v8)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
  }

  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    (responseHandler)[2](responseHandler, v11, v9);
  }

  [(ICSAPSessionAbstractOperation *)self finishWithError:v9];
}

@end