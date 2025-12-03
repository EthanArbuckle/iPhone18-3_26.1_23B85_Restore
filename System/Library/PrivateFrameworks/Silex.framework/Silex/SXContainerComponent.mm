@interface SXContainerComponent
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
+ (id)objectValueClassBlockForPropertyWithName:(id)name;
+ (id)purgeClassBlockForPropertyWithName:(id)name;
- (BOOL)allowAutoplacedAdsWithValue:(id)value withType:(int)type;
- (BOOL)requiresLinkedContent;
@end

@implementation SXContainerComponent

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
    v8.super_class = &OBJC_METACLASS___SXContainerComponent;
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
    v8.super_class = &OBJC_METACLASS___SXContainerComponent;
    purgeClassBlock = objc_msgSendSuper2(&v8, sel_purgeClassBlockForPropertyWithName_, nameCopy);
  }

  return purgeClassBlock;
}

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:propertyCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [valueCopy objectForKey:@"type"];
      if (([v8 isEqualToString:@"collection"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"horizontal_stack"))
      {
        v9 = objc_opt_class();

        goto LABEL_8;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___SXContainerComponent;
  v9 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
LABEL_8:

  return v9;
}

- (BOOL)allowAutoplacedAdsWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  bOOLValue = [(SXComponent *)self role]!= 8 && [(SXComponent *)self role]!= 37;
  if (type == 2)
  {
    bOOLValue = [valueCopy BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)requiresLinkedContent
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  components = [(SXContainerComponent *)self components];
  v3 = [components countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(components);
        }

        if ([*(*(&v7 + 1) + 8 * i) requiresLinkedContent])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [components countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end