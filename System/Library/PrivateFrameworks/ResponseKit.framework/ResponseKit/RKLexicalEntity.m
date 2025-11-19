@interface RKLexicalEntity
- (NSString)word;
- (_NSRange)tokenRange;
- (id)description;
@end

@implementation RKLexicalEntity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RKLexicalEntity *)self string];
  v5 = [(RKLexicalEntity *)self language];
  v6 = [(RKLexicalEntity *)self partOfSpeech];
  v7 = [(RKLexicalEntity *)self lemma];
  if (v7)
  {
    v8 = [(RKLexicalEntity *)self lemma];
    v9 = [v3 stringWithFormat:@"%@{%@, %@, %@}", v4, v5, v6, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"%@{%@, %@, %@}", v4, v5, v6, &stru_2874A9C90];
  }

  return v9;
}

- (NSString)word
{
  v3 = [(RKLexicalEntity *)self internalWord];

  if (!v3)
  {
    v4 = [(RKLexicalEntity *)self lemma];
    if (v4)
    {
      v5 = [(RKLexicalEntity *)self lemma];
      [(RKLexicalEntity *)self setInternalWord:v5];
    }

    else
    {
      v5 = [(RKLexicalEntity *)self string];
      v6 = [v5 lowercaseString];
      [(RKLexicalEntity *)self setInternalWord:v6];
    }
  }

  return [(RKLexicalEntity *)self internalWord];
}

- (_NSRange)tokenRange
{
  objc_copyStruct(v4, &self->_tokenRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end