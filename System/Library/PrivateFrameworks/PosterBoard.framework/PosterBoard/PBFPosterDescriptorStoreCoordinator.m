@interface PBFPosterDescriptorStoreCoordinator
- (id)_accessQueue_buildIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4;
@end

@implementation PBFPosterDescriptorStoreCoordinator

- (id)_accessQueue_buildIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4
{
  v8 = [(PBFPosterModelStoreCoordinator *)self extensionIdentifier];
  v9 = [(PBFPosterModelStoreCoordinator *)self descriptorIdentifier];
  v10 = [(PBFPosterModelStoreCoordinator *)self posterUUID];
  v11 = [(PBFPosterModelStoreCoordinator *)self role];
  v12 = v11;
  if (a4)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"descriptors don't support multiple supplements : provider=%@ descriptor=%@ role=%@ posterUUID=%@ version=%llu supplement=%llu", v8, v9, v11, v10, a3, a4];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(PBFPosterDescriptorStoreCoordinator *)a2 _accessQueue_buildIdentityForVersion:v15 supplement:?];
    }

LABEL_14:
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21B5D9A44);
  }

  if (!v8 || !v9 || !v10 || !v11)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"descriptors missing component : provider=%@ descriptor=%@ role=%@ posterUUID=%@ version=%llu supplement=%llu", v8, v9, v11, v10, a3, 0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(PBFPosterDescriptorStoreCoordinator *)a2 _accessQueue_buildIdentityForVersion:v15 supplement:?];
    }

    goto LABEL_14;
  }

  v13 = [MEMORY[0x277D3EB98] descriptorIdentityWithProvider:v8 identifier:v9 role:v11 posterUUID:v10 version:a3];

  return v13;
}

- (void)_accessQueue_buildIdentityForVersion:(uint64_t)a3 supplement:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_3_1();
  v9 = @"PBFPosterDescriptorStoreCoordinator.m";
  v10 = 1024;
  v11 = 40;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

- (void)_accessQueue_buildIdentityForVersion:(uint64_t)a3 supplement:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_3_1();
  v9 = @"PBFPosterDescriptorStoreCoordinator.m";
  v10 = 1024;
  v11 = 43;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

@end