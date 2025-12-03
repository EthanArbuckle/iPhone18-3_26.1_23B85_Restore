@interface WBSPasswordOrderedSetWordList
- (WBSPasswordOrderedSetWordList)initWithIdentifier:(id)identifier isSensitive:(BOOL)sensitive orderedWords:(id)words;
- (void)enumerateEntriesForString:(id)string withBlock:(id)block;
@end

@implementation WBSPasswordOrderedSetWordList

- (WBSPasswordOrderedSetWordList)initWithIdentifier:(id)identifier isSensitive:(BOOL)sensitive orderedWords:(id)words
{
  wordsCopy = words;
  v14.receiver = self;
  v14.super_class = WBSPasswordOrderedSetWordList;
  v9 = [(WBSPasswordWordList *)&v14 initWithIdentifier:identifier];
  if (v9)
  {
    v10 = [wordsCopy copy];
    words = v9->_words;
    v9->_words = v10;

    v9->_sensitive = sensitive;
    v12 = v9;
  }

  return v9;
}

- (void)enumerateEntriesForString:(id)string withBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v7 = [(NSOrderedSet *)self->_words indexOfObject:stringCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [WBSPasswordWordListEntry alloc];
    sensitive = self->_sensitive;
    identifier = [(WBSPasswordWordList *)self identifier];
    v12 = [(WBSPasswordWordListEntry *)v9 initWithWord:stringCopy isSensitive:sensitive wordListIdentifier:identifier guessesRequired:v8 + 1];

    blockCopy[2](blockCopy, v12);
  }
}

@end