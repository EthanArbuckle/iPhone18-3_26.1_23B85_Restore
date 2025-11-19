@interface WBSPasswordWordListCollection
+ (id)commonPasscodeWordListCollection;
+ (id)commonPasswordWordListCollection;
- (WBSPasswordWordListCollection)init;
- (id)entriesForString:(id)a3;
- (void)addWordList:(id)a3;
- (void)enumerateEntriesForString:(id)a3 withBlock:(id)a4;
@end

@implementation WBSPasswordWordListCollection

- (WBSPasswordWordListCollection)init
{
  v7.receiver = self;
  v7.super_class = WBSPasswordWordListCollection;
  v2 = [(WBSPasswordWordListCollection *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    wordListsByIdentifiers = v2->_wordListsByIdentifiers;
    v2->_wordListsByIdentifiers = v3;

    v5 = v2;
  }

  return v2;
}

- (void)addWordList:(id)a3
{
  wordListsByIdentifiers = self->_wordListsByIdentifiers;
  v4 = a3;
  v5 = [v4 identifier];
  [(NSMutableDictionary *)wordListsByIdentifiers setObject:v4 forKeyedSubscript:v5];
}

- (void)enumerateEntriesForString:(id)a3 withBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)self->_wordListsByIdentifiers allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) enumerateEntriesForString:v6 withBlock:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)entriesForString:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__WBSPasswordWordListCollection_entriesForString___block_invoke;
  v9[3] = &unk_1E7CF3BB8;
  v7 = v6;
  v10 = v7;
  [(WBSPasswordWordListCollection *)self enumerateEntriesForString:v5 withBlock:v9];

  return v7;
}

+ (id)commonPasswordWordListCollection
{
  v2 = objc_alloc_init(WBSPasswordWordListCollection);
  v3 = [WBSPasswordLexiconWordList lexiconWordListWithIdentifier:@"EnglishLexicon" localeIdentifier:@"en"];
  if (v3)
  {
    [(WBSPasswordWordListCollection *)v2 addWordList:v3];
  }

  v4 = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
  v5 = [v4 URLForResource:@"WBSCommonPasswords" withExtension:@"plist"];

  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5];
  v7 = [v6 safari_arrayForKey:@"CommonPasswords"];
  v8 = [[WBSPasswordOrderedSetWordList alloc] initWithIdentifier:@"CommonPasswords" isSensitive:0 orderedWordsArray:v7];
  [(WBSPasswordWordListCollection *)v2 addWordList:v8];
  v9 = [v6 safari_arrayForKey:@"CommonSensitivePasswords"];
  v10 = [[WBSPasswordOrderedSetWordList alloc] initWithIdentifier:@"CommonSensitivePasswords" isSensitive:1 orderedWordsArray:v9];
  [(WBSPasswordWordListCollection *)v2 addWordList:v10];

  return v2;
}

+ (id)commonPasscodeWordListCollection
{
  v2 = objc_alloc_init(WBSPasswordWordListCollection);
  v3 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{@"0102", @"0103", @"0111", @"1101", @"1102", @"1103", @"1110", @"1112", @"1123", @"1201", @"1202", @"1203", @"1210", @"1211", @"2229", @"2580", @"5683", @"7465", @"030379", @"101471", @"123654", @"147258", @"159753", @"321654", @"520131", @"789456", 0}];
  v4 = [[WBSPasswordOrderedSetWordList alloc] initWithIdentifier:@"CommonPasscodes" isSensitive:0 orderedWords:v3];
  [(WBSPasswordWordListCollection *)v2 addWordList:v4];

  return v2;
}

@end