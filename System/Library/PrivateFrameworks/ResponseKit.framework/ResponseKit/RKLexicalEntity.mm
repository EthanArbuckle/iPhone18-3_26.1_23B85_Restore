@interface RKLexicalEntity
- (NSString)word;
- (_NSRange)tokenRange;
- (id)description;
@end

@implementation RKLexicalEntity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  string = [(RKLexicalEntity *)self string];
  language = [(RKLexicalEntity *)self language];
  partOfSpeech = [(RKLexicalEntity *)self partOfSpeech];
  lemma = [(RKLexicalEntity *)self lemma];
  if (lemma)
  {
    lemma2 = [(RKLexicalEntity *)self lemma];
    v9 = [v3 stringWithFormat:@"%@{%@, %@, %@}", string, language, partOfSpeech, lemma2];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"%@{%@, %@, %@}", string, language, partOfSpeech, &stru_2874A9C90];
  }

  return v9;
}

- (NSString)word
{
  internalWord = [(RKLexicalEntity *)self internalWord];

  if (!internalWord)
  {
    lemma = [(RKLexicalEntity *)self lemma];
    if (lemma)
    {
      lemma2 = [(RKLexicalEntity *)self lemma];
      [(RKLexicalEntity *)self setInternalWord:lemma2];
    }

    else
    {
      lemma2 = [(RKLexicalEntity *)self string];
      lowercaseString = [lemma2 lowercaseString];
      [(RKLexicalEntity *)self setInternalWord:lowercaseString];
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