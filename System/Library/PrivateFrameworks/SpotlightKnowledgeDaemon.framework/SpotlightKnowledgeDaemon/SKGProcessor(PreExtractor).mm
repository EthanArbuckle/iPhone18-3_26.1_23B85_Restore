@interface SKGProcessor(PreExtractor)
- (uint64_t)generateLanguageForRecord:()PreExtractor processedItem:fetchCachedLanguageBlock:cacheLanguageBlock:cancelBlock:;
- (uint64_t)loadLanguageIdentifier;
@end

@implementation SKGProcessor(PreExtractor)

- (uint64_t)loadLanguageIdentifier
{
  [MEMORY[0x277D657A8] sharedProcessorListener];

  +[SKGLanguageIdentifier sharedIdentifier];
  return 1;
}

- (uint64_t)generateLanguageForRecord:()PreExtractor processedItem:fetchCachedLanguageBlock:cacheLanguageBlock:cancelBlock:
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v18 = objc_autoreleasePoolPush();
  textContentLanguage = [v14 textContentLanguage];
  if ([textContentLanguage length])
  {
    textContentSize = [v14 textContentSize];

    if (textContentSize)
    {
      v21 = 0;
      LOBYTE(v7) = *(v48 + 24);
      goto LABEL_19;
    }
  }

  else
  {
  }

  Copy = [self copyStringValueFromRecord:v13 key:@"kMDItemTextContentLanguage"];
  v23 = [self copyTextContentFromRecord:v13];
  if (!v23)
  {
    v23 = [self copySnippetFromRecord:v13];
    if (!v23)
    {
      v21 = 0;
      LOBYTE(v7) = *(v48 + 24);
      goto LABEL_18;
    }
  }

  if (v15)
  {
    if (!Copy)
    {
      Copy = v15[2](v15);
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v7 = SKGLogInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [SKGProcessor(PreExtractor) generateLanguageForRecord:v14 processedItem:v7 fetchCachedLanguageBlock:? cacheLanguageBlock:? cancelBlock:?];
        }
      }
    }
  }

  if (Copy)
  {
    goto LABEL_14;
  }

  loadLanguageIdentifier = [self loadLanguageIdentifier];
  *(v48 + 24) = loadLanguageIdentifier;
  if (!loadLanguageIdentifier)
  {
    Copy = 0;
    v21 = 0;
    LOBYTE(v7) = 0;
    goto LABEL_18;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __126__SKGProcessor_PreExtractor__generateLanguageForRecord_processedItem_fetchCachedLanguageBlock_cacheLanguageBlock_cancelBlock___block_invoke;
  aBlock[3] = &unk_27893EEC8;
  v46 = &v47;
  v39 = v17;
  v45 = v39;
  v40 = _Block_copy(aBlock);
  v7 = 0x277D65000uLL;
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  enableV2LanguageID = [mEMORY[0x277D657A8] enableV2LanguageID];

  if (enableV2LanguageID)
  {
    context = objc_autoreleasePoolPush();
    v28 = +[SKGLanguageIdentifier sharedIdentifier];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __126__SKGProcessor_PreExtractor__generateLanguageForRecord_processedItem_fetchCachedLanguageBlock_cacheLanguageBlock_cancelBlock___block_invoke_2;
    v41[3] = &unk_27893F030;
    v43 = &v47;
    v7 = v39;
    v42 = v7;
    Copy = [v28 languageFromString:v23 normalizedChunkBlock:v41];

    if (v7)
    {
      v29 = (*(v7 + 16))(v7, @"processTextContentFromRecord:cancel") ^ 1;
      v30 = v48;
    }

    else
    {
      v30 = v48;
      v29 = *(v48 + 24);
    }

    *(v30 + 24) = v29;

    objc_autoreleasePoolPop(context);
    goto LABEL_48;
  }

  mEMORY[0x277D657A8]2 = [MEMORY[0x277D657A8] sharedProcessorListener];
  currentLocaleIsCJK = [mEMORY[0x277D657A8]2 currentLocaleIsCJK];

  if (currentLocaleIsCJK)
  {
    if ([(__CFString *)v23 length]<= 5)
    {
LABEL_30:

      Copy = 0;
      goto LABEL_17;
    }
  }

  else if ([(__CFString *)v23 length]< 0x10)
  {
    goto LABEL_30;
  }

  v7 = v40;
  if (CFStringGetLength(v23))
  {
    contexta = objc_autoreleasePoolPush();
    LanguageGuessUsingMontrealInString = SILanguageModelGetLanguageGuessUsingMontrealInString();
    if (!v7 || !(*(v7 + 16))(v7))
    {
      if (LanguageGuessUsingMontrealInString)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], LanguageGuessUsingMontrealInString);
        goto LABEL_43;
      }

      v34 = NLStringTokenizerCopyBestStringLanguage();
      if (v34)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v34);
        CFRelease(v34);
        goto LABEL_43;
      }
    }

    Copy = 0;
LABEL_43:
    objc_autoreleasePoolPop(contexta);
    goto LABEL_44;
  }

  Copy = 0;
LABEL_44:

  if (v39)
  {
    v35 = v39[2]() ^ 1;
    v36 = v48;
  }

  else
  {
    v36 = v48;
    v35 = *(v48 + 24);
  }

  *(v36 + 24) = v35;
LABEL_48:

  if (Copy)
  {
LABEL_14:
    if (*(v48 + 24) == 1)
    {
      [v14 setTextContent:v23];
      [v14 setLanguage:Copy];
      if (v16)
      {
        v16[2](v16, Copy);
      }
    }
  }

LABEL_17:
  v21 = 1;
LABEL_18:

LABEL_19:
  objc_autoreleasePoolPop(v18);
  if (v21)
  {
    LOBYTE(v7) = *(v48 + 24);
  }

  _Block_object_dispose(&v47, 8);

  return v7 & 1;
}

- (void)generateLanguageForRecord:()PreExtractor processedItem:fetchCachedLanguageBlock:cacheLanguageBlock:cancelBlock:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_231B25000, log, OS_LOG_TYPE_DEBUG, "SKGProcessor+Keyphraser#processLanguageOfTextContentFromRecord got language %@ from cache for item %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end