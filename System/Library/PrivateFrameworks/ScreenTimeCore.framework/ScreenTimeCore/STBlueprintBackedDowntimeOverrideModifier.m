@interface STBlueprintBackedDowntimeOverrideModifier
- (BOOL)_saveWithError:(id *)a3;
- (BOOL)applyDowntimeOverride:(id)a3 error:(id *)a4;
- (BOOL)removeDowntimeOverrideWithError:(id *)a3;
- (STBlueprintBackedDowntimeOverrideModifier)initWithDowntimeBlueprint:(id)a3;
- (STDowntimeOverride)activeOverride;
- (void)_deleteOrphanedOrTombstonedDowntimeOverridesInContext:(id)a3;
- (void)_tombstoneDowntimeOverride;
@end

@implementation STBlueprintBackedDowntimeOverrideModifier

- (STBlueprintBackedDowntimeOverrideModifier)initWithDowntimeBlueprint:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STBlueprintBackedDowntimeOverrideModifier;
  v5 = [(STBlueprintBackedDowntimeOverrideModifier *)&v8 init];
  downtimeBlueprint = v5->_downtimeBlueprint;
  v5->_downtimeBlueprint = v4;

  return v5;
}

- (STDowntimeOverride)activeOverride
{
  v2 = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  v3 = [v2 activeOverride];

  return v3;
}

- (BOOL)applyDowntimeOverride:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  v8 = [v7 managedObjectContext];
  v9 = [v7 override];
  v10 = [STDowntimeOverrideTransformer coreOverrideFromDowntimeOverride:v6 existingDowntimeOverride:v9 inContext:v8];

  [v7 setOverride:v10];
  [v7 setIsDirty:1];
  [(STBlueprintBackedDowntimeOverrideModifier *)self _deleteOrphanedOrTombstonedDowntimeOverridesInContext:v8];
  v23 = 0;
  v11 = [(STBlueprintBackedDowntimeOverrideModifier *)self _saveWithError:&v23];
  v12 = v23;
  if (v11)
  {
    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_DEFAULT, "Saved downtime override: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = +[STLog persistence];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprintBackedDowntimeOverrideModifier *)v12 applyDowntimeOverride:v13 error:v14, v15, v16, v17, v18, v19];
    }
  }

  if (a4)
  {
    v20 = v12;
    *a4 = v12;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)removeDowntimeOverrideWithError:(id *)a3
{
  [(STBlueprintBackedDowntimeOverrideModifier *)self _tombstoneDowntimeOverride];
  v5 = [(STBlueprintBackedDowntimeOverrideModifier *)self _saveWithError:a3];
  if (v5)
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Removed downtime override", v15, 2u);
    }
  }

  else
  {
    v6 = +[STLog persistence];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprintBackedDowntimeOverrideModifier *)v6 removeDowntimeOverrideWithError:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  return v5;
}

- (BOOL)_saveWithError:(id *)a3
{
  v4 = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  v5 = [v4 managedObjectContext];

  if ([v5 hasChanges])
  {
    v9 = 0;
    v6 = [v5 save:&v9];
    v7 = v9;
    if (a3)
    {
      v7 = v7;
      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v6;
}

- (void)_deleteOrphanedOrTombstonedDowntimeOverridesInContext:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STCoreDowntimeOverride fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil OR %K == YES", @"downtime", @"isTombstoned"];
  [v4 setPredicate:v5];

  v26 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v26];
  v7 = v26;
  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v3 deleteObject:*(*(&v22 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v10);
    }

    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_DEFAULT, "Deleted %@ orphaned/tombstoned downtime overrides", buf, 0xCu);
    }
  }

  else
  {
    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprintBackedDowntimeOverrideModifier *)v7 _deleteOrphanedOrTombstonedDowntimeOverridesInContext:v13, v15, v16, v17, v18, v19, v20];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_tombstoneDowntimeOverride
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  v3 = [v2 override];
  v4 = v3;
  if (v3)
  {
    [v3 setIsTombstoned:1];
    [v2 setIsDirty:1];
    v5 = +[STLog blueprint];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      v6 = "Tombstoning existing downtime override: %@";
      v7 = v5;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else
  {
    v5 = +[STLog blueprint];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v6 = "No existing downtime override - nothing to do";
      v7 = v5;
      v8 = 2;
      goto LABEL_6;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)applyDowntimeOverride:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Failed to save downtime override: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeDowntimeOverrideWithError:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a1, a3, "Failed to save downtime override removal: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_deleteOrphanedOrTombstonedDowntimeOverridesInContext:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Could not fetch orphaned/tombstoned downtime overrides: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end