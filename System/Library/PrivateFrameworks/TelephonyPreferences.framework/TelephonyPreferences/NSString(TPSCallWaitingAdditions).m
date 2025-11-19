@interface NSString(TPSCallWaitingAdditions)
+ (id)tps_stringWithTPSCallWaitingState:()TPSCallWaitingAdditions;
@end

@implementation NSString(TPSCallWaitingAdditions)

+ (id)tps_stringWithTPSCallWaitingState:()TPSCallWaitingAdditions
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:off_2782E3BA0[a3]];
  }

  return v4;
}

@end