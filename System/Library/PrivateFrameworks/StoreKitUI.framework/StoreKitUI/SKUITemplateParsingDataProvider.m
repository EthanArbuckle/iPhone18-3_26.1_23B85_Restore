@interface SKUITemplateParsingDataProvider
+ (id)templateParsingRegularExpression;
- (SKUITemplateParsingDataProvider)initWithRegularExpression:(id)a3;
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SKUITemplateParsingDataProvider

+ (id)templateParsingRegularExpression
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUITemplateParsingDataProvider *)v2 templateParsingRegularExpression:v3];
      }
    }
  }

  v12 = 0;
  v10 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<script.*?id=(.*?).*?>((?:.|\\n)*?)</script>" options:8 error:&v12];

  return v10;
}

- (SKUITemplateParsingDataProvider)initWithRegularExpression:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUITemplateParsingDataProvider *)v6 initWithRegularExpression:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUITemplateParsingDataProvider;
  v14 = [(SKUITemplateParsingDataProvider *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_regularExpression, a3);
  }

  return v15;
}

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v44[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a4 statusCode];
  if ((v9 - 400) > 0xC7)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    if (v11)
    {
      v35 = v8;
      v16 = [(SKUITemplateParsingDataProvider *)self regularExpression];
      v17 = [v16 matchesInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];

      v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v17, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = v17;
      v19 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v13);
            }

            v23 = *(*(&v36 + 1) + 8 * i);
            if ([v23 numberOfRanges] == 3)
            {
              v24 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v25 = [v23 rangeAtIndex:1];
              v27 = [v11 substringWithRange:{v25, v26}];
              v28 = [v27 stringByTrimmingCharactersInSet:v24];

              v29 = [v23 rangeAtIndex:2];
              v31 = [v11 substringWithRange:{v29, v30}];
              v32 = [v31 stringByTrimmingCharactersInSet:v24];

              [v18 setObject:v32 forKeyedSubscript:v28];
            }

            else
            {
              NSLog(&cfstr_MalformedMatch.isa, v23);
            }
          }

          v20 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v20);
      }

      v15 = [v18 copy];
      v8 = v35;
    }

    else
    {
      if (!a5)
      {
        v15 = 0;
        goto LABEL_20;
      }

      v33 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA688];
      v42 = &unk_2828D2CF0;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      [v33 errorWithDomain:@"SKUITemplateLoaderErrorDomain" code:561214578 userInfo:v13];
      *a5 = v15 = 0;
    }
  }

  else
  {
    if (!a5)
    {
      v15 = 0;
      goto LABEL_21;
    }

    v10 = v9;
    v11 = [MEMORY[0x277CBAB48] localizedStringForStatusCode:v9];
    v12 = MEMORY[0x277CCA9B8];
    v43[0] = @"SKUITemplateLoaderErrorHTTPStatusCodeKey";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v43[1] = *MEMORY[0x277CCA450];
    v44[0] = v13;
    v44[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    *a5 = [v12 errorWithDomain:@"SKUITemplateLoaderErrorDomain" code:1752462448 userInfo:v14];

    v15 = 0;
  }

LABEL_20:
LABEL_21:

  return v15;
}

@end