@interface _ICQXMLSpecification
- (_ICQXMLSpecification)initWithPlaceholderInfo:(id)info;
- (id)placeholderReplacementsWithDeviceInfo:(id)info;
- (id)stringForPlaceholder:(id)placeholder withDeviceInfo:(id)info;
@end

@implementation _ICQXMLSpecification

- (_ICQXMLSpecification)initWithPlaceholderInfo:(id)info
{
  infoCopy = info;
  v6 = [(_ICQXMLSpecification *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeholderInfo, info);
  }

  return v7;
}

- (id)stringForPlaceholder:(id)placeholder withDeviceInfo:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  placeholderCopy = placeholder;
  infoCopy = info;
  if ([placeholderCopy length]> 2)
  {
    placeholderInfo = self->_placeholderInfo;
    v11 = [placeholderCopy substringFromIndex:2];
    v8 = [(NSDictionary *)placeholderInfo objectForKeyedSubscript:v11];

    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v8;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "placeholderDict = %@", &v31, 0xCu);
    }

    if (!v8 || ([v8 objectForKeyedSubscript:@"appId"], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, [v8 objectForKeyedSubscript:@"replacementStrings"], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
    {
      v16 = _ICQGetLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412290;
        v32 = placeholderCopy;
        _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "No placeholder info found for %@ in offer", &v31, 0xCu);
      }

      v9 = 0;
      goto LABEL_22;
    }

    v16 = [v8 objectForKeyedSubscript:@"replacementStrings"];
    v17 = [v8 objectForKeyedSubscript:@"appId"];
    v18 = [v17 isEqualToString:@"com.apple.quota.photoLibrary"];

    if (v18)
    {
      v19 = [v16 objectForKeyedSubscript:@"placeholderKey"];
      v20 = [v16 objectForKeyedSubscript:@"default"];
      v9 = [ICQOfferManager stringWithPlaceholderFormat:v19 alternateString:v20];
    }

    else
    {
      v19 = infoCopy;
      if (!v19)
      {
        v21 = [v8 objectForKeyedSubscript:@"appId"];
        if (!v21)
        {
          v19 = _ICQGetLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v31) = 0;
            _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "placeHolderDict is missing 'appID'", &v31, 2u);
          }

          v9 = 0;
          goto LABEL_21;
        }

        v22 = v21;
        v19 = [_ICQDeviceInfo getInfoWithBundleId:v21];
      }

      v23 = _ICQGetLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v19 key];
        wordsToReplace = [v19 wordsToReplace];
        v31 = 138412546;
        v32 = v24;
        v33 = 2112;
        v34 = wordsToReplace;
        _os_log_impl(&dword_275572000, v23, OS_LOG_TYPE_DEFAULT, "key = %@  wordsToReplace = %@", &v31, 0x16u);
      }

      v26 = [v19 key];
      v27 = [_ICQHelperFunctions stringFromTemplates:v16 key:v26];

      wordsToReplace2 = [v19 wordsToReplace];
      v9 = [_ICQHelperFunctions replaceWordsIn:v27 with:wordsToReplace2];
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_ICQXMLSpecification stringForPlaceholder:placeholderCopy withDeviceInfo:v8];
  }

  v9 = 0;
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)placeholderReplacementsWithDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  placeholderInfo = self->_placeholderInfo;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __62___ICQXMLSpecification_placeholderReplacementsWithDeviceInfo___block_invoke;
  v14 = &unk_27A652BE8;
  v15 = v5;
  v16 = infoCopy;
  v7 = infoCopy;
  v8 = v5;
  [(NSDictionary *)placeholderInfo enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

- (void)stringForPlaceholder:(uint64_t)a1 withDeviceInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Unable to look up placeholder for key %@, becuase it is too short", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end