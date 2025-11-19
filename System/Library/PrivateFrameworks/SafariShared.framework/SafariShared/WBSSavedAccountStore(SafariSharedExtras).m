@interface WBSSavedAccountStore(SafariSharedExtras)
- (uint64_t)numberOfSavedAccountsToBeExported;
- (void)_test_writeContentsOfAccountStoreToWriter:()SafariSharedExtras;
- (void)_writeContentsOfAccounts:()SafariSharedExtras toWriter:;
- (void)exportContentsOfAccountStoreToCSVFileWithPath:()SafariSharedExtras;
- (void)exportContentsOfSavedAccounts:()SafariSharedExtras toCSVFileWithPath:;
@end

@implementation WBSSavedAccountStore(SafariSharedExtras)

- (void)exportContentsOfSavedAccounts:()SafariSharedExtras toCSVFileWithPath:
{
  v6 = a4;
  v7 = a3;
  v8 = [[CHCSVWriter alloc] initForWritingToCSVFile:v6];

  [a1 _writeContentsOfAccounts:v7 toWriter:v8];
}

- (void)exportContentsOfAccountStoreToCSVFileWithPath:()SafariSharedExtras
{
  v4 = a3;
  v6 = [[CHCSVWriter alloc] initForWritingToCSVFile:v4];

  v5 = [a1 savedAccounts];
  [a1 _writeContentsOfAccounts:v5 toWriter:v6];
}

- (uint64_t)numberOfSavedAccountsToBeExported
{
  v1 = [a1 savedAccounts];
  v2 = [v1 safari_filterObjectsUsingBlock:&__block_literal_global_102];
  v3 = [v2 count];

  return v3;
}

- (void)_writeContentsOfAccounts:()SafariSharedExtras toWriter:
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v44 = a4;
  [v44 writeLineOfFields:&unk_1F3A9B360];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    v39 = *v56;
    do
    {
      v9 = 0;
      v40 = v7;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v55 + 1) + 8 * v9);
        if ([v10 canBeExportedToPasswordsCSVFile])
        {
          v42 = v9;
          v46 = [v10 isBackedByUUIDHighLevelDomain];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v47 = v10;
          v43 = [v10 protectionSpaces];
          v48 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v48)
          {
            v45 = *v52;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v52 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v12 = *(*(&v51 + 1) + 8 * i);
                if (v46)
                {
                  v13 = [v47 protectionSpacesForAdditionalSites];
                  v14 = [v13 firstObject];
                  v15 = [v14 safari_URL];
                }

                else
                {
                  v15 = [v12 safari_URL];
                }

                v16 = [v47 user];
                v17 = [v15 host];
                v18 = [v47 customTitle];
                v19 = [v18 length];

                if (v19)
                {
                  v20 = [v47 customTitle];
                }

                else if (-[__CFString length](v16, "length") && [v17 length])
                {
                  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v17, v16];
                }

                else
                {
                  v20 = v17;
                }

                v21 = v20;
                v49 = v15;
                v50 = v17;
                if (v15)
                {
                  v22 = [v15 absoluteURL];
                  v23 = [v22 absoluteString];
                }

                else
                {
                  v23 = &stru_1F3A5E418;
                }

                if (v21)
                {
                  v24 = v21;
                }

                else
                {
                  v24 = &stru_1F3A5E418;
                }

                if (v23)
                {
                  v25 = v23;
                }

                else
                {
                  v25 = &stru_1F3A5E418;
                }

                v59[0] = v24;
                v59[1] = v25;
                if (v16)
                {
                  v26 = v16;
                }

                else
                {
                  v26 = &stru_1F3A5E418;
                }

                v59[2] = v26;
                v27 = [v47 password];
                v28 = v27;
                if (v27)
                {
                  v29 = v27;
                }

                else
                {
                  v29 = &stru_1F3A5E418;
                }

                v59[3] = v29;
                v30 = [v47 notesEntry];
                v31 = v30;
                if (v30)
                {
                  v32 = v30;
                }

                else
                {
                  v32 = &stru_1F3A5E418;
                }

                v59[4] = v32;
                v33 = [v12 host];
                v34 = [v47 totpGeneratorForSite:v33];
                v35 = [v34 exportableURL];
                v36 = v35;
                if (v35)
                {
                  v37 = v35;
                }

                else
                {
                  v37 = &stru_1F3A5E418;
                }

                v59[5] = v37;
                v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:6];
                [v44 writeLineOfFields:v38];
              }

              v48 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v48);
          }

          v8 = v39;
          v7 = v40;
          v9 = v42;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v7);
  }

  [v44 closeStream];
}

- (void)_test_writeContentsOfAccountStoreToWriter:()SafariSharedExtras
{
  v4 = a3;
  v5 = [a1 savedAccounts];
  [a1 _writeContentsOfAccounts:v5 toWriter:v4];
}

@end