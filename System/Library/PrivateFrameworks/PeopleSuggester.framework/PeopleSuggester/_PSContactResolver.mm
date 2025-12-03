@interface _PSContactResolver
+ (id)handlesForContactFavorites;
+ (id)normalizedHandlesDictionaryFromHandles:(id)handles;
- (_PSContactResolver)initWithContactStore:(id)store keysToFetch:(id)fetch;
- (id)allEmailAndPhoneNumberHandlesForContact:(id)contact;
- (id)contactWithIdentifier:(id)identifier;
- (id)resolveContact:(id)contact;
- (id)resolveContactFromINPerson:(id)person;
- (id)resolveContactIdentifier:(id)identifier;
- (id)resolveContactIfPossibleFromContactIdentifierString:(id)string pickFirstOfMultiple:(BOOL)multiple;
@end

@implementation _PSContactResolver

- (_PSContactResolver)initWithContactStore:(id)store keysToFetch:(id)fetch
{
  storeCopy = store;
  fetchCopy = fetch;
  v12.receiver = self;
  v12.super_class = _PSContactResolver;
  v9 = [(_PSContactResolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_keysToFetch, fetch);
  }

  return v10;
}

- (id)contactWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactStore = [(_PSContactResolver *)self contactStore];
  keysToFetch = [(_PSContactResolver *)self keysToFetch];
  v7 = [contactStore unifiedContactWithIdentifier:identifierCopy keysToFetch:keysToFetch error:0];

  return v7;
}

- (id)resolveContactFromINPerson:(id)person
{
  personCopy = person;
  contactIdentifier = [personCopy contactIdentifier];

  if (!contactIdentifier || ([personCopy contactIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[_PSContactResolver contactWithIdentifier:](self, "contactWithIdentifier:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    personHandle = [personCopy personHandle];
    value = [personHandle value];

    if (value)
    {
      personHandle2 = [personCopy personHandle];
      value2 = [personHandle2 value];
      v7 = [(_PSContactResolver *)self resolveContactIfPossibleFromContactIdentifierString:value2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)allEmailAndPhoneNumberHandlesForContact:(id)contact
{
  v24 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  phoneNumbers = [contactCopy phoneNumbers];
  v5 = [phoneNumbers valueForKey:@"value"];

  array = [MEMORY[0x1E695DF70] array];
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
        unformattedInternationalStringValue = [v12 unformattedInternationalStringValue];

        if (unformattedInternationalStringValue)
        {
          unformattedInternationalStringValue2 = [v12 unformattedInternationalStringValue];
          [array addObject:unformattedInternationalStringValue2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  emailAddresses = [contactCopy emailAddresses];
  v16 = [emailAddresses valueForKey:@"value"];

  [array addObjectsFromArray:v16];
  v17 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)resolveContactIdentifier:(id)identifier
{
  v32[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_15;
  }

  if (!getuid())
  {
    goto LABEL_15;
  }

  identifier = [identifierCopy identifier];

  if (!identifier)
  {
    goto LABEL_15;
  }

  identifier2 = [identifierCopy identifier];
  v7 = [identifier2 containsString:@"@"];

  CNContactClass_2 = getCNContactClass_2();
  if (v7)
  {
    identifier3 = [identifierCopy identifier];
    v10 = [CNContactClass_2 predicateForContactsMatchingEmailAddress:identifier3];
  }

  else
  {
    CNPhoneNumberClass_0 = getCNPhoneNumberClass_0();
    identifier3 = [identifierCopy identifier];
    v12 = [CNPhoneNumberClass_0 phoneNumberWithStringValue:identifier3];
    v10 = [CNContactClass_2 predicateForContactsMatchingPhoneNumber:v12];
  }

  if (!v10)
  {
LABEL_15:
    identifier4 = 0;
    goto LABEL_16;
  }

  contactStore = [(_PSContactResolver *)self contactStore];
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
  v19 = [contactStore unifiedContactsMatchingPredicate:v10 keysToFetch:v18 error:v26];
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
    identifier4 = 0;
    firstObject = v19;
    goto LABEL_22;
  }

  firstObject = [v19 firstObject];
  identifier4 = [firstObject identifier];
  v20 = v19;
LABEL_22:

LABEL_16:
  v23 = *MEMORY[0x1E69E9840];

  return identifier4;
}

- (id)resolveContact:(id)contact
{
  if (contact)
  {
    identifier = [contact identifier];
    v5 = [(_PSContactResolver *)self resolveContactIfPossibleFromContactIdentifierString:identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resolveContactIfPossibleFromContactIdentifierString:(id)string pickFirstOfMultiple:(BOOL)multiple
{
  multipleCopy = multiple;
  stringCopy = string;
  v7 = stringCopy;
  if (!stringCopy)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v8 = [stringCopy containsString:@"@"];
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
  contactStore = [(_PSContactResolver *)self contactStore];
  keysToFetch = [(_PSContactResolver *)self keysToFetch];
  v14 = _PSResolveContactWithPredicate(v11, contactStore, keysToFetch, multipleCopy);

LABEL_8:
LABEL_9:

  return v14;
}

+ (id)normalizedHandlesDictionaryFromHandles:(id)handles
{
  v20 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = handlesCopy;
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
          unformattedInternationalStringValue = [v11 unformattedInternationalStringValue];
          if ([unformattedInternationalStringValue length])
          {
            [v4 setObject:unformattedInternationalStringValue forKeyedSubscript:v10];
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
  mEMORY[0x1E69978A8] = [MEMORY[0x1E69978A8] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___PSContactResolver_handlesForContactFavorites__block_invoke;
  v6[3] = &unk_1E7C257C8;
  v4 = v2;
  v7 = v4;
  [mEMORY[0x1E69978A8] accessFavoriteContactEntriesWithBlock:v6];

  return v4;
}

@end