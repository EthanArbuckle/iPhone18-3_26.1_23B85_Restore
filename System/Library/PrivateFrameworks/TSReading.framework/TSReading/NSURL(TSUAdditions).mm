@interface NSURL(TSUAdditions)
+ (id)tsu_fileURLWithPath:()TSUAdditions;
@end

@implementation NSURL(TSUAdditions)

+ (id)tsu_fileURLWithPath:()TSUAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end