@interface ICFPLeaseSyncSession
+ (id)leaseSyncSessionWithID:(id)d accountID:(unint64_t)iD mediaKind:(unsigned int)kind returningLeaseSyncRequestData:(id *)data error:(id *)error;
- (BOOL)endLeaseSyncAndReturnError:(id *)error;
- (BOOL)getLeaseSyncRenewRequestData:(id *)data error:(id *)error;
- (BOOL)importLeaseSyncResponseData:(id)data error:(id *)error;
- (BOOL)processRenewResponseData:(id)data error:(id *)error;
- (id)_initWithFPLeaseSync:(FPLeaseSyncOpaque_ *)sync leaseID:(id)d accountID:(unint64_t)iD hardwareInfo:(FairPlayHWInfo_ *)info mediaKind:(unsigned int)kind;
- (void)dealloc;
@end

@implementation ICFPLeaseSyncSession

- (BOOL)processRenewResponseData:(id)data error:(id *)error
{
  fpLeaseSync = self->_fpLeaseSync;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  [dataCopy2 length];

  i1IfStf2DSO(fpLeaseSync, bytes);
  v11 = v10;
  if (!v10)
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v10 userInfo:0];
  if (error)
  {
LABEL_3:
    v12 = v12;
    *error = v12;
  }

LABEL_4:

  return v11 == 0;
}

- (BOOL)importLeaseSyncResponseData:(id)data error:(id *)error
{
  fpLeaseSync = self->_fpLeaseSync;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  [dataCopy2 length];

  Xr9TNsiQ(fpLeaseSync, bytes);
  v11 = v10;
  if (!v10)
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v10 userInfo:0];
  if (error)
  {
LABEL_3:
    v12 = v12;
    *error = v12;
  }

LABEL_4:

  return v11 == 0;
}

- (BOOL)getLeaseSyncRenewRequestData:(id *)data error:(id *)error
{
  v14 = 0;
  v13 = 0;
  S12yWPyxCU(self->_fpLeaseSync, &v13, &v14);
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v6 userInfo:0];
    v9 = 0;
    if (!data)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v13 length:v14];
  v8 = 0;
  if (data)
  {
LABEL_3:
    v10 = v9;
    *data = v9;
  }

LABEL_4:
  if (error)
  {
    v11 = v8;
    *error = v8;
  }

  return v7 == 0;
}

- (BOOL)endLeaseSyncAndReturnError:(id *)error
{
  fpLeaseSync = self->_fpLeaseSync;
  if (fpLeaseSync)
  {
    AohBfJYWOS6(fpLeaseSync);
    self->_fpLeaseSync = 0;
  }

  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)dealloc
{
  fpLeaseSync = self->_fpLeaseSync;
  if (fpLeaseSync)
  {
    AohBfJYWOS6(fpLeaseSync);
    self->_fpLeaseSync = 0;
  }

  v4.receiver = self;
  v4.super_class = ICFPLeaseSyncSession;
  [(ICFPLeaseSyncSession *)&v4 dealloc];
}

- (id)_initWithFPLeaseSync:(FPLeaseSyncOpaque_ *)sync leaseID:(id)d accountID:(unint64_t)iD hardwareInfo:(FairPlayHWInfo_ *)info mediaKind:(unsigned int)kind
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = ICFPLeaseSyncSession;
  v14 = [(ICFPLeaseSyncSession *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_fpLeaseSync = sync;
    objc_storeStrong(&v14->_leaseID, d);
    v15->_accountID = iD;
    v16 = *&info->IDLength;
    *&v15->_hardwareInfo.ID[12] = *&info->ID[12];
    *&v15->_hardwareInfo.IDLength = v16;
    v15->_mediaKind = kind;
  }

  return v15;
}

+ (id)leaseSyncSessionWithID:(id)d accountID:(unint64_t)iD mediaKind:(unsigned int)kind returningLeaseSyncRequestData:(id *)data error:(id *)error
{
  v9 = *&kind;
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (leaseSyncSessionWithID_accountID_mediaKind_returningLeaseSyncRequestData_error__sOnceToken != -1)
  {
    dispatch_once(&leaseSyncSessionWithID_accountID_mediaKind_returningLeaseSyncRequestData_error__sOnceToken, &__block_literal_global_7288);
  }

  v30 = 0uLL;
  v31 = 0;
  if (!ICFairPlayGetHardwareInfo(&v30))
  {
    v16 = MEMORY[0x1E696ABC0];
    v15 = @"ICError";
    v14 = -7500;
    goto LABEL_7;
  }

  v27 = 0;
  v26 = 0;
  v25 = 0;
  WGrQCCz7(iD, &v30, v9, &v27, &v25, &v26);
  if (v13)
  {
    v14 = v13;
    v15 = @"ICFairPlayError";
    v16 = MEMORY[0x1E696ABC0];
    goto LABEL_7;
  }

  if (!v27)
  {
    v16 = MEMORY[0x1E696ABC0];
    v15 = @"ICError";
    v14 = 0;
LABEL_7:
    v17 = [v16 errorWithDomain:v15 code:v14 userInfo:0];
    v18 = 0;
    v19 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24 = [self alloc];
  v28 = v30;
  v29 = v31;
  v19 = [v24 _initWithFPLeaseSync:v27 leaseID:dCopy accountID:iD hardwareInfo:&v28 mediaKind:v9];
  v18 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v25 length:v26];
  v17 = 0;
  if (error)
  {
LABEL_8:
    v20 = v17;
    *error = v17;
  }

LABEL_9:
  if (data)
  {
    v21 = v18;
    *data = v18;
  }

  v22 = v19;

  return v19;
}

@end