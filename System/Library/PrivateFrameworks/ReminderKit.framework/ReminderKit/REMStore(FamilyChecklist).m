@interface REMStore(FamilyChecklist)
@end

@implementation REMStore(FamilyChecklist)

- (void)fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:()FamilyChecklist error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error fetching eligibility for shared grocery list: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sharedGroceryListForFamilyChecklistWithCommonParticipants:()FamilyChecklist error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error fetching existing shared grocery lists: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error fetching primary active cloudKit account for creating shared grocery list: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error saving created shared grocery list: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error creating CKShare for shared grocery list: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)createSharedGroceryListWithError:()FamilyChecklist .cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error creating itemProvider for shared grocery list: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)addParticipantsToSharedGroceryList:()FamilyChecklist completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI CloudKit error fetching CKShare for adding participants to shared grocery list %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addParticipantsToSharedGroceryList:()FamilyChecklist completion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI CloudKit error fetching primary active cloudKit account for adding participants to shared grocery list %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addParticipantsToSharedGroceryList:()FamilyChecklist completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error adding participants: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteSharedGroceryList:()FamilyChecklist error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error fetching shared grocery list for deletion: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteSharedGroceryList:()FamilyChecklist error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error deleting shared grocery list: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteSharedGroceryList:()FamilyChecklist error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v1, v2, "FamilyChecklistSPI error saving deletion of shared grocery list: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end