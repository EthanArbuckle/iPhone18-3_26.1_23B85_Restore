@interface VSRecognitionDisambiguateAction
- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)a3 info:(void *)a4;
- (__VSRecognitionDisambiguationContext)_disambiguationContext;
- (id)_actionForEmptyResults;
- (id)_keywords;
- (id)knownValueForClassIdentifier:(id)a3;
- (id)knownValuesForClassIdentifier:(id)a3;
- (void)dealloc;
- (void)setAmbiguousValues:(id)a3 phoneticValues:(id)a4 forClassIdentifier:(id)a5;
- (void)setKeywords:(id)a3;
- (void)setKnownValue:(id)a3 phoneticValue:(id)a4 forClassIdentifier:(id)a5;
- (void)setKnownValues:(id)a3 phoneticValues:(id)a4 forClassIdentifier:(id)a5;
- (void)setRepeatedSpokenFeedbackString:(id)a3;
- (void)setSequenceTag:(id)a3;
@end

@implementation VSRecognitionDisambiguateAction

- (id)_actionForEmptyResults
{
  [(VSRecognitionRecognizeAction *)self _reset];
  if ([(NSString *)self->_repeatedSpokenFeedbackString length])
  {
    [(VSRecognitionAction *)self setSpokenFeedbackString:self->_repeatedSpokenFeedbackString];
  }

  return self;
}

- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)a3 info:(void *)a4
{
  v7 = [(VSRecognitionRecognizeAction *)self modelIdentifier];
  result = [(VSRecognitionDisambiguateAction *)self _disambiguationContext];
  if (result)
  {
    v9 = result;
    v10 = *MEMORY[0x277CBECE8];
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = @"_default";
    }

    return _VSRecognitionCreate(v10, v11, v9, a3, a4);
  }

  return result;
}

- (__VSRecognitionDisambiguationContext)_disambiguationContext
{
  if (!self->_context && [(NSString *)self->super._modelIdentifier length]&& [(NSString *)self->_sequenceTag length]&& [(NSMutableDictionary *)self->_knownValues count]&& [(NSMutableDictionary *)self->_ambiguousValues count])
  {
    self->_context = VSRecognitionDisambiguationContextCreate(*MEMORY[0x277CBECE8], self->super._modelIdentifier, self->_sequenceTag, self->_knownValues, self->_knownPhoneticValues, self->_ambiguousValues, self->_ambiguousPhoneticValues);
  }

  return self->_context;
}

- (void)setKeywords:(id)a3
{
  keywords = self->super._keywords;
  if (keywords != a3)
  {

    self->super._keywords = a3;
  }
}

- (id)_keywords
{
  v18 = *MEMORY[0x277D85DE8];
  result = self->super._keywords;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    ambiguousValues = self->_ambiguousValues;
    if (ambiguousValues)
    {
      CFDictionaryApplyFunction(ambiguousValues, _AddAmbiguousKeywords, v4);
    }

    knownValues = self->_knownValues;
    if (knownValues)
    {
      CFDictionaryApplyFunction(knownValues, _AddKnownKeywords, v4);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v4);
          }

          [(NSArray *)v5 addObject:*(*(&v13 + 1) + 8 * i)];
        }

        v9 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    self->super._keywords = v5;

    result = self->super._keywords;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAmbiguousValues:(id)a3 phoneticValues:(id)a4 forClassIdentifier:(id)a5
{
  v9 = [a3 count];
  ambiguousValues = self->_ambiguousValues;
  if (v9)
  {
    if (!ambiguousValues)
    {
      ambiguousValues = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_ambiguousValues = ambiguousValues;
    }

    [(NSMutableDictionary *)ambiguousValues setObject:a3 forKey:a5];
    if ([a4 count] == v9)
    {
      ambiguousPhoneticValues = self->_ambiguousPhoneticValues;
      if (!ambiguousPhoneticValues)
      {
        ambiguousPhoneticValues = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_ambiguousPhoneticValues = ambiguousPhoneticValues;
      }

      [(NSMutableDictionary *)ambiguousPhoneticValues setObject:a4 forKey:a5];
    }
  }

  else
  {
    [(NSMutableDictionary *)ambiguousValues removeObjectForKey:a5];
    v12 = self->_ambiguousPhoneticValues;

    [(NSMutableDictionary *)v12 removeObjectForKey:a5];
  }
}

- (void)setKnownValues:(id)a3 phoneticValues:(id)a4 forClassIdentifier:(id)a5
{
  v9 = [a3 count];
  knownValues = self->_knownValues;
  if (v9)
  {
    if (!knownValues)
    {
      knownValues = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_knownValues = knownValues;
    }

    [(NSMutableDictionary *)knownValues setObject:a3 forKey:a5];
    v11 = [a4 count];
    knownPhoneticValues = self->_knownPhoneticValues;
    if (v11)
    {
      if (!knownPhoneticValues)
      {
        knownPhoneticValues = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_knownPhoneticValues = knownPhoneticValues;
      }

      [(NSMutableDictionary *)knownPhoneticValues setObject:a4 forKey:a5];
      return;
    }
  }

  else
  {
    [(NSMutableDictionary *)knownValues removeObjectForKey:a5];
    knownPhoneticValues = self->_knownPhoneticValues;
  }

  [(NSMutableDictionary *)knownPhoneticValues removeObjectForKey:a5];
}

- (id)knownValuesForClassIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_knownValues objectForKey:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v3;
  }

  v4 = MEMORY[0x277CBEA60];

  return [v4 arrayWithObject:v3];
}

- (void)setKnownValue:(id)a3 phoneticValue:(id)a4 forClassIdentifier:(id)a5
{
  v9 = [a3 length];
  knownValues = self->_knownValues;
  if (v9)
  {
    if (!knownValues)
    {
      knownValues = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_knownValues = knownValues;
    }

    [(NSMutableDictionary *)knownValues setObject:a3 forKey:a5];
    v11 = [a4 length];
    knownPhoneticValues = self->_knownPhoneticValues;
    if (v11)
    {
      if (!knownPhoneticValues)
      {
        knownPhoneticValues = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_knownPhoneticValues = knownPhoneticValues;
      }

      [(NSMutableDictionary *)knownPhoneticValues setObject:a4 forKey:a5];
      return;
    }
  }

  else
  {
    [(NSMutableDictionary *)knownValues removeObjectForKey:a5];
    knownPhoneticValues = self->_knownPhoneticValues;
  }

  [(NSMutableDictionary *)knownPhoneticValues removeObjectForKey:a5];
}

- (id)knownValueForClassIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_knownValues objectForKey:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v3;
  }

  return [v3 lastObject];
}

- (void)setSequenceTag:(id)a3
{
  sequenceTag = self->_sequenceTag;
  if (sequenceTag != a3)
  {

    self->_sequenceTag = a3;
  }
}

- (void)setRepeatedSpokenFeedbackString:(id)a3
{
  repeatedSpokenFeedbackString = self->_repeatedSpokenFeedbackString;
  if (repeatedSpokenFeedbackString != a3)
  {

    self->_repeatedSpokenFeedbackString = a3;
  }
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    CFRelease(context);
  }

  v4.receiver = self;
  v4.super_class = VSRecognitionDisambiguateAction;
  [(VSRecognitionRecognizeAction *)&v4 dealloc];
}

@end