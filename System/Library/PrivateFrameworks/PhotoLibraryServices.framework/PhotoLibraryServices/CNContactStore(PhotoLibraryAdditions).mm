@interface CNContactStore(PhotoLibraryAdditions)
- (id)_allContactIDsMatchingPredicate:()PhotoLibraryAdditions keysToFetch:;
- (id)allContactIDsMatchingEmailAddress:()PhotoLibraryAdditions orPhoneNumber:;
- (id)contactsMatchingEmailAddress:()PhotoLibraryAdditions keysToFetch:;
- (id)contactsMatchingPhoneNumber:()PhotoLibraryAdditions keysToFetch:;
@end

@implementation CNContactStore(PhotoLibraryAdditions)

- (id)contactsMatchingPhoneNumber:()PhotoLibraryAdditions keysToFetch:
{
  v6 = a3;
  v7 = MEMORY[0x1E695CD78];
  v8 = a4;
  v9 = [[v7 alloc] initWithKeysToFetch:v8];

  v10 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v6];
  [v9 setPredicate:v10];

  [v9 setUnifyResults:0];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__CNContactStore_PhotoLibraryAdditions__contactsMatchingPhoneNumber_keysToFetch___block_invoke;
  v17[3] = &unk_1E75640F8;
  v18 = v6;
  v12 = v11;
  v19 = v12;
  v13 = v6;
  [a1 enumerateContactsWithFetchRequest:v9 error:0 usingBlock:v17];
  v14 = v19;
  v15 = v12;

  return v12;
}

- (id)contactsMatchingEmailAddress:()PhotoLibraryAdditions keysToFetch:
{
  v6 = a3;
  v7 = MEMORY[0x1E695CD78];
  v8 = a4;
  v9 = [[v7 alloc] initWithKeysToFetch:v8];

  v10 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v6];
  [v9 setPredicate:v10];

  [v9 setUnifyResults:0];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__CNContactStore_PhotoLibraryAdditions__contactsMatchingEmailAddress_keysToFetch___block_invoke;
  v17[3] = &unk_1E75640F8;
  v18 = v6;
  v12 = v11;
  v19 = v12;
  v13 = v6;
  [a1 enumerateContactsWithFetchRequest:v9 error:0 usingBlock:v17];
  v14 = v19;
  v15 = v12;

  return v12;
}

- (id)_allContactIDsMatchingPredicate:()PhotoLibraryAdditions keysToFetch:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v32 = 0;
  v9 = [a1 unifiedContactsMatchingPredicate:v6 keysToFetch:v7 error:&v32];
  v10 = v32;
  if (v9)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v24 = a1;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v28 + 1) + 8 * i) identifier];
          [v8 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v13);
      a1 = v24;
    }
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Error fetching contacts:%@", buf, 0xCu);
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v7];
  [v17 setPredicate:v6];
  [v17 setUnifyResults:0];
  v27 = v10;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __85__CNContactStore_PhotoLibraryAdditions___allContactIDsMatchingPredicate_keysToFetch___block_invoke;
  v25[3] = &unk_1E75640D0;
  v18 = v8;
  v26 = v18;
  v19 = [a1 enumerateContactsWithFetchRequest:v17 error:&v27 usingBlock:v25];
  v20 = v27;

  if ((v19 & 1) == 0)
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Error enumerating contacts:%@", buf, 0xCu);
    }
  }

  v22 = v18;
  return v18;
}

- (id)allContactIDsMatchingEmailAddress:()PhotoLibraryAdditions orPhoneNumber:
{
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [v6 length];
  v10 = MEMORY[0x1E695C258];
  if (v9)
  {
    v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v6];
    v12 = *v10;
    v25[0] = *MEMORY[0x1E695C208];
    v25[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v14 = [a1 _allContactIDsMatchingPredicate:v11 keysToFetch:v13];
    [v8 unionSet:v14];
  }

  if ([v7 length])
  {
    v15 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v7];
    if (v15)
    {
      v16 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v15];
      v17 = *v10;
      v24[0] = *MEMORY[0x1E695C330];
      v24[1] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      v19 = [a1 _allContactIDsMatchingPredicate:v16 keysToFetch:v18];
      [v8 unionSet:v19];
    }

    else
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = 138477827;
        v23 = v7;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unsupported phone number:%{private}@", &v22, 0xCu);
      }
    }
  }

  v20 = [v8 allObjects];

  return v20;
}

@end