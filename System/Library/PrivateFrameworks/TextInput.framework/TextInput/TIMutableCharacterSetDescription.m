@interface TIMutableCharacterSetDescription
- (id)copyWithZone:(_NSZone *)a3;
- (void)addCharactersInString:(id)a3;
- (void)removeCharactersInString:(id)a3;
@end

@implementation TIMutableCharacterSetDescription

- (void)removeCharactersInString:(id)a3
{
  v4 = a3;
  [(TICharacterSetDescription *)self clearCachedCharacterSet];
  v8 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v5 = [v8 stringByAppendingString:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  [(TICharacterSetDescription *)self setCharactersRemovedFromBase:v7];
}

- (void)addCharactersInString:(id)a3
{
  v4 = a3;
  [(TICharacterSetDescription *)self clearCachedCharacterSet];
  v8 = [(TICharacterSetDescription *)self charactersAddedToBase];
  v5 = [v8 stringByAppendingString:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  [(TICharacterSetDescription *)self setCharactersAddedToBase:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TICharacterSetDescription allocWithZone:a3];
  v5 = [(TICharacterSetDescription *)self baseIdentifier];
  v6 = [(TICharacterSetDescription *)self charactersAddedToBase];
  v7 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v8 = [(TICharacterSetDescription *)v4 initWithBase:v5 additionalCharacters:v6 removedCharacters:v7 inverted:[(TICharacterSetDescription *)self inverted]];

  return v8;
}

@end