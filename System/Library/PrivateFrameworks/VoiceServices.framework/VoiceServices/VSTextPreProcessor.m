@interface VSTextPreProcessor
- (VSTextPreProcessor)initWithContentsOfPath:(id)a3 languageIdentifier:(id)a4;
- (id)processedTextFromString:(id)a3;
- (void)dealloc;
@end

@implementation VSTextPreProcessor

- (id)processedTextFromString:(id)a3
{
  v3 = a3;
  v5 = [a3 length];
  v6 = [(NSArray *)self->_rules count];
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    v19.location = 0;
    v19.length = v5;
    CFStringTokenizerSetString(tokenizer, v3, v19);
  }

  else
  {
    languageID = self->_languageID;
    v16 = *MEMORY[0x277CBECE8];
    if (languageID)
    {
      v17 = CFLocaleCreate(*MEMORY[0x277CBECE8], languageID);
      v20.location = 0;
      v20.length = v5;
      self->_tokenizer = CFStringTokenizerCreate(v16, v3, v20, 0, v17);
      if (v17)
      {
        CFRelease(v17);
      }
    }

    else
    {
      v21.location = 0;
      v21.length = v5;
      self->_tokenizer = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], v3, v21, 0, 0);
    }
  }

  v8 = 0;
  v9 = 0;
  CurrentTokenRange.location = 0;
  CurrentTokenRange.length = 0;
  while (CFStringTokenizerAdvanceToNextToken(self->_tokenizer))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(self->_tokenizer);
    if (v6)
    {
      v10 = 1;
      do
      {
        v11 = [-[NSArray objectAtIndex:](self->_rules objectAtIndex:{v10 - 1, CurrentTokenRange.location), "matchedString:forTokenInRange:", v3, &CurrentTokenRange}];
        v12 = v11;
        if (v10 >= v6)
        {
          break;
        }

        ++v10;
      }

      while (!v11);
      if (v11)
      {
        if (!v9)
        {
          v9 = [(__CFString *)v3 mutableCopy];
        }

        [v9 replaceCharactersInRange:CurrentTokenRange.location - v8 withString:{CurrentTokenRange.length, v12}];
        length = CurrentTokenRange.length;
        v8 = length + v8 - [v12 length];
      }
    }
  }

  if (v9)
  {
    return v9;
  }

  return v3;
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = VSTextPreProcessor;
  [(VSTextPreProcessor *)&v4 dealloc];
}

- (VSTextPreProcessor)initWithContentsOfPath:(id)a3 languageIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [(VSTextPreProcessor *)self init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfFile:a3];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v18 = a4;
      v10 = 0;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [[VSTextPreProcessorRule alloc] initWithDictionaryRepresentation:v13];
            if (!v14)
            {

              goto LABEL_17;
            }

            v15 = v14;
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [(NSArray *)v10 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      if (v10)
      {
        v6->_rules = v10;
        v6->_languageID = v18;
        goto LABEL_19;
      }
    }

    else
    {
LABEL_17:
    }

    v6 = 0;
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

@end