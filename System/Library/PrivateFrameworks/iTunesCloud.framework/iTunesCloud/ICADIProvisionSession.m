@interface ICADIProvisionSession
- (BOOL)endWithMessageData:(id)a3 transportKey:(id)a4 error:(id *)a5;
- (BOOL)startWithServerActionData:(id)a3 returningClientData:(id *)a4 error:(id *)a5;
- (ICADIProvisionSession)initWithAccountID:(unint64_t)a3;
- (void)_destroySession;
- (void)dealloc;
@end

@implementation ICADIProvisionSession

- (void)_destroySession
{
  if (self->_sessionID)
  {
    fy34trz2st();
    self->_sessionID = 0;
  }
}

- (BOOL)endWithMessageData:(id)a3 transportKey:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!self->_sessionID)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"ICADIUtilities.m" lineNumber:132 description:@"ICADIProvisionSession end called for invalid session"];
  }

  [v9 bytes];
  [v9 length];
  [v10 bytes];
  [v10 length];
  uv5t6nhkui();
  v12 = v11;
  if (v11)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v11 userInfo:0];
  }

  else
  {
    v13 = 0;
  }

  [(ICADIProvisionSession *)self _destroySession];
  if (a5)
  {
    v14 = v13;
    *a5 = v13;
  }

  return v12 == 0;
}

- (BOOL)startWithServerActionData:(id)a3 returningClientData:(id *)a4 error:(id *)a5
{
  v9 = a3;
  v19 = 0;
  v18 = 0;
  if (self->_sessionID)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"ICADIUtilities.m" lineNumber:104 description:@"ICADIProvisionSession start can only be called once!"];
  }

  rsegvyrt87(self->_accountID, [v9 bytes], objc_msgSend(v9, "length"), &v19, &v18, &self->_sessionID);
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v10 userInfo:0];
    v13 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v19 length:v18];
  v12 = 0;
  if (a4)
  {
LABEL_5:
    v14 = v13;
    *a4 = v13;
  }

LABEL_6:
  if (a5)
  {
    v15 = v12;
    *a5 = v12;
  }

  return v11 == 0;
}

- (void)dealloc
{
  [(ICADIProvisionSession *)self _destroySession];
  v3.receiver = self;
  v3.super_class = ICADIProvisionSession;
  [(ICADIProvisionSession *)&v3 dealloc];
}

- (ICADIProvisionSession)initWithAccountID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICADIProvisionSession;
  result = [(ICADIProvisionSession *)&v5 init];
  if (result)
  {
    result->_accountID = a3;
  }

  return result;
}

@end