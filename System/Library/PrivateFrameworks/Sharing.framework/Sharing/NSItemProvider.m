@interface NSItemProvider
@end

@implementation NSItemProvider

void __75__NSItemProvider_Sharing__loadURLClassWithPreviousError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E6983030];
  v4 = a2;
  v5 = [v3 identifier];
  (*(v2 + 16))(v2, v4, v5, 0);
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v7)
  {
    v10 = framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_2(a1, v8, v10);
    }

LABEL_12:

    [*(a1 + 40) loadURLClassWithPreviousError:v8 completionHandler:*(a1 + 48)];
    goto LABEL_14;
  }

  if (*(a1 + 56) != 1 || a3 == 0)
  {
    if (!*(a1 + 56))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3;
      v13[3] = &unk_1E788FDE8;
      v14 = v7;
      v16 = *(a1 + 48);
      v15 = *(a1 + 32);
      [v14 coordinateReadingWithSaveToTempDir:1 options:8 completionHandler:v13];

      goto LABEL_14;
    }

    v10 = framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_1(a1, v10);
    }

    goto LABEL_12;
  }

  v11 = *(a1 + 48);
  v12 = [*(a1 + 32) identifier];
  (*(v11 + 16))(v11, v7, v12, 0);

LABEL_14:
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v5)
  {
    v8 = framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3_cold_1(a1, v6, v8);
    }

    v7 = *(a1 + 32);
  }

  v11 = a1 + 40;
  v9 = *(a1 + 40);
  v10 = *(v11 + 8);
  v12 = v7;
  v13 = [v9 identifier];
  (*(v10 + 16))(v10, v12, v13, 0);
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Could not load representation %{public}@ from the item provider for opening in place", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, a2, a3, "Could not load representation %{public}@ from the item provider. Error: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, a2, a3, "Failed to save %@ to temp directory with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end