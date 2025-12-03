@interface SXComponentTextStyle
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (BOOL)fontScalingWithValue:(id)value withType:(int)type;
- (double)hyphenationZoneWithValue:(id)value withType:(int)type;
- (double)relativeLineHeightWithValue:(id)value withType:(int)type;
- (int64_t)exactLineHeightWithValue:(id)value withType:(int)type;
- (int64_t)hyphenationMinimumCharactersAfterWithValue:(id)value withType:(int)type;
- (int64_t)hyphenationMinimumCharactersBeforeWithValue:(id)value withType:(int)type;
- (int64_t)hyphenationMinimumWordLengthWithValue:(id)value withType:(int)type;
- (int64_t)hyphenationWithValue:(id)value withType:(int)type;
- (int64_t)lineHeightWithValue:(id)value withType:(int)type;
- (int64_t)textAlignmentWithValue:(id)value withType:(int)type;
@end

@implementation SXComponentTextStyle

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_87;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXComponentTextStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

- (int64_t)textAlignmentWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"left"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"center"])
  {
    v5 = 2;
  }

  else if ([valueCopy isEqualToString:@"right"])
  {
    v5 = 3;
  }

  else if ([valueCopy isEqualToString:@"justified"])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)lineHeightWithValue:(id)value withType:(int)type
{
  if (value)
  {
    return [value integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)exactLineHeightWithValue:(id)value withType:(int)type
{
  if (value)
  {
    return [value integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (double)relativeLineHeightWithValue:(id)value withType:(int)type
{
  if (!value)
  {
    return 1.79769313e308;
  }

  [value floatValue];
  return v4;
}

- (int64_t)hyphenationWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([valueCopy BOOLValue])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)hyphenationZoneWithValue:(id)value withType:(int)type
{
  result = 18.0;
  if (type == 2)
  {
    [value floatValue];
    return v7;
  }

  return result;
}

- (int64_t)hyphenationMinimumWordLengthWithValue:(id)value withType:(int)type
{
  if (type == 2)
  {
    return [value unsignedIntegerValue];
  }

  else
  {
    return 0;
  }
}

- (int64_t)hyphenationMinimumCharactersBeforeWithValue:(id)value withType:(int)type
{
  if (type == 2)
  {
    return [value unsignedIntegerValue];
  }

  else
  {
    return 3;
  }
}

- (int64_t)hyphenationMinimumCharactersAfterWithValue:(id)value withType:(int)type
{
  if (type == 2)
  {
    return [value unsignedIntegerValue];
  }

  else
  {
    return 3;
  }
}

- (BOOL)fontScalingWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [valueCopy BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end