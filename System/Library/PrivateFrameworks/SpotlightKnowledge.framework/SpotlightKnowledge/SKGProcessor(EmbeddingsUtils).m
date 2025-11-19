@interface SKGProcessor(EmbeddingsUtils)
@end

@implementation SKGProcessor(EmbeddingsUtils)

- (void)extractContentFromRecordForWallet:()EmbeddingsUtils bundleID:content:maxChunkCountPtr:textLength:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)extractContentFromRecordForMessages:()EmbeddingsUtils bundleID:content:maxChunkCountPtr:textLength:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)needsEmbeddingsForRecord:()EmbeddingsUtils bundleID:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1977A7000, v0, v1, "SKGProcessor+EmbeddingsUtils#needsEmbeddingsForRecord returning NO embeddingVersion=%@ embeddingModelVersion=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)needsEmbeddingsForRecord:()EmbeddingsUtils bundleID:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)needsEmbeddingsForRecord:()EmbeddingsUtils bundleID:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)needsEmbeddingsForRecord:()EmbeddingsUtils bundleID:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1977A7000, v0, v1, "SKGProcessor+EmbeddingsUtils#needsEmbeddingsForRecord returning YES embeddingVersion=%@ embeddingModelVersion=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)shouldGenerateEmbeddingsForRecord:()EmbeddingsUtils bundleID:skipFpRecordCheck:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldGenerateEmbeddingsForRecord:()EmbeddingsUtils bundleID:skipFpRecordCheck:.cold.2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1977A7000, v3, v4, "SKGProcessor+EmbeddingsUtils#shouldGenerateEmbeddingsForRecord bundle=%@ returning=NO as extractContentFromRecord failed textContLen=%lu");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldGenerateEmbeddingsForRecord:()EmbeddingsUtils bundleID:skipFpRecordCheck:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end