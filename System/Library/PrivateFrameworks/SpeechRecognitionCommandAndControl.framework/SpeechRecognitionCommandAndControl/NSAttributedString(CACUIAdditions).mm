@interface NSAttributedString(CACUIAdditions)
- (id)stringByReplacingNewLinesWithSymbols;
@end

@implementation NSAttributedString(CACUIAdditions)

- (id)stringByReplacingNewLinesWithSymbols
{
  v1 = [a1 mutableCopy];
  v2 = [v1 mutableString];
  v3 = [v1 mutableString];
  v4 = [v3 stringByReplacingNewLinesWithSymbols];
  [v2 setString:v4];

  return v1;
}

@end