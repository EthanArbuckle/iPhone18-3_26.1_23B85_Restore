@interface PXPresentAssistantForContext
@end

@implementation PXPresentAssistantForContext

void ___PXPresentAssistantForContext_block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = PLUIGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v10 = a1[4];
    v19 = 138412290;
    v20 = v10;
    v9 = "Assistant completed for context: %@";
    goto LABEL_7;
  }

  IsUserCanceledError = PXAssistantIsUserCanceledError(v3);
  v6 = PLUIGetLog();
  v7 = v6;
  if (IsUserCanceledError)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v8 = a1[4];
    v19 = 138412290;
    v20 = v8;
    v9 = "Assistant cancelled by user for context: %@";
LABEL_7:
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
    goto LABEL_10;
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_11;
  }

  v14 = a1[4];
  v19 = 138412546;
  v20 = v14;
  v21 = 2112;
  v22 = v4;
  v9 = "Assistant did fail for context: %@, error: %@";
  v11 = v7;
  v12 = OS_LOG_TYPE_ERROR;
  v13 = 22;
LABEL_10:
  _os_log_impl(&dword_1A3C1C000, v11, v12, v9, &v19, v13);
LABEL_11:

  v15 = *(a1[8] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  (*(a1[6] + 16))(a1[6], a1[5], 0, v17);
  v18 = a1[7];
  if (v18)
  {
    (*(v18 + 16))(v18, v4);
  }
}

@end