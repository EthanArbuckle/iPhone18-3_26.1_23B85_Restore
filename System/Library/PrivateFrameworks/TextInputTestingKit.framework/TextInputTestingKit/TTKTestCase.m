@interface TTKTestCase
+ (id)convertToIsolatedWordMode:(id)a3;
- (TTKTestCase)initWithDictionary:(id)a3;
- (TTKTestCase)initWithMetadata:(id)a3 records:(id)a4 intendedText:(id)a5;
- (id)toJsonDictionary;
@end

@implementation TTKTestCase

- (id)toJsonDictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_metadata forKeyedSubscript:@"metadata"];
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_records;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) toJsonDictionary];
        [v4 addObject:v9];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 setObject:v4 forKeyedSubscript:@"records"];
  annotations = self->_annotations;
  if (annotations)
  {
    [v3 setObject:annotations forKeyedSubscript:@"annotations"];
  }

  intendedText = self->_intendedText;
  if (intendedText)
  {
    [v3 setObject:intendedText forKeyedSubscript:@"intended_text"];
  }

  return v3;
}

- (TTKTestCase)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TTKTestCase;
  v5 = [(TTKTestCase *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v8 = [v4 objectForKey:@"records"];
    v9 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = [TTKTestCaseRecord alloc];
          v16 = [(TTKTestCaseRecord *)v15 initWithDictionary:v14, v22];
          [v9 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&v5->_records, v9);
    v17 = [v4 objectForKey:@"annotations"];
    annotations = v5->_annotations;
    v5->_annotations = v17;

    v19 = [v4 objectForKey:@"intended_text"];
    intendedText = v5->_intendedText;
    v5->_intendedText = v19;
  }

  return v5;
}

- (TTKTestCase)initWithMetadata:(id)a3 records:(id)a4 intendedText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TTKTestCase;
  v12 = [(TTKTestCase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_metadata, a3);
    objc_storeStrong(&v13->_records, a4);
    objc_storeStrong(&v13->_intendedText, a5);
  }

  return v13;
}

+ (id)convertToIsolatedWordMode:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v3 = [v43 intendedText];

  if (v3)
  {
    v45 = [MEMORY[0x277CBEB18] array];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v4 = [v43 records];
    v46 = v4;
    v5 = [v4 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v5)
    {
      v6 = 0;
      v50 = *v59;
      while (2)
      {
        v48 = v5;
        for (i = 0; i != v48; ++i)
        {
          if (*v59 != v50)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v58 + 1) + 8 * i);
          v9 = [v43 intendedText];
          v10 = v6;
          v11 = [v9 substringFromIndex:v6];

          v52 = [v8 primaryIntendedText];
          if (![v52 length])
          {
            goto LABEL_31;
          }

          v12 = [v11 lowercaseString];
          v13 = [v52 lowercaseString];
          v14 = [v12 rangeOfString:v13];
          v16 = v15;

          if (v14 >= 1)
          {
            v17 = 0;
            while (1)
            {
              v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v19 = [v18 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", v17)}];

              if ((v19 & 1) == 0 && [v11 characterAtIndex:v17] != 46 && objc_msgSend(v11, "characterAtIndex:", v17) != 42)
              {
                break;
              }

              if ((v14 & 0x7FFFFFFF) == ++v17)
              {
                goto LABEL_14;
              }
            }

LABEL_31:
            v3 = 0;
            goto LABEL_32;
          }

LABEL_14:
          v20 = [v43 intendedText];
          v21 = [v20 substringWithRange:{0, v10}];

          [v45 addObject:v21];
          v22 = v14 + v16;
          while (1)
          {
            v23 = [v43 intendedText];
            v6 = v10 + v22;
            if ([v23 length] <= (v10 + v22))
            {
              break;
            }

            v24 = [v11 characterAtIndex:v22] == 32;

            ++v22;
            if (!v24)
            {
              v6 = v10 + v22 - 1;
              goto LABEL_19;
            }
          }

LABEL_19:
          v4 = v46;
        }

        v5 = [v46 countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v46 = v55 = 0u;
    v25 = [v43 records];
    obj = v25;
    v26 = [v25 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v26)
    {
      LODWORD(v27) = 0;
      v47 = *v55;
      do
      {
        v28 = 0;
        v27 = v27;
        v49 = v26;
        do
        {
          if (*v55 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v54 + 1) + 8 * v28);
          v30 = [v29 touchData];
          v31 = v30 == 0;

          if (!v31)
          {
            v32 = [TTKTestCaseRecord alloc];
            v53 = [v29 primaryIntendedText];
            v51 = [v29 additionalIntendedTexts];
            v33 = [v29 touchDataCollection];
            v34 = [v29 recordID];
            v35 = [v29 layoutName];
            v36 = [v29 inputText];
            v37 = [v29 transliteration];
            v38 = [v45 objectAtIndex:v27];
            v39 = [v29 annotations];
            v40 = [(TTKTestCaseRecord *)v32 initWithIntendedText:v53 additionalIntendedTexts:v51 touchDataCollection:v33 recordID:v34 layoutName:v35 inputText:v36 transliteration:v37 context:v38 annotations:v39];
            [v46 addObject:v40];
          }

          ++v27;
          ++v28;
        }

        while (v49 != v28);
        v25 = obj;
        v26 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v26);
    }

    v41 = [TTKTestCase alloc];
    v11 = [v43 metadata];
    v52 = [v43 intendedText];
    v3 = [(TTKTestCase *)v41 initWithMetadata:v11 records:v46 intendedText:?];
LABEL_32:
  }

  return v3;
}

@end