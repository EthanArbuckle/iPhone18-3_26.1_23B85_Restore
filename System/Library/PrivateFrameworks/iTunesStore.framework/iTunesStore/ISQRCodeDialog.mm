@interface ISQRCodeDialog
- (ISQRCodeDialog)initWithDialogDictionary:(id)dictionary authenticationContext:(id)context;
@end

@implementation ISQRCodeDialog

- (ISQRCodeDialog)initWithDialogDictionary:(id)dictionary authenticationContext:(id)context
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = ISQRCodeDialog;
  v7 = [(ISDialog *)&v19 initWithDialogDictionary:dictionaryCopy authenticationContext:context];
  v8 = v7;
  if (v7)
  {
    [(ISDialog *)v7 setValue:@"PBCFUserNotificationTwoWaySignInTemplate" forCFUserNotificationKey:@"PBCFUserNotificationTemplateType"];
    v9 = [dictionaryCopy objectForKey:@"PINCodeTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v9 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeTitle"];
    }

    v10 = [dictionaryCopy objectForKey:@"PINCodeUrlSubtitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v10 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeURLSubtitle"];
    }

    v11 = [dictionaryCopy objectForKey:@"PINCodeUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v11 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeURL"];
    }

    v12 = [dictionaryCopy objectForKey:@"PINCodeSubtitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v12 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeSubtitle"];
    }

    v13 = [dictionaryCopy objectForKey:@"PINCode"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v13 forCFUserNotificationKey:@"PBCFUserNotificationPINCode"];
    }

    v14 = [dictionaryCopy objectForKey:@"Divider"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v14 forCFUserNotificationKey:@"PBCFUserNotificationDividerText"];
    }

    v15 = [dictionaryCopy objectForKey:@"QRCodeTitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v15 forCFUserNotificationKey:@"PBCFUserNotificationQRCodeTitle"];
    }

    v16 = [dictionaryCopy objectForKey:@"QRCodeSubtitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v16 forCFUserNotificationKey:@"PBCFUserNotificationQRCodeSubtitle"];
    }

    v17 = [dictionaryCopy objectForKey:@"QRCodeUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v17 forCFUserNotificationKey:@"PBCFUserNotificationQRCodeURL"];
    }
  }

  return v8;
}

@end