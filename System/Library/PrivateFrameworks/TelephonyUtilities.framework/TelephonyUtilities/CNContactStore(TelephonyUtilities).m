@interface CNContactStore(TelephonyUtilities)
+ (id)tu_contactStore;
- (id)tu_contactsByContactHandleForContactHandles:()TelephonyUtilities keyDescriptors:error:;
@end

@implementation CNContactStore(TelephonyUtilities)

+ (id)tu_contactStore
{
  v2 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 tu_assumedIdentity];
  [v2 setAssumedIdentity:v4];

  [v2 setIncludeLocalContacts:1];
  v5 = objc_alloc_init(TUFeatureFlags);
  if ([(TUFeatureFlags *)v5 junkFilteringEnabled])
  {
    [v2 setIncludeAcceptedIntroductions:1];
  }

  v6 = [[a1 alloc] initWithConfiguration:v2];

  return v6;
}

- (id)tu_contactsByContactHandleForContactHandles:()TelephonyUtilities keyDescriptors:error:
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v9];
    v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingHandleStrings:v8];
    [v10 setPredicate:v11];

    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138740227;
      v20 = v10;
      v21 = 2117;
      v22 = a1;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request %{sensitive}@ using contact store %{sensitive}@", &v19, 0x16u);
    }

    v13 = [a1 executeFetchRequest:v10 error:a5];
    v14 = [v13 value];
    v15 = TUDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      v19 = 134217984;
      v20 = v16;
      _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Contact fetch request returned %lu results", &v19, 0xCu);
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

@end