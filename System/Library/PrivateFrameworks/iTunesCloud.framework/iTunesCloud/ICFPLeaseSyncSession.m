@interface ICFPLeaseSyncSession
+ (id)leaseSyncSessionWithID:(id)a3 accountID:(unint64_t)a4 mediaKind:(unsigned int)a5 returningLeaseSyncRequestData:(id *)a6 error:(id *)a7;
- (BOOL)endLeaseSyncAndReturnError:(id *)a3;
- (BOOL)getLeaseSyncRenewRequestData:(id *)a3 error:(id *)a4;
- (BOOL)importLeaseSyncResponseData:(id)a3 error:(id *)a4;
- (BOOL)processRenewResponseData:(id)a3 error:(id *)a4;
- (id)_initWithFPLeaseSync:(FPLeaseSyncOpaque_ *)a3 leaseID:(id)a4 accountID:(unint64_t)a5 hardwareInfo:(FairPlayHWInfo_ *)a6 mediaKind:(unsigned int)a7;
- (void)dealloc;
@end

@implementation ICFPLeaseSyncSession

- (BOOL)processRenewResponseData:(id)a3 error:(id *)a4
{
  fpLeaseSync = self->_fpLeaseSync;
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  [v8 length];

  i1IfStf2DSO(fpLeaseSync, v9);
  v11 = v10;
  if (!v10)
  {
    v12 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v10 userInfo:0];
  if (a4)
  {
LABEL_3:
    v12 = v12;
    *a4 = v12;
  }

LABEL_4:

  return v11 == 0;
}

- (BOOL)importLeaseSyncResponseData:(id)a3 error:(id *)a4
{
  fpLeaseSync = self->_fpLeaseSync;
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  [v8 length];

  Xr9TNsiQ(fpLeaseSync, v9);
  v11 = v10;
  if (!v10)
  {
    v12 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v10 userInfo:0];
  if (a4)
  {
LABEL_3:
    v12 = v12;
    *a4 = v12;
  }

LABEL_4:

  return v11 == 0;
}

- (BOOL)getLeaseSyncRenewRequestData:(id *)a3 error:(id *)a4
{
  v14 = 0;
  v13 = 0;
  S12yWPyxCU(self->_fpLeaseSync, &v13, &v14);
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v6 userInfo:0];
    v9 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v13 length:v14];
  v8 = 0;
  if (a3)
  {
LABEL_3:
    v10 = v9;
    *a3 = v9;
  }

LABEL_4:
  if (a4)
  {
    v11 = v8;
    *a4 = v8;
  }

  return v7 == 0;
}

- (BOOL)endLeaseSyncAndReturnError:(id *)a3
{
  fpLeaseSync = self->_fpLeaseSync;
  if (fpLeaseSync)
  {
    AohBfJYWOS6(fpLeaseSync);
    self->_fpLeaseSync = 0;
  }

  if (a3)
  {
    *a3 = 0;
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

- (id)_initWithFPLeaseSync:(FPLeaseSyncOpaque_ *)a3 leaseID:(id)a4 accountID:(unint64_t)a5 hardwareInfo:(FairPlayHWInfo_ *)a6 mediaKind:(unsigned int)a7
{
  v13 = a4;
  v18.receiver = self;
  v18.super_class = ICFPLeaseSyncSession;
  v14 = [(ICFPLeaseSyncSession *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_fpLeaseSync = a3;
    objc_storeStrong(&v14->_leaseID, a4);
    v15->_accountID = a5;
    v16 = *&a6->IDLength;
    *&v15->_hardwareInfo.ID[12] = *&a6->ID[12];
    *&v15->_hardwareInfo.IDLength = v16;
    v15->_mediaKind = a7;
  }

  return v15;
}

+ (id)leaseSyncSessionWithID:(id)a3 accountID:(unint64_t)a4 mediaKind:(unsigned int)a5 returningLeaseSyncRequestData:(id *)a6 error:(id *)a7
{
  v9 = *&a5;
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
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
  WGrQCCz7(a4, &v30, v9, &v27, &v25, &v26);
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
    if (!a7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24 = [a1 alloc];
  v28 = v30;
  v29 = v31;
  v19 = [v24 _initWithFPLeaseSync:v27 leaseID:v12 accountID:a4 hardwareInfo:&v28 mediaKind:v9];
  v18 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v25 length:v26];
  v17 = 0;
  if (a7)
  {
LABEL_8:
    v20 = v17;
    *a7 = v17;
  }

LABEL_9:
  if (a6)
  {
    v21 = v18;
    *a6 = v18;
  }

  v22 = v19;

  return v19;
}

@end