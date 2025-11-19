@interface SXComponentStyle
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (id)fillWithValue:(id)a3 withType:(int)a4;
- (id)maskWithValue:(id)a3 withType:(int)a4;
- (unint64_t)traits;
@end

@implementation SXComponentStyle

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_48;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXComponentStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

- (id)fillWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 5)
  {
    v5 = a3;
    v6 = objc_opt_class();
    v7 = [v5 objectForKey:@"type"];
    v8 = [SXClassFactory classForBaseClass:v6 type:v7];

    v9 = [v8 alloc];
    v10 = [(SXJSONObject *)self specificationVersion];
    v11 = [v9 initWithJSONObject:v5 andVersion:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)maskWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 5)
  {
    v5 = a3;
    v6 = objc_opt_class();
    v7 = [v5 objectForKey:@"type"];
    v8 = [SXClassFactory classForBaseClass:v6 type:v7];

    v9 = [v8 alloc];
    v10 = [(SXJSONObject *)self specificationVersion];
    v11 = [v9 initWithJSONObject:v5 andVersion:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)traits
{
  v3 = [(SXComponentStyle *)self fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 2;
  }

  v6 = [(SXComponentStyle *)self fill];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

@end