@interface PBFGenericPosterDescriptorLookupInfo
+ (id)nullPosterDescriptorLookupInfo;
+ (id)posterDescriptorLookupInfoForPath:(id)path extension:(id)extension;
- (BOOL)isEqual:(id)equal;
- (PBFGenericPosterDescriptorLookupInfo)init;
- (id)_initWithPath:(id)path extension:(id)extension;
- (void)dealloc;
@end

@implementation PBFGenericPosterDescriptorLookupInfo

- (PBFGenericPosterDescriptorLookupInfo)init
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138413314;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = @"PBFPosterPreview.m";
    v16 = 1024;
    v17 = 36;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v8, 0x30u);
  }

  __break(0);
  return result;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_pathValidityExtension invalidate];
  v3.receiver = self;
  v3.super_class = PBFGenericPosterDescriptorLookupInfo;
  [(PBFGenericPosterDescriptorLookupInfo *)&v3 dealloc];
}

- (id)_initWithPath:(id)path extension:(id)extension
{
  pathCopy = path;
  extensionCopy = extension;
  v16.receiver = self;
  v16.super_class = PBFGenericPosterDescriptorLookupInfo;
  v9 = [(PBFGenericPosterDescriptorLookupInfo *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, path);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [pathCopy extendValidityForReason:v12];
    pathValidityExtension = v10->_pathValidityExtension;
    v10->_pathValidityExtension = v13;

    objc_storeStrong(&v10->_extension, extension);
  }

  return v10;
}

+ (id)posterDescriptorLookupInfoForPath:(id)path extension:(id)extension
{
  pathCopy = path;
  extensionCopy = extension;
  if (!pathCopy)
  {
    [PBFGenericPosterDescriptorLookupInfo posterDescriptorLookupInfoForPath:a2 extension:?];
  }

  v8 = extensionCopy;
  if (!extensionCopy)
  {
    [PBFGenericPosterDescriptorLookupInfo posterDescriptorLookupInfoForPath:a2 extension:?];
  }

  v9 = [[PBFGenericPosterDescriptorLookupInfo alloc] _initWithPath:pathCopy extension:extensionCopy];

  return v9;
}

+ (id)nullPosterDescriptorLookupInfo
{
  if (nullPosterDescriptorLookupInfo___once != -1)
  {
    +[PBFGenericPosterDescriptorLookupInfo nullPosterDescriptorLookupInfo];
  }

  v3 = nullPosterDescriptorLookupInfo___nullInfo;

  return v3;
}

void __70__PBFGenericPosterDescriptorLookupInfo_nullPosterDescriptorLookupInfo__block_invoke()
{
  v0 = [[PBFGenericPosterDescriptorLookupInfo alloc] _initWithPath:0 extension:0];
  v1 = nullPosterDescriptorLookupInfo___nullInfo;
  nullPosterDescriptorLookupInfo___nullInfo = v0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && BSEqualObjects())
    {
      v5 = BSEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (void)posterDescriptorLookupInfoForPath:(const char *)a1 extension:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"extension"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFPosterPreview.m";
    v9 = 1024;
    v10 = 56;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterDescriptorLookupInfoForPath:(const char *)a1 extension:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"path"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFPosterPreview.m";
    v9 = 1024;
    v10 = 55;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end