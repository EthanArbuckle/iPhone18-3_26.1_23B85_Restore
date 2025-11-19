@interface NSDictionary
@end

@implementation NSDictionary

void __45__NSDictionary_SUCoreDictionary__safeSummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:{@", "}];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  if (isKindOfClass)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:", v18];
    v13 = [v11 stringByAppendingString:v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = [*(v10 + 40) stringByAppendingString:@"?:"];
    v17 = *(*(a1 + 40) + 8);
    v12 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __152__NSDictionary_SUCoreDictionary___safeDescriptionWithName_atNestedLevel_maxNestedLevel_showingSubLevelName_withMaxValueLength_providingSubstitutionMap___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 length];
    v4 = *(*(a1 + 32) + 8);
    if (v3 > *(v4 + 24))
    {
      *(v4 + 24) = v3;
    }
  }
}

void __152__NSDictionary_SUCoreDictionary___safeDescriptionWithName_atNestedLevel_maxNestedLevel_showingSubLevelName_withMaxValueLength_providingSubstitutionMap___block_invoke_2(void *a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(*(a1[7] + 8) + 24);
  if ((isKindOfClass & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF20] _safeKeyName:@"?" paddedToLength:v7];
    v9 = *(*(a1[8] + 8) + 40);
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@%@: ?\n", a1[5], a1[6], v8, v25];
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E695DF20] _safeKeyName:v26 paddedToLength:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((a1[9] + 1) > a1[10])
    {
      v9 = *(*(a1[8] + 8) + 40);
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@%@: <sub-dictionary> at depth=%llu\n", a1[5], a1[6], v8, a1[9]];
LABEL_6:
      v11 = v10;
      v12 = [v9 stringByAppendingString:v10];
      v13 = *(a1[8] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
      goto LABEL_10;
    }

    v20 = a1[11];
    v21 = a1[4];
    v11 = [v5 _safeDescriptionWithName:v8 atNestedLevel:? maxNestedLevel:? showingSubLevelName:? withMaxValueLength:? providingSubstitutionMap:?];
    v15 = *(*(a1[8] + 8) + 40);
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@%@: <sub-dictionary>:\n%@\n", a1[5], a1[6], v8, v11];
  }

  else
  {
    v15 = *(*(a1[8] + 8) + 40);
    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = a1[5];
    v17 = a1[6];
    v11 = [MEMORY[0x1E695DF20] _safeValueName:v5 ofMaxFieldLength:a1[11] providingSubstitutionMap:a1[4]];
    v19 = [v16 initWithFormat:@"%@ %@%@: %@\n", v18, v17, v8, v11];
  }

  v14 = v19;
  v22 = [v15 stringByAppendingString:v19];
  v23 = *(a1[8] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

LABEL_10:
}

void __126__NSDictionary_SUCoreDictionary__safeSubDescriptionAtNestedLevel_instanceAtLevel_withMaxValueLength_providingSubstitutionMap___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = *(a1[4] + 8);
      v10 = *(v9 + 24);
      if (v10 >= a1[7])
      {
        objc_storeStrong((*(a1[5] + 8) + 40), a2);
        objc_storeStrong((*(a1[6] + 8) + 40), a3);
        *a4 = 1;
      }

      else
      {
        *(v9 + 24) = v10 + 1;
      }
    }
  }
}

@end