@interface SXJSONSubscribeAction
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
@end

@implementation SXJSONSubscribeAction

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"inAppPurchaseIdKey"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = objc_opt_class();
  }

  else
  {
    if ([propertyCopy isEqualToString:@"postPurchaseAction"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [valueCopy objectForKey:@"type"];
        v10 = [SXClassFactory classForBaseClass:objc_opt_class() type:v9];

        goto LABEL_9;
      }
    }

    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___SXJSONSubscribeAction;
    v8 = objc_msgSendSuper2(&v12, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v10 = v8;
LABEL_9:

  return v10;
}

@end