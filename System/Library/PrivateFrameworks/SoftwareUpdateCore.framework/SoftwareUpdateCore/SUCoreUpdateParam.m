@interface SUCoreUpdateParam
+ (id)targetPhaseName:(int64_t)a3;
+ (id)targetRollbackPhaseName:(int64_t)a3;
- (SUCoreUpdateParam)initWithCoder:(id)a3;
- (SUCoreUpdateParam)initWithError:(id)a3;
- (SUCoreUpdateParam)initWithRollback:(id)a3 withError:(id)a4;
- (id)copy;
- (id)description;
- (id)initTargetPhase:(int64_t)a3 policy:(id)a4 downloadProgress:(id)a5 prepareProgress:(id)a6 applyProgress:(id)a7 rollback:(id)a8 resultCode:(int64_t)a9 error:(id)a10;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreUpdateParam

- (SUCoreUpdateParam)initWithError:(id)a3
{
  v4 = a3;
  v5 = -[SUCoreUpdateParam initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:](self, "initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:", 0, 0, 0, 0, 0, 0, [v4 code], v4);

  return v5;
}

- (SUCoreUpdateParam)initWithRollback:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[SUCoreUpdateParam initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:](self, "initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:", 11, 0, 0, 0, 0, v7, [v6 code], v6);

  return v8;
}

- (id)initTargetPhase:(int64_t)a3 policy:(id)a4 downloadProgress:(id)a5 prepareProgress:(id)a6 applyProgress:(id)a7 rollback:(id)a8 resultCode:(int64_t)a9 error:(id)a10
{
  v16 = a4;
  v17 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v18 = a10;
  v26.receiver = self;
  v26.super_class = SUCoreUpdateParam;
  v19 = [(SUCoreUpdateParam *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_targetPhase = a3;
    objc_storeStrong(&v19->_policy, a4);
    objc_storeStrong(&v20->_downloadProgress, a5);
    objc_storeStrong(&v20->_prepareProgress, a6);
    objc_storeStrong(&v20->_applyProgress, a7);
    objc_storeStrong(&v20->_rollback, a8);
    v20->_resultCode = a9;
    objc_storeStrong(&v20->_error, a10);
  }

  return v20;
}

- (SUCoreUpdateParam)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SUCoreUpdateParam;
  v5 = [(SUCoreUpdateParam *)&v21 init];
  if (v5)
  {
    v5->_targetPhase = [v4 decodeInt64ForKey:@"TargetPhase"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Policy"];
    policy = v5->_policy;
    v5->_policy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DownloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrepareProgress"];
    prepareProgress = v5->_prepareProgress;
    v5->_prepareProgress = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ApplyProgress"];
    applyProgress = v5->_applyProgress;
    v5->_applyProgress = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Rollback"];
    rollback = v5->_rollback;
    v5->_rollback = v14;

    v5->_resultCode = [v4 decodeInt64ForKey:@"ResultCode"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ErrorString"];
    v17 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v17 buildError:v5->_resultCode underlying:0 description:v16];
    error = v5->_error;
    v5->_error = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCoreUpdateParam targetPhase](self forKey:{"targetPhase"), @"TargetPhase"}];
  v5 = [(SUCoreUpdateParam *)self policy];
  [v4 encodeObject:v5 forKey:@"Policy"];

  v6 = [(SUCoreUpdateParam *)self downloadProgress];
  [v4 encodeObject:v6 forKey:@"DownloadProgress"];

  v7 = [(SUCoreUpdateParam *)self prepareProgress];
  [v4 encodeObject:v7 forKey:@"PrepareProgress"];

  v8 = [(SUCoreUpdateParam *)self applyProgress];
  [v4 encodeObject:v8 forKey:@"ApplyProgress"];

  v9 = [(SUCoreUpdateParam *)self rollback];
  [v4 encodeObject:v9 forKey:@"Rollback"];

  [v4 encodeInt64:-[SUCoreUpdateParam resultCode](self forKey:{"resultCode"), @"ResultCode"}];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [(SUCoreUpdateParam *)self error];
  v12 = [v10 initWithFormat:@"%@", v11];

  [v4 encodeObject:v12 forKey:@"ErrorString"];
}

- (id)copy
{
  v3 = objc_alloc_init(SUCoreUpdateParam);
  [(SUCoreUpdateParam *)v3 setTargetPhase:[(SUCoreUpdateParam *)self targetPhase]];
  v4 = [(SUCoreUpdateParam *)self policy];
  [(SUCoreUpdateParam *)v3 setPolicy:v4];

  v5 = [(SUCoreUpdateParam *)self downloadProgress];
  [(SUCoreUpdateParam *)v3 setDownloadProgress:v5];

  v6 = [(SUCoreUpdateParam *)self prepareProgress];
  [(SUCoreUpdateParam *)v3 setPrepareProgress:v6];

  v7 = [(SUCoreUpdateParam *)self applyProgress];
  [(SUCoreUpdateParam *)v3 setApplyProgress:v7];

  v8 = [(SUCoreUpdateParam *)self rollback];
  [(SUCoreUpdateParam *)v3 setRollback:v8];

  [(SUCoreUpdateParam *)v3 setResultCode:[(SUCoreUpdateParam *)self resultCode]];
  v9 = [(SUCoreUpdateParam *)self error];
  [(SUCoreUpdateParam *)v3 setError:v9];

  return v3;
}

- (id)description
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [SUCoreUpdateParam targetPhaseName:[(SUCoreUpdateParam *)self targetPhase]];
  v18 = [(SUCoreUpdateParam *)self policy];
  v3 = [v18 summary];
  v17 = [(SUCoreUpdateParam *)self downloadProgress];
  v4 = [v17 summary];
  v5 = [(SUCoreUpdateParam *)self prepareProgress];
  v6 = [v5 summary];
  v7 = [(SUCoreUpdateParam *)self applyProgress];
  v8 = [v7 summary];
  v9 = [(SUCoreUpdateParam *)self rollback];
  v10 = [v9 summary];
  v11 = [(SUCoreUpdateParam *)self resultCode];
  v12 = [(SUCoreUpdateParam *)self error];
  v16 = [v15 initWithFormat:@"\n[>>>\n        targetPhase: %@\n             policy: %@\n   downloadProgress: %@\n    prepareProgress: %@\n      applyProgress: %@\n           rollback: %@\n         resultCode: %ld\n              error: %@\n<<<]", v14, v3, v4, v6, v8, v10, v11, v12];

  return v16;
}

- (id)summary
{
  v3 = [(SUCoreUpdateParam *)self error];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [(SUCoreUpdateParam *)self resultCode];
    v6 = [(SUCoreUpdateParam *)self error];
    v7 = [v6 description];
    v8 = [v4 initWithFormat:@"resultCode:%ld, errorDesc:%@", v5, v7];

    goto LABEL_13;
  }

  if ([(SUCoreUpdateParam *)self targetPhase])
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [SUCoreUpdateParam targetPhaseName:[(SUCoreUpdateParam *)self targetPhase]];
    v8 = [v9 initWithFormat:@"target:%@", v10];
LABEL_12:

    goto LABEL_13;
  }

  v11 = [(SUCoreUpdateParam *)self downloadProgress];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [(SUCoreUpdateParam *)self downloadProgress];
    v13 = [v10 summary];
    v14 = [v12 initWithFormat:@"downloadProg:%@", v13];
LABEL_11:
    v8 = v14;

    goto LABEL_12;
  }

  v15 = [(SUCoreUpdateParam *)self prepareProgress];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [(SUCoreUpdateParam *)self prepareProgress];
    v13 = [v10 summary];
    v14 = [v16 initWithFormat:@"prepareProg:%@", v13];
    goto LABEL_11;
  }

  v17 = [(SUCoreUpdateParam *)self applyProgress];

  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v17)
  {
    v10 = [(SUCoreUpdateParam *)self applyProgress];
    v13 = [v10 summary];
    v14 = [v18 initWithFormat:@"applyProg:%@", v13];
    goto LABEL_11;
  }

  v8 = [v18 initWithFormat:@"resultCode:%ld", -[SUCoreUpdateParam resultCode](self, "resultCode")];
LABEL_13:

  return v8;
}

+ (id)targetPhaseName:(int64_t)a3
{
  if (a3 > 0xB)
  {
    v4 = @"UNKNOWN";
  }

  else
  {
    v4 = kSUCoreUpdateTargetPhaseName[a3];
  }

  return v4;
}

+ (id)targetRollbackPhaseName:(int64_t)a3
{
  if (a3 > 8)
  {
    v4 = @"UNKNOWN";
  }

  else
  {
    v4 = kSUCoreRollbackTargetPhaseName[a3];
  }

  return v4;
}

@end