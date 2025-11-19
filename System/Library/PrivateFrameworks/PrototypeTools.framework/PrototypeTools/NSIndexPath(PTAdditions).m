@interface NSIndexPath(PTAdditions)
+ (id)pt_indexPathForRow:()PTAdditions inSection:;
@end

@implementation NSIndexPath(PTAdditions)

+ (id)pt_indexPathForRow:()PTAdditions inSection:
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a4;
  v6[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v6 length:2];

  return v4;
}

@end