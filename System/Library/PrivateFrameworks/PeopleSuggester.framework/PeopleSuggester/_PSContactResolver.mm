@interface _PSContactResolver
+ (id)handlesForContactFavorites;
+ (id)normalizedHandlesDictionaryFromHandles:(id)a3;
- (_PSContactResolver)initWithContactStore:(id)a3 keysToFetch:(id)a4;
- (id)allEmailAndPhoneNumberHandlesForContact:(id)a3;
- (id)contactWithIdentifier:(id)a3;
- (id)resolveContact:(id)a3;
- (id)resolveContactFromINPerson:(id)a3;
- (id)resolveContactIdentifier:(id)a3;
- (id)resolveContactIfPossibleFromContactIdentifierString:(id)a3 pickFirstOfMultiple:(BOOL)a4;
@end

@implementation _PSContactResolver

- (_PSContactResolver)initWithContactStore:(id)a3 keysToFetch:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PSContactResolver;
  v9 = [(_PSContactResolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v10->_keysToFetch, a4);
  }

  return v10;
}

- (id)contactWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_PSContactResolver *)self contactStore];
  v6 = [(_PSContactResolver *)self keysToFetch];
  v7 = [v5 unifiedContactWithIdentifier:v4 keysToFetch:v6 error:0];

  return v7;
}

- (id)resolveContactFromINPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];

  if (!v5 || ([v4 contactIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[_PSContactResolver contactWithIdentifier:](self, "contactWithIdentifier:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = [v4 personHandle];
    v9 = [v8 value];

    if (v9)
    {
      v10 = [v4 personHandle];
      v11 = [v10 value];
      v7 = [(_PSContactResolver *)self resolveContactIfPossibleFromContactIdentifierString:v11];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)allEmailAndPhoneNumberHandlesForContact:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 phoneNumbers];
  v5 = [v4 valueForKey:@"value"];

  v6 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 unformattedInternationalStringValue];

        if (v13)
        {
          v14 = [v12 unformattedInternationalStringValue];
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v3 emailAddresses];
  v16 = [v15 valueForKey:@"value"];

  [v6 addObjectsFromArray:v16];
  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)resolveContactIdentifier:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_15;
  }

  if (!getuid())
  {
    goto LABEL_15;
  }

  v5 = [v4 identifier];

  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v4 identifier];
  v7 = [v6 containsString:@"@"];

  CNContactClass_2 = getCNContactClass_2();
  if (v7)
  {
    v9 = [v4 identifier];
    v10 = [CNContactClass_2 predicateForContactsMatchingEmailAddress:v9];
  }

  else
  {
    CNPhoneNumberClass_0 = getCNPhoneNumberClass_0();
    v9 = [v4 identifier];
    v12 = [CNPhoneNumberClass_0 phoneNumberWithStringValue:v9];
    v10 = [CNContactClass_2 predicateForContactsMatchingPhoneNumber:v12];
  }

  if (!v10)
  {
LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v13 = [(_PSContactResolver *)self contactStore];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v14 = getCNContactIdentifierKeySymbolLoc_ptr_3;
  v31 = getCNContactIdentifierKeySymbolLoc_ptr_3;
  if (!getCNContactIdentifierKeySymbolLoc_ptr_3)
  {
    v26[1] = MEMORY[0x1E69E9820];
    v26[2] = 3221225472;
    v26[3] = __getCNContactIdentifierKeySymbolLoc_block_invoke_3;
    v26[4] = &unk_1E7C23BF0;
    v27 = &v28;
    v15 = ContactsLibrary_2();
    v29[3] = dlsym(v15, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr_3 = *(v27[1] + 24);
    v14 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v14)
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v32[0] = *v14;
  v16 = MEMORY[0x1E695DEC8];
  v17 = v32[0];
  v18 = [v16 arrayWithObjects:v32 count:1];
  v26[0] = 0;
  v19 = [v13 unifiedContactsMatchingPredicate:v10 keysToFetch:v18 error:v26];
  v20 = v26[0];

  if (v20)
  {
    v21 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _PSResolveContactWithPredicate_cold_1(v20, v21);
    }

    goto LABEL_21;
  }

  if ([v19 count] != 1)
  {
LABEL_21:
    v22 = 0;
    v25 = v19;
    goto LABEL_22;
  }

  v25 = [v19 firstObject];
  v22 = [v25 identifier];
  v20 = v19;
LABEL_22:

LABEL_16:
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)resolveContact:(id)a3
{
  if (a3)
  {
    v4 = [a3 identifier];
    v5 = [(_PSContactResolver *)self resolveContactIfPossibleFromContactIdentifierString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resolveContactIfPossibleFromContactIdentifierString:(id)a3 pickFirstOfMultiple:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v8 = [v6 containsString:@"@"];
  CNContactClass_2 = getCNContactClass_2();
  v10 = CNContactClass_2;
  if (!v8)
  {
    v15 = [getCNPhoneNumberClass_0() phoneNumberWithStringValue:v7];
    v11 = [v10 predicateForContactsMatchingPhoneNumber:v15];

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v11 = [CNContactClass_2 predicateForContactsMatchingEmailAddress:v7];
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [(_PSContactResolver *)self contactStore];
  v13 = [(_PSContactResolver *)self keysToFetch];
  v14 = _PSResolveContactWithPredicate(v11, v12, v13, v4);

LABEL_8:
LABEL_9:

  return v14;
}

+ (id)normalizedHandlesDictionaryFromHandles:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 containsString:{@"@", v15}])
        {
          [v4 setObject:v10 forKeyedSubscript:v10];
        }

        else
        {
          v11 = [getCNPhoneNumberClass_0() phoneNumberWithStringValue:v10];
          v12 = [v11 unformattedInternationalStringValue];
          if ([v12 length])
          {
            [v4 setObject:v12 forKeyedSubscript:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)handlesForContactFavorites
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E69978A8] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___PSContactResolver_handlesForContactFavorites__block_invoke;
  v6[3] = &unk_1E7C257C8;
  v4 = v2;
  v7 = v4;
  [v3 accessFavoriteContactEntriesWithBlock:v6];

  return v4;
}

@end