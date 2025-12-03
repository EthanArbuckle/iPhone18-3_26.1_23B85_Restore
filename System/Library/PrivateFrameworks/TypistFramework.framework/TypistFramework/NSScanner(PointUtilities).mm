@interface NSScanner(PointUtilities)
- (double)scanPoint;
@end

@implementation NSScanner(PointUtilities)

- (double)scanPoint
{
  v6 = 0;
  v7 = 0.0;
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v3 = [decimalDigitCharacterSet mutableCopy];

  [v3 addCharactersInString:@"-"];
  [self scanUpToCharactersFromSet:v3 intoString:0];
  [self scanDouble:&v7];
  [self scanUpToCharactersFromSet:v3 intoString:0];
  [self scanDouble:&v6];
  v4 = v7;

  return v4;
}

@end