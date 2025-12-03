@interface WBSCreditCardSecurityCodeFormatter
+ (id)_normalizedSecurityCode:(id)code;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
- (id)stringForObjectValue:(id)value;
@end

@implementation WBSCreditCardSecurityCodeFormatter

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v7 = [WBSCreditCardSecurityCodeFormatter _normalizedSecurityCode:stringCopy];
    v8 = v7 != 0;
    if (value && v7)
    {
      v7 = v7;
      *value = v7;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  validCopy = valid;
  if ([validCopy length])
  {
    v7 = [WBSCreditCardSecurityCodeFormatter _normalizedSecurityCode:validCopy];
    v8 = v7 != 0;
    if (v7)
    {
      if (string)
      {
        v7 = v7;
        v9 = v7;
LABEL_8:
        *string = v9;
      }
    }

    else if (string)
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

+ (id)_normalizedSecurityCode:(id)code
{
  codeCopy = code;
  if ([codeCopy length] && (objc_msgSend(MEMORY[0x1E696AB08], "decimalDigitCharacterSet"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(codeCopy, "stringByTrimmingCharactersInSet:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, !v6))
  {
    v7 = codeCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end