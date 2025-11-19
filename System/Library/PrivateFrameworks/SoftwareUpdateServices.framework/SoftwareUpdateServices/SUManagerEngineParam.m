@interface SUManagerEngineParam
- (SUManagerEngineParam)init;
- (SUManagerEngineParam)initWithDescriptor:(id)a3 andError:(id)a4;
- (SUManagerEngineParam)initWithDownloadDescriptor:(id)a3;
- (SUManagerEngineParam)initWithError:(id)a3;
- (SUManagerEngineParam)initWithInstallOptions:(id)a3;
- (SUManagerEngineParam)initWithProgress:(id)a3;
- (SUManagerEngineParam)initWithPurgeOptions:(BOOL)a3 withError:(id)a4;
- (SUManagerEngineParam)initWithRollback:(id)a3;
- (SUManagerEngineParam)initWithRollback:(id)a3 withError:(id)a4;
- (SUManagerEngineParam)initWithRollbackOptions:(id)a3;
- (SUManagerEngineParam)initWithScanPolicy:(id)a3 scanUUID:(id)a4 isManaged:(BOOL)a5;
- (SUManagerEngineParam)initWithSkipPreSUStagingPurge:(BOOL)a3;
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

- (SUManagerEngineParam)initWithScanPolicy:(id)a3 scanUUID:(id)a4 isManaged:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(SUManagerEngineParam *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_paramType = 1;
    objc_storeStrong(&v11->_scanPolicy, a3);
    objc_storeStrong(&v12->_scanUUID, a4);
    v12->_isManaged = a5;
  }

  return v12;
}

- (SUManagerEngineParam)initWithDownloadDescriptor:(id)a3
{
  v5 = a3;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 2;
    objc_storeStrong(&v6->_downloadDescriptor, a3);
  }

  return v7;
}

- (SUManagerEngineParam)initWithInstallOptions:(id)a3
{
  v5 = a3;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 3;
    objc_storeStrong(&v6->_installOptions, a3);
  }

  return v7;
}

- (SUManagerEngineParam)initWithRollbackOptions:(id)a3
{
  v5 = a3;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 8;
    objc_storeStrong(&v6->_rollbackOptions, a3);
  }

  return v7;
}

- (SUManagerEngineParam)initWithRollback:(id)a3
{
  v5 = a3;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 7;
    objc_storeStrong(&v6->_rollback, a3);
  }

  return v7;
}

- (SUManagerEngineParam)initWithRollback:(id)a3 withError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SUManagerEngineParam *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_paramType = 7;
    objc_storeStrong(&v9->_rollback, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (SUManagerEngineParam)initWithProgress:(id)a3
{
  v5 = a3;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 4;
    objc_storeStrong(&v6->_progress, a3);
  }

  return v7;
}

- (SUManagerEngineParam)initWithPurgeOptions:(BOOL)a3 withError:(id)a4
{
  v7 = a4;
  v8 = [(SUManagerEngineParam *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_paramType = 9;
    v8->_skipDocAssetsPurge = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

- (SUManagerEngineParam)initWithSkipPreSUStagingPurge:(BOOL)a3
{
  result = [(SUManagerEngineParam *)self init];
  if (result)
  {
    result->_paramType = 9;
    result->_skipPreSUStagingAssetsPurge = a3;
  }

  return result;
}

- (SUManagerEngineParam)initWithError:(id)a3
{
  v5 = a3;
  v6 = [(SUManagerEngineParam *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_paramType = 5;
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (SUManagerEngineParam)initWithDescriptor:(id)a3 andError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SUManagerEngineParam *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_paramType = 6;
    objc_storeStrong(&v9->_downloadDescriptor, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [(SUManagerEngineParam *)self paramType];
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        [(SUManagerEngineParam *)self _descriptionError];
      }

      else
      {
        [(SUManagerEngineParam *)self _descriptionErrorWithDescriptor];
      }

      goto LABEL_6;
    }

    switch(v3)
    {
      case 7:
        v4 = [(SUManagerEngineParam *)self _descriptionRollback];
        goto LABEL_24;
      case 8:
        v4 = [(SUManagerEngineParam *)self _descriptionRollbackOptions];
        goto LABEL_24;
      case 9:
        v4 = [(SUManagerEngineParam *)self _descriptionPurge];
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = [(SUManagerEngineParam *)self _descriptionBlank];
      goto LABEL_24;
    }

    if (v3 == 1)
    {
      v4 = [(SUManagerEngineParam *)self _descriptionScanPolicy];
      goto LABEL_24;
    }

LABEL_23:
    v4 = [(SUManagerEngineParam *)self _descriptionUnknown];
    goto LABEL_24;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      [(SUManagerEngineParam *)self _descriptionInstallOptions];
    }

    else
    {
      [(SUManagerEngineParam *)self _descriptionProgress];
    }

    v4 = LABEL_6:;
    goto LABEL_24;
  }

  v4 = [(SUManagerEngineParam *)self _descriptionDownloadDescriptor];
LABEL_24:

  return v4;
}

- (id)_descriptionScanPolicy
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUManagerEngineParam *)self scanPolicy];
  v5 = [v4 summary];
  v6 = [(SUManagerEngineParam *)self scanUUID];
  v7 = [(SUManagerEngineParam *)self isManaged];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"\n[>>>\n     paramType: ScanPolicy\n    scanPolicy: %@\n      scanUUID: %@\n     isManaged: %@\n<<<]", v5, v6, v8];

  return v9;
}

- (id)_descriptionDownloadDescriptor
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUManagerEngineParam *)self downloadDescriptor];
  v4 = [v2 stringWithFormat:@"\n[>>>\n             paramType: DownloadDescriptor\n    downloadDescriptor: %@\n<<<]", v3];

  return v4;
}

- (id)_descriptionInstallOptions
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUManagerEngineParam *)self installOptions];
  v4 = [v2 stringWithFormat:@"\n[>>>\n         paramType: InstallOptions\n    installOptions: %@\n<<<]", v3];

  return v4;
}

- (id)_descriptionRollbackOptions
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUManagerEngineParam *)self rollbackOptions];
  v4 = [v2 stringWithFormat:@"\n[>>>\n         paramType: RollbackOptions:\n            %@\n<<<]", v3];

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

  v6 = [(SUManagerEngineParam *)self error];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"\n[>>>\n         paramType: PurgeOptions:\n            %@\n            %@\n            error: %@\n<<<]", v4, v5, v7];

  return v8;
}

- (id)_descriptionRollback
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUManagerEngineParam *)self rollback];
  v4 = [v2 stringWithFormat:@"\n[>>>\n         paramType: Rollback:\n            %@\n<<<]", v3];

  return v4;
}

- (id)_descriptionProgress
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUManagerEngineParam *)self progress];
  v4 = [v3 summary];
  v5 = [v2 stringWithFormat:@"\n[>>>\n    paramType: Progress\n     progress: %@\n<<<]", v4];

  return v5;
}

- (id)_descriptionError
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUManagerEngineParam *)self error];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"\n[>>>\n    paramType: Error\n        error: %@\n<<<]", v4];

  return v5;
}

- (id)_descriptionErrorWithDescriptor
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUManagerEngineParam *)self error];
  v5 = [v4 description];
  v6 = [(SUManagerEngineParam *)self downloadDescriptor];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"\n[>>>\n            paramType: ErrorWithDescriptor\n                error: %@\n   downloadDescriptor: %@\n<<<]", v5, v7];

  return v8;
}

@end