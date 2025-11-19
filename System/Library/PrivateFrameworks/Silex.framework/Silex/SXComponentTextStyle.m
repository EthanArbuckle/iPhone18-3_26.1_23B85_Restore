@interface SXComponentTextStyle
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (BOOL)fontScalingWithValue:(id)a3 withType:(int)a4;
- (double)hyphenationZoneWithValue:(id)a3 withType:(int)a4;
- (double)relativeLineHeightWithValue:(id)a3 withType:(int)a4;
- (int64_t)exactLineHeightWithValue:(id)a3 withType:(int)a4;
- (int64_t)hyphenationMinimumCharactersAfterWithValue:(id)a3 withType:(int)a4;
- (int64_t)hyphenationMinimumCharactersBeforeWithValue:(id)a3 withType:(int)a4;
- (int64_t)hyphenationMinimumWordLengthWithValue:(id)a3 withType:(int)a4;
- (int64_t)hyphenationWithValue:(id)a3 withType:(int)a4;
- (int64_t)lineHeightWithValue:(id)a3 withType:(int)a4;
- (int64_t)textAlignmentWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXComponentTextStyle

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_87;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXComponentTextStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

- (int64_t)textAlignmentWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"left"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"center"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"right"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"justified"])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)lineHeightWithValue:(id)a3 withType:(int)a4
{
  if (a3)
  {
    return [a3 integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)exactLineHeightWithValue:(id)a3 withType:(int)a4
{
  if (a3)
  {
    return [a3 integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (double)relativeLineHeightWithValue:(id)a3 withType:(int)a4
{
  if (!a3)
  {
    return 1.79769313e308;
  }

  [a3 floatValue];
  return v4;
}

- (int64_t)hyphenationWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v4 BOOLValue])
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

- (double)hyphenationZoneWithValue:(id)a3 withType:(int)a4
{
  result = 18.0;
  if (a4 == 2)
  {
    [a3 floatValue];
    return v7;
  }

  return result;
}

- (int64_t)hyphenationMinimumWordLengthWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 2)
  {
    return [a3 unsignedIntegerValue];
  }

  else
  {
    return 0;
  }
}

- (int64_t)hyphenationMinimumCharactersBeforeWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 2)
  {
    return [a3 unsignedIntegerValue];
  }

  else
  {
    return 3;
  }
}

- (int64_t)hyphenationMinimumCharactersAfterWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 2)
  {
    return [a3 unsignedIntegerValue];
  }

  else
  {
    return 3;
  }
}

- (BOOL)fontScalingWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end