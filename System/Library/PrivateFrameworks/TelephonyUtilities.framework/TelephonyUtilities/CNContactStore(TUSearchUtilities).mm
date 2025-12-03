@interface CNContactStore(TUSearchUtilities)
- (id)contactForDestinationId:()TUSearchUtilities;
- (id)contactForDestinationId:()TUSearchUtilities keysToFetch:;
- (id)contactForIdentifier:()TUSearchUtilities;
- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:;
- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:usingCache:;
@end

@implementation CNContactStore(TUSearchUtilities)

- (id)contactForIdentifier:()TUSearchUtilities
{
  v4 = contactForIdentifier__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [CNContactStore(TUSearchUtilities) contactForIdentifier:];
  }

  keysToFetchForFaceTime = [MEMORY[0x1E695CD58] keysToFetchForFaceTime];
  v7 = [self contactForIdentifier:v5 keysToFetch:keysToFetchForFaceTime usingCache:contactForIdentifier__identifierToContactCache];

  return v7;
}

- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:usingCache:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:v8];
  if (!v11)
  {
    v11 = [self contactForIdentifier:v8 keysToFetch:v9];
    if (v11)
    {
      [v10 setObject:v11 forKey:v8];
    }
  }

  return v11;
}

- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13 = 0;
    v8 = [self unifiedContactWithIdentifier:v6 keysToFetch:v7 error:&v13];
    v9 = v13;
    if (v9)
    {
      v10 = TUDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Error trying to fetch backing contact for identifier %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)contactForDestinationId:()TUSearchUtilities
{
  v4 = a3;
  if (contactForDestinationId__onceToken != -1)
  {
    [CNContactStore(TUSearchUtilities) contactForDestinationId:];
  }

  v5 = [contactForDestinationId__destinationIDToContactCache objectForKey:v4];
  if (!v5)
  {
    keysToFetchForFaceTime = [MEMORY[0x1E695CD58] keysToFetchForFaceTime];
    v5 = [self contactForDestinationId:v4 keysToFetch:keysToFetchForFaceTime];

    if (v5)
    {
      [contactForDestinationId__destinationIDToContactCache setObject:v5 forKey:v4];
    }
  }

  return v5;
}

- (id)contactForDestinationId:()TUSearchUtilities keysToFetch:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [TUHandle normalizedHandleWithDestinationID:v6];
  value = [v8 value];

  if (value)
  {
    if ([v6 _appearsToBePhoneNumber])
    {
      v10 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:value];
      if (v10)
      {
        v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v10];
        v12 = TUDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v11;
          _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Looking up contacts matching predicate %@", buf, 0xCu);
        }

        v13 = [v7 arrayByAddingObject:*MEMORY[0x1E695C330]];
        v26 = 0;
        v14 = [self unifiedContactsMatchingPredicate:v11 keysToFetch:v13 error:&v26];
        v15 = v26;

        if (v14 && [v14 count])
        {
          v16 = TUDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v14;
            _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "Found matching contacts %@, using first object", buf, 0xCu);
          }

          firstObject = [v14 firstObject];
        }

        else
        {
          v22 = TUDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [CNContactStore(TUSearchUtilities) contactForDestinationId:keysToFetch:];
          }

          firstObject = 0;
        }

        goto LABEL_32;
      }

      v11 = TUDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CNContactStore(TUSearchUtilities) contactForDestinationId:value keysToFetch:v11];
      }

      v15 = 0;
    }

    else
    {
      v10 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:value];
      v18 = TUDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Looking up contacts matching predicate %@", buf, 0xCu);
      }

      v19 = [v7 arrayByAddingObject:*MEMORY[0x1E695C208]];
      v25 = 0;
      v11 = [self unifiedContactsMatchingPredicate:v10 keysToFetch:v19 error:&v25];
      v15 = v25;

      if (v11 && [v11 count])
      {
        v20 = TUDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v11;
          _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Found matching contacts %@, using first object", buf, 0xCu);
        }

        firstObject = [v11 firstObject];
        goto LABEL_32;
      }

      v21 = TUDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CNContactStore(TUSearchUtilities) contactForDestinationId:keysToFetch:];
      }
    }

    firstObject = 0;
LABEL_32:

    goto LABEL_33;
  }

  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CNContactStore(TUSearchUtilities) contactForDestinationId:v6 keysToFetch:v10];
  }

  v15 = 0;
  firstObject = 0;
LABEL_33:

  v23 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (void)contactForDestinationId:()TUSearchUtilities keysToFetch:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "No contacts found matching predicate %@ error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)contactForDestinationId:()TUSearchUtilities keysToFetch:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber using the normalized destination identifier '%@'.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)contactForDestinationId:()TUSearchUtilities keysToFetch:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not normalize destination ID %@ to perform contacts lookup", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end