@interface ICSAPSessionSignDataOperation
- (void)executeWithSAPContext:(id)a3;
- (void)finishWithSAPContextPreparationError:(id)a3;
@end

@implementation ICSAPSessionSignDataOperation

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
  data = self->_data;
  v12 = 0;
  v13 = 0;
  v6 = [a3 signData:data returningSignatureData:&v13 error:&v12];
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