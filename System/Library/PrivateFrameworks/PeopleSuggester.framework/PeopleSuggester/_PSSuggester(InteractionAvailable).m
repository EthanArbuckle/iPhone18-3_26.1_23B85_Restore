@interface _PSSuggester(InteractionAvailable)
@end

@implementation _PSSuggester(InteractionAvailable)

- (void)interactionAvailableForHandle:()InteractionAvailable interactionStoreDB:.cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  [a2 count];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_1B5ED1000, v2, v3, "_PSSuggester: For handle %@, outgoing interaction call count:%tu", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)interactionAvailableForHandle:()InteractionAvailable interactionStoreDB:.cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  [a2 count];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_1B5ED1000, v2, v3, "_PSSuggester: For handle %@, incoming interaction call count:%tu", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

@end