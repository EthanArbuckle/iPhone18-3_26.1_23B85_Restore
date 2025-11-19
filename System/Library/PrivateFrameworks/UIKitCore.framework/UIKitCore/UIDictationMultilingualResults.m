@interface UIDictationMultilingualResults
- (BOOL)isEqual:(id)a3;
- (UIDictationMultilingualResults)initWithCoder:(id)a3;
- (UIDictationMultilingualResults)initWithPhrases:(id)a3 dominantLanguage:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDictationMultilingualResults

- (UIDictationMultilingualResults)initWithPhrases:(id)a3 dominantLanguage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UIDictationMultilingualResults;
  v8 = [(UIDictationMultilingualResults *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    phrases = v8->_phrases;
    v8->_phrases = v9;

    v11 = [v7 copy];
    dominantLanguage = v8->_dominantLanguage;
    v8->_dominantLanguage = v11;
  }

  return v8;
}

- (UIDictationMultilingualResults)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UIDictationMultilingualResults;
  v5 = [(UIDictationMultilingualResults *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"phrases"];
    phrases = v5->_phrases;
    v5->_phrases = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dominantLanguage"];
    dominantLanguage = v5->_dominantLanguage;
    v5->_dominantLanguage = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  phrases = self->_phrases;
  v5 = a3;
  [v5 encodeObject:phrases forKey:@"phrases"];
  [v5 encodeObject:self->_dominantLanguage forKey:@"dominantLanguage"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(UIDictationMultilingualResults *)self dominantLanguage];
  v6 = [v4 dominantLanguage];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(UIDictationMultilingualResults *)self phrases];
    v8 = [v4 phrases];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(UIDictationMultilingualResults *)self dominantLanguage];
  v4 = [v3 hash];
  v5 = [(UIDictationMultilingualResults *)self phrases];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UIDictationMultilingualResults);
  v5 = [(NSArray *)self->_phrases copy];
  [(UIDictationMultilingualResults *)v4 setPhrases:v5];

  v6 = [(NSString *)self->_dominantLanguage copy];
  [(UIDictationMultilingualResults *)v4 setDominantLanguage:v6];

  return v4;
}

@end