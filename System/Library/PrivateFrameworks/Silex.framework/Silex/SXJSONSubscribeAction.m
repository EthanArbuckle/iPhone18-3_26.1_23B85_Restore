@interface SXJSONSubscribeAction
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
@end

@implementation SXJSONSubscribeAction

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"inAppPurchaseIdKey"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = objc_opt_class();
  }

  else
  {
    if ([v6 isEqualToString:@"postPurchaseAction"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v7 objectForKey:@"type"];
        v10 = [SXClassFactory classForBaseClass:objc_opt_class() type:v9];

        goto LABEL_9;
      }
    }

    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___SXJSONSubscribeAction;
    v8 = objc_msgSendSuper2(&v12, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v10 = v8;
LABEL_9:

  return v10;
}

@end