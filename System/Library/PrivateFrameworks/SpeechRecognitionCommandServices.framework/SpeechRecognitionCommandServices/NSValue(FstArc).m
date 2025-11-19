@interface NSValue(FstArc)
+ (id)valueWithArc:()FstArc;
@end

@implementation NSValue(FstArc)

+ (id)valueWithArc:()FstArc
{
  v5 = a3;
  v3 = [MEMORY[0x277CCAE60] value:&v5 withObjCType:"{_FstArc=ii}"];

  return v3;
}

@end