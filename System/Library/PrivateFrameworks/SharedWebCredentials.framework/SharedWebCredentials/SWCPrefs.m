@interface SWCPrefs
@end

@implementation SWCPrefs

void __24___SWCPrefs_sharedPrefs__block_invoke()
{
  v0 = [[_SWCPrefs alloc] _init];
  v1 = qword_280B21870;
  qword_280B21870 = v0;
}

void __40___SWCPrefs_containerURLReturningError___block_invoke()
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 1;
  v0 = container_create_or_lookup_path_for_current_user();
  if (v0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    v2 = qword_280B21880;
    qword_280B21880 = v1;

    v3 = [qword_280B21880 URLByAppendingPathComponent:@"com.apple.SharedWebCredentials" isDirectory:1];
    v4 = qword_280B21880;
    qword_280B21880 = v3;

    free(v0);
  }

  else
  {
    if (qword_280B218D0 != -1)
    {
      dispatch_once(&qword_280B218D0, &__block_literal_global_106);
    }

    v5 = qword_280B218C8;
    if (os_log_type_enabled(qword_280B218C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v21 = v17;
      _os_log_error_impl(&dword_265F54000, v5, OS_LOG_TYPE_ERROR, "Error %llu getting container path", buf, 0xCu);
    }

    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18[0] = @"Line";
    v18[1] = @"Function";
    v19[0] = &unk_2877A73F0;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCPrefs containerURLReturningError:]_block_invoke"];
    v19[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v9 = [v6 initWithDomain:@"ContainerManager" code:v17 userInfo:v8];
    v10 = qword_280B21888;
    qword_280B21888 = v9;
  }

  if (qword_280B21880)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    v12 = [v11 createDirectoryAtURL:qword_280B21880 withIntermediateDirectories:1 attributes:0 error:&v16];
    v13 = v16;

    if ((v12 & 1) == 0)
    {
      if (qword_280B218D0 != -1)
      {
        dispatch_once(&qword_280B218D0, &__block_literal_global_106);
      }

      v14 = qword_280B218C8;
      if (os_log_type_enabled(qword_280B218C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v13;
        _os_log_error_impl(&dword_265F54000, v14, OS_LOG_TYPE_ERROR, "NSFileManager failed to create user container URL directory (ignoring): %{public}@", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __38___SWCPrefs_retryIntervalAfterFailure__block_invoke()
{
  result = arc4random_uniform(0xE10u);
  qword_280B21898 = (result + 10800);
  return result;
}

uint64_t __38___SWCPrefs_retryIntervalAfterSuccess__block_invoke()
{
  result = arc4random_uniform(0xE10u);
  qword_280B218A8 = (result + 428400);
  return result;
}

const char *__28___SWCPrefs_isAppleInternal__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _MergedGlobals_2 = result;
  if (result)
  {
    result = getenv("SWC_MOCK_THE_PUBLIC");
    if (result)
    {
      result = strtol(result, 0, 0);
      if (result)
      {
        _MergedGlobals_2 = 0;
      }
    }
  }

  return result;
}

uint64_t __45___SWCPrefs_Private___recheckFuzzForSuccess___block_invoke()
{
  qword_280B218D8 = arc4random_uniform(0xE10u) + 10800;
  result = arc4random_uniform(0xE10u);
  qword_280B218E0 = (result + 428400);
  return result;
}

@end