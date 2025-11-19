@interface NSString(CTPhoneBookNameAdditions)
+ (id)tps_stringWithCTPhoneBookName:()CTPhoneBookNameAdditions;
@end

@implementation NSString(CTPhoneBookNameAdditions)

+ (id)tps_stringWithCTPhoneBookName:()CTPhoneBookNameAdditions
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:off_2782E3C58[a3]];
  }

  return v4;
}

@end