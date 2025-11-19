@interface SXDocument
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
+ (id)objectValueClassBlockForPropertyWithName:(id)a3;
+ (id)purgeClassBlockForPropertyWithName:(id)a3;
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (SXDocument)initWithIdentifier:(id)a3 JSONObject:(id)a4 andVersion:(id)a5;
- (SXDocument)initWithJSONObject:(id)a3 andVersion:(id)a4;
@end

@implementation SXDocument

- (SXDocument)initWithJSONObject:(id)a3 andVersion:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];
  v11 = [(SXDocument *)self initWithIdentifier:v10 JSONObject:v8 andVersion:v7];

  return v11;
}

- (SXDocument)initWithIdentifier:(id)a3 JSONObject:(id)a4 andVersion:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SXDocument;
  v10 = [(SXJSONObject *)&v13 initWithJSONObject:a4 andVersion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
  }

  return v11;
}

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"resources"])
  {
    v5 = [SXClassFactory valueClassBlockForBaseClass:objc_opt_class()];
LABEL_3:
    v6 = v5;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"componentStyles"])
  {
    v6 = &__block_literal_global_11;
  }

  else if ([v4 isEqualToString:@"textStyles"])
  {
    v6 = &__block_literal_global_12;
  }

  else if ([v4 isEqualToString:@"componentTextStyles"])
  {
    v6 = &__block_literal_global_18;
  }

  else
  {
    if (([v4 isEqualToString:@"componentLayouts"] & 1) == 0)
    {
      v8.receiver = a1;
      v8.super_class = &OBJC_METACLASS___SXDocument;
      v5 = objc_msgSendSuper2(&v8, sel_valueClassBlockForPropertyWithName_, v4);
      goto LABEL_3;
    }

    v6 = &__block_literal_global_24;
  }

LABEL_12:

  return v6;
}

+ (id)objectValueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"components"])
  {
    v5 = +[SXJSONObjectComponentSupport shared];
    v6 = [v5 objectValueClassBlock];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SXDocument;
    v6 = objc_msgSendSuper2(&v8, sel_objectValueClassBlockForPropertyWithName_, v4);
  }

  return v6;
}

+ (id)purgeClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"components"])
  {
    v5 = +[SXJSONObjectComponentSupport shared];
    v6 = [v5 purgeClassBlock];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SXDocument;
    v6 = objc_msgSendSuper2(&v8, sel_purgeClassBlockForPropertyWithName_, v4);
  }

  return v6;
}

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"advertisingSettings"] || objc_msgSend(v6, "isEqualToString:", @"autoplacement") || objc_msgSend(v6, "isEqualToString:", @"layout") || objc_msgSend(v6, "isEqualToString:", @"hints"))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXDocument;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

@end