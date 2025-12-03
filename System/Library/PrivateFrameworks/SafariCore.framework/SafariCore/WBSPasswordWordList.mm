@interface WBSPasswordWordList
- (WBSPasswordWordList)initWithIdentifier:(id)identifier;
- (id)entriesForString:(id)string;
@end

@implementation WBSPasswordWordList

- (WBSPasswordWordList)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = WBSPasswordWordList;
  v5 = [(WBSPasswordWordList *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

- (id)entriesForString:(id)string
{
  v4 = MEMORY[0x1E695DFA8];
  stringCopy = string;
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__WBSPasswordWordList_entriesForString___block_invoke;
  v9[3] = &unk_1E7CF3BB8;
  v7 = v6;
  v10 = v7;
  [(WBSPasswordWordList *)self enumerateEntriesForString:stringCopy withBlock:v9];

  return v7;
}

@end