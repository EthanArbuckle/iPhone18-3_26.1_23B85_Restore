@interface PassMeetsFilterRequirements
@end

@implementation PassMeetsFilterRequirements

void ___PassMeetsFilterRequirements_block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = a2;
  v6 = [v5 passUniqueIdentifier];
  v7 = [*(a1 + 32) uniqueID];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

      goto LABEL_14;
    }

    v11 = [v8 isEqualToString:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v5 isNFCExpressEnabled])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v12 = [v5 passInformation];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___PassMeetsFilterRequirements_block_invoke_2;
    v14[3] = &unk_1E79DDAE8;
    v14[4] = &v15;
    [v12 enumerateCredentialsUsingBlock:v14];
    v13 = (v16[3] & 1) == 0 && [v12 cardType] == 3;
    *(*(*(a1 + 40) + 8) + 24) = !v13;
    *a3 = v13;

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    *a3 = 1;
  }

LABEL_14:
}

void ___PassMeetsFilterRequirements_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 selectionCriteria];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * v10) supportsInSessionExpress])
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          *a4 = 1;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end