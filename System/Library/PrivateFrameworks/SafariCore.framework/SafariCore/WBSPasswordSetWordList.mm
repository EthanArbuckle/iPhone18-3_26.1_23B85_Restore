@interface WBSPasswordSetWordList
- (WBSPasswordSetWordList)initWithIdentifier:(id)identifier words:(id)words;
- (void)enumerateEntriesForString:(id)string withBlock:(id)block;
@end

@implementation WBSPasswordSetWordList

- (WBSPasswordSetWordList)initWithIdentifier:(id)identifier words:(id)words
{
  wordsCopy = words;
  v12.receiver = self;
  v12.super_class = WBSPasswordSetWordList;
  v7 = [(WBSPasswordWordList *)&v12 initWithIdentifier:identifier];
  if (v7)
  {
    v8 = [wordsCopy copy];
    words = v7->_words;
    v7->_words = v8;

    v10 = v7;
  }

  return v7;
}

- (void)enumerateEntriesForString:(id)string withBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  if ([(NSSet *)self->_words containsObject:stringCopy])
  {
    v7 = [(NSSet *)self->_words count];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 1;
    }

    v9 = [WBSPasswordWordListEntry alloc];
    identifier = [(WBSPasswordWordList *)self identifier];
    v11 = [(WBSPasswordWordListEntry *)v9 initWithWord:stringCopy isSensitive:0 wordListIdentifier:identifier guessesRequired:v8];

    blockCopy[2](blockCopy, v11);
  }
}

@end