@interface NSString(PhoneNumber)
- (BOOL)isEqualToPhoneNumber:()PhoneNumber;
- (id)unformattedPhoneNumber;
@end

@implementation NSString(PhoneNumber)

- (id)unformattedPhoneNumber
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"+() -"];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 componentsJoinedByString:&stru_28753DF48];

  return v4;
}

- (BOOL)isEqualToPhoneNumber:()PhoneNumber
{
  v4 = a3;
  if (([a1 isEqualToString:v4] & 1) == 0)
  {
    v6 = [a1 unformattedPhoneNumber];
    v7 = [v4 unformattedPhoneNumber];
    if ([v6 length] && (v8 = objc_msgSend(v6, "length"), v8 <= objc_msgSend(v7, "length")))
    {
      v10 = v7;
      v11 = v6;
    }

    else
    {
      if (![v7 length] || (v9 = objc_msgSend(v7, "length"), v9 >= objc_msgSend(v6, "length")))
      {
        v5 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v10 = v6;
      v11 = v7;
    }

    v5 = [v10 rangeOfString:v11] != 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

@end