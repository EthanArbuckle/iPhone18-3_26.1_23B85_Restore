@interface SKDKeyphraseProcessor
- (BOOL)willProcessRecord:(id)record bundleID:(id)d;
- (SKDKeyphraseProcessor)init;
- (SKDKeyphraseProcessor)initWithListener:(id)listener;
- (id)processRecord:(id)record bundleID:(id)d;
- (id)processedAttributes;
- (id)requiredAttributes;
- (unint64_t)maxEntityCount;
- (void)load;
@end

@implementation SKDKeyphraseProcessor

- (SKDKeyphraseProcessor)init
{
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  v4 = [(SKDKeyphraseProcessor *)self initWithListener:mEMORY[0x277D657A8]];

  return v4;
}

- (SKDKeyphraseProcessor)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = SKDKeyphraseProcessor;
  v6 = [(SKDRecordProcessor *)&v9 initWithName:@"keyphrase"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
  }

  return v7;
}

- (unint64_t)maxEntityCount
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  maxKeyphraseCount = [mEMORY[0x277D657A0] maxKeyphraseCount];

  return maxKeyphraseCount;
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceKeyReqToken != -1)
  {
    [SKDKeyphraseProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sKeyphraseReqAttributes;

  return v3;
}

void __43__SKDKeyphraseProcessor_requiredAttributes__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CC31A0];
  v3[1] = @"kMDItemTextContentLanguage";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = requiredAttributes_sKeyphraseReqAttributes;
  requiredAttributes_sKeyphraseReqAttributes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)processedAttributes
{
  if (processedAttributes_onceKeyToken != -1)
  {
    [SKDKeyphraseProcessor processedAttributes];
  }

  v3 = processedAttributes_sKeyphraseAttributes;

  return v3;
}

void __44__SKDKeyphraseProcessor_processedAttributes__block_invoke()
{
  v0 = processedAttributes_sKeyphraseAttributes;
  processedAttributes_sKeyphraseAttributes = &unk_2846E8148;
}

- (BOOL)willProcessRecord:(id)record bundleID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v36.receiver = self;
  v36.super_class = SKDKeyphraseProcessor;
  if ([(SKDRecordProcessor *)&v36 willProcessRecord:recordCopy bundleID:dCopy])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    processedAttributes = [(SKDKeyphraseProcessor *)self processedAttributes];
    v9 = [processedAttributes countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(processedAttributes);
          }

          v13 = [recordCopy objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];

          if (v13)
          {
            logger = [(SKDRecordProcessor *)self logger];
            v18 = +[SKDPipelineEvent alreadyProcessedEvent];
            [logger logEvent:v18 level:6];

            goto LABEL_14;
          }
        }

        v10 = [processedAttributes countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    keyphraseIncludeBundles = [mEMORY[0x277D657A0] keyphraseIncludeBundles];
    if ([keyphraseIncludeBundles containsObject:dCopy])
    {
    }

    else
    {
      v19 = [dCopy hasPrefix:@"com.apple."];

      if (v19)
      {
        processedAttributes = [(SKDRecordProcessor *)self logger];
        logger = +[SKDPipelineEvent validateIneligibleEvent];
        [processedAttributes logEvent:logger level:6];
LABEL_14:
        v16 = 0;
        goto LABEL_27;
      }
    }

    processedAttributes = [recordCopy objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
    if (processedAttributes)
    {
      logger = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:processedAttributes];
    }

    else
    {
      logger = 0;
    }

    v20 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
    v21 = v20;
    if (logger && v20 && [v20 length] && (LanguageID = SILanguagesGetLanguageID(), Language = SILanguagesGetLanguage(), (LanguageID - 59) > 0xFFFFFFC6))
    {
      v29 = Language;
      listener = [(SKDKeyphraseProcessor *)self listener];
      currentPreferredLanguages = [listener currentPreferredLanguages];
      LOBYTE(v29) = [currentPreferredLanguages containsObject:v29];

      if (v29)
      {
        v16 = 1;
        goto LABEL_26;
      }

      logger2 = [(SKDRecordProcessor *)self logger];
      v25 = +[SKDPipelineEvent stateUnavailableEvent];
    }

    else
    {
      logger2 = [(SKDRecordProcessor *)self logger];
      v25 = +[SKDPipelineEvent validateIneligibleEvent];
    }

    v26 = v25;
    [logger2 logEvent:v25 level:6];

    v16 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v16 = 0;
LABEL_28:

  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)processRecord:(id)record bundleID:(id)d
{
  v113 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v6 = [SKDRecordUpdate alloc];
  selfCopy = self;
  v7 = [objc_opt_class() description];
  v77 = [(SKDRecordUpdate *)v6 initWithStatus:0 identifier:v7 bundleID:dCopy];

  name = [(SKDRecordProcessor *)selfCopy name];
  [(SKDItemUpdate *)v77 setPipeline:name];

  v68 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v77, "setTextContentLength:", [v68 length]);
  v66 = [recordCopy objectForKeyedSubscript:SKDItemAttributeTextContentEntityRanges];
  v69 = [recordCopy objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
  if (v69)
  {
    v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:?];
    v10 = v69;
  }

  else
  {
    v9 = 0;
    v10 = @"und";
  }

  v65 = v9;
  LanguageID = SILanguagesGetLanguageID();
  [(SKDItemUpdate *)v77 setTextContentLanguage:v10];
  v12 = objc_alloc_init(SKGEntityRanker);
  v13 = (&sLMLock + 4 * LanguageID);
  os_unfair_lock_lock(v13);
  v14 = sLanguageModels[LanguageID];
  v15 = SILanguageModelRetain();
  os_unfair_lock_unlock(v13);
  v78 = v15;
  v64 = v12;
  if (!v15)
  {
    logger = [(SKDRecordProcessor *)selfCopy logger];
    v23 = +[SKDPipelineEvent stateUnavailableEvent];
    [logger logEvent:v23];

    logger2 = [(SKDRecordProcessor *)selfCopy logger];
    [logger2 logEvent:v77 level:6];

    goto LABEL_51;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke;
  aBlock[3] = &unk_27893E338;
  v60 = v12;
  v89 = v60;
  v90 = selfCopy;
  v16 = _Block_copy(aBlock);
  logger3 = [(SKDRecordProcessor *)selfCopy logger];
  v63 = [logger3 trackingEventBeginWithName:@"keyphrases" event:v77];

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v85 = __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke_2;
  v86 = &unk_27893E360;
  v87 = selfCopy;
  v72 = v65;
  v18 = v68;
  v19 = v66;
  v79 = v16;
  v73 = v84;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 1;
  obj = v18;
  v20 = [v18 length];
  if ([v19 count])
  {
    v21 = [v19 mutableCopy];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v25 = v21;
  v62 = v19;
  firstObject = [v21 firstObject];
  v27 = 0;
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x3010000000;
  v104[3] = &unk_231C4157F;
  v105 = xmmword_231C220E0;
  while (firstObject)
  {
    rangeValue = [firstObject rangeValue];
    v30 = v29;
    if (rangeValue != v27)
    {
      goto LABEL_15;
    }

    [v25 removeObjectAtIndex:0];
    if ([v25 count])
    {
      v31 = [v25 objectAtIndexedSubscript:0];
    }

    else
    {
      v31 = 0;
    }

    v27 += v30;
    firstObject = v31;
LABEL_26:
    if (v27 >= v20)
    {
      goto LABEL_31;
    }
  }

  v30 = 0;
  rangeValue = v20;
  if (v20 != v27)
  {
LABEL_15:
    v32 = [obj substringWithRange:{v27, rangeValue - v27}];
    v91 = MEMORY[0x277D85DD0];
    v92 = 3221225472;
    v93 = __enumerateKeyphraseInfo_block_invoke;
    v94 = &unk_27893E3B0;
    v100 = v104;
    v96 = 0;
    v97 = 0;
    v98 = v79;
    v101 = &v106;
    v102 = v78;
    v95 = v72;
    v103 = 0;
    v33 = v73;
    v99 = v33;
    v34 = SITextTokenizerEnumerateTokensInString();
    v35 = v107;
    *(v107 + 24) = v34;
    if (v34)
    {
      if (!v85(v33))
      {
        if (firstObject)
        {
          [v25 removeObjectAtIndex:0];
          v27 = v30 + rangeValue;
          if ([v25 count])
          {
            v37 = [v25 objectAtIndexedSubscript:0];

            v36 = 1;
            firstObject = v37;
          }

          else
          {

            firstObject = 0;
            v36 = 1;
          }
        }

        else
        {
          v36 = 1;
          v27 = rangeValue;
        }

LABEL_19:

        if ((v36 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v35 = v107;
    }

    v36 = 0;
    *(v35 + 24) = 0;
    goto LABEL_19;
  }

  firstObject = 0;
LABEL_31:
  v38 = *(v107 + 24);
  _Block_object_dispose(v104, 8);

  _Block_object_dispose(&v106, 8);
  logger4 = [(SKDRecordProcessor *)selfCopy logger];
  [logger4 trackingEventEnd:v63];

  suspended = [(SKDRecordProcessor *)selfCopy suspended];
  if (v38)
  {
    v41 = suspended;
  }

  else
  {
    v41 = 1;
  }

  if (v41 == 1)
  {
    if ([(SKDRecordProcessor *)selfCopy suspended])
    {
      v42 = 3;
    }

    else
    {
      v42 = 1;
    }

    [(SKDEvent *)v77 updateStatus:v42];
  }

  else
  {
    marker = [(SKDRecordProcessor *)selfCopy marker];
    [(SKDItemUpdate *)v77 addAttribute:marker value:MEMORY[0x277CBEC38]];

    [(SKDEvent *)v77 updateStatus:2];
    keyphrases = [v61 keyphrases];
    if ([keyphrases count])
    {
      -[SKDItemUpdate setKeyphrasesCount:](v77, "setKeyphrasesCount:", [keyphrases count]);
      maxEntityCount = [(SKDKeyphraseProcessor *)selfCopy maxEntityCount];
      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obja = keyphrases;
      v48 = [obja countByEnumeratingWithState:&v80 objects:v112 count:16];
      if (v48)
      {
        v49 = *v81;
LABEL_42:
        v50 = 0;
        while (1)
        {
          if (*v81 != v49)
          {
            objc_enumerationMutation(obja);
          }

          v51 = *(*(&v80 + 1) + 8 * v50);
          keyphrase = [v51 keyphrase];
          [v45 addObject:keyphrase];

          v53 = MEMORY[0x277CCABB0];
          [v51 score];
          v54 = [v53 numberWithDouble:?];
          [v46 addObject:v54];

          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v51, "count")}];
          [v47 addObject:v55];

          if ([v45 count] >= maxEntityCount)
          {
            break;
          }

          if (v48 == ++v50)
          {
            v48 = [obja countByEnumeratingWithState:&v80 objects:v112 count:16];
            if (v48)
            {
              goto LABEL_42;
            }

            break;
          }
        }
      }

      v110[0] = @"kMDItemKeyphraseLabels";
      v110[1] = @"kMDItemKeyphraseConfidences";
      v111[0] = v45;
      v111[1] = v46;
      v110[2] = @"kMDItemKeyphraseCounts";
      v111[2] = v47;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:3];
      [(SKDItemUpdate *)v77 addAttributesFromDictionary:v56];
    }
  }

  SILanguageModelRelease();
  logger5 = [(SKDRecordProcessor *)selfCopy logger];
  [logger5 logEvent:v77 level:6];

LABEL_51:
  v58 = *MEMORY[0x277D85DE8];

  return v77;
}

void __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addEntity:v5];
  }

  if ([*(a1 + 40) suspended])
  {
    *a3 = 1;
  }
}

- (void)load
{
  v38 = *MEMORY[0x277D85DE8];
  logger = [(SKDRecordProcessor *)self logger];
  v4 = +[SKDPipelineEvent loadStartedEvent];
  v27 = [logger trackingEventBeginWithName:@"language-models" event:v4];

  selfCopy = self;
  listener = [(SKDKeyphraseProcessor *)self listener];
  currentPreferredLocaleIdentifiers = [listener currentPreferredLocaleIdentifiers];
  memset(v37, 0, 60);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [currentPreferredLocaleIdentifiers countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = 0x277CBE000uLL;
    do
    {
      v10 = 0;
      v29 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(currentPreferredLocaleIdentifiers);
        }

        v11 = [*(v9 + 2808) localeWithLocaleIdentifier:*(*(&v30 + 1) + 8 * v10)];
        [v11 regionCode];
        RegionID = SILanguagesGetRegionID();
        LanguageID = SILanguagesGetLanguageID();
        if (LanguageID - 59 >= 0xFFFFFFC7)
        {
          v14 = LanguageID;
          v15 = v8;
          v16 = v9;
          v17 = (&sLMLock + 4 * LanguageID);
          os_unfair_lock_lock(v17);
          if ((*(v37 + v14) & 1) == 0 && (!sLanguageModels[v14] || sRegions[v14] != RegionID))
          {
            v18 = currentPreferredLocaleIdentifiers;
            v19 = *MEMORY[0x277D657C0];
            v34[0] = *MEMORY[0x277D657B8];
            v34[1] = v19;
            v35[0] = MEMORY[0x277CBEC38];
            v35[1] = v11;
            v20 = *MEMORY[0x277D657B0];
            v34[2] = *MEMORY[0x277D657D0];
            v34[3] = v20;
            v35[2] = MEMORY[0x277CBEC28];
            v35[3] = MEMORY[0x277CBEC28];
            v34[4] = *MEMORY[0x277D657C8];
            v35[4] = MEMORY[0x277CBEC38];
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
            if (sLanguageModels[v14])
            {
              SILanguageModelRelease();
              sLanguageModels[v14] = 0;
            }

            sLanguageModels[v14] = SILanguageModelCreateWithOptions();
            sRegions[v14] = RegionID;

            currentPreferredLocaleIdentifiers = v18;
          }

          os_unfair_lock_unlock(v17);
          *(v37 + v14) = 1;
          v9 = v16;
          v8 = v15;
          v7 = v29;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [currentPreferredLocaleIdentifiers countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v22 = 0;
  v23 = &sLMLock;
  do
  {
    if ((*(v37 + v22) & 1) == 0)
    {
      os_unfair_lock_lock(v23);
      if (sLanguageModels[v22])
      {
        SILanguageModelRelease();
        sLanguageModels[v22] = 0;
      }

      sRegions[v22] = -1;
      os_unfair_lock_unlock(v23);
    }

    ++v22;
    ++v23;
  }

  while (v22 != 59);

  logger2 = [(SKDRecordProcessor *)selfCopy logger];
  [logger2 trackingEventEnd:v27];

  v25 = *MEMORY[0x277D85DE8];
}

@end