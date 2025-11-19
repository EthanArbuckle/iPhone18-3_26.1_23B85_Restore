@interface WBSContactStoreManager
+ (WBSContactStoreManager)sharedContactStoreManager;
- (WBSContactStoreManager)init;
- (id)contactForHandle:(id)a3 error:(id *)a4;
- (id)temporaryContactForIdentity:(id)a3;
@end

@implementation WBSContactStoreManager

+ (WBSContactStoreManager)sharedContactStoreManager
{
  if (sharedContactStoreManager_onceToken != -1)
  {
    +[WBSContactStoreManager sharedContactStoreManager];
  }

  v3 = sharedContactStoreManager_contactStore;

  return v3;
}

void __51__WBSContactStoreManager_sharedContactStoreManager__block_invoke()
{
  v0 = objc_alloc_init(WBSContactStoreManager);
  v1 = sharedContactStoreManager_contactStore;
  sharedContactStoreManager_contactStore = v0;
}

- (WBSContactStoreManager)init
{
  v7.receiver = self;
  v7.super_class = WBSContactStoreManager;
  v2 = [(WBSContactStoreManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = v2;
  }

  return v2;
}

- (id)contactForHandle:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E695CD58] safari_imageViewDescriptors];
    v8 = [v7 mutableCopy];

    v9 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    [v8 addObject:v9];

    v10 = [v6 containsString:@"@"];
    v11 = MEMORY[0x1E695CD58];
    if (v10)
    {
      v12 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v6];
    }

    else
    {
      v14 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v6];
      v12 = [v11 predicateForContactsMatchingPhoneNumber:v14];
    }

    v15 = [(CNContactStore *)self->_contactStore unifiedContactsMatchingPredicate:v12 keysToFetch:v8 error:a4];
    v13 = [v15 safari_firstObjectPassingTest:&__block_literal_global_8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL __49__WBSContactStoreManager_contactForHandle_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safari_fullName];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)temporaryContactForIdentity:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_temporaryContacts)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    temporaryContacts = self->_temporaryContacts;
    self->_temporaryContacts = v5;
  }

  v7 = [v4 userRecordID];

  if (!v7 || (v8 = self->_temporaryContacts, [v4 userRecordID], v9 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v8, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v12 = [v4 nameComponents];
    [v12 overrideComponentsInContact:v11];

    v13 = [v4 lookupInfo];
    v14 = [v13 emailAddress];
    if (v14)
    {
      v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB60] value:v14];
      v28[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v11 setEmailAddresses:v16];
    }

    v17 = [v13 phoneNumber];
    if (v17)
    {
      v18 = MEMORY[0x1E695CEE0];
      v19 = *MEMORY[0x1E695CBC0];
      v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v17];
      v21 = [v18 labeledValueWithLabel:v19 value:v20];
      v27 = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v11 setPhoneNumbers:v22];
    }

    v10 = [v11 copy];
    v23 = [v4 userRecordID];

    if (v23)
    {
      v24 = self->_temporaryContacts;
      v25 = [v4 userRecordID];
      [(NSMutableDictionary *)v24 setObject:v10 forKeyedSubscript:v25];
    }
  }

  return v10;
}

@end