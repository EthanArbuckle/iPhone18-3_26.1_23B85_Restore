@interface STKUSSDFilter
+ (NSMutableDictionary)cachedExpressions;
- (BOOL)shouldFilterString:(id)string coalescable:(BOOL *)coalescable;
- (STKUSSDFilter)initWithAlwaysFilteredPatterns:(id)patterns sometimesFilteredPatterns:(id)filteredPatterns;
- (id)_matchesInString:(id)string forPattern:(id)pattern;
- (void)reset;
@end

@implementation STKUSSDFilter

+ (NSMutableDictionary)cachedExpressions
{
  if (cachedExpressions_onceToken != -1)
  {
    +[STKUSSDFilter cachedExpressions];
  }

  v3 = cachedExpressions___cachedExpressions;

  return v3;
}

uint64_t __34__STKUSSDFilter_cachedExpressions__block_invoke()
{
  cachedExpressions___cachedExpressions = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (STKUSSDFilter)initWithAlwaysFilteredPatterns:(id)patterns sometimesFilteredPatterns:(id)filteredPatterns
{
  patternsCopy = patterns;
  filteredPatternsCopy = filteredPatterns;
  v14.receiver = self;
  v14.super_class = STKUSSDFilter;
  v8 = [(STKUSSDFilter *)&v14 init];
  if (v8)
  {
    v9 = [patternsCopy copy];
    alwaysFilteredPatterns = v8->_alwaysFilteredPatterns;
    v8->_alwaysFilteredPatterns = v9;

    v11 = [filteredPatternsCopy copy];
    sometimesFilteredPatterns = v8->_sometimesFilteredPatterns;
    v8->_sometimesFilteredPatterns = v11;
  }

  return v8;
}

- (BOOL)shouldFilterString:(id)string coalescable:(BOOL *)coalescable
{
  v41 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (![stringCopy length])
  {
    LOBYTE(v18) = 0;
    v22 = 1;
    if (coalescable)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  alwaysFilteredPatterns = [(STKUSSDFilter *)self alwaysFilteredPatterns];
  v8 = [alwaysFilteredPatterns countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(alwaysFilteredPatterns);
        }

        v12 = [(STKUSSDFilter *)self _matchesInString:stringCopy forPattern:*(*(&v35 + 1) + 8 * i)];
        v13 = [v12 count];

        if (v13)
        {
          LOBYTE(v18) = 0;
          v22 = 1;
          goto LABEL_38;
        }
      }

      v9 = [alwaysFilteredPatterns countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(STKUSSDFilter *)self lastWarningTime];
  v16 = Current - v15;
  v31 = 0u;
  v32 = 0u;
  if (v16 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = -v16;
  }

  v33 = 0uLL;
  v34 = 0uLL;
  alwaysFilteredPatterns = [(STKUSSDFilter *)self sometimesFilteredPatterns];
  v18 = [alwaysFilteredPatterns countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = *v32;
  while (2)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v32 != v19)
      {
        objc_enumerationMutation(alwaysFilteredPatterns);
      }

      v21 = [(STKUSSDFilter *)self _matchesInString:stringCopy forPattern:*(*(&v31 + 1) + 8 * j)];
      if ([v21 count])
      {
        if (v17 >= 300.0)
        {
          if ([v21 count] == 2)
          {
            v23 = [v21 objectAtIndexedSubscript:0];
            v24 = [v21 objectAtIndexedSubscript:1];
            [v23 floatValue];
            v26 = v25;
            [v24 floatValue];
            v28 = v26 > 4.99 || v27 < 2.0;
            if (v28 || v27 < 5.01 && v17 > 180.0)
            {

              goto LABEL_34;
            }
          }

          LOBYTE(v18) = 0;
          v22 = 1;
          goto LABEL_37;
        }

LABEL_34:
        [(STKUSSDFilter *)self setLastWarningTime:Current];
        v22 = 0;
        LOBYTE(v18) = 1;
LABEL_37:

        goto LABEL_38;
      }
    }

    v18 = [alwaysFilteredPatterns countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v22 = 0;
LABEL_38:

  if (coalescable)
  {
LABEL_39:
    *coalescable = v18;
  }

LABEL_40:

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)reset
{
  [(STKUSSDFilter *)self setLastWarningTime:2.22507386e-308];
  cachedExpressions = [objc_opt_class() cachedExpressions];
  [cachedExpressions removeAllObjects];
}

- (id)_matchesInString:(id)string forPattern:(id)pattern
{
  v29 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  patternCopy = pattern;
  cachedExpressions = [objc_opt_class() cachedExpressions];
  v8 = [cachedExpressions objectForKeyedSubscript:patternCopy];

  if (!v8)
  {
    v24 = 0;
    v8 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:patternCopy options:0 error:&v24];
    v9 = v24;
    v10 = v9;
    if (!v8 || v9)
    {
      v11 = STKUSSDLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v26 = patternCopy;
        v27 = 2114;
        v28 = v10;
        _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_ERROR, "Invalid USSD filter regular expression pattern: /%{public}@/ %{public}@", buf, 0x16u);
      }
    }

    cachedExpressions2 = [objc_opt_class() cachedExpressions];
    [cachedExpressions2 setObject:v8 forKeyedSubscript:patternCopy];
  }

  v13 = [stringCopy length];
  v14 = [v8 firstMatchInString:stringCopy options:0 range:{0, v13}];
  numberOfRanges = [v14 numberOfRanges];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:numberOfRanges];
  if (![v14 range] && v13 == v17 && numberOfRanges >= 2)
  {
    for (i = 1; i != numberOfRanges; ++i)
    {
      v19 = [v14 rangeAtIndex:i];
      v21 = [stringCopy substringWithRange:{v19, v20}];
      [v16 addObject:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

@end