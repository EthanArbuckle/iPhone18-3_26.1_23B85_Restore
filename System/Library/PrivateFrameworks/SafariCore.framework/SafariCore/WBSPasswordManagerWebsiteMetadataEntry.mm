@interface WBSPasswordManagerWebsiteMetadataEntry
- (BOOL)updateWebsiteName:(id)name;
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordManagerWebsiteMetadataEntry)initWithKeychainDictionary:(id)dictionary forDomain:(id)domain;
- (id)description;
- (id)keychainItemLabelForDomain:(id)domain;
@end

@implementation WBSPasswordManagerWebsiteMetadataEntry

- (WBSPasswordManagerWebsiteMetadataEntry)initWithKeychainDictionary:(id)dictionary forDomain:(id)domain
{
  dictionaryCopy = dictionary;
  domainCopy = domain;
  v31.receiver = self;
  v31.super_class = WBSPasswordManagerWebsiteMetadataEntry;
  v8 = [(WBSPasswordManagerWebsiteMetadataEntry *)&v31 init];
  if (!v8)
  {
LABEL_9:
    v27 = 0;
    goto LABEL_10;
  }

  if (!dictionaryCopy)
  {
    v28 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordManagerWebsiteMetadataEntry initWithKeychainDictionary:domainCopy forDomain:v28];
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [WBSPasswordManagerWebsiteMetadataEntry initWithKeychainDictionary:domainCopy forDomain:v29];
    }

    goto LABEL_9;
  }

  v9 = [dictionaryCopy copy];
  originalBackingDictionary = v8->_originalBackingDictionary;
  v8->_originalBackingDictionary = v9;

  v11 = [(NSDictionary *)v8->_originalBackingDictionary safari_stringForKey:@"wn"];
  websiteName = v8->_websiteName;
  v8->_websiteName = v11;

  v13 = [(NSDictionary *)v8->_originalBackingDictionary safari_dateForKey:@"wn_dm"];
  websiteNameDateLastModified = v8->_websiteNameDateLastModified;
  v8->_websiteNameDateLastModified = v13;

  v15 = [(NSDictionary *)v8->_originalBackingDictionary safari_dateForKey:@"wn_dr"];
  websiteNameDateLastRefreshed = v8->_websiteNameDateLastRefreshed;
  v8->_websiteNameDateLastRefreshed = v15;

  v8->_supportsPasskeys = [(NSDictionary *)v8->_originalBackingDictionary safari_BOOLForKey:@"supportsPasskey"];
  v17 = MEMORY[0x1E695DFF8];
  v18 = [(NSDictionary *)v8->_originalBackingDictionary safari_stringForKey:@"enrollPasskeyURL"];
  v19 = [v17 URLWithString:v18];
  enrollPasskeyURL = v8->_enrollPasskeyURL;
  v8->_enrollPasskeyURL = v19;

  v21 = MEMORY[0x1E695DFF8];
  v22 = [(NSDictionary *)v8->_originalBackingDictionary safari_stringForKey:@"managePasskeyURL"];
  v23 = [v21 URLWithString:v22];
  managePasskeyURL = v8->_managePasskeyURL;
  v8->_managePasskeyURL = v23;

  v25 = [(NSDictionary *)v8->_originalBackingDictionary safari_dateForKey:@"passkeyEndpointsDateLastRefreshed"];
  passkeyEndpointsDateLastRefreshed = v8->_passkeyEndpointsDateLastRefreshed;
  v8->_passkeyEndpointsDateLastRefreshed = v25;

  v27 = v8;
LABEL_10:

  return v27;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p websiteName = %@; websiteNameDateLastModified = %@; websiteNameDateLastRefreshed = %@>", v5, self, self->_websiteName, self->_websiteNameDateLastModified, self->_websiteNameDateLastRefreshed];;

  return v6;
}

- (BOOL)updateWebsiteName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x1E695DF00] now];
  websiteName = self->_websiteName;
  if (websiteName && [(NSString *)websiteName isEqualToString:nameCopy])
  {
    v7 = 0;
  }

  else
  {
    v8 = [nameCopy copy];
    v9 = self->_websiteName;
    self->_websiteName = v8;

    objc_storeStrong(&self->_websiteNameDateLastModified, v5);
    v7 = 1;
  }

  websiteNameDateLastRefreshed = self->_websiteNameDateLastRefreshed;
  self->_websiteNameDateLastRefreshed = v5;

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(NSDictionary *)self->_originalBackingDictionary mutableCopy];
  v4 = v3;
  if (v3)
  {
    dictionary = v3;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = dictionary;

  if ([(NSString *)self->_websiteName length])
  {
    [v6 setObject:self->_websiteName forKeyedSubscript:@"wn"];
  }

  websiteNameDateLastModified = self->_websiteNameDateLastModified;
  if (websiteNameDateLastModified)
  {
    [v6 setObject:websiteNameDateLastModified forKeyedSubscript:@"wn_dm"];
  }

  websiteNameDateLastRefreshed = self->_websiteNameDateLastRefreshed;
  if (websiteNameDateLastRefreshed)
  {
    [v6 setObject:websiteNameDateLastRefreshed forKeyedSubscript:@"wn_dr"];
  }

  if (self->_supportsPasskeys)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v6 setObject:v9 forKeyedSubscript:@"supportsPasskey"];
  }

  enrollPasskeyURL = self->_enrollPasskeyURL;
  if (enrollPasskeyURL)
  {
    absoluteString = [(NSURL *)enrollPasskeyURL absoluteString];
    [v6 setObject:absoluteString forKeyedSubscript:@"enrollPasskeyURL"];
  }

  managePasskeyURL = self->_managePasskeyURL;
  if (managePasskeyURL)
  {
    absoluteString2 = [(NSURL *)managePasskeyURL absoluteString];
    [v6 setObject:absoluteString2 forKeyedSubscript:@"managePasskeyURL"];
  }

  passkeyEndpointsDateLastRefreshed = self->_passkeyEndpointsDateLastRefreshed;
  if (passkeyEndpointsDateLastRefreshed)
  {
    [v6 setObject:passkeyEndpointsDateLastRefreshed forKeyedSubscript:@"passkeyEndpointsDateLastRefreshed"];
  }

  v15 = [v6 copy];

  return v15;
}

- (id)keychainItemLabelForDomain:(id)domain
{
  v3 = MEMORY[0x1E696AEC0];
  domainCopy = domain;
  v5 = _WBSLocalizedString(@"Website Metadata for %@", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  domainCopy = [v3 localizedStringWithFormat:v5, domainCopy];

  return domainCopy;
}

- (void)initWithKeychainDictionary:(uint64_t)a1 forDomain:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = 138478083;
  v6 = a1;
  v7 = 2112;
  v8 = objc_opt_class();
  _os_log_fault_impl(&dword_1B8447000, v3, OS_LOG_TYPE_FAULT, "Error initializing WBSPasswordManagerWebsiteMetadataEntry: received non-Dictionary keychain dictionary for %{private}@; type was %@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithKeychainDictionary:(uint64_t)a1 forDomain:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Error initializing WBSPasswordManagerWebsiteMetadataEntry: received nil keychain dictionary for %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end