@interface SXDocument
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
+ (id)objectValueClassBlockForPropertyWithName:(id)name;
+ (id)purgeClassBlockForPropertyWithName:(id)name;
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (SXDocument)initWithIdentifier:(id)identifier JSONObject:(id)object andVersion:(id)version;
- (SXDocument)initWithJSONObject:(id)object andVersion:(id)version;
@end

@implementation SXDocument

- (SXDocument)initWithJSONObject:(id)object andVersion:(id)version
{
  v6 = MEMORY[0x1E696AFB0];
  versionCopy = version;
  objectCopy = object;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v11 = [(SXDocument *)self initWithIdentifier:uUIDString JSONObject:objectCopy andVersion:versionCopy];

  return v11;
}

- (SXDocument)initWithIdentifier:(id)identifier JSONObject:(id)object andVersion:(id)version
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SXDocument;
  v10 = [(SXJSONObject *)&v13 initWithJSONObject:object andVersion:version];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v11;
}

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"resources"])
  {
    v5 = [SXClassFactory valueClassBlockForBaseClass:objc_opt_class()];
LABEL_3:
    v6 = v5;
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"componentStyles"])
  {
    v6 = &__block_literal_global_11;
  }

  else if ([nameCopy isEqualToString:@"textStyles"])
  {
    v6 = &__block_literal_global_12;
  }

  else if ([nameCopy isEqualToString:@"componentTextStyles"])
  {
    v6 = &__block_literal_global_18;
  }

  else
  {
    if (([nameCopy isEqualToString:@"componentLayouts"] & 1) == 0)
    {
      v8.receiver = self;
      v8.super_class = &OBJC_METACLASS___SXDocument;
      v5 = objc_msgSendSuper2(&v8, sel_valueClassBlockForPropertyWithName_, nameCopy);
      goto LABEL_3;
    }

    v6 = &__block_literal_global_24;
  }

LABEL_12:

  return v6;
}

+ (id)objectValueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"components"])
  {
    v5 = +[SXJSONObjectComponentSupport shared];
    objectValueClassBlock = [v5 objectValueClassBlock];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SXDocument;
    objectValueClassBlock = objc_msgSendSuper2(&v8, sel_objectValueClassBlockForPropertyWithName_, nameCopy);
  }

  return objectValueClassBlock;
}

+ (id)purgeClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"components"])
  {
    v5 = +[SXJSONObjectComponentSupport shared];
    purgeClassBlock = [v5 purgeClassBlock];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SXDocument;
    purgeClassBlock = objc_msgSendSuper2(&v8, sel_purgeClassBlockForPropertyWithName_, nameCopy);
  }

  return purgeClassBlock;
}

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"advertisingSettings"] || objc_msgSend(propertyCopy, "isEqualToString:", @"autoplacement") || objc_msgSend(propertyCopy, "isEqualToString:", @"layout") || objc_msgSend(propertyCopy, "isEqualToString:", @"hints"))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXDocument;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

@end