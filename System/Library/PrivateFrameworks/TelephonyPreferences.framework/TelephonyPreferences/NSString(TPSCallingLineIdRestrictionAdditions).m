@interface NSString(TPSCallingLineIdRestrictionAdditions)
+ (id)tps_stringWithTPSCallingLineIdRestrictionState:()TPSCallingLineIdRestrictionAdditions;
@end

@implementation NSString(TPSCallingLineIdRestrictionAdditions)

+ (id)tps_stringWithTPSCallingLineIdRestrictionState:()TPSCallingLineIdRestrictionAdditions
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:off_2782E3C78[a3]];
  }

  return v4;
}

@end