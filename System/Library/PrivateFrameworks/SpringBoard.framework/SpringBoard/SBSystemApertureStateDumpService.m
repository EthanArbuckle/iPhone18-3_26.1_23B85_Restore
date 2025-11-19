@interface SBSystemApertureStateDumpService
- (SBSystemApertureStateDumpService)init;
- (id)_convertSystemApertureStateDumpToJSONString:(id)a3 error:(id *)a4;
- (id)_systemApertureStateDumpFilePath;
- (void)systemServiceServer:(id)a3 client:(id)a4 requestSystemApertureStateDumpWithCompletion:(id)a5;
- (void)systemServiceServer:(id)a3 client:(id)a4 requestToWriteSystemApertureStateDumpToFile:(id)a5;
@end

@implementation SBSystemApertureStateDumpService

- (SBSystemApertureStateDumpService)init
{
  v7.receiver = self;
  v7.super_class = SBSystemApertureStateDumpService;
  v2 = [(SBSystemApertureStateDumpService *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.systemApertureStateDump"];
    clientAuthenticator = v2->_clientAuthenticator;
    v2->_clientAuthenticator = v3;

    v5 = +[SBSystemServiceServer sharedInstance];
    [v5 setSystemApertureStateDumpDelegate:v2];
  }

  return v2;
}

- (void)systemServiceServer:(id)a3 client:(id)a4 requestToWriteSystemApertureStateDumpToFile:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [SBApp systemApertureControllerForMainDisplay];
  v8 = [v7 systemApertureModelStateDump];

  if ([v8 count])
  {
    v17 = 0;
    v9 = [(SBSystemApertureStateDumpService *)self _convertSystemApertureStateDumpToJSONString:v8 error:&v17];
    v10 = v17;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = [(SBSystemApertureStateDumpService *)self _systemApertureStateDumpFilePath];
    }

    v13 = v11;
    v16 = v10;
    [v9 writeToFile:v11 atomically:1 encoding:4 error:&v16];
    v12 = v16;

    if (v12)
    {
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 localizedDescription];
        *buf = 138543362;
        v19 = v15;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "SystemApertureStateDump failed to write to file with error: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SystemApertureStateDump is empty", buf, 2u);
    }
  }
}

- (void)systemServiceServer:(id)a3 client:(id)a4 requestSystemApertureStateDumpWithCompletion:(id)a5
{
  v6 = a5;
  v7 = [SBApp systemApertureControllerForMainDisplay];
  v8 = [v7 systemApertureModelStateDump];

  if ([v8 count])
  {
    v12 = 0;
    v9 = [(SBSystemApertureStateDumpService *)self _convertSystemApertureStateDumpToJSONString:v8 error:&v12];
    v10 = v12;
    v11 = [v10 localizedDescription];
    v6[2](v6, v9, v11);
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SystemApertureStateDump is empty", buf, 2u);
    }
  }
}

- (id)_convertSystemApertureStateDumpToJSONString:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:1 error:a4];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SystemAperture State Dump is empty.", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_systemApertureStateDumpFilePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 stringByAppendingPathComponent:@"Logs"];
  v5 = [v4 stringByAppendingPathComponent:@"SpringBoard"];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  v7 = [v5 stringByAppendingPathComponent:@"SystemApertureStateDump.json"];

  return v7;
}

@end