@interface SXComponentLayout
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (id)paddingWithValue:(id)a3 withType:(int)a4;
- (uint64_t)sideForValue:(int)a3 withType:;
- (unint64_t)horizontalContentAlignmentWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXComponentLayout

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_40;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXComponentLayout;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"margin"] || objc_msgSend(v6, "isEqualToString:", @"padding"))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXComponentLayout;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

- (unint64_t)horizontalContentAlignmentWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    if ([v5 isEqualToString:@"left"])
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

- (id)paddingWithValue:(id)a3 withType:(int)a4
{
  v16[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6 && a4 == 5)
  {
    v7 = [SXPadding alloc];
    v8 = [(SXJSONObject *)self specificationVersion];
    v9 = [(SXJSONObject *)v7 initWithJSONObject:v6 andVersion:v8];

    v10 = v6;
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
      v13 = [(SXJSONObject *)self specificationVersion];
      v9 = [(SXJSONObject *)v11 initWithJSONObject:v12 andVersion:v13];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (uint64_t)sideForValue:(int)a3 withType:
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (a3 == 3)
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

    v7 = [v6 isEqualToString:@"both"];
    goto LABEL_5;
  }

  if (a3 != 2)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_13;
  }

  v7 = [v5 BOOLValue];
LABEL_5:
  if (v7)
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