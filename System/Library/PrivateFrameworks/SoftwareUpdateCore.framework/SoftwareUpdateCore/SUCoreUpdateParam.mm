@interface SUCoreUpdateParam
+ (id)targetPhaseName:(int64_t)name;
+ (id)targetRollbackPhaseName:(int64_t)name;
- (SUCoreUpdateParam)initWithCoder:(id)coder;
- (SUCoreUpdateParam)initWithError:(id)error;
- (SUCoreUpdateParam)initWithRollback:(id)rollback withError:(id)error;
- (id)copy;
- (id)description;
- (id)initTargetPhase:(int64_t)phase policy:(id)policy downloadProgress:(id)progress prepareProgress:(id)prepareProgress applyProgress:(id)applyProgress rollback:(id)rollback resultCode:(int64_t)code error:(id)self0;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreUpdateParam

- (SUCoreUpdateParam)initWithError:(id)error
{
  errorCopy = error;
  v5 = -[SUCoreUpdateParam initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:](self, "initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:", 0, 0, 0, 0, 0, 0, [errorCopy code], errorCopy);

  return v5;
}

- (SUCoreUpdateParam)initWithRollback:(id)rollback withError:(id)error
{
  errorCopy = error;
  rollbackCopy = rollback;
  v8 = -[SUCoreUpdateParam initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:](self, "initTargetPhase:policy:downloadProgress:prepareProgress:applyProgress:rollback:resultCode:error:", 11, 0, 0, 0, 0, rollbackCopy, [errorCopy code], errorCopy);

  return v8;
}

- (id)initTargetPhase:(int64_t)phase policy:(id)policy downloadProgress:(id)progress prepareProgress:(id)prepareProgress applyProgress:(id)applyProgress rollback:(id)rollback resultCode:(int64_t)code error:(id)self0
{
  policyCopy = policy;
  progressCopy = progress;
  prepareProgressCopy = prepareProgress;
  applyProgressCopy = applyProgress;
  rollbackCopy = rollback;
  errorCopy = error;
  v26.receiver = self;
  v26.super_class = SUCoreUpdateParam;
  v19 = [(SUCoreUpdateParam *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_targetPhase = phase;
    objc_storeStrong(&v19->_policy, policy);
    objc_storeStrong(&v20->_downloadProgress, progress);
    objc_storeStrong(&v20->_prepareProgress, prepareProgress);
    objc_storeStrong(&v20->_applyProgress, applyProgress);
    objc_storeStrong(&v20->_rollback, rollback);
    v20->_resultCode = code;
    objc_storeStrong(&v20->_error, error);
  }

  return v20;
}

- (SUCoreUpdateParam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SUCoreUpdateParam;
  v5 = [(SUCoreUpdateParam *)&v21 init];
  if (v5)
  {
    v5->_targetPhase = [coderCopy decodeInt64ForKey:@"TargetPhase"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Policy"];
    policy = v5->_policy;
    v5->_policy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DownloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrepareProgress"];
    prepareProgress = v5->_prepareProgress;
    v5->_prepareProgress = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ApplyProgress"];
    applyProgress = v5->_applyProgress;
    v5->_applyProgress = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Rollback"];
    rollback = v5->_rollback;
    v5->_rollback = v14;

    v5->_resultCode = [coderCopy decodeInt64ForKey:@"ResultCode"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ErrorString"];
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v18 = [mEMORY[0x277D643F8] buildError:v5->_resultCode underlying:0 description:v16];
    error = v5->_error;
    v5->_error = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCoreUpdateParam targetPhase](self forKey:{"targetPhase"), @"TargetPhase"}];
  policy = [(SUCoreUpdateParam *)self policy];
  [coderCopy encodeObject:policy forKey:@"Policy"];

  downloadProgress = [(SUCoreUpdateParam *)self downloadProgress];
  [coderCopy encodeObject:downloadProgress forKey:@"DownloadProgress"];

  prepareProgress = [(SUCoreUpdateParam *)self prepareProgress];
  [coderCopy encodeObject:prepareProgress forKey:@"PrepareProgress"];

  applyProgress = [(SUCoreUpdateParam *)self applyProgress];
  [coderCopy encodeObject:applyProgress forKey:@"ApplyProgress"];

  rollback = [(SUCoreUpdateParam *)self rollback];
  [coderCopy encodeObject:rollback forKey:@"Rollback"];

  [coderCopy encodeInt64:-[SUCoreUpdateParam resultCode](self forKey:{"resultCode"), @"ResultCode"}];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  error = [(SUCoreUpdateParam *)self error];
  v12 = [v10 initWithFormat:@"%@", error];

  [coderCopy encodeObject:v12 forKey:@"ErrorString"];
}

- (id)copy
{
  v3 = objc_alloc_init(SUCoreUpdateParam);
  [(SUCoreUpdateParam *)v3 setTargetPhase:[(SUCoreUpdateParam *)self targetPhase]];
  policy = [(SUCoreUpdateParam *)self policy];
  [(SUCoreUpdateParam *)v3 setPolicy:policy];

  downloadProgress = [(SUCoreUpdateParam *)self downloadProgress];
  [(SUCoreUpdateParam *)v3 setDownloadProgress:downloadProgress];

  prepareProgress = [(SUCoreUpdateParam *)self prepareProgress];
  [(SUCoreUpdateParam *)v3 setPrepareProgress:prepareProgress];

  applyProgress = [(SUCoreUpdateParam *)self applyProgress];
  [(SUCoreUpdateParam *)v3 setApplyProgress:applyProgress];

  rollback = [(SUCoreUpdateParam *)self rollback];
  [(SUCoreUpdateParam *)v3 setRollback:rollback];

  [(SUCoreUpdateParam *)v3 setResultCode:[(SUCoreUpdateParam *)self resultCode]];
  error = [(SUCoreUpdateParam *)self error];
  [(SUCoreUpdateParam *)v3 setError:error];

  return v3;
}

- (id)description
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [SUCoreUpdateParam targetPhaseName:[(SUCoreUpdateParam *)self targetPhase]];
  policy = [(SUCoreUpdateParam *)self policy];
  summary = [policy summary];
  downloadProgress = [(SUCoreUpdateParam *)self downloadProgress];
  summary2 = [downloadProgress summary];
  prepareProgress = [(SUCoreUpdateParam *)self prepareProgress];
  summary3 = [prepareProgress summary];
  applyProgress = [(SUCoreUpdateParam *)self applyProgress];
  summary4 = [applyProgress summary];
  rollback = [(SUCoreUpdateParam *)self rollback];
  summary5 = [rollback summary];
  resultCode = [(SUCoreUpdateParam *)self resultCode];
  error = [(SUCoreUpdateParam *)self error];
  v16 = [v15 initWithFormat:@"\n[>>>\n        targetPhase: %@\n             policy: %@\n   downloadProgress: %@\n    prepareProgress: %@\n      applyProgress: %@\n           rollback: %@\n         resultCode: %ld\n              error: %@\n<<<]", v14, summary, summary2, summary3, summary4, summary5, resultCode, error];

  return v16;
}

- (id)summary
{
  error = [(SUCoreUpdateParam *)self error];

  if (error)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    resultCode = [(SUCoreUpdateParam *)self resultCode];
    error2 = [(SUCoreUpdateParam *)self error];
    v7 = [error2 description];
    v8 = [v4 initWithFormat:@"resultCode:%ld, errorDesc:%@", resultCode, v7];

    goto LABEL_13;
  }

  if ([(SUCoreUpdateParam *)self targetPhase])
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    downloadProgress2 = [SUCoreUpdateParam targetPhaseName:[(SUCoreUpdateParam *)self targetPhase]];
    v8 = [v9 initWithFormat:@"target:%@", downloadProgress2];
LABEL_12:

    goto LABEL_13;
  }

  downloadProgress = [(SUCoreUpdateParam *)self downloadProgress];

  if (downloadProgress)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    downloadProgress2 = [(SUCoreUpdateParam *)self downloadProgress];
    summary = [downloadProgress2 summary];
    v14 = [v12 initWithFormat:@"downloadProg:%@", summary];
LABEL_11:
    v8 = v14;

    goto LABEL_12;
  }

  prepareProgress = [(SUCoreUpdateParam *)self prepareProgress];

  if (prepareProgress)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    downloadProgress2 = [(SUCoreUpdateParam *)self prepareProgress];
    summary = [downloadProgress2 summary];
    v14 = [v16 initWithFormat:@"prepareProg:%@", summary];
    goto LABEL_11;
  }

  applyProgress = [(SUCoreUpdateParam *)self applyProgress];

  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  if (applyProgress)
  {
    downloadProgress2 = [(SUCoreUpdateParam *)self applyProgress];
    summary = [downloadProgress2 summary];
    v14 = [v18 initWithFormat:@"applyProg:%@", summary];
    goto LABEL_11;
  }

  v8 = [v18 initWithFormat:@"resultCode:%ld", -[SUCoreUpdateParam resultCode](self, "resultCode")];
LABEL_13:

  return v8;
}

+ (id)targetPhaseName:(int64_t)name
{
  if (name > 0xB)
  {
    v4 = @"UNKNOWN";
  }

  else
  {
    v4 = kSUCoreUpdateTargetPhaseName[name];
  }

  return v4;
}

+ (id)targetRollbackPhaseName:(int64_t)name
{
  if (name > 8)
  {
    v4 = @"UNKNOWN";
  }

  else
  {
    v4 = kSUCoreRollbackTargetPhaseName[name];
  }

  return v4;
}

@end