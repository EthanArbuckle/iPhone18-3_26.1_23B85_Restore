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

  [self _writeContentsOfAccounts:v7 toWriter:v8];
}

- (void)exportContentsOfAccountStoreToCSVFileWithPath:()SafariSharedExtras
{
  v4 = a3;
  v6 = [[CHCSVWriter alloc] initForWritingToCSVFile:v4];

  savedAccounts = [self savedAccounts];
  [self _writeContentsOfAccounts:savedAccounts toWriter:v6];
}

- (uint64_t)numberOfSavedAccountsToBeExported
{
  savedAccounts = [self savedAccounts];
  v2 = [savedAccounts safari_filterObjectsUsingBlock:&__block_literal_global_102];
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
          isBackedByUUIDHighLevelDomain = [v10 isBackedByUUIDHighLevelDomain];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v47 = v10;
          protectionSpaces = [v10 protectionSpaces];
          v48 = [protectionSpaces countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v48)
          {
            v45 = *v52;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v52 != v45)
                {
                  objc_enumerationMutation(protectionSpaces);
                }

                v12 = *(*(&v51 + 1) + 8 * i);
                if (isBackedByUUIDHighLevelDomain)
                {
                  protectionSpacesForAdditionalSites = [v47 protectionSpacesForAdditionalSites];
                  firstObject = [protectionSpacesForAdditionalSites firstObject];
                  safari_URL = [firstObject safari_URL];
                }

                else
                {
                  safari_URL = [v12 safari_URL];
                }

                user = [v47 user];
                host = [safari_URL host];
                customTitle = [v47 customTitle];
                v19 = [customTitle length];

                if (v19)
                {
                  customTitle2 = [v47 customTitle];
                }

                else if (-[__CFString length](user, "length") && [host length])
                {
                  customTitle2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", host, user];
                }

                else
                {
                  customTitle2 = host;
                }

                v21 = customTitle2;
                v49 = safari_URL;
                v50 = host;
                if (safari_URL)
                {
                  absoluteURL = [safari_URL absoluteURL];
                  absoluteString = [absoluteURL absoluteString];
                }

                else
                {
                  absoluteString = &stru_1F3A5E418;
                }

                if (v21)
                {
                  v24 = v21;
                }

                else
                {
                  v24 = &stru_1F3A5E418;
                }

                if (absoluteString)
                {
                  v25 = absoluteString;
                }

                else
                {
                  v25 = &stru_1F3A5E418;
                }

                v59[0] = v24;
                v59[1] = v25;
                if (user)
                {
                  v26 = user;
                }

                else
                {
                  v26 = &stru_1F3A5E418;
                }

                v59[2] = v26;
                password = [v47 password];
                v28 = password;
                if (password)
                {
                  v29 = password;
                }

                else
                {
                  v29 = &stru_1F3A5E418;
                }

                v59[3] = v29;
                notesEntry = [v47 notesEntry];
                v31 = notesEntry;
                if (notesEntry)
                {
                  v32 = notesEntry;
                }

                else
                {
                  v32 = &stru_1F3A5E418;
                }

                v59[4] = v32;
                host2 = [v12 host];
                v34 = [v47 totpGeneratorForSite:host2];
                exportableURL = [v34 exportableURL];
                v36 = exportableURL;
                if (exportableURL)
                {
                  v37 = exportableURL;
                }

                else
                {
                  v37 = &stru_1F3A5E418;
                }

                v59[5] = v37;
                v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:6];
                [v44 writeLineOfFields:v38];
              }

              v48 = [protectionSpaces countByEnumeratingWithState:&v51 objects:v60 count:16];
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
  savedAccounts = [self savedAccounts];
  [self _writeContentsOfAccounts:savedAccounts toWriter:v4];
}

@end