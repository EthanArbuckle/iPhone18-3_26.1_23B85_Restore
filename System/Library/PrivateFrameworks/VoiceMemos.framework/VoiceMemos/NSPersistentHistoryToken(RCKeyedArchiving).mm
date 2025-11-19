@interface NSPersistentHistoryToken(RCKeyedArchiving)
+ (id)rc_unarchivedTokenWithData:()RCKeyedArchiving;
@end

@implementation NSPersistentHistoryToken(RCKeyedArchiving)

+ (id)rc_unarchivedTokenWithData:()RCKeyedArchiving
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = a3;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end