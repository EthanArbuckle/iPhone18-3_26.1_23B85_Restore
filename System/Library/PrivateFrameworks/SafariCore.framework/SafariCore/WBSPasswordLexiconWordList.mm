@interface WBSPasswordLexiconWordList
+ (id)lexiconWordListWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier;
- (WBSPasswordLexiconWordList)initWithIdentifier:(id)identifier lexicon:(_LXLexicon *)lexicon;
- (void)dealloc;
- (void)enumerateEntriesForString:(id)string withBlock:(id)block;
@end

@implementation WBSPasswordLexiconWordList

- (WBSPasswordLexiconWordList)initWithIdentifier:(id)identifier lexicon:(_LXLexicon *)lexicon
{
  v8.receiver = self;
  v8.super_class = WBSPasswordLexiconWordList;
  v5 = [(WBSPasswordWordList *)&v8 initWithIdentifier:identifier];
  if (v5)
  {
    v5->_lexicon = CFRetain(lexicon);
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_lexicon);
  v3.receiver = self;
  v3.super_class = WBSPasswordLexiconWordList;
  [(WBSPasswordLexiconWordList *)&v3 dealloc];
}

- (void)enumerateEntriesForString:(id)string withBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  identifier = [(WBSPasswordWordList *)self identifier];
  lexicon = self->_lexicon;
  v12 = identifier;
  v13 = blockCopy;
  v10 = blockCopy;
  v11 = identifier;
  LXLexiconEnumerateEntriesForString();
}

void __66__WBSPasswordLexiconWordList_enumerateEntriesForString_withBlock___block_invoke(uint64_t a1)
{
  v5 = LXEntryCopyString();
  LXEntryGetProbability();
  v3 = 1.0 / __exp10(v2);
  if (v3 < 1.0)
  {
    v3 = 1.0;
  }

  v4 = [[WBSPasswordWordListEntry alloc] initWithWord:v5 isSensitive:(LXEntryGetMetaFlags() & 0x3800000) != 0 wordListIdentifier:*(a1 + 32) guessesRequired:v3];
  (*(*(a1 + 40) + 16))();
}

+ (id)lexiconWordListWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  v14 = *MEMORY[0x1E69ABFE8];
  v15[0] = localeIdentifierCopy;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = LXLexiconCreate();
  if (v8)
  {
    v9 = v8;
    v10 = [[self alloc] initWithIdentifier:identifierCopy lexicon:v8];
    CFRelease(v9);
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordLexiconWordList lexiconWordListWithIdentifier:v11 localeIdentifier:0];
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)lexiconWordListWithIdentifier:(void *)a1 localeIdentifier:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Failed to create lexicon word list: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end