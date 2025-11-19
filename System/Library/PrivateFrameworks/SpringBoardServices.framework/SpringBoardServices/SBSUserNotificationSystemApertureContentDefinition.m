@interface SBSUserNotificationSystemApertureContentDefinition
- (NSString)alertHeaderColorName;
- (NSString)keyColorName;
- (SBSUserNotificationImageDefinition)leadingImageDefinition;
- (id)_initWithDictionary:(id)a3;
- (id)build;
- (void)setAlertHeaderColorName:(id)a3;
- (void)setKeyColorName:(id)a3;
@end

@implementation SBSUserNotificationSystemApertureContentDefinition

- (id)_initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSUserNotificationSystemApertureContentDefinition *)a2 _initWithDictionary:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SBSUserNotificationSystemApertureContentDefinition *)self init];
    if (v6)
    {
      v7 = [v5 bs_safeStringForKey:@"SBSCFUNSAAlertHeader"];
      alertHeader = v6->_alertHeader;
      v6->_alertHeader = v7;

      v9 = [v5 bs_safeStringForKey:@"SBSCFUNSAAlertMessage"];
      alertMessage = v6->_alertMessage;
      v6->_alertMessage = v9;

      v11 = [v5 bs_safeDictionaryForKey:@"SBSCFUNSAAlertHeaderColor"];
      if (v11)
      {
        v12 = [[SBSUserNotificationColorDefinition alloc] _initWithDictionary:v11];
        alertHeaderColor = v6->_alertHeaderColor;
        v6->_alertHeaderColor = v12;
      }

      v14 = [v5 bs_safeDictionaryForKey:@"SBSCFUNSAKeyColor"];
      if (v14)
      {
        v15 = [[SBSUserNotificationColorDefinition alloc] _initWithDictionary:v14];
        keyColor = v6->_keyColor;
        v6->_keyColor = v15;
      }

      v17 = [v5 bs_safeNumberForKey:@"SBSCFUNSAAlertTextAlignment"];
      alertTextAlignment = v6->_alertTextAlignment;
      v6->_alertTextAlignment = v17;

      v19 = [v5 bs_safeStringForKey:@"SBSCFUNSADefaultButtonTitle"];
      defaultButtonTitle = v6->_defaultButtonTitle;
      v6->_defaultButtonTitle = v19;

      v21 = [v5 bs_safeStringForKey:@"SBSCFUNSAAlternateButtonTitle"];
      alternateButtonTitle = v6->_alternateButtonTitle;
      v6->_alternateButtonTitle = v21;

      v23 = [v5 bs_safeNumberForKey:@"SBSCFUNSAPreventsAutomaticDismissalKey"];
      v6->_preventsAutomaticDismissal = [v23 BOOLValue];

      v24 = [v5 bs_safeDictionaryForKey:@"SBSCFUNSALeadingAssetDefinition"];
      if (v24)
      {
        v25 = [SBSUserNotificationAssetDefinition _definitionFromSerializedDefinition:v24];
        leadingAssetDefinition = v6->_leadingAssetDefinition;
        v6->_leadingAssetDefinition = v25;
      }
    }

    self = v6;
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)build
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  alertHeader = self->_alertHeader;
  if (alertHeader)
  {
    [v3 setObject:alertHeader forKey:@"SBSCFUNSAAlertHeader"];
  }

  alertMessage = self->_alertMessage;
  if (alertMessage)
  {
    [v4 setObject:alertMessage forKey:@"SBSCFUNSAAlertMessage"];
  }

  alertHeaderColor = self->_alertHeaderColor;
  if (alertHeaderColor)
  {
    v8 = [(SBSUserNotificationColorDefinition *)alertHeaderColor build];
    [v4 setObject:v8 forKey:@"SBSCFUNSAAlertHeaderColor"];
  }

  keyColor = self->_keyColor;
  if (keyColor)
  {
    v10 = [(SBSUserNotificationColorDefinition *)keyColor build];
    [v4 setObject:v10 forKey:@"SBSCFUNSAKeyColor"];
  }

  alertTextAlignment = self->_alertTextAlignment;
  if (alertTextAlignment)
  {
    [v4 setObject:alertTextAlignment forKey:@"SBSCFUNSAAlertTextAlignment"];
  }

  defaultButtonTitle = self->_defaultButtonTitle;
  if (defaultButtonTitle)
  {
    [v4 setObject:defaultButtonTitle forKey:@"SBSCFUNSADefaultButtonTitle"];
  }

  alternateButtonTitle = self->_alternateButtonTitle;
  if (alternateButtonTitle)
  {
    [v4 setObject:alternateButtonTitle forKey:@"SBSCFUNSAAlternateButtonTitle"];
  }

  leadingAssetDefinition = self->_leadingAssetDefinition;
  if (leadingAssetDefinition)
  {
    v15 = [(SBSUserNotificationAssetDefinition *)leadingAssetDefinition build];
    [v4 setObject:v15 forKey:@"SBSCFUNSALeadingAssetDefinition"];
  }

  if (self->_preventsAutomaticDismissal)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKey:@"SBSCFUNSAPreventsAutomaticDismissalKey"];
  }

  v16 = [v4 copy];

  return v16;
}

- (SBSUserNotificationImageDefinition)leadingImageDefinition
{
  v3 = [(SBSUserNotificationSystemApertureContentDefinition *)self leadingAssetDefinition];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SBSUserNotificationSystemApertureContentDefinition *)self leadingAssetDefinition];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAlertHeaderColorName:(id)a3
{
  v4 = [SBSUserNotificationColorDefinition definitionWithColorName:a3];
  [(SBSUserNotificationSystemApertureContentDefinition *)self setAlertHeaderColor:v4];
}

- (NSString)alertHeaderColorName
{
  v2 = [(SBSUserNotificationSystemApertureContentDefinition *)self alertHeaderColor];
  v3 = [v2 colorName];

  return v3;
}

- (void)setKeyColorName:(id)a3
{
  v4 = [SBSUserNotificationColorDefinition definitionWithColorName:a3];
  [(SBSUserNotificationSystemApertureContentDefinition *)self setKeyColor:v4];
}

- (NSString)keyColorName
{
  v2 = [(SBSUserNotificationSystemApertureContentDefinition *)self keyColor];
  v3 = [v2 colorName];

  return v3;
}

- (void)_initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationSystemApertureContentDefinition.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end