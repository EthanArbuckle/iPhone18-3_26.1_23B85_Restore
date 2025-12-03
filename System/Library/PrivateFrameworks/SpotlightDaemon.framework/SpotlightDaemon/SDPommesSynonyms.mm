@interface SDPommesSynonyms
- (BOOL)_loadSynonymsFromFile:(id)file isFirstPass:(BOOL)pass isDate:(BOOL)date error:(id *)error;
- (SDPommesSynonyms)init;
- (id)_cleanWord:(id)word unacceptableCharSet:(id)set;
- (id)generateDateSynonymsFromToken:(id)token previousToken:(id)previousToken isOrdinalToken:(BOOL *)ordinalToken;
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

- (id)_cleanWord:(id)word unacceptableCharSet:(id)set
{
  wordCopy = word;
  setCopy = set;
  if ([wordCopy length] && objc_msgSend(wordCopy, "rangeOfCharacterFromSet:", setCopy) == 0x7FFFFFFFFFFFFFFFLL)
  {
    localizedLowercaseString = [wordCopy localizedLowercaseString];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [localizedLowercaseString stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_loadSynonymsFromFile:(id)file isFirstPass:(BOOL)pass isDate:(BOOL)date error:(id *)error
{
  dateCopy = date;
  passCopy = pass;
  v55 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = 4;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:fileCopy usedEncoding:&v53 error:error];
  v13 = v12;
  if (*error)
  {
    v48 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [SDPommesSynonyms _loadSynonymsFromFile:fileCopy isFirstPass:error isDate:? error:?];
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

  v40 = dateCopy;
  v41 = passCopy;
  v48 = v43 = fileCopy;
  v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v42 = v13;
  v17 = [v13 componentsSeparatedByCharactersInSet:newlineCharacterSet];

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
  fileCopy = v43;
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

- (id)generateDateSynonymsFromToken:(id)token previousToken:(id)previousToken isOrdinalToken:(BOOL *)ordinalToken
{
  tokenCopy = token;
  previousTokenCopy = previousToken;
  array = [MEMORY[0x277CBEB18] array];
  if (generateDateSynonymsFromToken_previousToken_isOrdinalToken__onceToken != -1)
  {
    [SDPommesSynonyms generateDateSynonymsFromToken:previousToken:isOrdinalToken:];
  }

  v11 = [(SDPommesSynonyms *)self getDateSynonymsForWord:tokenCopy];
  if (v11)
  {
    [array addObjectsFromArray:v11];
  }

  v12 = [generateDateSynonymsFromToken_previousToken_isOrdinalToken__ordinalIndicators containsObject:tokenCopy];
  if (previousTokenCopy && v12)
  {
    *ordinalToken = 1;
    [array addObject:previousTokenCopy];
  }

  return array;
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