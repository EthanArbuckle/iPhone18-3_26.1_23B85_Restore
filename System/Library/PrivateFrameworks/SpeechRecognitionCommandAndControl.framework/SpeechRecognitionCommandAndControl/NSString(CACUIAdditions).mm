@interface NSString(CACUIAdditions)
- (id)stringByReplacingNewLinesWithSymbols;
@end

@implementation NSString(CACUIAdditions)

- (id)stringByReplacingNewLinesWithSymbols
{
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [self componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v4 = [v3 componentsJoinedByString:@"↵"];

  return v4;
}

@end