@interface WBSGeneratedPassword
+ (id)keychainDictionaryRepresentationWithPassword:(id)password;
- (WBSGeneratedPassword)initWithKeychainItemDictionary:(id)dictionary;
- (id)_initWithPassword:(id)password protectionSpace:(id)space generationDate:(id)date wasGeneratedInPrivateBrowsingSession:(BOOL)session keychainPersistentReference:(id)reference originalDictionary:(id)dictionary;
- (id)keychainDictionaryRepresentationWithPassword:(id)password;
@end

@implementation WBSGeneratedPassword

+ (id)keychainDictionaryRepresentationWithPassword:(id)password
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (password)
  {
    v8 = @"pwd";
    v9[0] = password;
    v3 = MEMORY[0x1E695DF20];
    passwordCopy = password;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (WBSGeneratedPassword)initWithKeychainItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  [v5 doubleValue];
  v7 = v6;

  v8 = *MEMORY[0x1E697AE80];
  v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v10 = [v9 isEqualToString:@"Saved In Private Browsing"];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE00]];
    v14 = WBSHTTPProtocolFromSecAttrProtocolValue(v13);
    [v12 setScheme:v14];

    v15 = [dictionaryCopy objectForKeyedSubscript:v8];
    [v12 setHost:v15];

    v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697ADF8]];
    [v12 setPort:v16];

    v17 = MEMORY[0x1E695AC58];
    v18 = [v12 URL];
    v11 = [v17 safari_HTMLFormProtectionSpaceForURL:v18];
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  if (v19)
  {
    v31 = 0;
    v20 = [MEMORY[0x1E696AE40] propertyListWithData:v19 options:0 format:0 error:&v31];
    v21 = v31;
    if (v20)
    {
      v22 = [v20 objectForKeyedSubscript:@"pwd"];
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
      v24 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
      selfCopy = self;
      v26 = v24;
      v27 = [(WBSGeneratedPassword *)selfCopy _initWithPassword:v22 protectionSpace:v11 generationDate:v23 wasGeneratedInPrivateBrowsingSession:v10 keychainPersistentReference:v24 originalDictionary:v20];

      self = v27;
    }

    else
    {
      v29 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(WBSGeneratedPassword *)v29 initWithKeychainItemDictionary:v21];
      }

      v27 = 0;
    }
  }

  else
  {
    v28 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPassword initWithKeychainItemDictionary:v28];
    }

    v27 = 0;
  }

  return v27;
}

- (id)_initWithPassword:(id)password protectionSpace:(id)space generationDate:(id)date wasGeneratedInPrivateBrowsingSession:(BOOL)session keychainPersistentReference:(id)reference originalDictionary:(id)dictionary
{
  passwordCopy = password;
  spaceCopy = space;
  dateCopy = date;
  referenceCopy = reference;
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = WBSGeneratedPassword;
  v19 = [(WBSGeneratedPassword *)&v31 init];
  if (v19)
  {
    v20 = [dictionaryCopy copy];
    originalKeychainDictionary = v19->_originalKeychainDictionary;
    v19->_originalKeychainDictionary = v20;

    v22 = [passwordCopy copy];
    password = v19->_password;
    v19->_password = v22;

    v24 = [spaceCopy copy];
    protectionSpace = v19->_protectionSpace;
    v19->_protectionSpace = v24;

    objc_storeStrong(&v19->_generationDate, date);
    v19->_wasGeneratedInPrivateBrowsingSession = session;
    objc_storeStrong(&v19->_keychainPersistentReference, reference);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v19->_identifier;
    v19->_identifier = uUIDString;

    v29 = v19;
  }

  return v19;
}

- (id)keychainDictionaryRepresentationWithPassword:(id)password
{
  if (self->_originalKeychainDictionary)
  {
    originalKeychainDictionary = self->_originalKeychainDictionary;
  }

  else
  {
    originalKeychainDictionary = MEMORY[0x1E695E0F8];
  }

  passwordCopy = password;
  v5 = [(NSDictionary *)originalKeychainDictionary mutableCopy];
  [v5 setObject:passwordCopy forKeyedSubscript:@"pwd"];

  return v5;
}

- (void)initWithKeychainItemDictionary:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Unable to unarchive data blob from generated password item: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithKeychainItemDictionary:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B8447000, v1, OS_LOG_TYPE_ERROR, "Found non-Data object in data field of generated password item: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end