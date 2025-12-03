@interface SKDLanguageProcessor
- (BOOL)willProcessRecord:(id)record bundleID:(id)d;
- (SKDLanguageProcessor)init;
- (SKDLanguageProcessor)initWithLanguageIdentifier:(id)identifier listener:(id)listener;
- (id)processRecord:(id)record bundleID:(id)d;
- (id)processedAttributes;
- (id)requiredAttributes;
@end

@implementation SKDLanguageProcessor

- (SKDLanguageProcessor)init
{
  v3 = +[SKGLanguageIdentifier sharedIdentifier];
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  v5 = [(SKDLanguageProcessor *)self initWithLanguageIdentifier:v3 listener:mEMORY[0x277D657A8]];

  return v5;
}

- (SKDLanguageProcessor)initWithLanguageIdentifier:(id)identifier listener:(id)listener
{
  identifierCopy = identifier;
  listenerCopy = listener;
  v12.receiver = self;
  v12.super_class = SKDLanguageProcessor;
  v9 = [(SKDRecordProcessor *)&v12 initWithName:@"language"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_langIdentifier, identifier);
    objc_storeStrong(&v10->_listener, listener);
  }

  return v10;
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceLangReqToken != -1)
  {
    [SKDLanguageProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sLangReqAttributes;

  return v3;
}

void __42__SKDLanguageProcessor_requiredAttributes__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CC31A0];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = requiredAttributes_sLangReqAttributes;
  requiredAttributes_sLangReqAttributes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)processedAttributes
{
  if (processedAttributes_onceLangToken != -1)
  {
    [SKDLanguageProcessor processedAttributes];
  }

  v3 = processedAttributes_sLangAttributes;

  return v3;
}

void __43__SKDLanguageProcessor_processedAttributes__block_invoke()
{
  v0 = processedAttributes_sLangAttributes;
  processedAttributes_sLangAttributes = &unk_2846E8160;
}

- (BOOL)willProcessRecord:(id)record bundleID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v20.receiver = self;
  v20.super_class = SKDLanguageProcessor;
  if ([(SKDRecordProcessor *)&v20 willProcessRecord:recordCopy bundleID:d])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    processedAttributes = [(SKDLanguageProcessor *)self processedAttributes];
    v8 = [processedAttributes countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(processedAttributes);
          }

          v12 = [recordCopy objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];

          if (v12)
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v9 = [processedAttributes countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)processRecord:(id)record bundleID:(id)d
{
  v52 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v8 = [SKDRecordUpdate alloc];
  v9 = [objc_opt_class() description];
  v10 = [(SKDRecordUpdate *)v8 initWithStatus:0 identifier:v9 bundleID:dCopy];

  name = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v10 setPipeline:name];

  v12 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v10, "setTextContentLength:", [v12 length]);
  if (!v12)
  {
    goto LABEL_28;
  }

  context = objc_autoreleasePoolPush();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v15 = [v14 mutableCopy];

  v16 = [recordCopy objectForKeyedSubscript:SKDItemAttributeTextContentEntityRanges];
  v17 = v16;
  if (v16)
  {
    v43 = dCopy;
    v44 = recordCopy;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v42 = v16;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(v18);
          }

          rangeValue = [*(*(&v47 + 1) + 8 * i) rangeValue];
          v25 = [v12 substringWithRange:{rangeValue, v24}];
          [(__CFString *)v15 replaceOccurrencesOfString:v25 withString:@" " options:0 range:0, [(__CFString *)v15 length]];
        }

        v20 = [v18 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v20);
    }

    dCopy = v43;
    recordCopy = v44;
    v17 = v42;
  }

  v26 = [(SKDLanguageProcessor *)self listener:v42];
  currentLocaleIsCJK = [v26 currentLocaleIsCJK];

  v28 = [(__CFString *)v15 length];
  if (!currentLocaleIsCJK)
  {
    if (v28 < 0x10)
    {
      goto LABEL_13;
    }

LABEL_15:
    logger = [(SKDRecordProcessor *)self logger];
    v31 = [logger trackingEventBeginWithName:@"language-id" event:v10];

    if (v15)
    {
      Length = CFStringGetLength(v15);
      if (Length)
      {
        v32 = objc_autoreleasePoolPush();
        LanguageGuessUsingMontrealInString = SILanguageModelGetLanguageGuessUsingMontrealInString();
        if (LanguageGuessUsingMontrealInString)
        {
          Length = CFStringCreateCopy(*MEMORY[0x277CBECE8], LanguageGuessUsingMontrealInString);
        }

        else
        {
          v45 = v32;
          v34 = dCopy;
          v35 = NLStringTokenizerCopyBestStringLanguage();
          if (v35)
          {
            v36 = v35;
            Length = CFStringCreateCopy(*MEMORY[0x277CBECE8], v35);
            CFRelease(v36);
          }

          else
          {
            Length = 0;
          }

          dCopy = v34;
          v32 = v45;
        }

        objc_autoreleasePoolPop(v32);
      }
    }

    else
    {
      Length = 0;
    }

    logger2 = [(SKDRecordProcessor *)self logger];
    [logger2 trackingEventEnd:v31];

    goto LABEL_26;
  }

  if (v28 > 5)
  {
    goto LABEL_15;
  }

LABEL_13:
  Length = 0;
LABEL_26:

  objc_autoreleasePoolPop(context);
  if (Length)
  {
    [(SKDItemUpdate *)v10 addAttribute:@"kMDItemTextContentLanguage" value:Length];
  }

LABEL_28:
  marker = [(SKDRecordProcessor *)self marker];
  [(SKDItemUpdate *)v10 addAttribute:marker value:MEMORY[0x277CBEC38]];

  [(SKDEvent *)v10 updateStatus:2];
  logger3 = [(SKDRecordProcessor *)self logger];
  [logger3 logEvent:v10 level:6];

  v40 = *MEMORY[0x277D85DE8];

  return v10;
}

@end