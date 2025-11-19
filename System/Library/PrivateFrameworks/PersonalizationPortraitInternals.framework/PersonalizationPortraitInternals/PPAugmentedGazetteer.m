@interface PPAugmentedGazetteer
+ (id)textForToken:(void *)a3 text:;
- (PPAugmentedGazetteer)init;
- (PPAugmentedGazetteer)initWithDatabaseAsset:(id)a3 gazetteerPath:(id)a4 contextPredictor:(id)a5;
- (PPAugmentedGazetteer)initWithDatabaseAssetPath:(id)a3 gazetteerPath:(id)a4 contextPredictor:(id)a5;
- (id)metadataForName:(id)a3;
- (void)dealloc;
- (void)iterExtractionsForText:(id)a3 addEntity:(id)a4 addTopic:(id)a5 addLocation:(id)a6;
- (void)iterSentencesForText:(id)a3 block:(id)a4;
- (void)iterTokensForSentence:(id)a3 block:(id)a4;
@end

@implementation PPAugmentedGazetteer

- (PPAugmentedGazetteer)init
{
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = [v3 filepathForFactor:@"AugmentedGazetteerMetadata.db" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  v5 = +[PPTrialWrapper sharedInstance];
  v6 = [v5 filepathForFactor:@"AugmentedGazetteer.dat" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  v7 = MEMORY[0x277D3A248];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v8 languageCode];
  v10 = [v7 languageForLocaleIdentifier:v9];
  language = self->_language;
  self->_language = v10;

  v12 = [[PPContextPredictor alloc] initWithLanguage:self->_language];
  v13 = [(PPAugmentedGazetteer *)self initWithDatabaseAssetPath:v4 gazetteerPath:v6 contextPredictor:v12];

  return v13;
}

- (void)dealloc
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_17536];
  v3.receiver = self;
  v3.super_class = PPAugmentedGazetteer;
  [(PPAugmentedGazetteer *)&v3 dealloc];
}

uint64_t __31__PPAugmentedGazetteer_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2;
  CFRelease(v2);
  v4 = v3[2];

  return MEMORY[0x282152500](v4);
}

- (void)iterTokensForSentence:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__PPAugmentedGazetteer_iterTokensForSentence_block___block_invoke;
  v11[3] = &unk_2789762C0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

void __52__PPAugmentedGazetteer_iterTokensForSentence_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[1];
  v5 = *(a1 + 32);
  NLTaggerSetString();
  v6 = v3[1];
  [*(a1 + 32) length];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v3;
  NLTaggerEnumerateTokens();
  v8 = v3[1];
  NLTaggerSetString();
}

void __52__PPAugmentedGazetteer_iterTokensForSentence_block___block_invoke_2(void *a1, __int128 *a2, _BYTE *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v13 = *a2;
  v14 = *(a2 + 2);
  v8 = [PPAugmentedGazetteer textForToken:v7 text:?];
  v9 = *(a1[5] + 8);
  v10 = *MEMORY[0x277D00398];
  v11 = NLTaggerCopyTagForCurrentToken();
  v12 = [[PPToken alloc] initWithText:v8 tag:v11];
  LOBYTE(v13) = 0;
  (*(a1[6] + 16))();
  if (a3 && (v13 & 1) != 0)
  {
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)textForToken:(void *)a3 text:
{
  v4 = a3;
  objc_opt_self();
  v6 = *a2;
  v5 = a2[1];
  v7 = objc_autoreleasePoolPush();
  v8 = [v4 substringWithRange:{v6, v5}];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (void)iterSentencesForText:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__PPAugmentedGazetteer_iterSentencesForText_block___block_invoke;
  v11[3] = &unk_2789762C0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

void __51__PPAugmentedGazetteer_iterSentencesForText_block___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 length];
  NLTokenizerSetString();
  v7 = a2[2];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  NLTokenizerEnumerateTokens();
  v8 = a2[2];

  NLTokenizerSetString();
}

void __51__PPAugmentedGazetteer_iterSentencesForText_block___block_invoke_2(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  v12 = 0;
  if (a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v10 = *a2;
    v11 = *(a2 + 2);
    v8 = [PPAugmentedGazetteer textForToken:v7 text:?];
    (*(*(a1 + 40) + 16))();
    if (a3)
    {
      if (v12)
      {
        *a3 = 1;
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "Nil pointer provided from sentence tokenizer.", &v10, 2u);
    }
  }
}

- (id)metadataForName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  db = self->_db;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT * FROM %s WHERE name = :name", "metadata"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__PPAugmentedGazetteer_metadataForName___block_invoke;
  v15[3] = &unk_278978CF8;
  v16 = v4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__PPAugmentedGazetteer_metadataForName___block_invoke_2;
  v13[3] = &unk_278978DB8;
  v8 = v5;
  v14 = v8;
  v9 = v4;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v7 onPrep:v15 onRow:v13 onError:&__block_literal_global_76];

  v10 = v14;
  v11 = v8;

  return v8;
}

uint64_t __40__PPAugmentedGazetteer_metadataForName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PPAugmentedGazetteerMetadata alloc] initWithStatement:v3];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  v5 = MEMORY[0x277D42690];

  return *v5;
}

uint64_t __40__PPAugmentedGazetteer_metadataForName___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "PPAugmentedGazetteer: error serializing from the database: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (void)iterExtractionsForText:(id)a3 addEntity:(id)a4 addTopic:(id)a5 addLocation:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSString *)self->_language lowercaseString];
  v15 = [v14 hasPrefix:@"zh"];

  if (v15)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_INFO, "PPAugmentedGazetteer: ignoring documents on Chinese devices.", buf, 2u);
    }
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__PPAugmentedGazetteer_iterExtractionsForText_addEntity_addTopic_addLocation___block_invoke;
    v17[3] = &unk_278976250;
    v17[4] = self;
    v18 = v11;
    v19 = v13;
    v20 = v12;
    [(PPAugmentedGazetteer *)self iterSentencesForText:v10 block:v17];
  }
}

void __78__PPAugmentedGazetteer_iterExtractionsForText_addEntity_addTopic_addLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __78__PPAugmentedGazetteer_iterExtractionsForText_addEntity_addTopic_addLocation___block_invoke_2;
  v23 = &unk_278976228;
  v24 = v4;
  v6 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v25 = v5;
  v7 = v5;
  v8 = v4;
  [v6 iterTokensForSentence:v3 block:&v20];

  v9 = [*(*(a1 + 32) + 24) contextForSentence:{v7, v20, v21, v22, v23}];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  if (v11 && [v14 count])
  {
    v19 = *(v11 + 8);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __78__PPAugmentedGazetteer_addExtractions_context_addEntity_addTopic_addLocation___block_invoke;
    v28[3] = &unk_278976200;
    v29 = v14;
    v30 = v11;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    [v19 readTransaction:v28];
  }
}

void __78__PPAugmentedGazetteer_iterExtractionsForText_addEntity_addTopic_addLocation___block_invoke_2(void *a1, void *a2)
{
  v20 = a2;
  v3 = [v20 tag];
  v4 = [v3 isEqualToString:@"EXTRACTION"];

  if (v4)
  {
    v5 = a1[4];
    v6 = [v20 text];
    [v5 addObject:v6];
LABEL_8:

    goto LABEL_9;
  }

  v7 = [v20 tag];
  v8 = [v7 isEqualToString:*MEMORY[0x277D002F8]];

  if (v8)
  {
    v9 = a1[6];
    v6 = [v20 text];
    (*(v9 + 16))(v9, v6, 1, 0, 2);
    goto LABEL_8;
  }

  v10 = [v20 tag];
  v11 = [v10 isEqualToString:*MEMORY[0x277D00300]];

  if (v11)
  {
    v12 = a1[6];
    v13 = [v20 text];
    (*(v12 + 16))(v12, v13, 5, 0, 2);

    v14 = a1[7];
    v6 = [v20 text];
    (*(v14 + 16))(v14, v6, 3, 2);
    goto LABEL_8;
  }

  v17 = [v20 tag];
  v18 = [v17 isEqualToString:*MEMORY[0x277D002F0]];

  if (v18)
  {
    v19 = a1[6];
    v6 = [v20 text];
    (*(v19 + 16))(v19, v6, 2, 0, 2);
    goto LABEL_8;
  }

LABEL_9:
  v15 = a1[5];
  v16 = [v20 text];
  [v15 addObject:v16];
}

void __78__PPAugmentedGazetteer_addExtractions_context_addEntity_addTopic_addLocation___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v2 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v2;
        v3 = *(*(&v26 + 1) + 8 * v2);
        context = objc_autoreleasePoolPush();
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v4 = *(a1 + 40);
        v5 = [v3 lowercaseString];
        v6 = [v4 metadataForName:v5];

        v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            v10 = 0;
            do
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v22 + 1) + 8 * v10);
              v12 = *(a1 + 48);
              if (v11)
              {
                [v12 probabilityForDomain:*(v11 + 12)];
                if (v13 >= *(v11 + 24))
                {
                  if (*(v11 + 32))
                  {
                    if ([MEMORY[0x277D3A420] categoryForDescription:?])
                    {
                      v14 = 0;
                    }

                    else
                    {
                      v14 = *(v11 + 32);
                    }

                    (*(*(a1 + 56) + 16))();
                    if (*(v11 + 40))
                    {
                      (*(*(a1 + 56) + 16))();
                    }
                  }

                  if (*(v11 + 16))
                  {
                    (*(*(a1 + 64) + 16))();
                  }

                  if (*(v11 + 8) == 1)
                  {
                    [MEMORY[0x277D3A3D8] categoryForDescription:*(v11 + 32)];
                    (*(*(a1 + 72) + 16))();
                  }
                }
              }

              else
              {
                [v12 probabilityForDomain:0];
              }

              ++v10;
            }

            while (v8 != v10);
            v15 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
            v8 = v15;
          }

          while (v15);
        }

        objc_autoreleasePoolPop(context);
        v2 = v21 + 1;
      }

      while (v21 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (PPAugmentedGazetteer)initWithDatabaseAsset:(id)a3 gazetteerPath:(id)a4 contextPredictor:(id)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35.receiver = self;
  v35.super_class = PPAugmentedGazetteer;
  v12 = [(PPAugmentedGazetteer *)&v35 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_db, a3);
    v14 = MEMORY[0x277D3A248];
    v15 = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [v15 languageCode];
    v17 = [v14 languageForLocaleIdentifier:v16];
    language = v13->_language;
    v13->_language = v17;

    objc_storeStrong(&v13->_contextPredictor, a5);
    v19 = objc_opt_new();
    v20 = v10;
    objc_opt_self();
    v38 = *MEMORY[0x277D00398];
    [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v21 = *MEMORY[0x277D003E0];
    v36[0] = *MEMORY[0x277D003B8];
    v36[1] = v21;
    v37[0] = &unk_284784350;
    v37[1] = MEMORY[0x277CBEC38];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v22 = NLTaggerCreate();
    v23 = v20;
    objc_opt_self();
    v39 = *MEMORY[0x277D00368];
    v24 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v23];

    v40[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];

    v26 = NLGazetteerCreate();
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v28 = Mutable;
    if (v26)
    {
      CFArrayAppendValue(Mutable, v26);
      v29 = *MEMORY[0x277D00398];
      NLTaggerSetGazetteers();
      CFRelease(v26);
    }

    else
    {
      v30 = *MEMORY[0x277D00398];
      NLTaggerSetGazetteers();
    }

    CFRelease(v28);
    v19[1] = v22;
    objc_opt_self();
    CFLocaleGetSystem();
    v19[2] = NLTokenizerCreate();
    v31 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v19];
    lock = v13->_lock;
    v13->_lock = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

- (PPAugmentedGazetteer)initWithDatabaseAssetPath:(id)a3 gazetteerPath:(id)a4 contextPredictor:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pp_default_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v9;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPAugmentedGazetteer: initializing with gazetteer at %@ and database at %@", buf, 0x16u);
  }

  if (!v9)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "PPAugmentedGazetteer: unable to get gazetteer path.";
LABEL_11:
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    }

LABEL_12:
    v22 = 0;
    goto LABEL_17;
  }

  if (!v8)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "PPAugmentedGazetteer: unable to get SQL path.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v12 = objc_alloc(MEMORY[0x277D42630]);
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"file://%@?immutable=1", v8];
  v27 = 0;
  v14 = objc_opt_new();
  v15 = [v12 initWithFilename:v13 flags:1 error:&v27 errorHandler:v14];
  v16 = v27;

  if (v15)
  {
    v17 = MEMORY[0x277D3A248];
    v18 = [MEMORY[0x277CBEAF8] currentLocale];
    v19 = [v18 languageCode];
    v20 = [v17 languageForLocaleIdentifier:v19];
    language = self->_language;
    self->_language = v20;

    self = [(PPAugmentedGazetteer *)self initWithDatabaseAsset:v15 gazetteerPath:v9 contextPredictor:v10];
    v22 = self;
  }

  else
  {
    v24 = pp_default_log_handle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "PPAugmentedGazetteer: unable to open database. %@", buf, 0xCu);
    }

    v22 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

@end