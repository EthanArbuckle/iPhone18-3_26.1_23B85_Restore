@interface SXComponentLayout
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (id)paddingWithValue:(id)value withType:(int)type;
- (uint64_t)sideForValue:(int)value withType:;
- (unint64_t)horizontalContentAlignmentWithValue:(id)value withType:(int)type;
@end

@implementation SXComponentLayout

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_40;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXComponentLayout;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"margin"] || objc_msgSend(propertyCopy, "isEqualToString:", @"padding"))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXComponentLayout;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

- (unint64_t)horizontalContentAlignmentWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    if ([valueCopy isEqualToString:@"left"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"center"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"right"])
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)paddingWithValue:(id)value withType:(int)type
{
  v16[4] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy && type == 5)
  {
    v7 = [SXPadding alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v9 = [(SXJSONObject *)v7 initWithJSONObject:valueCopy andVersion:specificationVersion];

    v10 = valueCopy;
  }

  else
  {
    v10 = [(SXJSONObject *)self valueForLookupKey:@"padding"];

    if (v10 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
    {
      v11 = [SXPadding alloc];
      v15[0] = @"left";
      v15[1] = @"top";
      v16[0] = v10;
      v16[1] = v10;
      v15[2] = @"right";
      v15[3] = @"bottom";
      v16[2] = v10;
      v16[3] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
      specificationVersion2 = [(SXJSONObject *)self specificationVersion];
      v9 = [(SXJSONObject *)v11 initWithJSONObject:v12 andVersion:specificationVersion2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (uint64_t)sideForValue:(int)value withType:
{
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    goto LABEL_8;
  }

  if (value == 3)
  {
    if ([v5 isEqualToString:@"left"])
    {
      v8 = 1;
      goto LABEL_13;
    }

    if ([v6 isEqualToString:@"right"])
    {
      v8 = 2;
      goto LABEL_13;
    }

    bOOLValue = [v6 isEqualToString:@"both"];
    goto LABEL_5;
  }

  if (value != 2)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_13;
  }

  bOOLValue = [v5 BOOLValue];
LABEL_5:
  if (bOOLValue)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

@end