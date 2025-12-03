@interface NSMutableString(TSUDescription)
- (void)tsu_indentBy:()TSUDescription;
@end

@implementation NSMutableString(TSUDescription)

- (void)tsu_indentBy:()TSUDescription
{
  v5 = [@"          " mutableCopy];
  v6 = v5;
  while ([v5 length] < a3)
  {
    [v6 appendString:v6];
    v5 = v6;
  }

  [v6 deleteCharactersInRange:{a3, objc_msgSend(v6, "length") - a3}];
  [self insertString:v6 atIndex:0];
  [self replaceOccurrencesOfString:@"\n" withString:objc_msgSend(MEMORY[0x277CCACA8] options:"stringWithFormat:" range:{@"\n%@", v6), 0, 0, objc_msgSend(self, "length")}];
}

@end