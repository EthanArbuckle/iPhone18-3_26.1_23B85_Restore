@interface NSURL(PBFUtilities)
- (BOOL)pbf_setPurgable:()PBFUtilities error:;
- (BOOL)pbf_unarchiveToURL:()PBFUtilities error:;
- (id)pbf_creationDate;
- (id)pbf_fileProtectionType;
- (uint64_t)pbf_isDirectory;
- (uint64_t)pbf_isPurgable;
- (uint64_t)pbf_setFileProtection:()PBFUtilities error:;
@end

@implementation NSURL(PBFUtilities)

- (uint64_t)pbf_isDirectory
{
  v2 = 0;
  [self getResourceValue:&v2 forKey:*MEMORY[0x277CBE868] error:0];
  return [v2 BOOLValue];
}

- (uint64_t)pbf_isPurgable
{
  v2 = 0;
  [self getResourceValue:&v2 forKey:*MEMORY[0x277CBE898] error:0];
  return [v2 BOOLValue];
}

- (id)pbf_creationDate
{
  v3 = 0;
  [self getResourceValue:&v3 forKey:*MEMORY[0x277CBE7C0] error:0];
  distantPast = v3;
  if (!distantPast)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  return distantPast;
}

- (BOOL)pbf_setPurgable:()PBFUtilities error:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = 98821;
  if (!a3)
  {
    v7 = 0;
  }

  v26 = v7;
  fileSystemRepresentation = [self fileSystemRepresentation];
  v9 = open(fileSystemRepresentation, 0);
  if (v9 < 0)
  {
    v19 = PBFLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NSURL(PBFUtilities) pbf_setPurgable:fileSystemRepresentation error:v19];
    }

    if (a4)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA5B8];
      v22 = *__error();
      v33 = *MEMORY[0x277CCA170];
      path = [self path];
      v34[0] = path;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      *a4 = [v20 errorWithDomain:v21 code:v22 userInfo:v24];
    }

    return 0;
  }

  else
  {
    v10 = v9;
    v11 = ffsctl(v9, 0xC0084A44uLL, &v26, 0);
    v12 = v11 == 0;
    if (v11)
    {
      v13 = v11;
      v14 = PBFLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = self;
        v29 = 1024;
        v30 = a3;
        v31 = 1024;
        v32 = v13;
        _os_log_error_impl(&dword_21B526000, v14, OS_LOG_TYPE_ERROR, "Error marking '%{public}@' as purgable: %{BOOL}u - %{darwin.errno}d", buf, 0x18u);
      }

      if (a4)
      {
        v15 = objc_opt_new();
        path2 = [self path];

        if (path2)
        {
          path3 = [self path];
          [v15 setObject:path3 forKeyedSubscript:*MEMORY[0x277CCA758]];
        }

        v18 = [MEMORY[0x277CCABB0] numberWithInt:v13];
        [v15 setObject:v18 forKeyedSubscript:@"errno"];

        *a4 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:0 userInfo:v15];
      }
    }

    close(v10);
  }

  return v12;
}

- (uint64_t)pbf_setFileProtection:()PBFUtilities error:
{
  v7 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v7)
  {
    [NSURL(PBFUtilities) pbf_setFileProtection:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSURL(PBFUtilities) pbf_setFileProtection:a2 error:?];
  }

  v8 = [self setResourceValue:v7 forKey:*MEMORY[0x277CBE7F8] error:a4];
  return v8;
}

- (id)pbf_fileProtectionType
{
  v3 = 0;
  [self getResourceValue:&v3 forKey:*MEMORY[0x277CBE7F8] error:0];
  v1 = v3;

  return v1;
}

- (BOOL)pbf_unarchiveToURL:()PBFUtilities error:
{
  v9[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  BOMCopierNew();
  [self fileSystemRepresentation];
  [v4 fileSystemRepresentation];

  v5 = *MEMORY[0x277CBED28];
  v8[0] = @"extractPKZip";
  v8[1] = @"sequesterResources";
  v9[0] = v5;
  v9[1] = v5;
  v8[2] = @"copyResources";
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  LODWORD(self) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  return self == 0;
}

- (void)pbf_setPurgable:()PBFUtilities error:.cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "Fail to open %s %{darwin.errno}d", &v5, 0x12u);
}

- (void)pbf_setFileProtection:()PBFUtilities error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pbf_setFileProtection:()PBFUtilities error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end