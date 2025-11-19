@interface SKDKeyphraseProcessor
- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4;
- (SKDKeyphraseProcessor)init;
- (SKDKeyphraseProcessor)initWithListener:(id)a3;
- (id)processRecord:(id)a3 bundleID:(id)a4;
- (id)processedAttributes;
- (id)requiredAttributes;
- (unint64_t)maxEntityCount;
- (void)load;
@end

@implementation SKDKeyphraseProcessor

- (SKDKeyphraseProcessor)init
{
  v3 = [MEMORY[0x277D657A8] sharedProcessorListener];
  v4 = [(SKDKeyphraseProcessor *)self initWithListener:v3];

  return v4;
}

- (SKDKeyphraseProcessor)initWithListener:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKDKeyphraseProcessor;
  v6 = [(SKDRecordProcessor *)&v9 initWithName:@"keyphrase"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, a3);
  }

  return v7;
}

- (unint64_t)maxEntityCount
{
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 maxKeyphraseCount];

  return v3;
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

- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = SKDKeyphraseProcessor;
  if ([(SKDRecordProcessor *)&v36 willProcessRecord:v6 bundleID:v7])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [(SKDKeyphraseProcessor *)self processedAttributes];
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [v6 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];

          if (v13)
          {
            v17 = [(SKDRecordProcessor *)self logger];
            v18 = +[SKDPipelineEvent alreadyProcessedEvent];
            [v17 logEvent:v18 level:6];

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = [MEMORY[0x277D657A0] sharedContext];
    v15 = [v14 keyphraseIncludeBundles];
    if ([v15 containsObject:v7])
    {
    }

    else
    {
      v19 = [v7 hasPrefix:@"com.apple."];

      if (v19)
      {
        v8 = [(SKDRecordProcessor *)self logger];
        v17 = +[SKDPipelineEvent validateIneligibleEvent];
        [v8 logEvent:v17 level:6];
LABEL_14:
        v16 = 0;
        goto LABEL_27;
      }
    }

    v8 = [v6 objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
    if (v8)
    {
      v17 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
    }

    else
    {
      v17 = 0;
    }

    v20 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
    v21 = v20;
    if (v17 && v20 && [v20 length] && (LanguageID = SILanguagesGetLanguageID(), Language = SILanguagesGetLanguage(), (LanguageID - 59) > 0xFFFFFFC6))
    {
      v29 = Language;
      v30 = [(SKDKeyphraseProcessor *)self listener];
      v31 = [v30 currentPreferredLanguages];
      LOBYTE(v29) = [v31 containsObject:v29];

      if (v29)
      {
        v16 = 1;
        goto LABEL_26;
      }

      v24 = [(SKDRecordProcessor *)self logger];
      v25 = +[SKDPipelineEvent stateUnavailableEvent];
    }

    else
    {
      v24 = [(SKDRecordProcessor *)self logger];
      v25 = +[SKDPipelineEvent validateIneligibleEvent];
    }

    v26 = v25;
    [v24 logEvent:v25 level:6];

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

- (id)processRecord:(id)a3 bundleID:(id)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v70 = a3;
  v67 = a4;
  v6 = [SKDRecordUpdate alloc];
  v71 = self;
  v7 = [objc_opt_class() description];
  v77 = [(SKDRecordUpdate *)v6 initWithStatus:0 identifier:v7 bundleID:v67];

  v8 = [(SKDRecordProcessor *)v71 name];
  [(SKDItemUpdate *)v77 setPipeline:v8];

  v68 = [v70 objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v77, "setTextContentLength:", [v68 length]);
  v66 = [v70 objectForKeyedSubscript:SKDItemAttributeTextContentEntityRanges];
  v69 = [v70 objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
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
    v22 = [(SKDRecordProcessor *)v71 logger];
    v23 = +[SKDPipelineEvent stateUnavailableEvent];
    [v22 logEvent:v23];

    v24 = [(SKDRecordProcessor *)v71 logger];
    [v24 logEvent:v77 level:6];

    goto LABEL_51;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke;
  aBlock[3] = &unk_27893E338;
  v60 = v12;
  v89 = v60;
  v90 = v71;
  v16 = _Block_copy(aBlock);
  v17 = [(SKDRecordProcessor *)v71 logger];
  v63 = [v17 trackingEventBeginWithName:@"keyphrases" event:v77];

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v85 = __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke_2;
  v86 = &unk_27893E360;
  v87 = v71;
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
  v26 = [v21 firstObject];
  v27 = 0;
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x3010000000;
  v104[3] = &unk_231C4157F;
  v105 = xmmword_231C220E0;
  while (v26)
  {
    v28 = [v26 rangeValue];
    v30 = v29;
    if (v28 != v27)
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
    v26 = v31;
LABEL_26:
    if (v27 >= v20)
    {
      goto LABEL_31;
    }
  }

  v30 = 0;
  v28 = v20;
  if (v20 != v27)
  {
LABEL_15:
    v32 = [obj substringWithRange:{v27, v28 - v27}];
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
        if (v26)
        {
          [v25 removeObjectAtIndex:0];
          v27 = v30 + v28;
          if ([v25 count])
          {
            v37 = [v25 objectAtIndexedSubscript:0];

            v36 = 1;
            v26 = v37;
          }

          else
          {

            v26 = 0;
            v36 = 1;
          }
        }

        else
        {
          v36 = 1;
          v27 = v28;
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

  v26 = 0;
LABEL_31:
  v38 = *(v107 + 24);
  _Block_object_dispose(v104, 8);

  _Block_object_dispose(&v106, 8);
  v39 = [(SKDRecordProcessor *)v71 logger];
  [v39 trackingEventEnd:v63];

  v40 = [(SKDRecordProcessor *)v71 suspended];
  if (v38)
  {
    v41 = v40;
  }

  else
  {
    v41 = 1;
  }

  if (v41 == 1)
  {
    if ([(SKDRecordProcessor *)v71 suspended])
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
    v43 = [(SKDRecordProcessor *)v71 marker];
    [(SKDItemUpdate *)v77 addAttribute:v43 value:MEMORY[0x277CBEC38]];

    [(SKDEvent *)v77 updateStatus:2];
    v74 = [v61 keyphrases];
    if ([v74 count])
    {
      -[SKDItemUpdate setKeyphrasesCount:](v77, "setKeyphrasesCount:", [v74 count]);
      v44 = [(SKDKeyphraseProcessor *)v71 maxEntityCount];
      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obja = v74;
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
          v52 = [v51 keyphrase];
          [v45 addObject:v52];

          v53 = MEMORY[0x277CCABB0];
          [v51 score];
          v54 = [v53 numberWithDouble:?];
          [v46 addObject:v54];

          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v51, "count")}];
          [v47 addObject:v55];

          if ([v45 count] >= v44)
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
  v57 = [(SKDRecordProcessor *)v71 logger];
  [v57 logEvent:v77 level:6];

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
  v3 = [(SKDRecordProcessor *)self logger];
  v4 = +[SKDPipelineEvent loadStartedEvent];
  v27 = [v3 trackingEventBeginWithName:@"language-models" event:v4];

  v28 = self;
  v26 = [(SKDKeyphraseProcessor *)self listener];
  v5 = [v26 currentPreferredLocaleIdentifiers];
  memset(v37, 0, 60);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
          objc_enumerationMutation(v5);
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
            v18 = v5;
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

            v5 = v18;
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
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
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

  v24 = [(SKDRecordProcessor *)v28 logger];
  [v24 trackingEventEnd:v27];

  v25 = *MEMORY[0x277D85DE8];
}

@end