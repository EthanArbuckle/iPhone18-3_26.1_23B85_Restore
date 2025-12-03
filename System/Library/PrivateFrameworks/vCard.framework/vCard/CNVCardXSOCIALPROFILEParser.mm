@interface CNVCardXSOCIALPROFILEParser
+ (id)adjust:(id)adjust withParameters:(id)parameters;
+ (id)os_log;
+ (id)parametersForSocialProperty:(id)property;
+ (id)profileFromURL:(id)l;
+ (id)rawForSocialProperty:(id)property;
+ (id)typeForSocialProperty:(id)property;
+ (id)unfold:(id)unfold;
+ (id)unwrapDoubleQuotedProperty:(id)property;
+ (id)urlSuffixForSocialProperty:(id)property;
+ (id)valueWithParser:(id)parser;
+ (void)handleBundleIndentifiersAsList:(id)list socialProfile:(id)profile;
+ (void)handleSpecialCaseUpdateForService:(id)service socialProfile:(id)profile;
+ (void)processExtensionValuesForLines:(id)lines parser:(id)parser;
@end

@implementation CNVCardXSOCIALPROFILEParser

+ (id)os_log
{
  if (os_log_cn_once_token_1_0 != -1)
  {
    +[CNVCardXSOCIALPROFILEParser os_log];
  }

  v3 = os_log_cn_once_object_1_0;

  return v3;
}

uint64_t __37__CNVCardXSOCIALPROFILEParser_os_log__block_invoke()
{
  os_log_cn_once_object_1_0 = os_log_create("com.apple.contacts.vcard", "socialprofile");

  return MEMORY[0x2821F96F8]();
}

+ (id)valueWithParser:(id)parser
{
  unparsedStringForCurrentProperty = [parser unparsedStringForCurrentProperty];
  v5 = [self unfold:unparsedStringForCurrentProperty];
  if ([self propertyLooksLikeDOSAttackString:v5])
  {
    v6 = MEMORY[0x277CBEC10];
  }

  else
  {
    v7 = [self typeForSocialProperty:v5];
    first = [v7 first];
    v9 = [self urlSuffixForSocialProperty:first];

    second = [v9 second];
    v11 = [self profileFromURL:second];

    first2 = [v9 first];
    v13 = [self parametersForSocialProperty:first2];

    v6 = [self adjust:v11 withParameters:v13];
    second2 = [v7 second];
    [self handleSpecialCaseUpdateForService:second2 socialProfile:v11];
  }

  return v6;
}

+ (id)profileFromURL:(id)l
{
  v3 = [MEMORY[0x277CFBEB8] parseSocialProfileURL:l];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  urlString = [v3 urlString];
  [dictionary _cn_setNonNilObject:urlString forKey:@"urlString"];

  username = [v3 username];
  [dictionary _cn_setNonNilObject:username forKey:@"username"];

  userIdentifier = [v3 userIdentifier];
  [dictionary _cn_setNonNilObject:userIdentifier forKey:@"userIdentifier"];

  service = [v3 service];
  [dictionary _cn_setNonNilObject:service forKey:@"service"];

  displayName = [v3 displayName];
  [dictionary _cn_setNonNilObject:displayName forKey:@"displayname"];

  return dictionary;
}

+ (void)processExtensionValuesForLines:(id)lines parser:(id)parser
{
  v27 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  parserCopy = parser;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = linesCopy;
  v21 = [linesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v21)
  {
    v20 = *v23;
    v7 = *MEMORY[0x277CFBD30];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        grouping = [v9 grouping];
        v11 = [parserCopy firstValueForKey:@"X-USERID" inExtensionGroup:grouping];

        grouping2 = [v9 grouping];
        v13 = [parserCopy firstValueForKey:@"X-USER" inExtensionGroup:grouping2];

        grouping3 = [v9 grouping];
        v15 = [parserCopy firstValueForKey:@"X-DISPLAYNAME" inExtensionGroup:grouping3];

        if (!(*(v7 + 16))(v7, v11) || !(*(v7 + 16))(v7, v13) || ((*(v7 + 16))(v7, v15) & 1) == 0)
        {
          value = [v9 value];
          v17 = [value mutableCopy];

          [v17 _cn_setNonNilObject:v11 forKey:@"userIdentifier"];
          [v17 _cn_setNonNilObject:v13 forKey:@"username"];
          [v17 _cn_setNonNilObject:v15 forKey:@"displayname"];
          [v9 setValue:v17];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)urlSuffixForSocialProperty:(id)property
{
  v30 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v25 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:].*?)[:]*(http[s]*:.*?)$" options:17 error:&v25];;
  v5 = v25;
  v6 = [v4 matchesInString:propertyCopy options:0 range:{0, objc_msgSend(propertyCopy, "length")}];
  v7 = v6;
  if (v5)
  {
    os_log = [objc_opt_class() os_log];
    if (!os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      v12 = [MEMORY[0x277CFBE70] pairWithFirst:propertyCopy second:0];
      goto LABEL_6;
    }

    *buf = 138412546;
    v27 = propertyCopy;
    v28 = 2114;
    v29 = v5;
    v9 = "Error: could not extract url suffix from %@: error %{public}@";
    v10 = os_log;
    v11 = 22;
LABEL_4:
    _os_log_impl(&dword_2771F5000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    goto LABEL_5;
  }

  if ([v6 count])
  {
    goto LABEL_10;
  }

  v24 = 0;
  v21 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:].*?)[:]*(x-apple:.*?)$" options:17 error:&v24];;
  v5 = v24;
  v22 = [v21 matchesInString:propertyCopy options:0 range:{0, objc_msgSend(propertyCopy, "length")}];

  if (v5)
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = propertyCopy;
      v28 = 2114;
      v29 = v5;
      _os_log_impl(&dword_2771F5000, os_log2, OS_LOG_TYPE_DEFAULT, "Error: could not extract url suffix from %@: error %{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  if (![v22 count])
  {
LABEL_16:
    v12 = [MEMORY[0x277CFBE70] pairWithFirst:propertyCopy second:0];

    v7 = v22;
    goto LABEL_6;
  }

  v7 = v22;
LABEL_10:
  v5 = [v7 objectAtIndexedSubscript:0];
  if ([v5 numberOfRanges] != 3)
  {
    os_log = [objc_opt_class() os_log];
    if (!os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 138412290;
    v27 = propertyCopy;
    v9 = "Error: could not extract url from %@: too few matched ranges";
    v10 = os_log;
    v11 = 12;
    goto LABEL_4;
  }

  v15 = [v5 rangeAtIndex:1];
  v17 = [propertyCopy substringWithRange:{v15, v16}];
  v18 = [v5 rangeAtIndex:2];
  v20 = [propertyCopy substringWithRange:{v18, v19}];
  v12 = [MEMORY[0x277CFBE70] pairWithFirst:v17 second:v20];

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)typeForSocialProperty:(id)property
{
  v29 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v24 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:].*?)type=(\\w+)[:;](.*$)" options:17 error:&v24];;
  v5 = v24;
  v6 = [v4 matchesInString:propertyCopy options:0 range:{0, objc_msgSend(propertyCopy, "length")}];
  v7 = v6;
  if (v5)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = propertyCopy;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_2771F5000, os_log, OS_LOG_TYPE_DEFAULT, "Error: could not extract type from %@: error %{public}@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (![v6 count])
  {
LABEL_5:
    v9 = [MEMORY[0x277CFBE70] pairWithFirst:propertyCopy second:0];
    goto LABEL_13;
  }

  v10 = [v7 objectAtIndexedSubscript:0];
  if ([v10 numberOfRanges] == 4)
  {
    v11 = [v10 rangeAtIndex:1];
    v13 = [propertyCopy substringWithRange:{v11, v12}];
    v14 = [v10 rangeAtIndex:2];
    v16 = [propertyCopy substringWithRange:{v14, v15}];
    v17 = [v10 rangeAtIndex:3];
    v19 = [propertyCopy substringWithRange:{v17, v18}];
    v20 = [v13 stringByAppendingString:v19];
    v9 = [MEMORY[0x277CFBE70] pairWithFirst:v20 second:v16];
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = propertyCopy;
      _os_log_impl(&dword_2771F5000, os_log2, OS_LOG_TYPE_DEFAULT, "Error: could not extract type from %@: too few matched ranges", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CFBE70] pairWithFirst:propertyCopy second:0];
  }

LABEL_13:
  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)handleSpecialCaseUpdateForService:(id)service socialProfile:(id)profile
{
  serviceCopy = service;
  profileCopy = profile;
  if (serviceCopy)
  {
    v6 = [profileCopy objectForKeyedSubscript:@"service"];

    if (v6)
    {
      v7 = [profileCopy objectForKeyedSubscript:@"service"];
      if ((CNSocialProfileIsStandardServiceName() & 1) == 0)
      {
        [profileCopy setObject:serviceCopy forKeyedSubscript:@"service"];
      }
    }

    else
    {
      [profileCopy setObject:serviceCopy forKeyedSubscript:@"service"];
    }
  }
}

+ (void)handleBundleIndentifiersAsList:(id)list socialProfile:(id)profile
{
  if (list)
  {
    profileCopy = profile;
    v6 = [list componentsSeparatedByString:{@", "}];
    [profileCopy setObject:v6 forKeyedSubscript:@"bundleIdentifiers"];
  }
}

+ (id)adjust:(id)adjust withParameters:(id)parameters
{
  v20 = *MEMORY[0x277D85DE8];
  adjustCopy = adjust;
  parametersCopy = parameters;
  v8 = [parametersCopy objectForKeyedSubscript:@"RAW"];
  if (v8)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_2771F5000, os_log, OS_LOG_TYPE_DEFAULT, "Warning: falling back to extracting social profile from %@", &v18, 0xCu);
    }

    v10 = [self profileFromURL:v8];
    [adjustCopy addEntriesFromDictionary:v10];
  }

  v11 = [parametersCopy objectForKeyedSubscript:@"X-USER"];
  if (v11)
  {
    [adjustCopy setObject:v11 forKeyedSubscript:@"username"];
  }

  v12 = [parametersCopy objectForKeyedSubscript:@"X-DISPLAYNAME"];
  if (v12)
  {
    [adjustCopy setObject:v12 forKeyedSubscript:@"displayname"];
  }

  v13 = [parametersCopy objectForKeyedSubscript:@"X-USERID"];
  if (v13)
  {
    [adjustCopy setObject:v13 forKeyedSubscript:@"userIdentifier"];
  }

  v14 = [parametersCopy objectForKeyedSubscript:@"X-BUNDLEIDENTIFIERS"];
  [self handleBundleIndentifiersAsList:v14 socialProfile:adjustCopy];
  v15 = [parametersCopy objectForKeyedSubscript:@"X-TEAMIDENTIFIER"];
  if (v15)
  {
    [adjustCopy setObject:v15 forKeyedSubscript:@"teamIdentifier"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return adjustCopy;
}

+ (id)parametersForSocialProperty:(id)property
{
  propertyCopy = property;
  v28 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:].*)(x-\\w+)=(.*?)[;]*$" options:17 error:&v28];;
  v6 = v28;
  v7 = [v5 matchesInString:propertyCopy options:0 range:{0, objc_msgSend(propertyCopy, "length")}];
  v8 = v7;
  if (v6)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      +[CNVCardXSOCIALPROFILEParser parametersForSocialProperty:];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    goto LABEL_5;
  }

  if (![v7 count])
  {
    dictionary = [self rawForSocialProperty:propertyCopy];
LABEL_5:
    dictionary2 = dictionary;
    goto LABEL_14;
  }

  v12 = [v8 objectAtIndexedSubscript:0];
  if ([v12 numberOfRanges] == 4)
  {
    v13 = [v12 rangeAtIndex:1];
    v27 = [propertyCopy substringWithRange:{v13, v14}];
    v25 = [self parametersForSocialProperty:v27];
    v15 = [v12 rangeAtIndex:2];
    v26 = [propertyCopy substringWithRange:{v15, v16}];
    uppercaseString = [v26 uppercaseString];
    v18 = [v12 rangeAtIndex:3];
    v20 = [propertyCopy substringWithRange:{v18, v19}];
    v21 = [self unwrapDoubleQuotedProperty:v20];
    v22 = [CNVCardParameterDecoder decodeParameterValue:v21];
    [v25 setObject:v22 forKeyedSubscript:uppercaseString];
    dictionary2 = v25;
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      [(CNVCardXSOCIALPROFILEParser *)propertyCopy parametersForSocialProperty:os_log2];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

LABEL_14:

  return dictionary2;
}

+ (id)rawForSocialProperty:(id)property
{
  propertyCopy = property;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0;
  v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:])(.*?)[;]*$" options:17 error:&v21];;
  v7 = v21;
  v8 = [v6 matchesInString:propertyCopy options:0 range:{0, objc_msgSend(propertyCopy, "length")}];
  v9 = v8;
  if (v7)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      +[CNVCardXSOCIALPROFILEParser parametersForSocialProperty:];
    }

    goto LABEL_5;
  }

  if (![v8 count])
  {
LABEL_5:
    v11 = dictionary;
    goto LABEL_15;
  }

  v12 = [v9 objectAtIndexedSubscript:0];
  if ([v12 numberOfRanges] == 3)
  {
    v13 = [v12 rangeAtIndex:2];
    v15 = [propertyCopy substringWithRange:{v13, v14}];
    if ([v15 length])
    {
      v16 = [self unwrapDoubleQuotedProperty:v15];
      [dictionary setObject:v16 forKeyedSubscript:@"RAW"];
    }

    v17 = dictionary;
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      [(CNVCardXSOCIALPROFILEParser *)propertyCopy parametersForSocialProperty:os_log2];
    }

    v19 = dictionary;
  }

LABEL_15:

  return dictionary;
}

+ (id)unwrapDoubleQuotedProperty:(id)property
{
  propertyCopy = property;
  if (([(__CFString *)propertyCopy isEqualToString:@"]& 1) != 0 || ([(__CFString *)propertyCopy isEqualToString:@"]& 1) != 0)
  {
    v4 = &stru_288651EC0;
LABEL_4:

    propertyCopy = v4;
    goto LABEL_5;
  }

  if ([(__CFString *)propertyCopy hasPrefix:@"]&& [(__CFString *)propertyCopy hasSuffix:@"])
  {
    v4 = [(__CFString *)propertyCopy substringWithRange:1, [(__CFString *)propertyCopy length]- 2];
    goto LABEL_4;
  }

LABEL_5:

  return propertyCopy;
}

+ (id)unfold:(id)unfold
{
  v3 = [unfold stringByReplacingOccurrencesOfString:@"\r\n " withString:&stru_288651EC0];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\r\nt" withString:&stru_288651EC0];

  return v4;
}

+ (void)parametersForSocialProperty:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2771F5000, v0, v1, "Error: could not extract parameters from %@: error %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)parametersForSocialProperty:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2771F5000, a2, OS_LOG_TYPE_ERROR, "Error: could not extract parameters from %@: too few matched ranges", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end