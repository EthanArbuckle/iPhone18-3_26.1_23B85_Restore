@interface PCSFPCopyExportedWithOptions
@end

@implementation PCSFPCopyExportedWithOptions

void ___PCSFPCopyExportedWithOptions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a3 + 24);
  v7 = (v6 & 1) == 0 && *(v5 + 204) == 3;
  v8 = 72;
  if (v7)
  {
    v8 = 64;
  }

  if ((v6 & 4) != 0 && *(v5 + 56))
  {
    PublicID = PCSPublicIdentityGetPublicID(*(a3 + 16));
    Value = CFDictionaryGetValue(*(*(a1 + 48) + 56), PublicID);
    if (!Value)
    {
      ___PCSFPCopyExportedWithOptions_block_invoke_cold_1(0, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = Value;
    CFRetain(Value);
  }

  else
  {
    v18 = PCSPublicServiceIdentityCopyWrappedKey(*(a3 + 16), *(v5 + v8), *(a1 + 56));
    if (!v18)
    {
      ___PCSFPCopyExportedWithOptions_block_invoke_cold_7((a1 + 56));
    }
  }

  if ((*(a3 + 24) & 4) != 0)
  {
    v33 = _PCSExportRandomPCSSPKey(*(*(*(a1 + 32) + 8) + 48) + 56 * *(*(*(a1 + 40) + 8) + 24));
    if ((v33 & 1) == 0)
    {
      ___PCSFPCopyExportedWithOptions_block_invoke_cold_2(v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }

  else
  {
    v25 = _PCSPublicIdentityExportPCSSPKey(*(a3 + 16), *(*(*(a1 + 32) + 8) + 48) + 56 * *(*(*(a1 + 40) + 8) + 24), v19, v20, v21, v22, v23, v24);
    if ((v25 & 1) == 0)
    {
      ___PCSFPCopyExportedWithOptions_block_invoke_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  if (*(a3 + 24))
  {
    *(*(*(*(a1 + 32) + 8) + 48) + 56 * *(*(*(a1 + 40) + 8) + 24) + 48) = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    v41 = *(*(*(*(a1 + 32) + 8) + 48) + 56 * *(*(*(a1 + 40) + 8) + 24) + 48);
    if (!v41)
    {
      ___PCSFPCopyExportedWithOptions_block_invoke_cold_4();
    }

    *v41 = *(a3 + 24);
  }

  v42 = FillOctetString((*(*(*(a1 + 32) + 8) + 48) + 56 * *(*(*(a1 + 40) + 8) + 24) + 32), v18);
  if (!v42)
  {
    ___PCSFPCopyExportedWithOptions_block_invoke_cold_5(v42, v43, v44, v45, v46, v47, v48, v49);
  }

  CFRelease(v18);
  v50 = *(*(a1 + 40) + 8);
  v51 = *(v50 + 24);
  if (*(a1 + 64) <= v51)
  {
    ___PCSFPCopyExportedWithOptions_block_invoke_cold_6();
  }

  *(v50 + 24) = v51 + 1;
  *(*(*(a1 + 32) + 8) + 40) = *(*(*(a1 + 40) + 8) + 24);
}

void ___PCSFPCopyExportedWithOptions_block_invoke_2(void *a1, uint64_t a2)
{
  v4 = *(a1[4] + 8);
  v5 = a1[6];
  v6 = *(*(a1[5] + 8) + 24);
  v7 = PCSIdentityCopyExternalForm(a2, 0, 0);
  FillOctetString((*(*(v4 + 48) + 8) + 32 * v6 + 16), v7);
  CFRelease(v7);
  *(*(v5 + 8) + 32 * v6) = 3;
  v8 = PCSIdentityCopyExportedPublicKey(a2);
  FillOctetString((*(v5 + 8) + 32 * v6 + 16), v8);
  CFRelease(v8);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 24);
  if (a1[7] <= v10)
  {
    ___PCSFPCopyExportedWithOptions_block_invoke_2_cold_1();
  }

  *(v9 + 24) = v10 + 1;
  **(*(a1[4] + 8) + 48) = *(*(a1[5] + 8) + 24);
  *a1[6] = *(*(a1[5] + 8) + 24);
}

BOOL ___PCSFPCopyExportedWithOptions_block_invoke_3(uint64_t a1, int a2, CFDataRef theData)
{
  result = FillOctetString((*(*(*(*(a1 + 32) + 8) + 32) + 8) + 16 * *(*(*(a1 + 40) + 8) + 24)), theData);
  **(*(*(a1 + 32) + 8) + 32) = ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void ___PCSFPCopyExportedWithOptions_block_invoke_cold_7(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v1 = *v1;
  }

  PCSAbortCF(@"Failed to get wrapped key: %@", v1);
}

@end