@interface WBSPasswordOrderedSetWordList
- (WBSPasswordOrderedSetWordList)initWithIdentifier:(id)a3 isSensitive:(BOOL)a4 orderedWords:(id)a5;
- (void)enumerateEntriesForString:(id)a3 withBlock:(id)a4;
@end

@implementation WBSPasswordOrderedSetWordList

- (WBSPasswordOrderedSetWordList)initWithIdentifier:(id)a3 isSensitive:(BOOL)a4 orderedWords:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = WBSPasswordOrderedSetWordList;
  v9 = [(WBSPasswordWordList *)&v14 initWithIdentifier:a3];
  if (v9)
  {
    v10 = [v8 copy];
    words = v9->_words;
    v9->_words = v10;

    v9->_sensitive = a4;
    v12 = v9;
  }

  return v9;
}

- (void)enumerateEntriesForString:(id)a3 withBlock:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NSOrderedSet *)self->_words indexOfObject:v13];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [WBSPasswordWordListEntry alloc];
    sensitive = self->_sensitive;
    v11 = [(WBSPasswordWordList *)self identifier];
    v12 = [(WBSPasswordWordListEntry *)v9 initWithWord:v13 isSensitive:sensitive wordListIdentifier:v11 guessesRequired:v8 + 1];

    v6[2](v6, v12);
  }
}

@end