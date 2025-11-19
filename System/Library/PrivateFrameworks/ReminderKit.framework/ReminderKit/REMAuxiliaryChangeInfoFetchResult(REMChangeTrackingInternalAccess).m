@interface REMAuxiliaryChangeInfoFetchResult(REMChangeTrackingInternalAccess)
@end

@implementation REMAuxiliaryChangeInfoFetchResult(REMChangeTrackingInternalAccess)

- (void)auxiliaryChangeInfoFromData:()REMChangeTrackingInternalAccess withObjectID:fromChangeObject:error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass([a1 typedKlass]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v2, v3, "REMChangeTracking+AuxiliaryChgInfo: No object identifier decoded from plist dictionary for {class: %{public}@, remObjectID: %{public}@}", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)auxiliaryChangeInfoFromData:()REMChangeTrackingInternalAccess withObjectID:fromChangeObject:error:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass([a1 typedKlass]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v2, v3, "REMChangeTracking+AuxiliaryChgInfo: Could not instantiate auxiliary change info model for {class: %{public}@, remObjectID: %{public}@}", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end