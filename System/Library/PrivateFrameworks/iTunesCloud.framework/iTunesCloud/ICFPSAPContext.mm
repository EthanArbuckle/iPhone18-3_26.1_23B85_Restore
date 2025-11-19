@interface ICFPSAPContext
- (BOOL)exchangeWithSAPVersion:(unsigned int)a3 data:(id)a4 returningData:(id *)a5 exchangeStatus:(char *)a6 error:(id *)a7;
- (BOOL)processResponseWithSignatureData:(id)a3 data:(id)a4 error:(id *)a5;
- (BOOL)signData:(id)a3 returningSignatureData:(id *)a4 error:(id *)a5;
- (id)initReturningError:(id *)a3;
- (void)dealloc;
@end

@implementation ICFPSAPContext

- (BOOL)signData:(id)a3 returningSignatureData:(id *)a4 error:(id *)a5
{
  v20 = 0;
  v19 = 0;
  fairPlaySAPContext = self->_fairPlaySAPContext;
  v9 = a3;
  v10 = a3;
  v11 = [v10 bytes];
  v12 = [v10 length];

  Fc3vhtJDvr(fairPlaySAPContext, v11, v12, &v20, &v19);
  if (v13)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v13 userInfo:0];
    v15 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v20 length:v19];
  v14 = 0;
  if (a4)
  {
LABEL_3:
    v16 = v15;
    *a4 = v15;
  }

LABEL_4:
  if (a5)
  {
    v17 = v14;
    *a5 = v14;
  }

  return v14 == 0;
}

- (BOOL)processResponseWithSignatureData:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a3;
  [v10 bytes];
  [v10 length];

  [v9 mutableBytes];
  [v9 length];

  gLg1CWr7p();
  if (!v11)
  {
    v12 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v11 userInfo:0];
  if (a5)
  {
LABEL_3:
    v12 = v12;
    *a5 = v12;
  }

LABEL_4:
  v13 = v12 == 0;

  return v13;
}

- (BOOL)exchangeWithSAPVersion:(unsigned int)a3 data:(id)a4 returningData:(id *)a5 exchangeStatus:(char *)a6 error:(id *)a7
{
  v11 = *&a3;
  v26 = 0;
  v25 = 0;
  v24 = -1;
  fairPlaySAPContext = self->_fairPlaySAPContext;
  v14 = a4;
  v15 = a4;
  v16 = [v15 bytes];
  v17 = [v15 length];

  Mib5yocT(v11, &self->_hardwareInfo, fairPlaySAPContext, v16, v17, &v26, &v25, &v24);
  if (v18)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v18 userInfo:0];
    v20 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v20 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v26 length:v25];
  v19 = 0;
  if (a5)
  {
LABEL_3:
    v21 = v20;
    *a5 = v20;
  }

LABEL_4:
  if (a6)
  {
    *a6 = v24;
  }

  if (a7)
  {
    v22 = v19;
    *a7 = v19;
  }

  return v19 == 0;
}

- (void)dealloc
{
  fairPlaySAPContext = self->_fairPlaySAPContext;
  if (fairPlaySAPContext)
  {
    IPaI1oem5iL(fairPlaySAPContext);
  }

  v4.receiver = self;
  v4.super_class = ICFPSAPContext;
  [(ICFPSAPContext *)&v4 dealloc];
}

- (id)initReturningError:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  if (!ICFairPlayGetHardwareInfo(&v17))
  {
    v8 = MEMORY[0x1E696ABC0];
    v7 = @"ICError";
    v6 = -7500;
LABEL_5:
    v9 = [v8 errorWithDomain:v7 code:v6 userInfo:0];
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  cp2g1b9ro(&v16, &v17);
  if (v5)
  {
    v6 = v5;
    v7 = @"ICFairPlayError";
    v8 = MEMORY[0x1E696ABC0];
    goto LABEL_5;
  }

  v9 = 0;
  if (a3)
  {
LABEL_6:
    v10 = v9;
    *a3 = v9;
  }

LABEL_7:
  if (v16)
  {
    v15.receiver = self;
    v15.super_class = ICFPSAPContext;
    v11 = [(ICFPSAPContext *)&v15 init];
    if (v11)
    {
      v12 = v18;
      *&v11->_hardwareInfo.IDLength = v17;
      *&v11->_hardwareInfo.ID[12] = v12;
      v11->_fairPlaySAPContext = v16;
    }

    self = v11;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end