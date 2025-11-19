@interface PXDeleteMomentShares
@end

@implementation PXDeleteMomentShares

uint64_t ___PXDeleteMomentShares_block_invoke_450(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [MEMORY[0x1E6978938] expungeMomentShares:v1];
  }

  else
  {
    return [MEMORY[0x1E6978938] trashMomentShares:v1];
  }
}

void ___PXDeleteMomentShares_block_invoke_2_451(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    v9 = a1[5];
    v17 = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v10 = "Did %@ moment share(s) with uuids: %@";
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

    v14 = a1[4];
    v15 = a1[5];
    v17 = 138412802;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v5;
    v10 = "Failed to %@ moment share(s) with uuids: %@, error: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  _os_log_impl(&dword_1A3C1C000, v11, v12, v10, &v17, v13);
LABEL_7:

  v16 = a1[6];
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v5);
  }
}

@end