@interface NSString(CACUIAdditions)
- (id)stringByReplacingNewLinesWithSymbols;
@end

@implementation NSString(CACUIAdditions)

- (id)stringByReplacingNewLinesWithSymbols
{
  v2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 componentsJoinedByString:@"↵"];

  return v4;
}

@end