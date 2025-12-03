@interface IDSAccount
- (NSString)csd_ISOCountryCode;
@end

@implementation IDSAccount

- (NSString)csd_ISOCountryCode
{
  if ([(IDSAccount *)self accountType])
  {
    v3 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    aliasStrings = [(IDSAccount *)self aliasStrings];
    v5 = [aliasStrings countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v15;
LABEL_5:
      v8 = 0;
      v9 = v3;
      while (1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(aliasStrings);
        }

        v10 = *(*(&v14 + 1) + 8 * v8);
        v3 = IMCountryCodeForNumber();

        if ([v3 length])
        {
          break;
        }

        v8 = v8 + 1;
        v9 = v3;
        if (v6 == v8)
        {
          v6 = [aliasStrings countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  if (![v3 length])
  {
    regionBasePhoneNumber = [(IDSAccount *)self regionBasePhoneNumber];
    if (regionBasePhoneNumber)
    {
      v12 = IMCountryCodeForNumber();

      v3 = v12;
    }
  }

  return v3;
}

@end