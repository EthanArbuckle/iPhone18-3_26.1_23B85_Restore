@interface CNMECARDParser
+ (id)parseString:(id)string resultFactory:(id)factory error:(id *)error;
+ (void)enumerateTagsInString:(id)string usingBlock:(id)block;
@end

@implementation CNMECARDParser

+ (id)parseString:(id)string resultFactory:(id)factory error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  makeBuilder = [factory makeBuilder];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50__CNMECARDParser_parseString_resultFactory_error___block_invoke;
  v31[3] = &unk_27A711208;
  v13 = makeBuilder;
  v32 = v13;
  v14 = array;
  v33 = v14;
  v15 = array2;
  v34 = v15;
  v16 = array3;
  v35 = v16;
  v17 = array4;
  v36 = v17;
  [self enumerateTagsInString:stringCopy usingBlock:v31];

  v18 = [v14 _cn_map:&__block_literal_global_13];
  v19 = [v14 _cn_map:&__block_literal_global_43];
  [v13 setValues:v14 labels:v18 isPrimaries:v19 forProperty:@"Phone"];

  v20 = [v15 _cn_map:&__block_literal_global_13];
  v21 = [v15 _cn_map:&__block_literal_global_43];
  [v13 setValues:v15 labels:v20 isPrimaries:v21 forProperty:@"Email"];

  v22 = [v16 _cn_map:&__block_literal_global_13];
  v23 = [v16 _cn_map:&__block_literal_global_43];
  [v13 setValues:v16 labels:v22 isPrimaries:v23 forProperty:@"Address"];

  v24 = [v17 _cn_map:&__block_literal_global_13];
  v25 = [v17 _cn_map:&__block_literal_global_43];
  [v13 setValues:v17 labels:v24 isPrimaries:v25 forProperty:@"URLs"];

  build = [v13 build];
  v27 = build;
  if (build)
  {
    v37[0] = build;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __50__CNMECARDParser_parseString_resultFactory_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([@"N" isEqualToString:v5])
  {
    v7 = [MEMORY[0x277CFBE50] componentsFromString:v6];
    v8 = *(a1 + 32);
    v9 = [v7 familyName];
    [v8 setValue:v9 forProperty:@"Last"];

    v10 = *(a1 + 32);
    v11 = [v7 givenName];
    [v10 setValue:v11 forProperty:@"First"];

    v12 = *(a1 + 32);
    v13 = [v7 middleName];
    [v12 setValue:v13 forProperty:@"Middle"];

    v14 = *(a1 + 32);
    v15 = [v7 namePrefix];
    [v14 setValue:v15 forProperty:@"Title"];

    v16 = *(a1 + 32);
    v17 = [v7 nameSuffix];
    [v16 setValue:v17 forProperty:@"Suffix"];

    v18 = *(a1 + 32);
    v19 = [v7 nickname];
    v20 = CNVCardKeyNickname;
LABEL_5:
    [v18 setValue:v19 forProperty:*v20];
    goto LABEL_6;
  }

  if ([@"SOUND" isEqualToString:v5])
  {
    v7 = [MEMORY[0x277CFBE50] componentsFromString:v6];
    v21 = *(a1 + 32);
    v22 = [v7 familyName];
    [v21 setValue:v22 forProperty:@"LastPhonetic"];

    v23 = *(a1 + 32);
    v24 = [v7 givenName];
    [v23 setValue:v24 forProperty:@"FirstPhonetic"];

    v18 = *(a1 + 32);
    v19 = [v7 middleName];
    v20 = CNVCardKeyPhoneticMiddleName;
    goto LABEL_5;
  }

  if ([@"NICKNAME" isEqualToString:v5])
  {
    v26 = *(a1 + 32);
    v27 = CNVCardKeyNickname;
LABEL_11:
    [v26 setValue:v6 forProperty:*v27];
    goto LABEL_8;
  }

  if ([@"TEL" isEqualToString:v5] || objc_msgSend(@"TEL-AV", "isEqualToString:", v5))
  {
    v28 = *(a1 + 40);
LABEL_15:
    [v28 addObject:v6];
    goto LABEL_8;
  }

  if ([@"EMAIL" isEqualToString:v5])
  {
    v28 = *(a1 + 48);
    goto LABEL_15;
  }

  if ([@"ADR" isEqualToString:v5])
  {
    v7 = [MEMORY[0x277CFBE80] postalAddressFromString:v6 error:0];
    if (!v7)
    {
      goto LABEL_7;
    }

    v19 = [MEMORY[0x277CBEB38] dictionary];
    v29 = [v7 objectForKeyedSubscript:*MEMORY[0x277CFBD70]];
    [v19 setObject:v29 forKeyedSubscript:@"street"];

    v30 = [v7 objectForKeyedSubscript:*MEMORY[0x277CFBD50]];
    [v19 setObject:v30 forKeyedSubscript:@"city"];

    v31 = [v7 objectForKeyedSubscript:*MEMORY[0x277CFBD68]];
    [v19 setObject:v31 forKeyedSubscript:@"state"];

    v32 = [v7 objectForKeyedSubscript:*MEMORY[0x277CFBD60]];
    [v19 setObject:v32 forKeyedSubscript:@"postalCode"];

    v33 = [v7 objectForKeyedSubscript:*MEMORY[0x277CFBD58]];
    [v19 setObject:v33 forKeyedSubscript:@"country"];

    [*(a1 + 56) addObject:v19];
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  if ([@"BDAY" isEqualToString:v5])
  {
    if ([v6 length] != 8)
    {
      goto LABEL_8;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v34 = [v6 substringWithRange:{0, 4}];
    [v7 setYear:{objc_msgSend(v34, "integerValue")}];

    v35 = [v6 substringWithRange:{4, 2}];
    [v7 setMonth:{objc_msgSend(v35, "integerValue")}];

    v36 = [v6 substringWithRange:{6, 2}];
    [v7 setDay:{objc_msgSend(v36, "integerValue")}];

    [*(a1 + 32) setValue:v7 forProperty:@"BirthdayComponents"];
    goto LABEL_7;
  }

  if ([@"URL" isEqualToString:v5])
  {
    v28 = *(a1 + 64);
    goto LABEL_15;
  }

  if ([@"NOTE" isEqualToString:v5])
  {
    v26 = *(a1 + 32);
    v27 = CNVCardKeyNote;
    goto LABEL_11;
  }

  v37 = +[CNVCardLogging meCard];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138543618;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_2771F5000, v37, OS_LOG_TYPE_DEFAULT, "Unhandled tag: %{public}@ — %@", &v38, 0x16u);
  }

LABEL_8:
  v25 = *MEMORY[0x277D85DE8];
}

+ (void)enumerateTagsInString:(id)string usingBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = [string substringFromIndex:7];
  v7 = [v6 componentsSeparatedByString:@""];;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = *MEMORY[0x277CFBD30];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (((*(v12 + 16))(v12, v14) & 1) == 0)
        {
          v15 = [v14 rangeOfString:@":"];
          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = +[CNVCardLogging meCard];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v14;
              _os_log_error_impl(&dword_2771F5000, v16, OS_LOG_TYPE_ERROR, "Syntax error: no value separator in field: '%@'", buf, 0xCu);
            }
          }

          else
          {
            v17 = v15;
            v16 = [v14 substringToIndex:v15];
            v18 = [v14 substringFromIndex:v17 + 1];
            blockCopy[2](blockCopy, v16, v18);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end