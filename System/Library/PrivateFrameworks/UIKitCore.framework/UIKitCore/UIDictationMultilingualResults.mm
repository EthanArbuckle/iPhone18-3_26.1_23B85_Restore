@interface UIDictationMultilingualResults
- (BOOL)isEqual:(id)equal;
- (UIDictationMultilingualResults)initWithCoder:(id)coder;
- (UIDictationMultilingualResults)initWithPhrases:(id)phrases dominantLanguage:(id)language;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationMultilingualResults

- (UIDictationMultilingualResults)initWithPhrases:(id)phrases dominantLanguage:(id)language
{
  phrasesCopy = phrases;
  languageCopy = language;
  v14.receiver = self;
  v14.super_class = UIDictationMultilingualResults;
  v8 = [(UIDictationMultilingualResults *)&v14 init];
  if (v8)
  {
    v9 = [phrasesCopy copy];
    phrases = v8->_phrases;
    v8->_phrases = v9;

    v11 = [languageCopy copy];
    dominantLanguage = v8->_dominantLanguage;
    v8->_dominantLanguage = v11;
  }

  return v8;
}

- (UIDictationMultilingualResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UIDictationMultilingualResults;
  v5 = [(UIDictationMultilingualResults *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"phrases"];
    phrases = v5->_phrases;
    v5->_phrases = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dominantLanguage"];
    dominantLanguage = v5->_dominantLanguage;
    v5->_dominantLanguage = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  phrases = self->_phrases;
  coderCopy = coder;
  [coderCopy encodeObject:phrases forKey:@"phrases"];
  [coderCopy encodeObject:self->_dominantLanguage forKey:@"dominantLanguage"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  dominantLanguage = [(UIDictationMultilingualResults *)self dominantLanguage];
  dominantLanguage2 = [equalCopy dominantLanguage];
  if ([dominantLanguage isEqualToString:dominantLanguage2])
  {
    phrases = [(UIDictationMultilingualResults *)self phrases];
    phrases2 = [equalCopy phrases];
    v9 = [phrases isEqual:phrases2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  dominantLanguage = [(UIDictationMultilingualResults *)self dominantLanguage];
  v4 = [dominantLanguage hash];
  phrases = [(UIDictationMultilingualResults *)self phrases];
  v6 = [phrases hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIDictationMultilingualResults);
  v5 = [(NSArray *)self->_phrases copy];
  [(UIDictationMultilingualResults *)v4 setPhrases:v5];

  v6 = [(NSString *)self->_dominantLanguage copy];
  [(UIDictationMultilingualResults *)v4 setDominantLanguage:v6];

  return v4;
}

@end