@interface TIMutableCharacterSetDescription
- (id)copyWithZone:(_NSZone *)zone;
- (void)addCharactersInString:(id)string;
- (void)removeCharactersInString:(id)string;
@end

@implementation TIMutableCharacterSetDescription

- (void)removeCharactersInString:(id)string
{
  stringCopy = string;
  [(TICharacterSetDescription *)self clearCachedCharacterSet];
  charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v5 = [charactersRemovedFromBase stringByAppendingString:stringCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = stringCopy;
  }

  [(TICharacterSetDescription *)self setCharactersRemovedFromBase:v7];
}

- (void)addCharactersInString:(id)string
{
  stringCopy = string;
  [(TICharacterSetDescription *)self clearCachedCharacterSet];
  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];
  v5 = [charactersAddedToBase stringByAppendingString:stringCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = stringCopy;
  }

  [(TICharacterSetDescription *)self setCharactersAddedToBase:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TICharacterSetDescription allocWithZone:zone];
  baseIdentifier = [(TICharacterSetDescription *)self baseIdentifier];
  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];
  charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v8 = [(TICharacterSetDescription *)v4 initWithBase:baseIdentifier additionalCharacters:charactersAddedToBase removedCharacters:charactersRemovedFromBase inverted:[(TICharacterSetDescription *)self inverted]];

  return v8;
}

@end