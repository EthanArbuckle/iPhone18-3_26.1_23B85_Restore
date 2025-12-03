@interface ICFPStreamContext
- (BOOL)getPlayerDelegateInfoDataUsingPlayerDelegateInfoResponseData:(id)data returningData:(id *)returningData error:(id *)error;
- (BOOL)getStreamerInfoContextDataUsingPlayerInfoContextData:(id)data returningData:(id *)returningData error:(id *)error;
- (ICFPStreamContext)initWithVersion:(unsigned int)version contextID:(unsigned int)d contentInfo:(id)info returningError:(id *)error;
- (void)dealloc;
@end

@implementation ICFPStreamContext

- (BOOL)getStreamerInfoContextDataUsingPlayerInfoContextData:(id)data returningData:(id *)returningData error:(id *)error
{
  dataCopy = data;
  v9 = dataCopy;
  fpStreamRef = self->_fpStreamRef;
  if (!fpStreamRef)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v17 = 0;
  OflR7BMjGok3A7mYQFt9(fpStreamRef, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, 0, &v17);
  LOBYTE(fpStreamRef) = v11 == 0;
  if (!v11)
  {
    v13 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v17 length:0];
LABEL_7:
    v12 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v11 userInfo:0];
  v13 = 0;
  if (error)
  {
LABEL_8:
    v14 = v12;
    *error = v12;
  }

LABEL_9:
  if (returningData)
  {
    v15 = v13;
    *returningData = v13;
  }

  return fpStreamRef;
}

- (BOOL)getPlayerDelegateInfoDataUsingPlayerDelegateInfoResponseData:(id)data returningData:(id *)returningData error:(id *)error
{
  dataCopy = data;
  v9 = dataCopy;
  fpStreamRef = self->_fpStreamRef;
  if (!fpStreamRef)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v18 = 0;
  v17 = 0;
  TBGzuU3p5n1n(fpStreamRef, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v18, &v17);
  LOBYTE(fpStreamRef) = v11 == 0;
  if (!v11)
  {
    v13 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v18 length:v17];
LABEL_7:
    v12 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v11 userInfo:0];
  v13 = 0;
  if (error)
  {
LABEL_8:
    v14 = v12;
    *error = v12;
  }

LABEL_9:
  if (returningData)
  {
    v15 = v13;
    *returningData = v13;
  }

  return fpStreamRef;
}

- (void)dealloc
{
  if (self->_fpStreamRef)
  {
    TsbHVdUOnzCHizuzrAdwYFpb();
  }

  v3.receiver = self;
  v3.super_class = ICFPStreamContext;
  [(ICFPStreamContext *)&v3 dealloc];
}

- (ICFPStreamContext)initWithVersion:(unsigned int)version contextID:(unsigned int)d contentInfo:(id)info returningError:(id *)error
{
  v7 = *&d;
  v8 = *&version;
  infoCopy = info;
  v11 = infoCopy;
  memset(v22, 0, sizeof(v22));
  if (infoCopy)
  {
    [infoCopy fpContentInfo];
  }

  v21 = 0;
  v20 = 0;
  v19 = 0;
  J3NocDTIn(v8, v7, v22);
  if (v12)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v12 userInfo:0];
    }

    v13 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = ICFPStreamContext;
    v13 = [(ICFPStreamContext *)&v18 init];
    if (v13)
    {
      accountID = [v11 accountID];
      v15 = 0;
      v13->_accountID = accountID;
      if (v21 && v20)
      {
        v15 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:? length:?];
      }

      playerInfoContextRequestData = v13->_playerInfoContextRequestData;
      v13->_playerInfoContextRequestData = v15;

      v13->_fpStreamRef = v19;
    }

    if (error)
    {
      *error = 0;
    }
  }

  return v13;
}

@end