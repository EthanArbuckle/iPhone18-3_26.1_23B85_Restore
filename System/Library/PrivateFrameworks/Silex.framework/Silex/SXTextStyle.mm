@interface SXTextStyle
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (int)verticalAlignmentWithValue:(id)value withType:(int)type;
- (int64_t)fontSizeWithValue:(id)value withType:(int)type;
- (int64_t)textTransformWithValue:(id)value withType:(int)type;
@end

@implementation SXTextStyle

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"fontAttributes"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXTextStyle;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"listStyle"])
  {
    v5 = &__block_literal_global_86;
  }

  else if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_10_0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXTextStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

- (int64_t)textTransformWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    if ([valueCopy isEqualToString:@"uppercase"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"lowercase"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"capitalize"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"smallcaps"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)verticalAlignmentWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    if ([valueCopy isEqualToString:@"baseline"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"superscript"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"subscript"])
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)fontSizeWithValue:(id)value withType:(int)type
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

@end