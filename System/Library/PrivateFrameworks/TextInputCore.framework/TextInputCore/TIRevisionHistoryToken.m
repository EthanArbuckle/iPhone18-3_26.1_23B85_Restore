@interface TIRevisionHistoryToken
- (NSString)tokenDictionaryString;
- (id)description;
@end

@implementation TIRevisionHistoryToken

- (NSString)tokenDictionaryString
{
  tokenDictionaryString = self->_tokenDictionaryString;
  if (!tokenDictionaryString)
  {
    tokenDictionaryString = self->_tokenInputString;
  }

  v3 = tokenDictionaryString;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TIRevisionHistoryToken *)self tokenInputString];
  v6 = [(TIRevisionHistoryToken *)self offset];
  v7 = [(TIRevisionHistoryToken *)self tokenID];
  v8 = [(TIRevisionHistoryToken *)self tokenID]>> 32;
  v9 = [(TIRevisionHistoryToken *)self tokenDictionaryString];
  v10 = [v3 stringWithFormat:@"<%@: %p string %@; offset %u; ID [%u]%u; surface form %@>", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

@end