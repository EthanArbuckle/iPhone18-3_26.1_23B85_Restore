@interface WBSPasswordWordListEntry
- (WBSPasswordWordListEntry)initWithWord:(id)word isSensitive:(BOOL)sensitive wordListIdentifier:(id)identifier guessesRequired:(unint64_t)required;
- (id)description;
@end

@implementation WBSPasswordWordListEntry

- (WBSPasswordWordListEntry)initWithWord:(id)word isSensitive:(BOOL)sensitive wordListIdentifier:(id)identifier guessesRequired:(unint64_t)required
{
  wordCopy = word;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = WBSPasswordWordListEntry;
  v12 = [(WBSPasswordWordListEntry *)&v19 init];
  if (v12)
  {
    v13 = [wordCopy copy];
    word = v12->_word;
    v12->_word = v13;

    v12->_sensitive = sensitive;
    v15 = [identifierCopy copy];
    wordListIdentifier = v12->_wordListIdentifier;
    v12->_wordListIdentifier = v15;

    v12->_guessesRequired = required;
    v17 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self->_sensitive)
  {
    v7 = @"YES";
  }

  wordListIdentifier = self->_wordListIdentifier;
  v9 = [v3 stringWithFormat:@"<%@: %p word = %@; sensitive = %@; wordListIdentifier = %@; guessesRequired = %lu>", v5, self, self->_word, v7, wordListIdentifier, self->_guessesRequired];;

  return v9;
}

@end