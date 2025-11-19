@interface CNContactStore
@end

@implementation CNContactStore

void __81__CNContactStore_PhotoLibraryAdditions__contactsMatchingPhoneNumber_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 phoneNumbers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v11 + 1) + 8 * i) value];
        LODWORD(v9) = [v9 isLikePhoneNumber:v10];

        if (v9)
        {
          [*(a1 + 40) addObject:v3];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __82__CNContactStore_PhotoLibraryAdditions__contactsMatchingEmailAddress_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 emailAddresses];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v11 + 1) + 8 * i) value];
        LODWORD(v9) = [v9 isEqualToString:v10];

        if (v9)
        {
          [*(a1 + 40) addObject:v3];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __85__CNContactStore_PhotoLibraryAdditions___allContactIDsMatchingPredicate_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

@end