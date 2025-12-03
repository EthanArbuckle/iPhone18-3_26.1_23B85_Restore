@interface ICADIProvisionSession
- (BOOL)endWithMessageData:(id)data transportKey:(id)key error:(id *)error;
- (BOOL)startWithServerActionData:(id)data returningClientData:(id *)clientData error:(id *)error;
- (ICADIProvisionSession)initWithAccountID:(unint64_t)d;
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

- (BOOL)endWithMessageData:(id)data transportKey:(id)key error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  if (!self->_sessionID)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICADIUtilities.m" lineNumber:132 description:@"ICADIProvisionSession end called for invalid session"];
  }

  [dataCopy bytes];
  [dataCopy length];
  [keyCopy bytes];
  [keyCopy length];
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
  if (error)
  {
    v14 = v13;
    *error = v13;
  }

  return v12 == 0;
}

- (BOOL)startWithServerActionData:(id)data returningClientData:(id *)clientData error:(id *)error
{
  dataCopy = data;
  v19 = 0;
  v18 = 0;
  if (self->_sessionID)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICADIUtilities.m" lineNumber:104 description:@"ICADIProvisionSession start can only be called once!"];
  }

  rsegvyrt87(self->_accountID, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v19, &v18, &self->_sessionID);
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v10 userInfo:0];
    v13 = 0;
    if (!clientData)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v19 length:v18];
  v12 = 0;
  if (clientData)
  {
LABEL_5:
    v14 = v13;
    *clientData = v13;
  }

LABEL_6:
  if (error)
  {
    v15 = v12;
    *error = v12;
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

- (ICADIProvisionSession)initWithAccountID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = ICADIProvisionSession;
  result = [(ICADIProvisionSession *)&v5 init];
  if (result)
  {
    result->_accountID = d;
  }

  return result;
}

@end