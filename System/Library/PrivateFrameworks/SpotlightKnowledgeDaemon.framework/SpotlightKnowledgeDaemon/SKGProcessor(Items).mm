@interface SKGProcessor(Items)
- (SKGProcessedItem)itemFromRecord:()Items referenceIdentifier:bundleIdentifier:protectionClass:;
- (uint64_t)canProcessEvent;
- (uint64_t)canProcessEventForRecord:()Items bundleIdentifier:;
- (uint64_t)enumerateProcessedItemsFromRecord:()Items referenceIdentifier:bundleIdentifier:protectionClass:processorFlags:workCost:fetchCachedLanguageBlock:cacheLanguageBlock:processedItemBlock:cancelBlock:;
- (uint64_t)loadWithProcessorFlags:()Items;
- (uint64_t)recordMatchesContentURLOnDisk:()Items contentURL:;
- (void)canProcessEvent;
@end

@implementation SKGProcessor(Items)

- (uint64_t)canProcessEvent
{
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  hasDiskCapacity = [mEMORY[0x277D657A8] hasDiskCapacity];

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [(SKGProcessor(Items) *)hasDiskCapacity canProcessEvent:v2];
    }
  }

  return hasDiskCapacity;
}

- (uint64_t)canProcessEventForRecord:()Items bundleIdentifier:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && [&unk_2846E84C0 containsObject:v7])
  {
    if ([MEMORY[0x277D65798] recordHasTextContent:v6])
    {
      v8 = [self copyContentURLFromRecord:v6];
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v9 = SKGLogInit();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v27[0] = 67109376;
          v27[1] = v8 != 0;
          v28 = 1024;
          v29 = [self recordContainsValue:v6 key:@"_kMDItemContentURLFileID"];
          _os_log_debug_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEBUG, "SKGProcessor+Items#canProcessRecord copyContentURLFromRecordNotNil:%d recordContainsValue:%d", v27, 0xEu);
        }
      }

      if (v8 && [self recordContainsValue:v6 key:@"_kMDItemContentURLFileID"])
      {
        v10 = [self recordMatchesContentURLOnDisk:v6 contentURL:v8];
        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v11 = SKGLogInit();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [(SKGProcessor(Items) *)v10 canProcessEventForRecord:v11 bundleIdentifier:v12, v13, v14, v15, v16, v17];
          }
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v20 = SKGLogInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(SKGProcessor(Items) *)v10 canProcessEvent:v20];
      }
    }
  }

  else
  {
    v10 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)recordMatchesContentURLOnDisk:()Items contentURL:
{
  v6 = a3;
  v7 = a4;
  v8 = [self copyNumberValueFromRecord:v6 key:@"_kMDItemContentURLFileID"];
  v9 = v8;
  v10 = 0;
  if (v8)
  {
    v11 = *MEMORY[0x277CBEEE8];
    if (v8 != *MEMORY[0x277CBEEE8])
    {
      v12 = [self copyNumberValueFromRecord:v6 key:@"_kMDItemContentURLFileVersion"];
      v13 = v12;
      v10 = 0;
      if (!v12 || v12 == v11)
      {
        goto LABEL_15;
      }

      v14 = [self copyContentTypeFromRecord:v6];
      if (!v14)
      {
        v10 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      v15 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v14];
      if (CSGetDiskVersionForContentURL())
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
        if ([v13 isEqualToNumber:v16])
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
          v18 = [v9 isEqualToNumber:v17];

          if (v18)
          {
            v10 = 1;
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v10 = 0;
      goto LABEL_13;
    }
  }

LABEL_16:

  return v10;
}

- (uint64_t)loadWithProcessorFlags:()Items
{
  if ((a3 & 4) != 0)
  {
    return [self loadKeyphraser];
  }

  else
  {
    return 1;
  }
}

- (SKGProcessedItem)itemFromRecord:()Items referenceIdentifier:bundleIdentifier:protectionClass:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  if (v11)
  {
    v14 = v11;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
    v15 = [mEMORY[0x277D65798] copyProtectionClassFromRecord:v10];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  mEMORY[0x277D65798]2 = [MEMORY[0x277D65798] sharedProcessor];
  v14 = [mEMORY[0x277D65798]2 copyReferenceIdentifierFromRecord:v10];

  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = v13;
  if (v12)
  {
LABEL_4:
    v16 = v12;
    goto LABEL_8;
  }

LABEL_7:
  mEMORY[0x277D65798]3 = [MEMORY[0x277D65798] sharedProcessor];
  v16 = [mEMORY[0x277D65798]3 copyBundleIdentifierFromRecord:v10];

LABEL_8:
  v20 = [self copyPersonaFromRecord:v10];
  if ([v15 isEqualToString:@"Default"])
  {
    if (!v16)
    {
      v16 = @"com.apple.Metadata";
    }

    goto LABEL_11;
  }

  if ([v14 length] && objc_msgSend(v15, "length") && -[__CFString length](v16, "length") && objc_msgSend(v20, "length"))
  {
LABEL_11:
    v21 = [[SKGProcessedItem alloc] initWithReferenceIdentifier:v14 personaIdentifier:v20 bundleIdentifier:v16 protectionClass:v15];
    v22 = [self copyFilePathFromRecord:v10];
    [(SKGProcessedItem *)v21 setFilePath:v22];

    goto LABEL_17;
  }

  v21 = 0;
LABEL_17:

  objc_autoreleasePoolPop(context);

  return v21;
}

- (uint64_t)enumerateProcessedItemsFromRecord:()Items referenceIdentifier:bundleIdentifier:protectionClass:processorFlags:workCost:fetchCachedLanguageBlock:cacheLanguageBlock:processedItemBlock:cancelBlock:
{
  v81 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v60 = a9;
  v61 = a10;
  v59 = a11;
  v21 = a12;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  context = objc_autoreleasePoolPush();
  v22 = [self itemFromRecord:v17 referenceIdentifier:v18 bundleIdentifier:v19 protectionClass:v20];
  if (!v22)
  {
    LODWORD(v38) = 0;
    v39 = 1;
    goto LABEL_49;
  }

  mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
  v24 = [mEMORY[0x277D65798] copyLanguageFromRecord:v17];
  [v22 setLanguage:v24];

  if ((a7 & 0x86) != 0)
  {
    textContentLanguage = [v22 textContentLanguage];
    v26 = textContentLanguage == 0;

    if (v26)
    {
      v27 = +[SKGEventsProfiler sharedInstance];
      if ((a7 & 0x40) != 0)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __209__SKGProcessor_Items__enumerateProcessedItemsFromRecord_referenceIdentifier_bundleIdentifier_protectionClass_processorFlags_workCost_fetchCachedLanguageBlock_cacheLanguageBlock_processedItemBlock_cancelBlock___block_invoke;
      v62[3] = &unk_27893EEA0;
      v68 = &v69;
      v62[4] = self;
      v63 = v17;
      v64 = v22;
      v65 = v60;
      v66 = v61;
      v67 = v21;
      [v27 profileCodeWithType:@"GenerateEmbeddings-LID" kind:v28 block:v62];
    }
  }

  if (*(v70 + 24) != 1)
  {
    goto LABEL_48;
  }

  if ((a7 & 2) == 0)
  {
    goto LABEL_37;
  }

  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  semanticSearchEnabled = [mEMORY[0x277D657A8] semanticSearchEnabled];

  if (!semanticSearchEnabled)
  {
    if ((v70[3] & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_36:
    [v22 setDidProcessEmbeddings:1];
    goto LABEL_37;
  }

  mEMORY[0x277D657A8]2 = [MEMORY[0x277D657A8] sharedProcessorListener];
  enableLanguageCheckForEmbedding = [mEMORY[0x277D657A8]2 enableLanguageCheckForEmbedding];

  if (!enableLanguageCheckForEmbedding)
  {
    v37 = 1;
    goto LABEL_32;
  }

  mEMORY[0x277D657A8]3 = [MEMORY[0x277D657A8] sharedProcessorListener];
  supportedSemanticLanguages = [mEMORY[0x277D657A8]3 supportedSemanticLanguages];

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v34 = SKGLogInit();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v53 = v34;
      textContentLanguage2 = [v22 textContentLanguage];
      v52 = [textContentLanguage2 length];
      textContentLanguage3 = [v22 textContentLanguage];
      textContentLanguage4 = [v22 textContentLanguage];
      v51 = [supportedSemanticLanguages containsObject:textContentLanguage4];
      *buf = 138413058;
      v74 = supportedSemanticLanguages;
      v75 = 2048;
      v76 = v52;
      v77 = 2112;
      v78 = textContentLanguage3;
      v79 = 1024;
      v80 = v51 ^ 1;
      _os_log_debug_impl(&dword_231B25000, v53, OS_LOG_TYPE_DEBUG, "SKGProcessor+Items#enumerateProcessedItemsFromRecord supportedSemanticLanguages=%@ textContentLanguage=%lu textContentLanguage=%@ isContentLanguageSupported=%d", buf, 0x26u);

      v34 = v53;
    }
  }

  textContentLanguage5 = [v22 textContentLanguage];
  if (![textContentLanguage5 length] || !objc_msgSend(supportedSemanticLanguages, "count"))
  {
    v37 = 1;
LABEL_30:

    goto LABEL_31;
  }

  textContentLanguage6 = [v22 textContentLanguage];
  v36 = [supportedSemanticLanguages containsObject:textContentLanguage6];

  if ((v36 & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v40 = SKGLogInit();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [SKGProcessor(Items) enumerateProcessedItemsFromRecord:v40 referenceIdentifier:? bundleIdentifier:? protectionClass:? processorFlags:? workCost:? fetchCachedLanguageBlock:? cacheLanguageBlock:? processedItemBlock:? cancelBlock:?];
      }
    }

    textContentLanguage5 = +[SKGActivityJournal sharedJournal];
    [textContentLanguage5 addEventForItem:14 bundleID:v19 identifier:v18];
    v37 = 0;
    goto LABEL_30;
  }

  v37 = 1;
LABEL_31:

LABEL_32:
  if ((v70[3] & 1) == 0)
  {
    goto LABEL_37;
  }

  if (!v37)
  {
    goto LABEL_36;
  }

  v41 = +[SKGActivityJournal sharedJournal];
  [v41 addEventForItem:5 bundleID:v19 identifier:v18];

  v42 = [self generateEmbeddingsForRecord:v17 processedItem:v22 isPriority:(a7 >> 6) & 1 workCost:a8 cancelBlock:v21];
  *(v70 + 24) = v42;
  if ((v42 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_37:
  if ((a7 & 4) != 0)
  {
    v43 = dispatch_time(0, 0);
    v44 = [self generateKeyphrasesForRecord:v17 processedItem:v22 processorFlags:a7 cancelBlock:v21];
    *(v70 + 24) = v44;
    if (a8)
    {
      *a8 += dispatch_time(0, 0) - v43;
      if ((v70[3] & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (!v44)
    {
      goto LABEL_48;
    }
  }

  v45 = *(v70 + 24);
  if ((a7 & 8) != 0)
  {
    if (*(v70 + 24))
    {
      v46 = [self generatePeopleForRecord:v17 processedItem:v22 processedItemBlock:v59 cancelBlock:v21];
      v39 = 0;
LABEL_47:
      v38 = (a7 >> 3) & 1;
      *(v70 + 24) = v46;
      goto LABEL_49;
    }
  }

  else if (*(v70 + 24))
  {
    v46 = v59[2](v59, v22);
    v39 = v46;
    goto LABEL_47;
  }

LABEL_48:
  LODWORD(v38) = 0;
  v39 = 0;
LABEL_49:

  objc_autoreleasePoolPop(context);
  if (v38)
  {
    v39 = *(v70 + 24);
  }

  _Block_object_dispose(&v69, 8);

  v47 = *MEMORY[0x277D85DE8];
  return v39 & 1;
}

- (void)canProcessEvent
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13(&dword_231B25000, a2, a3, "SKGProcessor+Items#canProcessRecord canProcess:%d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)canProcessEventForRecord:()Items bundleIdentifier:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13(&dword_231B25000, a2, a3, "SKGProcessor+Items#canProcessRecord NOT recordMatchesContentURLOnDisk:%d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end