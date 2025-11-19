@interface CNVCardXSOCIALPROFILEParser
+ (id)adjust:(id)a3 withParameters:(id)a4;
+ (id)os_log;
+ (id)parametersForSocialProperty:(id)a3;
+ (id)profileFromURL:(id)a3;
+ (id)rawForSocialProperty:(id)a3;
+ (id)typeForSocialProperty:(id)a3;
+ (id)unfold:(id)a3;
+ (id)unwrapDoubleQuotedProperty:(id)a3;
+ (id)urlSuffixForSocialProperty:(id)a3;
+ (id)valueWithParser:(id)a3;
+ (void)handleBundleIndentifiersAsList:(id)a3 socialProfile:(id)a4;
+ (void)handleSpecialCaseUpdateForService:(id)a3 socialProfile:(id)a4;
+ (void)processExtensionValuesForLines:(id)a3 parser:(id)a4;
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

+ (id)valueWithParser:(id)a3
{
  v4 = [a3 unparsedStringForCurrentProperty];
  v5 = [a1 unfold:v4];
  if ([a1 propertyLooksLikeDOSAttackString:v5])
  {
    v6 = MEMORY[0x277CBEC10];
  }

  else
  {
    v7 = [a1 typeForSocialProperty:v5];
    v8 = [v7 first];
    v9 = [a1 urlSuffixForSocialProperty:v8];

    v10 = [v9 second];
    v11 = [a1 profileFromURL:v10];

    v12 = [v9 first];
    v13 = [a1 parametersForSocialProperty:v12];

    v6 = [a1 adjust:v11 withParameters:v13];
    v14 = [v7 second];
    [a1 handleSpecialCaseUpdateForService:v14 socialProfile:v11];
  }

  return v6;
}

+ (id)profileFromURL:(id)a3
{
  v3 = [MEMORY[0x277CFBEB8] parseSocialProfileURL:a3];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 urlString];
  [v4 _cn_setNonNilObject:v5 forKey:@"urlString"];

  v6 = [v3 username];
  [v4 _cn_setNonNilObject:v6 forKey:@"username"];

  v7 = [v3 userIdentifier];
  [v4 _cn_setNonNilObject:v7 forKey:@"userIdentifier"];

  v8 = [v3 service];
  [v4 _cn_setNonNilObject:v8 forKey:@"service"];

  v9 = [v3 displayName];
  [v4 _cn_setNonNilObject:v9 forKey:@"displayname"];

  return v4;
}

+ (void)processExtensionValuesForLines:(id)a3 parser:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v21 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        v10 = [v9 grouping];
        v11 = [v6 firstValueForKey:@"X-USERID" inExtensionGroup:v10];

        v12 = [v9 grouping];
        v13 = [v6 firstValueForKey:@"X-USER" inExtensionGroup:v12];

        v14 = [v9 grouping];
        v15 = [v6 firstValueForKey:@"X-DISPLAYNAME" inExtensionGroup:v14];

        if (!(*(v7 + 16))(v7, v11) || !(*(v7 + 16))(v7, v13) || ((*(v7 + 16))(v7, v15) & 1) == 0)
        {
          v16 = [v9 value];
          v17 = [v16 mutableCopy];

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

+ (id)urlSuffixForSocialProperty:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:].*?)[:]*(http[s]*:.*?)$" options:17 error:&v25];;
  v5 = v25;
  v6 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;
  if (v5)
  {
    v8 = [objc_opt_class() os_log];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      v12 = [MEMORY[0x277CFBE70] pairWithFirst:v3 second:0];
      goto LABEL_6;
    }

    *buf = 138412546;
    v27 = v3;
    v28 = 2114;
    v29 = v5;
    v9 = "Error: could not extract url suffix from %@: error %{public}@";
    v10 = v8;
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
  v22 = [v21 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

  if (v5)
  {
    v23 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v3;
      v28 = 2114;
      v29 = v5;
      _os_log_impl(&dword_2771F5000, v23, OS_LOG_TYPE_DEFAULT, "Error: could not extract url suffix from %@: error %{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  if (![v22 count])
  {
LABEL_16:
    v12 = [MEMORY[0x277CFBE70] pairWithFirst:v3 second:0];

    v7 = v22;
    goto LABEL_6;
  }

  v7 = v22;
LABEL_10:
  v5 = [v7 objectAtIndexedSubscript:0];
  if ([v5 numberOfRanges] != 3)
  {
    v8 = [objc_opt_class() os_log];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 138412290;
    v27 = v3;
    v9 = "Error: could not extract url from %@: too few matched ranges";
    v10 = v8;
    v11 = 12;
    goto LABEL_4;
  }

  v15 = [v5 rangeAtIndex:1];
  v17 = [v3 substringWithRange:{v15, v16}];
  v18 = [v5 rangeAtIndex:2];
  v20 = [v3 substringWithRange:{v18, v19}];
  v12 = [MEMORY[0x277CFBE70] pairWithFirst:v17 second:v20];

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)typeForSocialProperty:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:].*?)type=(\\w+)[:;](.*$)" options:17 error:&v24];;
  v5 = v24;
  v6 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;
  if (v5)
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v3;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_2771F5000, v8, OS_LOG_TYPE_DEFAULT, "Error: could not extract type from %@: error %{public}@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (![v6 count])
  {
LABEL_5:
    v9 = [MEMORY[0x277CFBE70] pairWithFirst:v3 second:0];
    goto LABEL_13;
  }

  v10 = [v7 objectAtIndexedSubscript:0];
  if ([v10 numberOfRanges] == 4)
  {
    v11 = [v10 rangeAtIndex:1];
    v13 = [v3 substringWithRange:{v11, v12}];
    v14 = [v10 rangeAtIndex:2];
    v16 = [v3 substringWithRange:{v14, v15}];
    v17 = [v10 rangeAtIndex:3];
    v19 = [v3 substringWithRange:{v17, v18}];
    v20 = [v13 stringByAppendingString:v19];
    v9 = [MEMORY[0x277CFBE70] pairWithFirst:v20 second:v16];
  }

  else
  {
    v21 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_2771F5000, v21, OS_LOG_TYPE_DEFAULT, "Error: could not extract type from %@: too few matched ranges", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CFBE70] pairWithFirst:v3 second:0];
  }

LABEL_13:
  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)handleSpecialCaseUpdateForService:(id)a3 socialProfile:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    v6 = [v5 objectForKeyedSubscript:@"service"];

    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:@"service"];
      if ((CNSocialProfileIsStandardServiceName() & 1) == 0)
      {
        [v5 setObject:v8 forKeyedSubscript:@"service"];
      }
    }

    else
    {
      [v5 setObject:v8 forKeyedSubscript:@"service"];
    }
  }
}

+ (void)handleBundleIndentifiersAsList:(id)a3 socialProfile:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = [a3 componentsSeparatedByString:{@", "}];
    [v5 setObject:v6 forKeyedSubscript:@"bundleIdentifiers"];
  }
}

+ (id)adjust:(id)a3 withParameters:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"RAW"];
  if (v8)
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_2771F5000, v9, OS_LOG_TYPE_DEFAULT, "Warning: falling back to extracting social profile from %@", &v18, 0xCu);
    }

    v10 = [a1 profileFromURL:v8];
    [v6 addEntriesFromDictionary:v10];
  }

  v11 = [v7 objectForKeyedSubscript:@"X-USER"];
  if (v11)
  {
    [v6 setObject:v11 forKeyedSubscript:@"username"];
  }

  v12 = [v7 objectForKeyedSubscript:@"X-DISPLAYNAME"];
  if (v12)
  {
    [v6 setObject:v12 forKeyedSubscript:@"displayname"];
  }

  v13 = [v7 objectForKeyedSubscript:@"X-USERID"];
  if (v13)
  {
    [v6 setObject:v13 forKeyedSubscript:@"userIdentifier"];
  }

  v14 = [v7 objectForKeyedSubscript:@"X-BUNDLEIDENTIFIERS"];
  [a1 handleBundleIndentifiersAsList:v14 socialProfile:v6];
  v15 = [v7 objectForKeyedSubscript:@"X-TEAMIDENTIFIER"];
  if (v15)
  {
    [v6 setObject:v15 forKeyedSubscript:@"teamIdentifier"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)parametersForSocialProperty:(id)a3
{
  v4 = a3;
  v28 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:].*)(x-\\w+)=(.*?)[;]*$" options:17 error:&v28];;
  v6 = v28;
  v7 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v8 = v7;
  if (v6)
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CNVCardXSOCIALPROFILEParser parametersForSocialProperty:];
    }

    v10 = [MEMORY[0x277CBEB38] dictionary];
    goto LABEL_5;
  }

  if (![v7 count])
  {
    v10 = [a1 rawForSocialProperty:v4];
LABEL_5:
    v11 = v10;
    goto LABEL_14;
  }

  v12 = [v8 objectAtIndexedSubscript:0];
  if ([v12 numberOfRanges] == 4)
  {
    v13 = [v12 rangeAtIndex:1];
    v27 = [v4 substringWithRange:{v13, v14}];
    v25 = [a1 parametersForSocialProperty:v27];
    v15 = [v12 rangeAtIndex:2];
    v26 = [v4 substringWithRange:{v15, v16}];
    v17 = [v26 uppercaseString];
    v18 = [v12 rangeAtIndex:3];
    v20 = [v4 substringWithRange:{v18, v19}];
    v21 = [a1 unwrapDoubleQuotedProperty:v20];
    v22 = [CNVCardParameterDecoder decodeParameterValue:v21];
    [v25 setObject:v22 forKeyedSubscript:v17];
    v11 = v25;
  }

  else
  {
    v23 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(CNVCardXSOCIALPROFILEParser *)v4 parametersForSocialProperty:v23];
    }

    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

LABEL_14:

  return v11;
}

+ (id)rawForSocialProperty:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0;
  v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(X-SOCIALPROFILE[:])(.*?)[;]*$" options:17 error:&v21];;
  v7 = v21;
  v8 = [v6 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v9 = v8;
  if (v7)
  {
    v10 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CNVCardXSOCIALPROFILEParser parametersForSocialProperty:];
    }

    goto LABEL_5;
  }

  if (![v8 count])
  {
LABEL_5:
    v11 = v5;
    goto LABEL_15;
  }

  v12 = [v9 objectAtIndexedSubscript:0];
  if ([v12 numberOfRanges] == 3)
  {
    v13 = [v12 rangeAtIndex:2];
    v15 = [v4 substringWithRange:{v13, v14}];
    if ([v15 length])
    {
      v16 = [a1 unwrapDoubleQuotedProperty:v15];
      [v5 setObject:v16 forKeyedSubscript:@"RAW"];
    }

    v17 = v5;
  }

  else
  {
    v18 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CNVCardXSOCIALPROFILEParser *)v4 parametersForSocialProperty:v18];
    }

    v19 = v5;
  }

LABEL_15:

  return v5;
}

+ (id)unwrapDoubleQuotedProperty:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:@"]& 1) != 0 || ([(__CFString *)v3 isEqualToString:@"]& 1) != 0)
  {
    v4 = &stru_288651EC0;
LABEL_4:

    v3 = v4;
    goto LABEL_5;
  }

  if ([(__CFString *)v3 hasPrefix:@"]&& [(__CFString *)v3 hasSuffix:@"])
  {
    v4 = [(__CFString *)v3 substringWithRange:1, [(__CFString *)v3 length]- 2];
    goto LABEL_4;
  }

LABEL_5:

  return v3;
}

+ (id)unfold:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"\r\n " withString:&stru_288651EC0];
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