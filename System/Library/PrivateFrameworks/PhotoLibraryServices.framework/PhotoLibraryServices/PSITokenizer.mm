@interface PSITokenizer
+ (id)fts5StringFromString:(id)string useWildcard:(BOOL)wildcard leadingAnchored:(BOOL)anchored orderInsensitive:(BOOL)insensitive;
+ (id)normalizeString:(id)string;
- (PSITokenizer)initWithLocale:(id)locale useCache:(BOOL)cache;
- (id)newTokensFromString:(id)string withOptions:(int64_t)options outCopyRanges:(id *)ranges error:(id *)error;
- (id)normalizeString:(id)string;
- (int)registerFTS5TokenizerForDatabase:(sqlite3 *)database;
- (void)_tokenizeString:(id)string withContext:(id *)context;
- (void)dealloc;
- (void)tokenizeString:(id)string withOptions:(int64_t)options tokenOutput:(tokenOutput_t *)output;
@end

@implementation PSITokenizer

- (int)registerFTS5TokenizerForDatabase:(sqlite3 *)database
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = fts5_api_from_db(database);
  if (v5)
  {
    v6 = v5;
    v19 = xmmword_1F0F035B8;
    v20 = off_1F0F035C8;
    v7 = *(v5 + 8);
    ftsTokenizerName = [objc_opt_class() ftsTokenizerName];
    v9 = v7(v6, [ftsTokenizerName UTF8String], self, &v19, 0);

    v10 = PLSearchBackendPSITokenizerGetLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_errmsg(database);
        *buf = 67109378;
        v22 = v9;
        v23 = 2080;
        v24 = v12;
        v13 = "Failed to register FTS5 tokenizer (%d). Err: %s";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 18;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v14, v15, v13, buf, v16);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "Registered FTS5 tokenizer.";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 2;
      goto LABEL_10;
    }

    return v9;
  }

  v17 = PLSearchBackendPSITokenizerGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "fts5_api is NULL", &v19, 2u);
  }

  return 1;
}

- (id)newTokensFromString:(id)string withOptions:(int64_t)options outCopyRanges:(id *)ranges error:(id *)error
{
  v27[63] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (ranges)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v12 = 0;
  }

  v21[0] = 0;
  v21[1] = v11;
  v21[2] = 0;
  v21[3] = &v26;
  v21[4] = 32;
  v22 = 0u;
  v23 = 0u;
  [(PSITokenizer *)self tokenizeString:stringCopy withOptions:options tokenOutput:v21];
  if (!ranges)
  {
LABEL_12:
    error = v11;
    goto LABEL_15;
  }

  v13 = v22;
  if (v13 == [v11 count])
  {
    if (v13 >= 1)
    {
      v14 = v27;
      do
      {
        if (v12)
        {
          v15 = [MEMORY[0x1E696B098] valueWithRange:{*(v14 - 1), *v14}];
          [v12 addObject:v15];
        }

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    v16 = v12;
    *ranges = v12;
    goto LABEL_12;
  }

  if (error)
  {
    stringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Reached token ranges limit (%ld) for string: %@", 32, stringCopy];
    v18 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = stringCopy;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *error = [v18 errorWithDomain:@"com.apple.photos.search" code:-1 userInfo:v19];

    error = 0;
  }

LABEL_15:

  return error;
}

- (void)_tokenizeString:(id)string withContext:(id *)context
{
  v79 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (self->_useCache)
  {
    v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:stringCopy];
    if ([v7 count])
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v71 objects:v78 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v72;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v72 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v71 + 1) + 8 * i);
            string = [v13 string];
            range = [v13 range];
            enumerateToken(string, range, v16, context);
          }

          v10 = [v8 countByEnumeratingWithState:&v71 objects:v78 count:16];
        }

        while (v10);
      }

      v17 = v8;
      goto LABEL_31;
    }

    [(NSMutableDictionary *)self->_cache removeAllObjects];
  }

  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PSITokenizer__tokenizeString_withContext___block_invoke;
  aBlock[3] = &unk_1E756BD10;
  v19 = array;
  v70 = v19;
  v20 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __44__PSITokenizer__tokenizeString_withContext___block_invoke_2;
  v66[3] = &unk_1E756BD38;
  v53 = stringCopy;
  v21 = stringCopy;
  v67 = v21;
  v52 = v20;
  v68 = v52;
  v22 = _Block_copy(v66);
  v23 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".-_"];
  NLTaggerSetString();
  [v21 length];
  NLTaggerSetLocaleForRange();
  v59 = MEMORY[0x1E69E9820];
  v60 = 3221225472;
  v61 = __44__PSITokenizer__tokenizeString_withContext___block_invoke_3;
  v62 = &unk_1E756BD60;
  v24 = v21;
  v63 = v24;
  v51 = v23;
  v64 = v51;
  v65 = v22;
  NLTaggerEnumerateTokens();
  useCache = self->_useCache;
  selfCopy = self;
  v50 = v65;
  if ((context->var1 & 4) != 0 && [v19 count] >= 9)
  {
    if ((context->var1 & 8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v27 = [v19 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - v26}];
    range2 = [v27 range];
    v30 = v29;

    v31 = [v19 objectAtIndexedSubscript:8 - v26];
    range3 = [v31 range];

    v33 = range2 + v30 - range3;
    v80.location = range3;
    v80.length = v33;
    v34 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v24, v80);
    v35 = [[PSIToken alloc] initWithString:v34 range:range3, v33];
    CFRelease(v34);
    v36 = [v19 count] - 7;
    v77 = v35;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    [v19 replaceObjectsInRange:8 - v26 withObjectsFromArray:{v36, v37}];

    goto LABEL_20;
  }

  if (!useCache)
  {
LABEL_20:
    v38 = 0;
    goto LABEL_21;
  }

  [(NSMutableDictionary *)self->_cache setObject:v19 forKeyedSubscript:v24];
  v38 = 1;
LABEL_21:
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v17 = v19;
  v39 = [v17 countByEnumeratingWithState:&v55 objects:v76 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v56;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v56 != v41)
        {
          objc_enumerationMutation(v17);
        }

        v43 = *(*(&v55 + 1) + 8 * j);
        string2 = [v43 string];
        range4 = [v43 range];
        enumerateToken(string2, range4, v46, context);
        if (v38)
        {
          string3 = [v43 string];
          v48 = [[PSIToken alloc] initWithString:string3 range:0, CFStringGetLength(string3)];
          v75 = v48;
          v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
          [(NSMutableDictionary *)selfCopy->_cache setObject:v49 forKeyedSubscript:string3];
        }
      }

      v40 = [v17 countByEnumeratingWithState:&v55 objects:v76 count:16];
    }

    while (v40);
  }

  v8 = v70;
  stringCopy = v53;
LABEL_31:
}

void __44__PSITokenizer__tokenizeString_withContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = [[PSIToken alloc] initWithString:a2 range:a3, a4];
  [v4 addObject:v5];
}

void __44__PSITokenizer__tokenizeString_withContext___block_invoke_2(uint64_t a1, CFRange range)
{
  length = range.length;
  v6.location = range.location;
  v6.length = length;
  v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 32), v6);
  (*(*(a1 + 40) + 16))();

  CFRelease(v4);
}

uint64_t __44__PSITokenizer__tokenizeString_withContext___block_invoke_3(uint64_t result, uint64_t a2)
{
  v2 = result;
  location = *a2;
  v4 = *(a2 + 8);
  if ((*(a2 + 16) & 0x10) == 0)
  {
    return (*(*(v2 + 48) + 16))();
  }

  v6.location = 0;
  v6.length = 0;
  if (v4 >= 1)
  {
    while (1)
    {
      v7.location = location;
      v7.length = v4;
      result = CFStringFindCharacterFromSet(*(v2 + 32), *(v2 + 40), v7, 0, &v6);
      if (!result)
      {
        break;
      }

      if (v6.location != location)
      {
        result = (*(*(v2 + 48) + 16))();
        location = v6.location;
      }

      location += v6.length;
      v4 = *a2 - location + *(a2 + 8);
      if (v4 <= 0)
      {
        return result;
      }
    }

    return (*(*(v2 + 48) + 16))();
  }

  return result;
}

- (void)tokenizeString:(id)string withOptions:(int64_t)options tokenOutput:(tokenOutput_t *)output
{
  v19 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v9 = stringCopy;
  if (stringCopy)
  {
    Length = CFStringGetLength(stringCopy);
    v11 = 3 * Length + 4;
    if (Length >= 85)
    {
      v12 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
    }

    else
    {
      v12 = buf;
    }

    v14[0] = v9;
    v14[1] = options;
    v14[2] = output;
    v15 = v12;
    v16 = v12;
    v17 = v11;
    [(PSITokenizer *)self _tokenizeString:v9 withContext:v14];
    if (v15 && v15 != v12)
    {
      free(v15);
    }

    if (v12 && v12 != buf)
    {
      free(v12);
    }
  }

  else
  {
    v13 = PLSearchBackendPSITokenizerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Attempted to tokenize nil string", buf, 2u);
    }
  }
}

- (id)normalizeString:(id)string
{
  stringCopy = string;
  v4 = [objc_opt_class() normalizeString:stringCopy];

  return v4;
}

- (void)dealloc
{
  tagger = self->_tagger;
  if (tagger)
  {
    CFRelease(tagger);
    self->_tagger = 0;
  }

  v4.receiver = self;
  v4.super_class = PSITokenizer;
  [(PSITokenizer *)&v4 dealloc];
}

- (PSITokenizer)initWithLocale:(id)locale useCache:(BOOL)cache
{
  cacheCopy = cache;
  v16[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = PSITokenizer;
  v8 = [(PSITokenizer *)&v13 init];
  if (v8)
  {
    v16[0] = *MEMORY[0x1E6998270];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v14 = *MEMORY[0x1E6998278];
    v15 = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8->_tagger = NLTaggerCreate();
    objc_storeStrong(&v8->_locale, locale);
    v8->_useCache = cacheCopy;
    if (cacheCopy)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      dictionary = 0;
    }

    cache = v8->_cache;
    v8->_cache = dictionary;
  }

  return v8;
}

+ (id)fts5StringFromString:(id)string useWildcard:(BOOL)wildcard leadingAnchored:(BOOL)anchored orderInsensitive:(BOOL)insensitive
{
  insensitiveCopy = insensitive;
  anchoredCopy = anchored;
  wildcardCopy = wildcard;
  v9 = [string stringByReplacingOccurrencesOfString:@" withString:@"];
  v10 = @"^";
  if (!anchoredCopy)
  {
    v10 = &stru_1F0F06D80;
  }

  if (wildcardCopy)
  {
    v11 = @"*";
  }

  else
  {
    v11 = &stru_1F0F06D80;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = v10;
  v14 = v13;
  if (insensitiveCopy)
  {
    v15 = @"%@%@%@";
  }

  else
  {
    v15 = @"%@%@%@";
  }

  v16 = [v12 stringWithFormat:v15, v13, v9, v11];

  return v16;
}

+ (id)normalizeString:(id)string
{
  v11 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([(__CFString *)stringCopy length])
  {
    v4 = 3 * [(__CFString *)stringCopy length]+ 1;
    if (v4 >= 257)
    {
      v5 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    }

    else
    {
      v5 = v10;
    }

    numChars = 0;
    if (!_normalizeString(stringCopy, v5, v4, &numChars))
    {
      if (v5 != v10)
      {
        free(v5);
      }

      v7 = numChars + 1;
      v5 = malloc_type_malloc(2 * (numChars + 1), 0x1000040BDFB0063uLL);
      _normalizeString(stringCopy, v5, v7, 0);
    }

    v6 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v5, numChars);
    if (v5 != v10)
    {
      free(v5);
    }
  }

  else
  {
    v6 = stringCopy;
  }

  return v6;
}

@end