@interface _WBSFieldLabelPatternMatcherFactory
+ (__WBSFieldLabelPatternMatcherArray)createFieldLabelPatternMatcherArrayFromWordArrays:(id)arrays allowingEndOfWordMatches:(BOOL)matches;
- (_WBSFieldLabelPatternMatcherFactory)init;
- (void)_addWord:(id)word allowingEndOfWordMatch:(BOOL)match;
@end

@implementation _WBSFieldLabelPatternMatcherFactory

- (_WBSFieldLabelPatternMatcherFactory)init
{
  v7.receiver = self;
  v7.super_class = _WBSFieldLabelPatternMatcherFactory;
  v2 = [(_WBSFieldLabelPatternMatcherFactory *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trie = v2->_trie;
    v2->_trie = v3;

    v5 = v2;
  }

  return v2;
}

- (void)_addWord:(id)word allowingEndOfWordMatch:(BOOL)match
{
  wordCopy = word;
  v6 = [wordCopy length];
  v7 = self->_trie;
  if (match || !SafariShared::FieldLabelPatternMatcher::isWordCharacter([wordCopy characterAtIndex:0]))
  {
    dictionary = v7;
    if (!v6)
    {
LABEL_13:
      dictionary2 = dictionary;
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:0xFFFFLL];
    v9 = [(NSMutableDictionary *)v7 objectForKey:v8];

    if (v9)
    {
      dictionary = [(NSMutableDictionary *)v7 objectForKey:v8];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:0xFFFFLL];
      [(NSMutableDictionary *)v7 setObject:dictionary forKey:v15];
    }

    if (!v6)
    {
      goto LABEL_13;
    }
  }

  for (i = 0; i != v6; ++i)
  {
    v12 = [wordCopy characterAtIndex:i];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v12];
    dictionary2 = [dictionary objectForKey:v13];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:dictionary2 forKey:v13];
    }

    dictionary = dictionary2;
  }

LABEL_14:
  isWordCharacter = SafariShared::FieldLabelPatternMatcher::isWordCharacter([wordCopy characterAtIndex:v6 - 1]);
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:((isWordCharacter << 15) >> 15)];
  [dictionary2 setObject:dictionary3 forKey:v18];
}

+ (__WBSFieldLabelPatternMatcherArray)createFieldLabelPatternMatcherArrayFromWordArrays:(id)arrays allowingEndOfWordMatches:(BOOL)matches
{
  matchesCopy = matches;
  v38 = *MEMORY[0x1E69E9840];
  v35[0] = 0;
  v35[1] = 0;
  v34[0] = 0;
  v34[1] = 0;
  v33[0] = 0;
  v33[1] = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = arrays;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = objc_alloc_init(_WBSFieldLabelPatternMatcherFactory);
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v36 count:16];
        if (v11)
        {
          v12 = *v26;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v10);
              }

              lowercaseString = [*(*(&v25 + 1) + 8 * j) lowercaseString];
              [(_WBSFieldLabelPatternMatcherFactory *)v9 _addWord:lowercaseString allowingEndOfWordMatch:matchesCopy];
            }

            v11 = [v10 countByEnumeratingWithState:&v25 objects:v36 count:16];
          }

          while (v11);
        }

        LOWORD(v22) = addInitializersForTrie(v9->_trie, v35, v34);
        *&v23 = HIDWORD(v35[1]);
        v24 = HIDWORD(v34[1]);
        v15 = HIDWORD(v33[1]);
        if (HIDWORD(v33[1]) == LODWORD(v33[1]))
        {
          v16 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v33, HIDWORD(v33[1]) + 1, &v22);
          v15 = HIDWORD(v33[1]);
          v17 = v33[0] + 40 * HIDWORD(v33[1]);
          v18 = *v16;
          v19 = *(v16 + 16);
          *(v17 + 4) = *(v16 + 32);
        }

        else
        {
          v17 = v33[0] + 40 * HIDWORD(v33[1]);
          v18 = v22;
          v19 = v23;
          *(v17 + 4) = v24;
        }

        *v17 = v18;
        *(v17 + 1) = v19;
        HIDWORD(v33[1]) = v15 + 1;
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v5);
  }

  WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v35, HIDWORD(v35[1]));
  WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v34, HIDWORD(v34[1]));
  WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v33, HIDWORD(v33[1]));
  operator new();
}

@end