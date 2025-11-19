@interface PXDeleteMomentShareForURL
@end

@implementation PXDeleteMomentShareForURL

void ___PXDeleteMomentShareForURL_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) pl_redactedShareURL];
    v16 = 138412546;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v10 = "Did %@ moment share for URL: %{public}@";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 32);
    v9 = [*(a1 + 40) pl_redactedShareURL];
    v16 = 138412802;
    v17 = v14;
    v18 = 2114;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    v10 = "Failed to %@ moment share for URL: %{public}@, error: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  _os_log_impl(&dword_1A3C1C000, v11, v12, v10, &v16, v13);

LABEL_7:
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v5);
  }
}

@end