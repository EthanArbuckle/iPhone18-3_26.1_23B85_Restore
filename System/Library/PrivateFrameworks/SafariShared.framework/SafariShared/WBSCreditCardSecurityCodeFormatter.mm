@interface WBSCreditCardSecurityCodeFormatter
+ (id)_normalizedSecurityCode:(id)a3;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5;
- (id)stringForObjectValue:(id)a3;
@end

@implementation WBSCreditCardSecurityCodeFormatter

- (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v6 = a4;
  if ([v6 length])
  {
    v7 = [WBSCreditCardSecurityCodeFormatter _normalizedSecurityCode:v6];
    v8 = v7 != 0;
    if (a3 && v7)
    {
      v7 = v7;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [WBSCreditCardSecurityCodeFormatter _normalizedSecurityCode:v6];
    v8 = v7 != 0;
    if (v7)
    {
      if (a4)
      {
        v7 = v7;
        v9 = v7;
LABEL_8:
        *a4 = v9;
      }
    }

    else if (a4)
    {
      v9 = 0;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

+ (id)_normalizedSecurityCode:(id)a3
{
  v3 = a3;
  if ([v3 length] && (objc_msgSend(MEMORY[0x1E696AB08], "decimalDigitCharacterSet"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "stringByTrimmingCharactersInSet:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, !v6))
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end