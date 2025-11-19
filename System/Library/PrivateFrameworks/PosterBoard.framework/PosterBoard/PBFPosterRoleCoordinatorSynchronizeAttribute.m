@interface PBFPosterRoleCoordinatorSynchronizeAttribute
@end

@implementation PBFPosterRoleCoordinatorSynchronizeAttribute

uint64_t ___PBFPosterRoleCoordinatorSynchronizeAttribute_block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 attributeType];
  if ([v6 isEqual:*MEMORY[0x277D3EEB8]])
  {
    v7 = MEMORY[0x277D3EDE8];
    v8 = [*(a1 + 32) _path];
    LOBYTE(v7) = [v7 storeFocusConfigurationForPath:v8 focusConfiguration:v5 error:a3];

    if ((v7 & 1) == 0)
    {
      v9 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ([v6 isEqual:*MEMORY[0x277D3EEA8]])
  {
    v10 = MEMORY[0x277D3EDE8];
    v11 = [*(a1 + 32) _path];
    LOBYTE(v10) = [v10 storeAmbientConfigurationForPath:v11 ambientConfiguration:v5 error:a3];

    if ((v10 & 1) == 0)
    {
      v9 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
LABEL_11:
        v14 = [*(a1 + 32) role];
        v15 = [*(a1 + 32) pbf_posterUUID];
        v16 = *a3;
        v17 = 138544130;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v21 = 2114;
        v22 = v6;
        v23 = 2114;
        v24 = v16;
        _os_log_fault_impl(&dword_21B526000, v9, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to synchronize attribute %{public}@ to disk for posterUUID %{public}@: %{public}@", &v17, 0x2Au);
      }

LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }
  }

  v12 = 1;
LABEL_10:

  return v12;
}

uint64_t ___PBFPosterRoleCoordinatorSynchronizeAttribute_block_invoke_383(uint64_t a1, void *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) pbf_posterUUID];
  v8 = [*(a1 + 40) role];
  v9 = [v5 attributeType];
  v10 = [v5 encodeJSON];
  LOBYTE(v6) = [v6 mutateAttributeForPoster:v7 roleId:v8 attributeId:v9 attributePayload:v10 error:a3];

  if ((v6 & 1) == 0)
  {
    v11 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = [*(a1 + 40) role];
      v14 = [*(a1 + 40) pbf_posterUUID];
      v15 = [v5 attributeType];
      v16 = *a3;
      v17 = 138544130;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_fault_impl(&dword_21B526000, v11, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to synchronize attribute %{public}@ to database for posterUUID %{public}@: %{public}@", &v17, 0x2Au);
    }
  }

  return 1;
}

@end