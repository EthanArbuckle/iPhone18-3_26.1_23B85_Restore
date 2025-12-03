@interface TTKTestCaseRecord
- (TIContinuousPath)touchData;
- (TTKTestCaseRecord)initWithDictionary:(id)dictionary;
- (TTKTestCaseRecord)initWithIntendedText:(id)text additionalIntendedTexts:(id)texts touchDataCollection:(id)collection recordID:(id)d layoutName:(id)name inputText:(id)inputText transliteration:(id)transliteration context:(id)self0 annotations:(id)self1;
- (id)toJsonDictionary;
- (void)setAnnotation:(id)annotation forKey:(id)key;
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

- (void)setAnnotation:(id)annotation forKey:(id)key
{
  annotationCopy = annotation;
  keyCopy = key;
  internalAnnotations = self->_internalAnnotations;
  if (!internalAnnotations)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_internalAnnotations;
    self->_internalAnnotations = dictionary;

    internalAnnotations = self->_internalAnnotations;
  }

  [(NSMutableDictionary *)internalAnnotations setValue:annotationCopy forKey:keyCopy];
}

- (id)toJsonDictionary
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_layoutName forKeyedSubscript:@"layout_name"];
  [dictionary setObject:self->_primaryIntendedText forKeyedSubscript:@"intended_text"];
  [dictionary setObject:self->_recordID forKeyedSubscript:@"record_id"];
  array = [MEMORY[0x277CBEB18] array];
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

        toJsonDictionary = [*(*(&v17 + 1) + 8 * i) toJsonDictionary];
        [array addObject:toJsonDictionary];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [dictionary setObject:array forKeyedSubscript:@"touch_events"];
  additionalIntendedTexts = self->_additionalIntendedTexts;
  if (additionalIntendedTexts)
  {
    [dictionary setObject:additionalIntendedTexts forKeyedSubscript:@"additional_intended_texts"];
  }

  inputText = self->_inputText;
  if (inputText)
  {
    [dictionary setObject:inputText forKeyedSubscript:@"input_text"];
  }

  transliteration = self->_transliteration;
  if (transliteration)
  {
    [dictionary setObject:transliteration forKeyedSubscript:@"transliteration"];
  }

  context = self->_context;
  if (context)
  {
    [dictionary setObject:context forKeyedSubscript:@"context"];
  }

  internalAnnotations = self->_internalAnnotations;
  if (internalAnnotations)
  {
    [dictionary setObject:internalAnnotations forKeyedSubscript:@"annotations"];
  }

  return dictionary;
}

- (TTKTestCaseRecord)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = TTKTestCaseRecord;
  v5 = [(TTKTestCaseRecord *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"layout_name"];
    layoutName = v5->_layoutName;
    v5->_layoutName = v6;

    v8 = [dictionaryCopy objectForKey:@"intended_text"];
    primaryIntendedText = v5->_primaryIntendedText;
    v5->_primaryIntendedText = v8;

    v10 = [dictionaryCopy objectForKey:@"alternate_intended_texts"];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
      additionalIntendedTexts = v5->_additionalIntendedTexts;
      v5->_additionalIntendedTexts = v11;
    }

    v34 = v10;
    v13 = [dictionaryCopy objectForKey:@"input_text"];
    inputText = v5->_inputText;
    v5->_inputText = v13;

    v15 = [dictionaryCopy objectForKey:@"transliteration"];
    transliteration = v5->_transliteration;
    v5->_transliteration = v15;

    v17 = [dictionaryCopy objectForKey:@"record_id"];
    recordID = v5->_recordID;
    v5->_recordID = v17;

    v19 = [dictionaryCopy objectForKey:@"annotations"];
    if (v19)
    {
      v20 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v19];
      internalAnnotations = v5->_internalAnnotations;
      v5->_internalAnnotations = v20;
    }

    v22 = [dictionaryCopy objectForKey:@"context"];
    context = v5->_context;
    v5->_context = v22;

    v24 = [dictionaryCopy objectForKey:@"touch_events"];
    array = [MEMORY[0x277CBEB18] array];
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
          [(NSArray *)array addObject:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v28);
    }

    touchDataCollection = v5->_touchDataCollection;
    v5->_touchDataCollection = array;
  }

  return v5;
}

- (TTKTestCaseRecord)initWithIntendedText:(id)text additionalIntendedTexts:(id)texts touchDataCollection:(id)collection recordID:(id)d layoutName:(id)name inputText:(id)inputText transliteration:(id)transliteration context:(id)self0 annotations:(id)self1
{
  textCopy = text;
  textsCopy = texts;
  collectionCopy = collection;
  dCopy = d;
  nameCopy = name;
  inputTextCopy = inputText;
  transliterationCopy = transliteration;
  contextCopy = context;
  v19 = textsCopy;
  annotationsCopy = annotations;
  v35.receiver = self;
  v35.super_class = TTKTestCaseRecord;
  v21 = [(TTKTestCaseRecord *)&v35 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_primaryIntendedText, text);
    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
    additionalIntendedTexts = v22->_additionalIntendedTexts;
    v22->_additionalIntendedTexts = v23;

    objc_storeStrong(&v22->_inputText, inputText);
    objc_storeStrong(&v22->_transliteration, transliteration);
    objc_storeStrong(&v22->_context, context);
    objc_storeStrong(&v22->_touchDataCollection, collection);
    objc_storeStrong(&v22->_recordID, d);
    objc_storeStrong(&v22->_layoutName, name);
    if (annotationsCopy)
    {
      v25 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:annotationsCopy];
      internalAnnotations = v22->_internalAnnotations;
      v22->_internalAnnotations = v25;
    }
  }

  return v22;
}

@end