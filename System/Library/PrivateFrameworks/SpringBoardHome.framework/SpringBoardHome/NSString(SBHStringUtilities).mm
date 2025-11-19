@interface NSString(SBHStringUtilities)
+ (id)sbh_bootInstanceIdentifier;
- (id)sbh_stringByReplacingCharactersInSet:()SBHStringUtilities withString:;
@end

@implementation NSString(SBHStringUtilities)

- (id)sbh_stringByReplacingCharactersInSet:()SBHStringUtilities withString:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 mutableCopy];
  v9 = [v7 length];
  v10 = [v8 length];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    for (i = v10; i != v12; v11 = i - v12)
    {
      v14 = [v8 rangeOfCharacterFromSet:v6 options:0 range:{v12, v11}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v12 = v14;
      v16 = v15;
      if (v9)
      {
        [v8 replaceCharactersInRange:v14 withString:{v15, v7}];
      }

      else
      {
        [v8 deleteCharactersInRange:{v14, v15}];
      }

      i = i + v9 - v16;
    }
  }

  return v8;
}

+ (id)sbh_bootInstanceIdentifier
{
  if (sbh_bootInstanceIdentifier_onceToken != -1)
  {
    +[NSString(SBHStringUtilities) sbh_bootInstanceIdentifier];
  }

  v1 = sbh_bootInstanceIdentifier_uuid;

  return v1;
}

@end