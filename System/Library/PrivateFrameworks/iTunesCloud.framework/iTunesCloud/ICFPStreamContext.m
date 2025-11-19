@interface ICFPStreamContext
- (BOOL)getPlayerDelegateInfoDataUsingPlayerDelegateInfoResponseData:(id)a3 returningData:(id *)a4 error:(id *)a5;
- (BOOL)getStreamerInfoContextDataUsingPlayerInfoContextData:(id)a3 returningData:(id *)a4 error:(id *)a5;
- (ICFPStreamContext)initWithVersion:(unsigned int)a3 contextID:(unsigned int)a4 contentInfo:(id)a5 returningError:(id *)a6;
- (void)dealloc;
@end

@implementation ICFPStreamContext

- (BOOL)getStreamerInfoContextDataUsingPlayerInfoContextData:(id)a3 returningData:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  fpStreamRef = self->_fpStreamRef;
  if (!fpStreamRef)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v17 = 0;
  OflR7BMjGok3A7mYQFt9(fpStreamRef, [v8 bytes], objc_msgSend(v8, "length"), 0, 0, &v17);
  LOBYTE(fpStreamRef) = v11 == 0;
  if (!v11)
  {
    v13 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v17 length:0];
LABEL_7:
    v12 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v11 userInfo:0];
  v13 = 0;
  if (a5)
  {
LABEL_8:
    v14 = v12;
    *a5 = v12;
  }

LABEL_9:
  if (a4)
  {
    v15 = v13;
    *a4 = v13;
  }

  return fpStreamRef;
}

- (BOOL)getPlayerDelegateInfoDataUsingPlayerDelegateInfoResponseData:(id)a3 returningData:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  fpStreamRef = self->_fpStreamRef;
  if (!fpStreamRef)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v18 = 0;
  v17 = 0;
  TBGzuU3p5n1n(fpStreamRef, [v8 bytes], objc_msgSend(v8, "length"), &v18, &v17);
  LOBYTE(fpStreamRef) = v11 == 0;
  if (!v11)
  {
    v13 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v18 length:v17];
LABEL_7:
    v12 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v11 userInfo:0];
  v13 = 0;
  if (a5)
  {
LABEL_8:
    v14 = v12;
    *a5 = v12;
  }

LABEL_9:
  if (a4)
  {
    v15 = v13;
    *a4 = v13;
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

- (ICFPStreamContext)initWithVersion:(unsigned int)a3 contextID:(unsigned int)a4 contentInfo:(id)a5 returningError:(id *)a6
{
  v7 = *&a4;
  v8 = *&a3;
  v10 = a5;
  v11 = v10;
  memset(v22, 0, sizeof(v22));
  if (v10)
  {
    [v10 fpContentInfo];
  }

  v21 = 0;
  v20 = 0;
  v19 = 0;
  J3NocDTIn(v8, v7, v22);
  if (v12)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v12 userInfo:0];
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
      v14 = [v11 accountID];
      v15 = 0;
      v13->_accountID = v14;
      if (v21 && v20)
      {
        v15 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:? length:?];
      }

      playerInfoContextRequestData = v13->_playerInfoContextRequestData;
      v13->_playerInfoContextRequestData = v15;

      v13->_fpStreamRef = v19;
    }

    if (a6)
    {
      *a6 = 0;
    }
  }

  return v13;
}

@end