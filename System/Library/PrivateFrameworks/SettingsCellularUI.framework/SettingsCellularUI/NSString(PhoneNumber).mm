@interface NSString(PhoneNumber)
- (BOOL)isEqualToPhoneNumber:()PhoneNumber;
- (id)unformattedPhoneNumber;
@end

@implementation NSString(PhoneNumber)

- (id)unformattedPhoneNumber
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"+() -"];
  v3 = [self componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 componentsJoinedByString:&stru_287733598];

  return v4;
}

- (BOOL)isEqualToPhoneNumber:()PhoneNumber
{
  v4 = a3;
  if (([self isEqualToString:v4] & 1) == 0)
  {
    unformattedPhoneNumber = [self unformattedPhoneNumber];
    unformattedPhoneNumber2 = [v4 unformattedPhoneNumber];
    if ([unformattedPhoneNumber length] && (v8 = objc_msgSend(unformattedPhoneNumber, "length"), v8 <= objc_msgSend(unformattedPhoneNumber2, "length")))
    {
      v10 = unformattedPhoneNumber2;
      v11 = unformattedPhoneNumber;
    }

    else
    {
      if (![unformattedPhoneNumber2 length] || (v9 = objc_msgSend(unformattedPhoneNumber2, "length"), v9 >= objc_msgSend(unformattedPhoneNumber, "length")))
      {
        v5 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v10 = unformattedPhoneNumber;
      v11 = unformattedPhoneNumber2;
    }

    v5 = [v10 rangeOfString:v11] != 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

@end