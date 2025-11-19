@interface NSPersonNameComponents(BRCAdditions)
+ (id)nameComponentsForKey:()BRCAdditions dbFacade:;
@end

@implementation NSPersonNameComponents(BRCAdditions)

+ (id)nameComponentsForKey:()BRCAdditions dbFacade:
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 br_isEqualToNumber:&unk_2837B0460] & 1) == 0)
  {
    v8 = [v6 userIdentityForKey:v5];
    v9 = v8;
    if (v8)
    {
      [v8 nameComponents];
    }

    else
    {
      +[BRFieldUserIdentity unknownPersonNameComponents];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end