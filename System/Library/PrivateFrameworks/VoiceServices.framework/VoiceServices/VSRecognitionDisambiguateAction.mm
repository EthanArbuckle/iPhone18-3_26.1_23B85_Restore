@interface VSRecognitionDisambiguateAction
- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)callbacks info:(void *)info;
- (__VSRecognitionDisambiguationContext)_disambiguationContext;
- (id)_actionForEmptyResults;
- (id)_keywords;
- (id)knownValueForClassIdentifier:(id)identifier;
- (id)knownValuesForClassIdentifier:(id)identifier;
- (void)dealloc;
- (void)setAmbiguousValues:(id)values phoneticValues:(id)phoneticValues forClassIdentifier:(id)identifier;
- (void)setKeywords:(id)keywords;
- (void)setKnownValue:(id)value phoneticValue:(id)phoneticValue forClassIdentifier:(id)identifier;
- (void)setKnownValues:(id)values phoneticValues:(id)phoneticValues forClassIdentifier:(id)identifier;
- (void)setRepeatedSpokenFeedbackString:(id)string;
- (void)setSequenceTag:(id)tag;
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

- (__VSRecognition)_createRecognitionInstanceWithCallbacks:(id *)callbacks info:(void *)info
{
  modelIdentifier = [(VSRecognitionRecognizeAction *)self modelIdentifier];
  result = [(VSRecognitionDisambiguateAction *)self _disambiguationContext];
  if (result)
  {
    v9 = result;
    v10 = *MEMORY[0x277CBECE8];
    if (modelIdentifier)
    {
      v11 = modelIdentifier;
    }

    else
    {
      v11 = @"_default";
    }

    return _VSRecognitionCreate(v10, v11, v9, callbacks, info);
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

- (void)setKeywords:(id)keywords
{
  keywords = self->super._keywords;
  if (keywords != keywords)
  {

    self->super._keywords = keywords;
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

- (void)setAmbiguousValues:(id)values phoneticValues:(id)phoneticValues forClassIdentifier:(id)identifier
{
  v9 = [values count];
  ambiguousValues = self->_ambiguousValues;
  if (v9)
  {
    if (!ambiguousValues)
    {
      ambiguousValues = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_ambiguousValues = ambiguousValues;
    }

    [(NSMutableDictionary *)ambiguousValues setObject:values forKey:identifier];
    if ([phoneticValues count] == v9)
    {
      ambiguousPhoneticValues = self->_ambiguousPhoneticValues;
      if (!ambiguousPhoneticValues)
      {
        ambiguousPhoneticValues = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_ambiguousPhoneticValues = ambiguousPhoneticValues;
      }

      [(NSMutableDictionary *)ambiguousPhoneticValues setObject:phoneticValues forKey:identifier];
    }
  }

  else
  {
    [(NSMutableDictionary *)ambiguousValues removeObjectForKey:identifier];
    v12 = self->_ambiguousPhoneticValues;

    [(NSMutableDictionary *)v12 removeObjectForKey:identifier];
  }
}

- (void)setKnownValues:(id)values phoneticValues:(id)phoneticValues forClassIdentifier:(id)identifier
{
  v9 = [values count];
  knownValues = self->_knownValues;
  if (v9)
  {
    if (!knownValues)
    {
      knownValues = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_knownValues = knownValues;
    }

    [(NSMutableDictionary *)knownValues setObject:values forKey:identifier];
    v11 = [phoneticValues count];
    knownPhoneticValues = self->_knownPhoneticValues;
    if (v11)
    {
      if (!knownPhoneticValues)
      {
        knownPhoneticValues = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_knownPhoneticValues = knownPhoneticValues;
      }

      [(NSMutableDictionary *)knownPhoneticValues setObject:phoneticValues forKey:identifier];
      return;
    }
  }

  else
  {
    [(NSMutableDictionary *)knownValues removeObjectForKey:identifier];
    knownPhoneticValues = self->_knownPhoneticValues;
  }

  [(NSMutableDictionary *)knownPhoneticValues removeObjectForKey:identifier];
}

- (id)knownValuesForClassIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_knownValues objectForKey:identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v3;
  }

  v4 = MEMORY[0x277CBEA60];

  return [v4 arrayWithObject:v3];
}

- (void)setKnownValue:(id)value phoneticValue:(id)phoneticValue forClassIdentifier:(id)identifier
{
  v9 = [value length];
  knownValues = self->_knownValues;
  if (v9)
  {
    if (!knownValues)
    {
      knownValues = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_knownValues = knownValues;
    }

    [(NSMutableDictionary *)knownValues setObject:value forKey:identifier];
    v11 = [phoneticValue length];
    knownPhoneticValues = self->_knownPhoneticValues;
    if (v11)
    {
      if (!knownPhoneticValues)
      {
        knownPhoneticValues = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_knownPhoneticValues = knownPhoneticValues;
      }

      [(NSMutableDictionary *)knownPhoneticValues setObject:phoneticValue forKey:identifier];
      return;
    }
  }

  else
  {
    [(NSMutableDictionary *)knownValues removeObjectForKey:identifier];
    knownPhoneticValues = self->_knownPhoneticValues;
  }

  [(NSMutableDictionary *)knownPhoneticValues removeObjectForKey:identifier];
}

- (id)knownValueForClassIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_knownValues objectForKey:identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v3;
  }

  return [v3 lastObject];
}

- (void)setSequenceTag:(id)tag
{
  sequenceTag = self->_sequenceTag;
  if (sequenceTag != tag)
  {

    self->_sequenceTag = tag;
  }
}

- (void)setRepeatedSpokenFeedbackString:(id)string
{
  repeatedSpokenFeedbackString = self->_repeatedSpokenFeedbackString;
  if (repeatedSpokenFeedbackString != string)
  {

    self->_repeatedSpokenFeedbackString = string;
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