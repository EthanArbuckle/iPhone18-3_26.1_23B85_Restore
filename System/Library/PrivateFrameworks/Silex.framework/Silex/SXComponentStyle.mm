@interface SXComponentStyle
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (id)fillWithValue:(id)value withType:(int)type;
- (id)maskWithValue:(id)value withType:(int)type;
- (unint64_t)traits;
@end

@implementation SXComponentStyle

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_48;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXComponentStyle;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

- (id)fillWithValue:(id)value withType:(int)type
{
  if (type == 5)
  {
    valueCopy = value;
    v6 = objc_opt_class();
    v7 = [valueCopy objectForKey:@"type"];
    v8 = [SXClassFactory classForBaseClass:v6 type:v7];

    v9 = [v8 alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v11 = [v9 initWithJSONObject:valueCopy andVersion:specificationVersion];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)maskWithValue:(id)value withType:(int)type
{
  if (type == 5)
  {
    valueCopy = value;
    v6 = objc_opt_class();
    v7 = [valueCopy objectForKey:@"type"];
    v8 = [SXClassFactory classForBaseClass:v6 type:v7];

    v9 = [v8 alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v11 = [v9 initWithJSONObject:valueCopy andVersion:specificationVersion];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)traits
{
  fill = [(SXComponentStyle *)self fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 2;
  }

  fill2 = [(SXComponentStyle *)self fill];
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