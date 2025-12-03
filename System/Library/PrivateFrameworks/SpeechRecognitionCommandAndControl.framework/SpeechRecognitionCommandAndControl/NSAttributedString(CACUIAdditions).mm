@interface NSAttributedString(CACUIAdditions)
- (id)stringByReplacingNewLinesWithSymbols;
@end

@implementation NSAttributedString(CACUIAdditions)

- (id)stringByReplacingNewLinesWithSymbols
{
  v1 = [self mutableCopy];
  mutableString = [v1 mutableString];
  mutableString2 = [v1 mutableString];
  stringByReplacingNewLinesWithSymbols = [mutableString2 stringByReplacingNewLinesWithSymbols];
  [mutableString setString:stringByReplacingNewLinesWithSymbols];

  return v1;
}

@end