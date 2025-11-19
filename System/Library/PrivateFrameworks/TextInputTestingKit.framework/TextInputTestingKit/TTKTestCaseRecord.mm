@interface TTKTestCaseRecord
- (TIContinuousPath)touchData;
- (TTKTestCaseRecord)initWithDictionary:(id)a3;
- (TTKTestCaseRecord)initWithIntendedText:(id)a3 additionalIntendedTexts:(id)a4 touchDataCollection:(id)a5 recordID:(id)a6 layoutName:(id)a7 inputText:(id)a8 transliteration:(id)a9 context:(id)a10 annotations:(id)a11;
- (id)toJsonDictionary;
- (void)setAnnotation:(id)a3 forKey:(id)a4;
@end

@implementation TTKTestCaseRecord

- (TIContinuousPath)touchData
{
  v3 = [(NSArray *)self->_touchDataCollection count];
  if (v3)
  {
    v3 = [(NSArray *)self->_touchDataCollection objectAtIndex:0];
  }

  return v3;
}

- (void)setAnnotation:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  internalAnnotations = self->_internalAnnotations;
  if (!internalAnnotations)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_internalAnnotations;
    self->_internalAnnotations = v8;

    internalAnnotations = self->_internalAnnotations;
  }

  [(NSMutableDictionary *)internalAnnotations setValue:v10 forKey:v6];
}

- (id)toJsonDictionary
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_layoutName forKeyedSubscript:@"layout_name"];
  [v3 setObject:self->_primaryIntendedText forKeyedSubscript:@"intended_text"];
  [v3 setObject:self->_recordID forKeyedSubscript:@"record_id"];
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_touchDataCollection;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) toJsonDictionary];
        [v4 addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"touch_events"];
  additionalIntendedTexts = self->_additionalIntendedTexts;
  if (additionalIntendedTexts)
  {
    [v3 setObject:additionalIntendedTexts forKeyedSubscript:@"additional_intended_texts"];
  }

  inputText = self->_inputText;
  if (inputText)
  {
    [v3 setObject:inputText forKeyedSubscript:@"input_text"];
  }

  transliteration = self->_transliteration;
  if (transliteration)
  {
    [v3 setObject:transliteration forKeyedSubscript:@"transliteration"];
  }

  context = self->_context;
  if (context)
  {
    [v3 setObject:context forKeyedSubscript:@"context"];
  }

  internalAnnotations = self->_internalAnnotations;
  if (internalAnnotations)
  {
    [v3 setObject:internalAnnotations forKeyedSubscript:@"annotations"];
  }

  return v3;
}

- (TTKTestCaseRecord)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = TTKTestCaseRecord;
  v5 = [(TTKTestCaseRecord *)&v39 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"layout_name"];
    layoutName = v5->_layoutName;
    v5->_layoutName = v6;

    v8 = [v4 objectForKey:@"intended_text"];
    primaryIntendedText = v5->_primaryIntendedText;
    v5->_primaryIntendedText = v8;

    v10 = [v4 objectForKey:@"alternate_intended_texts"];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
      additionalIntendedTexts = v5->_additionalIntendedTexts;
      v5->_additionalIntendedTexts = v11;
    }

    v34 = v10;
    v13 = [v4 objectForKey:@"input_text"];
    inputText = v5->_inputText;
    v5->_inputText = v13;

    v15 = [v4 objectForKey:@"transliteration"];
    transliteration = v5->_transliteration;
    v5->_transliteration = v15;

    v17 = [v4 objectForKey:@"record_id"];
    recordID = v5->_recordID;
    v5->_recordID = v17;

    v19 = [v4 objectForKey:@"annotations"];
    if (v19)
    {
      v20 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v19];
      internalAnnotations = v5->_internalAnnotations;
      v5->_internalAnnotations = v20;
    }

    v22 = [v4 objectForKey:@"context"];
    context = v5->_context;
    v5->_context = v22;

    v24 = [v4 objectForKey:@"touch_events"];
    v25 = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        v30 = 0;
        do
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[TIContinuousPath alloc] initWithJsonDictionary:*(*(&v35 + 1) + 8 * v30)];
          [(NSArray *)v25 addObject:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v28);
    }

    touchDataCollection = v5->_touchDataCollection;
    v5->_touchDataCollection = v25;
  }

  return v5;
}

- (TTKTestCaseRecord)initWithIntendedText:(id)a3 additionalIntendedTexts:(id)a4 touchDataCollection:(id)a5 recordID:(id)a6 layoutName:(id)a7 inputText:(id)a8 transliteration:(id)a9 context:(id)a10 annotations:(id)a11
{
  v34 = a3;
  v18 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v28 = a10;
  v19 = v18;
  v20 = a11;
  v35.receiver = self;
  v35.super_class = TTKTestCaseRecord;
  v21 = [(TTKTestCaseRecord *)&v35 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_primaryIntendedText, a3);
    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
    additionalIntendedTexts = v22->_additionalIntendedTexts;
    v22->_additionalIntendedTexts = v23;

    objc_storeStrong(&v22->_inputText, a8);
    objc_storeStrong(&v22->_transliteration, a9);
    objc_storeStrong(&v22->_context, a10);
    objc_storeStrong(&v22->_touchDataCollection, a5);
    objc_storeStrong(&v22->_recordID, a6);
    objc_storeStrong(&v22->_layoutName, a7);
    if (v20)
    {
      v25 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
      internalAnnotations = v22->_internalAnnotations;
      v22->_internalAnnotations = v25;
    }
  }

  return v22;
}

@end