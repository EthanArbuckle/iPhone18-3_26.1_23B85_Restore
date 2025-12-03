@interface TTKTestCase
+ (id)convertToIsolatedWordMode:(id)mode;
- (TTKTestCase)initWithDictionary:(id)dictionary;
- (TTKTestCase)initWithMetadata:(id)metadata records:(id)records intendedText:(id)text;
- (id)toJsonDictionary;
@end

@implementation TTKTestCase

- (id)toJsonDictionary
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_metadata forKeyedSubscript:@"metadata"];
  array = [MEMORY[0x277CBEB18] array];
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

        toJsonDictionary = [*(*(&v13 + 1) + 8 * i) toJsonDictionary];
        [array addObject:toJsonDictionary];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [dictionary setObject:array forKeyedSubscript:@"records"];
  annotations = self->_annotations;
  if (annotations)
  {
    [dictionary setObject:annotations forKeyedSubscript:@"annotations"];
  }

  intendedText = self->_intendedText;
  if (intendedText)
  {
    [dictionary setObject:intendedText forKeyedSubscript:@"intended_text"];
  }

  return dictionary;
}

- (TTKTestCase)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = TTKTestCase;
  v5 = [(TTKTestCase *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v8 = [dictionaryCopy objectForKey:@"records"];
    array = [MEMORY[0x277CBEB18] array];
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
          [array addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&v5->_records, array);
    v17 = [dictionaryCopy objectForKey:@"annotations"];
    annotations = v5->_annotations;
    v5->_annotations = v17;

    v19 = [dictionaryCopy objectForKey:@"intended_text"];
    intendedText = v5->_intendedText;
    v5->_intendedText = v19;
  }

  return v5;
}

- (TTKTestCase)initWithMetadata:(id)metadata records:(id)records intendedText:(id)text
{
  metadataCopy = metadata;
  recordsCopy = records;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = TTKTestCase;
  v12 = [(TTKTestCase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_metadata, metadata);
    objc_storeStrong(&v13->_records, records);
    objc_storeStrong(&v13->_intendedText, text);
  }

  return v13;
}

+ (id)convertToIsolatedWordMode:(id)mode
{
  v64 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  intendedText = [modeCopy intendedText];

  if (intendedText)
  {
    array = [MEMORY[0x277CBEB18] array];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    records = [modeCopy records];
    v46 = records;
    v5 = [records countByEnumeratingWithState:&v58 objects:v63 count:16];
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
            objc_enumerationMutation(records);
          }

          v8 = *(*(&v58 + 1) + 8 * i);
          intendedText2 = [modeCopy intendedText];
          v10 = v6;
          metadata = [intendedText2 substringFromIndex:v6];

          primaryIntendedText = [v8 primaryIntendedText];
          if (![primaryIntendedText length])
          {
            goto LABEL_31;
          }

          lowercaseString = [metadata lowercaseString];
          lowercaseString2 = [primaryIntendedText lowercaseString];
          v14 = [lowercaseString rangeOfString:lowercaseString2];
          v16 = v15;

          if (v14 >= 1)
          {
            v17 = 0;
            while (1)
            {
              whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v19 = [whitespaceCharacterSet characterIsMember:{objc_msgSend(metadata, "characterAtIndex:", v17)}];

              if ((v19 & 1) == 0 && [metadata characterAtIndex:v17] != 46 && objc_msgSend(metadata, "characterAtIndex:", v17) != 42)
              {
                break;
              }

              if ((v14 & 0x7FFFFFFF) == ++v17)
              {
                goto LABEL_14;
              }
            }

LABEL_31:
            intendedText = 0;
            goto LABEL_32;
          }

LABEL_14:
          intendedText3 = [modeCopy intendedText];
          v21 = [intendedText3 substringWithRange:{0, v10}];

          [array addObject:v21];
          v22 = v14 + v16;
          while (1)
          {
            intendedText4 = [modeCopy intendedText];
            v6 = v10 + v22;
            if ([intendedText4 length] <= (v10 + v22))
            {
              break;
            }

            v24 = [metadata characterAtIndex:v22] == 32;

            ++v22;
            if (!v24)
            {
              v6 = v10 + v22 - 1;
              goto LABEL_19;
            }
          }

LABEL_19:
          records = v46;
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
    records2 = [modeCopy records];
    obj = records2;
    v26 = [records2 countByEnumeratingWithState:&v54 objects:v62 count:16];
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
          touchData = [v29 touchData];
          v31 = touchData == 0;

          if (!v31)
          {
            v32 = [TTKTestCaseRecord alloc];
            primaryIntendedText2 = [v29 primaryIntendedText];
            additionalIntendedTexts = [v29 additionalIntendedTexts];
            touchDataCollection = [v29 touchDataCollection];
            recordID = [v29 recordID];
            layoutName = [v29 layoutName];
            inputText = [v29 inputText];
            transliteration = [v29 transliteration];
            v38 = [array objectAtIndex:v27];
            annotations = [v29 annotations];
            v40 = [(TTKTestCaseRecord *)v32 initWithIntendedText:primaryIntendedText2 additionalIntendedTexts:additionalIntendedTexts touchDataCollection:touchDataCollection recordID:recordID layoutName:layoutName inputText:inputText transliteration:transliteration context:v38 annotations:annotations];
            [v46 addObject:v40];
          }

          ++v27;
          ++v28;
        }

        while (v49 != v28);
        records2 = obj;
        v26 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v26);
    }

    v41 = [TTKTestCase alloc];
    metadata = [modeCopy metadata];
    primaryIntendedText = [modeCopy intendedText];
    intendedText = [(TTKTestCase *)v41 initWithMetadata:metadata records:v46 intendedText:?];
LABEL_32:
  }

  return intendedText;
}

@end