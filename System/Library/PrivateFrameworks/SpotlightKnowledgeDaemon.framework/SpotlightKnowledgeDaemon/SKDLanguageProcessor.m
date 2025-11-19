@interface SKDLanguageProcessor
- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4;
- (SKDLanguageProcessor)init;
- (SKDLanguageProcessor)initWithLanguageIdentifier:(id)a3 listener:(id)a4;
- (id)processRecord:(id)a3 bundleID:(id)a4;
- (id)processedAttributes;
- (id)requiredAttributes;
@end

@implementation SKDLanguageProcessor

- (SKDLanguageProcessor)init
{
  v3 = +[SKGLanguageIdentifier sharedIdentifier];
  v4 = [MEMORY[0x277D657A8] sharedProcessorListener];
  v5 = [(SKDLanguageProcessor *)self initWithLanguageIdentifier:v3 listener:v4];

  return v5;
}

- (SKDLanguageProcessor)initWithLanguageIdentifier:(id)a3 listener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKDLanguageProcessor;
  v9 = [(SKDRecordProcessor *)&v12 initWithName:@"language"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_langIdentifier, a3);
    objc_storeStrong(&v10->_listener, a4);
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

- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = SKDLanguageProcessor;
  if ([(SKDRecordProcessor *)&v20 willProcessRecord:v6 bundleID:a4])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(SKDLanguageProcessor *)self processedAttributes];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [v6 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];

          if (v12)
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
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

- (id)processRecord:(id)a3 bundleID:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [SKDRecordUpdate alloc];
  v9 = [objc_opt_class() description];
  v10 = [(SKDRecordUpdate *)v8 initWithStatus:0 identifier:v9 bundleID:v7];

  v11 = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v10 setPipeline:v11];

  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v10, "setTextContentLength:", [v12 length]);
  if (!v12)
  {
    goto LABEL_28;
  }

  context = objc_autoreleasePoolPush();
  v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];
  v15 = [v14 mutableCopy];

  v16 = [v6 objectForKeyedSubscript:SKDItemAttributeTextContentEntityRanges];
  v17 = v16;
  if (v16)
  {
    v43 = v7;
    v44 = v6;
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

          v23 = [*(*(&v47 + 1) + 8 * i) rangeValue];
          v25 = [v12 substringWithRange:{v23, v24}];
          [(__CFString *)v15 replaceOccurrencesOfString:v25 withString:@" " options:0 range:0, [(__CFString *)v15 length]];
        }

        v20 = [v18 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v20);
    }

    v7 = v43;
    v6 = v44;
    v17 = v42;
  }

  v26 = [(SKDLanguageProcessor *)self listener:v42];
  v27 = [v26 currentLocaleIsCJK];

  v28 = [(__CFString *)v15 length];
  if (!v27)
  {
    if (v28 < 0x10)
    {
      goto LABEL_13;
    }

LABEL_15:
    v30 = [(SKDRecordProcessor *)self logger];
    v31 = [v30 trackingEventBeginWithName:@"language-id" event:v10];

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
          v34 = v7;
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

          v7 = v34;
          v32 = v45;
        }

        objc_autoreleasePoolPop(v32);
      }
    }

    else
    {
      Length = 0;
    }

    v37 = [(SKDRecordProcessor *)self logger];
    [v37 trackingEventEnd:v31];

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
  v38 = [(SKDRecordProcessor *)self marker];
  [(SKDItemUpdate *)v10 addAttribute:v38 value:MEMORY[0x277CBEC38]];

  [(SKDEvent *)v10 updateStatus:2];
  v39 = [(SKDRecordProcessor *)self logger];
  [v39 logEvent:v10 level:6];

  v40 = *MEMORY[0x277D85DE8];

  return v10;
}

@end