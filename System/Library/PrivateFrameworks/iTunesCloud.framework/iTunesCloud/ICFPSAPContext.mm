@interface ICFPSAPContext
- (BOOL)exchangeWithSAPVersion:(unsigned int)version data:(id)data returningData:(id *)returningData exchangeStatus:(char *)status error:(id *)error;
- (BOOL)processResponseWithSignatureData:(id)data data:(id)a4 error:(id *)error;
- (BOOL)signData:(id)data returningSignatureData:(id *)signatureData error:(id *)error;
- (id)initReturningError:(id *)error;
- (void)dealloc;
@end

@implementation ICFPSAPContext

- (BOOL)signData:(id)data returningSignatureData:(id *)signatureData error:(id *)error
{
  v20 = 0;
  v19 = 0;
  fairPlaySAPContext = self->_fairPlaySAPContext;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v12 = [dataCopy2 length];

  Fc3vhtJDvr(fairPlaySAPContext, bytes, v12, &v20, &v19);
  if (v13)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v13 userInfo:0];
    v15 = 0;
    if (!signatureData)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v20 length:v19];
  v14 = 0;
  if (signatureData)
  {
LABEL_3:
    v16 = v15;
    *signatureData = v15;
  }

LABEL_4:
  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  return v14 == 0;
}

- (BOOL)processResponseWithSignatureData:(id)data data:(id)a4 error:(id *)error
{
  dataCopy = data;
  v9 = a4;
  dataCopy2 = data;
  [dataCopy2 bytes];
  [dataCopy2 length];

  [v9 mutableBytes];
  [v9 length];

  gLg1CWr7p();
  if (!v11)
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v11 userInfo:0];
  if (error)
  {
LABEL_3:
    v12 = v12;
    *error = v12;
  }

LABEL_4:
  v13 = v12 == 0;

  return v13;
}

- (BOOL)exchangeWithSAPVersion:(unsigned int)version data:(id)data returningData:(id *)returningData exchangeStatus:(char *)status error:(id *)error
{
  v11 = *&version;
  v26 = 0;
  v25 = 0;
  v24 = -1;
  fairPlaySAPContext = self->_fairPlaySAPContext;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v17 = [dataCopy2 length];

  Mib5yocT(v11, &self->_hardwareInfo, fairPlaySAPContext, bytes, v17, &v26, &v25, &v24);
  if (v18)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v18 userInfo:0];
    v20 = 0;
    if (!returningData)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v20 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v26 length:v25];
  v19 = 0;
  if (returningData)
  {
LABEL_3:
    v21 = v20;
    *returningData = v20;
  }

LABEL_4:
  if (status)
  {
    *status = v24;
  }

  if (error)
  {
    v22 = v19;
    *error = v19;
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

- (id)initReturningError:(id *)error
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
    if (!error)
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
  if (error)
  {
LABEL_6:
    v10 = v9;
    *error = v9;
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end