@interface SDPommesSynonyms
- (BOOL)_loadSynonymsFromFile:(id)a3 isFirstPass:(BOOL)a4 isDate:(BOOL)a5 error:(id *)a6;
- (SDPommesSynonyms)init;
- (id)_cleanWord:(id)a3 unacceptableCharSet:(id)a4;
- (id)generateDateSynonymsFromToken:(id)a3 previousToken:(id)a4 isOrdinalToken:(BOOL *)a5;
- (void)loadDateSynonymDictionary;
- (void)loadFirstPassSynonymDictionary;
- (void)loadSecondPassSynonymDictionary;
@end

@implementation SDPommesSynonyms

- (SDPommesSynonyms)init
{
  v5.receiver = self;
  v5.super_class = SDPommesSynonyms;
  v2 = [(SDPommesSynonyms *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SDPommesSynonyms *)v2 loadFirstPassSynonymDictionary];
    [(SDPommesSynonyms *)v3 loadSecondPassSynonymDictionary];
    [(SDPommesSynonyms *)v3 loadDateSynonymDictionary];
  }

  return v3;
}

- (id)_cleanWord:(id)a3 unacceptableCharSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v5, "rangeOfCharacterFromSet:", v6) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 localizedLowercaseString];
    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_loadSynonymsFromFile:(id)a3 isFirstPass:(BOOL)a4 isDate:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = 4;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:v10 usedEncoding:&v53 error:a6];
  v13 = v12;
  if (*a6)
  {
    v48 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [SDPommesSynonyms _loadSynonymsFromFile:v10 isFirstPass:a6 isDate:? error:?];
    }

LABEL_4:
    v14 = 0;
    goto LABEL_35;
  }

  if (![v12 length])
  {
    v48 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [SDPommesSynonyms _loadSynonymsFromFile:isFirstPass:isDate:error:];
    }

    goto LABEL_4;
  }

  v40 = v7;
  v41 = v8;
  v48 = v43 = v10;
  v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  v16 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v42 = v13;
  v17 = [v13 componentsSeparatedByCharactersInSet:v16];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v50;
    v44 = v15;
    v45 = v11;
    do
    {
      v21 = 0;
      v46 = v19;
      do
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        v24 = [v22 componentsSeparatedByCharactersInSet:v15];
        if ([v24 count] >= 2)
        {
          v25 = [v24 objectAtIndexedSubscript:0];
          v26 = [(SDPommesSynonyms *)self _cleanWord:v25 unacceptableCharSet:v48];

          if ([v26 length])
          {
            v27 = [(NSDictionary *)v11 objectForKey:v26];
            v28 = [v27 count];

            if (!v28)
            {
              v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v24, "count") - 1}];
              if ([v24 count] >= 2)
              {
                v30 = 1;
                do
                {
                  v31 = [v24 objectAtIndexedSubscript:v30];
                  v32 = [(SDPommesSynonyms *)self _cleanWord:v31 unacceptableCharSet:v48];

                  if ([v32 length])
                  {
                    [v29 addObject:v32];
                  }

                  ++v30;
                }

                while (v30 < [v24 count]);
              }

              v11 = v45;
              if ([v29 count])
              {
                [(NSDictionary *)v45 setValue:v29 forKey:v26];
              }

              v15 = v44;
            }
          }

          v19 = v46;
        }

        objc_autoreleasePoolPop(v23);
        ++v21;
      }

      while (v21 != v19);
      v19 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v19);
  }

  if (v41)
  {
    p_firstPassSynonymDictionary = &self->firstPassSynonymDictionary;
    v34 = v11;
  }

  else
  {
    v35 = v11;
    if (v40)
    {
      p_firstPassSynonymDictionary = &self->dateSynonymDictionary;
    }

    else
    {
      p_firstPassSynonymDictionary = &self->secondPassSynonymDictionary;
    }
  }

  v13 = v42;
  v10 = v43;
  v36 = *p_firstPassSynonymDictionary;
  *p_firstPassSynonymDictionary = v11;

  v37 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [SDPommesSynonyms _loadSynonymsFromFile:v11 isFirstPass:v43 isDate:v37 error:?];
  }

  v14 = 1;
LABEL_35:

  v38 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)loadFirstPassSynonymDictionary
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadSecondPassSynonymDictionary
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadDateSynonymDictionary
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)generateDateSynonymsFromToken:(id)a3 previousToken:(id)a4 isOrdinalToken:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  if (generateDateSynonymsFromToken_previousToken_isOrdinalToken__onceToken != -1)
  {
    [SDPommesSynonyms generateDateSynonymsFromToken:previousToken:isOrdinalToken:];
  }

  v11 = [(SDPommesSynonyms *)self getDateSynonymsForWord:v8];
  if (v11)
  {
    [v10 addObjectsFromArray:v11];
  }

  v12 = [generateDateSynonymsFromToken_previousToken_isOrdinalToken__ordinalIndicators containsObject:v8];
  if (v9 && v12)
  {
    *a5 = 1;
    [v10 addObject:v9];
  }

  return v10;
}

uint64_t __79__SDPommesSynonyms_generateDateSynonymsFromToken_previousToken_isOrdinalToken___block_invoke()
{
  generateDateSynonymsFromToken_previousToken_isOrdinalToken__ordinalIndicators = [MEMORY[0x277CBEB98] setWithObjects:{@"st", @"nd", @"rd", @"th", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)_loadSynonymsFromFile:(uint64_t)a1 isFirstPass:(uint64_t *)a2 isDate:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_0();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_231A35000, v4, OS_LOG_TYPE_ERROR, "Failed to read synonym file: %@ with error: %@.", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadSynonymsFromFile:(NSObject *)a3 isFirstPass:isDate:error:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_4_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_231A35000, a3, OS_LOG_TYPE_ERROR, "Loaded %lu synonyms from file: %@.", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadSynonymsFromFile:isFirstPass:isDate:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end