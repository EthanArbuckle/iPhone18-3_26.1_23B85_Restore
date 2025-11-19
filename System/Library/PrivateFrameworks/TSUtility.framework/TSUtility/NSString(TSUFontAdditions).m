@interface NSString(TSUFontAdditions)
- (double)tsu_boundingSizeWithFont:()TSUFontAdditions;
@end

@implementation NSString(TSUFontAdditions)

- (double)tsu_boundingSizeWithFont:()TSUFontAdditions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 platformFont];
  if (!v4)
  {
    return *MEMORY[0x277CBF3A8];
  }

  v6 = *MEMORY[0x277D740A8];
  v7[0] = v4;
  [a1 sizeWithAttributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  return result;
}

@end