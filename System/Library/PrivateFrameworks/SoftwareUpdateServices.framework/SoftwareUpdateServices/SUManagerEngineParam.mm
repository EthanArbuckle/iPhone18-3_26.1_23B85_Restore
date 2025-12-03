@interface SUManagerEngineParam
- (SUManagerEngineParam)init;
- (SUManagerEngineParam)initWithDescriptor:(id)descriptor andError:(id)error;
- (SUManagerEngineParam)initWithDownloadDescriptor:(id)descriptor;
- (SUManagerEngineParam)initWithError:(id)error;
- (SUManagerEngineParam)initWithInstallOptions:(id)options;
- (SUManagerEngineParam)initWithProgress:(id)progress;
- (SUManagerEngineParam)initWithPurgeOptions:(BOOL)options withError:(id)error;
- (SUManagerEngineParam)initWithRollback:(id)rollback;
- (SUManagerEngineParam)initWithRollback:(id)rollback withError:(id)error;
- (SUManagerEngineParam)initWithRollbackOptions:(id)options;
- (SUManagerEngineParam)initWithScanPolicy:(id)policy scanUUID:(id)d isManaged:(BOOL)managed;
- (SUManagerEngineParam)initWithSkipPreSUStagingPurge:(BOOL)purge;
- (id)_descriptionDownloadDescriptor;
- (id)_descriptionError;
- (id)_descriptionErrorWithDescriptor;
- (id)_descriptionInstallOptions;
- (id)_descriptionProgress;
- (id)_descriptionPurge;
- (id)_descriptionRollback;
- (id)_descriptionRollbackOptions;
- (id)_descriptionScanPolicy;
- (id)description;
@end

@implementation SUManagerEngineParam

- (SUManagerEngineParam)init
{
  v13.receiver = self;
  v13.super_class = SUManagerEngineParam;
  v2 = [(SUManagerEngineParam *)&v13 init];
  v3 = v2;
  if (v2)
  {
    scanPolicy = v2->_scanPolicy;
    v2->_paramType = 0;
    v2->_scanPolicy = 0;

    scanUUID = v3->_scanUUID;
    v3->_scanUUID = 0;

    v3->_isManaged = 0;
    downloadDescriptor = v3->_downloadDescriptor;
    v3->_downloadDescriptor = 0;

    installOptions = v3->_installOptions;
    v3->_installOptions = 0;

    rollbackOptions = v3->_rollbackOptions;
    v3->_rollbackOptions = 0;

    rollback = v3->_rollback;
    v3->_rollback = 0;

    progress = v3->_progress;
    v3->_progress = 0;

    error = v3->_error;
    v3->_error = 0;

    *&v3->_skipDocAssetsPurge = 0;
  }

  return v3;
}

- (SUManagerEngineParam)initWithScanPolicy:(id)policy scanUUID:(id)d isManaged:(BOOL)managed
{
  policyCopy = policy;
  dCopy = d;
  v11 = [(SUManagerEngineParam *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_paramType = 1;
    objc_storeStrong(&v11->_scanPolicy, policy);
    objc_storeStrong(&v12->_scanUUID, d);
    v12->_isManaged = managed;
  }

  return v12;
}

- (SUManagerEngineParam)initWithDownloadDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 2;
    objc_storeStrong(&v6->_downloadDescriptor, descriptor);
  }

  return v7;
}

- (SUManagerEngineParam)initWithInstallOptions:(id)options
{
  optionsCopy = options;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 3;
    objc_storeStrong(&v6->_installOptions, options);
  }

  return v7;
}

- (SUManagerEngineParam)initWithRollbackOptions:(id)options
{
  optionsCopy = options;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 8;
    objc_storeStrong(&v6->_rollbackOptions, options);
  }

  return v7;
}

- (SUManagerEngineParam)initWithRollback:(id)rollback
{
  rollbackCopy = rollback;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 7;
    objc_storeStrong(&v6->_rollback, rollback);
  }

  return v7;
}

- (SUManagerEngineParam)initWithRollback:(id)rollback withError:(id)error
{
  rollbackCopy = rollback;
  errorCopy = error;
  v9 = [(SUManagerEngineParam *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_paramType = 7;
    objc_storeStrong(&v9->_rollback, rollback);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (SUManagerEngineParam)initWithProgress:(id)progress
{
  progressCopy = progress;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 4;
    objc_storeStrong(&v6->_progress, progress);
  }

  return v7;
}

- (SUManagerEngineParam)initWithPurgeOptions:(BOOL)options withError:(id)error
{
  errorCopy = error;
  v8 = [(SUManagerEngineParam *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_paramType = 9;
    v8->_skipDocAssetsPurge = options;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

- (SUManagerEngineParam)initWithSkipPreSUStagingPurge:(BOOL)purge
{
  result = [(SUManagerEngineParam *)self init];
  if (result)
  {
    result->_paramType = 9;
    result->_skipPreSUStagingAssetsPurge = purge;
  }

  return result;
}

- (SUManagerEngineParam)initWithError:(id)error
{
  errorCopy = error;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 5;
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (SUManagerEngineParam)initWithDescriptor:(id)descriptor andError:(id)error
{
  descriptorCopy = descriptor;
  errorCopy = error;
  v9 = [(SUManagerEngineParam *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_paramType = 6;
    objc_storeStrong(&v9->_downloadDescriptor, descriptor);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (id)description
{
  paramType = [(SUManagerEngineParam *)self paramType];
  if (paramType > 4)
  {
    if (paramType <= 6)
    {
      if (paramType == 5)
      {
        [(SUManagerEngineParam *)self _descriptionError];
      }

      else
      {
        [(SUManagerEngineParam *)self _descriptionErrorWithDescriptor];
      }

      goto LABEL_6;
    }

    switch(paramType)
    {
      case 7:
        _descriptionRollback = [(SUManagerEngineParam *)self _descriptionRollback];
        goto LABEL_24;
      case 8:
        _descriptionRollback = [(SUManagerEngineParam *)self _descriptionRollbackOptions];
        goto LABEL_24;
      case 9:
        _descriptionRollback = [(SUManagerEngineParam *)self _descriptionPurge];
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (paramType <= 1)
  {
    if (!paramType)
    {
      _descriptionRollback = [(SUManagerEngineParam *)self _descriptionBlank];
      goto LABEL_24;
    }

    if (paramType == 1)
    {
      _descriptionRollback = [(SUManagerEngineParam *)self _descriptionScanPolicy];
      goto LABEL_24;
    }

LABEL_23:
    _descriptionRollback = [(SUManagerEngineParam *)self _descriptionUnknown];
    goto LABEL_24;
  }

  if (paramType != 2)
  {
    if (paramType == 3)
    {
      [(SUManagerEngineParam *)self _descriptionInstallOptions];
    }

    else
    {
      [(SUManagerEngineParam *)self _descriptionProgress];
    }

    _descriptionRollback = LABEL_6:;
    goto LABEL_24;
  }

  _descriptionRollback = [(SUManagerEngineParam *)self _descriptionDownloadDescriptor];
LABEL_24:

  return _descriptionRollback;
}

- (id)_descriptionScanPolicy
{
  v3 = MEMORY[0x277CCACA8];
  scanPolicy = [(SUManagerEngineParam *)self scanPolicy];
  summary = [scanPolicy summary];
  scanUUID = [(SUManagerEngineParam *)self scanUUID];
  isManaged = [(SUManagerEngineParam *)self isManaged];
  v8 = @"NO";
  if (isManaged)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"\n[>>>\n     paramType: ScanPolicy\n    scanPolicy: %@\n      scanUUID: %@\n     isManaged: %@\n<<<]", summary, scanUUID, v8];

  return v9;
}

- (id)_descriptionDownloadDescriptor
{
  v2 = MEMORY[0x277CCACA8];
  downloadDescriptor = [(SUManagerEngineParam *)self downloadDescriptor];
  v4 = [v2 stringWithFormat:@"\n[>>>\n             paramType: DownloadDescriptor\n    downloadDescriptor: %@\n<<<]", downloadDescriptor];

  return v4;
}

- (id)_descriptionInstallOptions
{
  v2 = MEMORY[0x277CCACA8];
  installOptions = [(SUManagerEngineParam *)self installOptions];
  v4 = [v2 stringWithFormat:@"\n[>>>\n         paramType: InstallOptions\n    installOptions: %@\n<<<]", installOptions];

  return v4;
}

- (id)_descriptionRollbackOptions
{
  v2 = MEMORY[0x277CCACA8];
  rollbackOptions = [(SUManagerEngineParam *)self rollbackOptions];
  v4 = [v2 stringWithFormat:@"\n[>>>\n         paramType: RollbackOptions:\n            %@\n<<<]", rollbackOptions];

  return v4;
}

- (id)_descriptionPurge
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SUManagerEngineParam *)self skipDocAssetsPurge])
  {
    v4 = @"skip purging doc assets";
  }

  else
  {
    v4 = @"purge doc assets";
  }

  if ([(SUManagerEngineParam *)self skipPreSUStagingAssetsPurge])
  {
    v5 = @"skip purging psus assets";
  }

  else
  {
    v5 = @"purge psus assets";
  }

  error = [(SUManagerEngineParam *)self error];
  v7 = [error description];
  v8 = [v3 stringWithFormat:@"\n[>>>\n         paramType: PurgeOptions:\n            %@\n            %@\n            error: %@\n<<<]", v4, v5, v7];

  return v8;
}

- (id)_descriptionRollback
{
  v2 = MEMORY[0x277CCACA8];
  rollback = [(SUManagerEngineParam *)self rollback];
  v4 = [v2 stringWithFormat:@"\n[>>>\n         paramType: Rollback:\n            %@\n<<<]", rollback];

  return v4;
}

- (id)_descriptionProgress
{
  v2 = MEMORY[0x277CCACA8];
  progress = [(SUManagerEngineParam *)self progress];
  summary = [progress summary];
  v5 = [v2 stringWithFormat:@"\n[>>>\n    paramType: Progress\n     progress: %@\n<<<]", summary];

  return v5;
}

- (id)_descriptionError
{
  v2 = MEMORY[0x277CCACA8];
  error = [(SUManagerEngineParam *)self error];
  v4 = [error description];
  v5 = [v2 stringWithFormat:@"\n[>>>\n    paramType: Error\n        error: %@\n<<<]", v4];

  return v5;
}

- (id)_descriptionErrorWithDescriptor
{
  v3 = MEMORY[0x277CCACA8];
  error = [(SUManagerEngineParam *)self error];
  v5 = [error description];
  downloadDescriptor = [(SUManagerEngineParam *)self downloadDescriptor];
  v7 = [downloadDescriptor description];
  v8 = [v3 stringWithFormat:@"\n[>>>\n            paramType: ErrorWithDescriptor\n                error: %@\n   downloadDescriptor: %@\n<<<]", v5, v7];

  return v8;
}

@end