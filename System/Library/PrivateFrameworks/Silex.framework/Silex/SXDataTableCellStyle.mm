@interface SXDataTableCellStyle
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (id)paddingWithValue:(id)value withType:(int)type;
- (id)textStylesWithValue:(id)value withType:(int)type;
- (unint64_t)horizontalAlignmentWithValue:(id)value withType:(int)type;
- (unint64_t)verticalAlignmentWithValue:(id)value withType:(int)type;
@end

@implementation SXDataTableCellStyle

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
    v10 = [(SXDataTableElementStyle *)self valueForLookupKey:@"padding"];

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

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_39;
  }

  else if ([nameCopy isEqualToString:@"selectors"])
  {
    v5 = &__block_literal_global_25;
  }

  else if ([nameCopy isEqualToString:@"textStyles"])
  {
    v5 = &__block_literal_global_31;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXDataTableCellStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

- (unint64_t)verticalAlignmentWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    if ([valueCopy isEqualToString:@"top"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"center"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"bottom"])
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

- (unint64_t)horizontalAlignmentWithValue:(id)value withType:(int)type
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

- (id)textStylesWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  array = [MEMORY[0x1E695DF70] array];
  v8 = array;
  if (type == 4)
  {
    [array addObjectsFromArray:valueCopy];
  }

  textStyle = [(SXDataTableCellStyle *)self textStyle];

  if (textStyle)
  {
    textStyle2 = [(SXDataTableCellStyle *)self textStyle];
    [v8 addObject:textStyle2];
  }

  return v8;
}

@end