@interface NSScanner(PointUtilities)
- (double)scanPoint;
@end

@implementation NSScanner(PointUtilities)

- (double)scanPoint
{
  v6 = 0;
  v7 = 0.0;
  v2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v3 = [v2 mutableCopy];

  [v3 addCharactersInString:@"-"];
  [a1 scanUpToCharactersFromSet:v3 intoString:0];
  [a1 scanDouble:&v7];
  [a1 scanUpToCharactersFromSet:v3 intoString:0];
  [a1 scanDouble:&v6];
  v4 = v7;

  return v4;
}

@end