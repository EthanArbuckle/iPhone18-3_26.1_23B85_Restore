@interface WBSContactStoreManager
+ (WBSContactStoreManager)sharedContactStoreManager;
- (WBSContactStoreManager)init;
- (id)contactForHandle:(id)handle error:(id *)error;
- (id)temporaryContactForIdentity:(id)identity;
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

- (id)contactForHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  if ([handleCopy length])
  {
    safari_imageViewDescriptors = [MEMORY[0x1E695CD58] safari_imageViewDescriptors];
    v8 = [safari_imageViewDescriptors mutableCopy];

    v9 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    [v8 addObject:v9];

    v10 = [handleCopy containsString:@"@"];
    v11 = MEMORY[0x1E695CD58];
    if (v10)
    {
      v12 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:handleCopy];
    }

    else
    {
      v14 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:handleCopy];
      v12 = [v11 predicateForContactsMatchingPhoneNumber:v14];
    }

    v15 = [(CNContactStore *)self->_contactStore unifiedContactsMatchingPredicate:v12 keysToFetch:v8 error:error];
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

- (id)temporaryContactForIdentity:(id)identity
{
  v28[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if (!self->_temporaryContacts)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    temporaryContacts = self->_temporaryContacts;
    self->_temporaryContacts = dictionary;
  }

  userRecordID = [identityCopy userRecordID];

  if (!userRecordID || (v8 = self->_temporaryContacts, [identityCopy userRecordID], v9 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v8, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = objc_alloc_init(MEMORY[0x1E695CF18]);
    nameComponents = [identityCopy nameComponents];
    [nameComponents overrideComponentsInContact:v11];

    lookupInfo = [identityCopy lookupInfo];
    emailAddress = [lookupInfo emailAddress];
    if (emailAddress)
    {
      v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB60] value:emailAddress];
      v28[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v11 setEmailAddresses:v16];
    }

    phoneNumber = [lookupInfo phoneNumber];
    if (phoneNumber)
    {
      v18 = MEMORY[0x1E695CEE0];
      v19 = *MEMORY[0x1E695CBC0];
      v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:phoneNumber];
      v21 = [v18 labeledValueWithLabel:v19 value:v20];
      v27 = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v11 setPhoneNumbers:v22];
    }

    v10 = [v11 copy];
    userRecordID2 = [identityCopy userRecordID];

    if (userRecordID2)
    {
      v24 = self->_temporaryContacts;
      userRecordID3 = [identityCopy userRecordID];
      [(NSMutableDictionary *)v24 setObject:v10 forKeyedSubscript:userRecordID3];
    }
  }

  return v10;
}

@end