@interface ISQRCodeDialog
- (ISQRCodeDialog)initWithDialogDictionary:(id)a3 authenticationContext:(id)a4;
@end

@implementation ISQRCodeDialog

- (ISQRCodeDialog)initWithDialogDictionary:(id)a3 authenticationContext:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = ISQRCodeDialog;
  v7 = [(ISDialog *)&v19 initWithDialogDictionary:v6 authenticationContext:a4];
  v8 = v7;
  if (v7)
  {
    [(ISDialog *)v7 setValue:@"PBCFUserNotificationTwoWaySignInTemplate" forCFUserNotificationKey:@"PBCFUserNotificationTemplateType"];
    v9 = [v6 objectForKey:@"PINCodeTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v9 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeTitle"];
    }

    v10 = [v6 objectForKey:@"PINCodeUrlSubtitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v10 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeURLSubtitle"];
    }

    v11 = [v6 objectForKey:@"PINCodeUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v11 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeURL"];
    }

    v12 = [v6 objectForKey:@"PINCodeSubtitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v12 forCFUserNotificationKey:@"PBCFUserNotificationPINCodeSubtitle"];
    }

    v13 = [v6 objectForKey:@"PINCode"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v13 forCFUserNotificationKey:@"PBCFUserNotificationPINCode"];
    }

    v14 = [v6 objectForKey:@"Divider"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v14 forCFUserNotificationKey:@"PBCFUserNotificationDividerText"];
    }

    v15 = [v6 objectForKey:@"QRCodeTitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v15 forCFUserNotificationKey:@"PBCFUserNotificationQRCodeTitle"];
    }

    v16 = [v6 objectForKey:@"QRCodeSubtitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v16 forCFUserNotificationKey:@"PBCFUserNotificationQRCodeSubtitle"];
    }

    v17 = [v6 objectForKey:@"QRCodeUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISDialog *)v8 setValue:v17 forCFUserNotificationKey:@"PBCFUserNotificationQRCodeURL"];
    }
  }

  return v8;
}

@end