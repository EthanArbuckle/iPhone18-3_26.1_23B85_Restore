@interface SBSUserNotificationSystemApertureContentDefinition
- (NSString)alertHeaderColorName;
- (NSString)keyColorName;
- (SBSUserNotificationImageDefinition)leadingImageDefinition;
- (id)_initWithDictionary:(id)dictionary;
- (id)build;
- (void)setAlertHeaderColorName:(id)name;
- (void)setKeyColorName:(id)name;
@end

@implementation SBSUserNotificationSystemApertureContentDefinition

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    [(SBSUserNotificationSystemApertureContentDefinition *)a2 _initWithDictionary:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SBSUserNotificationSystemApertureContentDefinition *)self init];
    if (v6)
    {
      v7 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNSAAlertHeader"];
      alertHeader = v6->_alertHeader;
      v6->_alertHeader = v7;

      v9 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNSAAlertMessage"];
      alertMessage = v6->_alertMessage;
      v6->_alertMessage = v9;

      v11 = [dictionaryCopy bs_safeDictionaryForKey:@"SBSCFUNSAAlertHeaderColor"];
      if (v11)
      {
        v12 = [[SBSUserNotificationColorDefinition alloc] _initWithDictionary:v11];
        alertHeaderColor = v6->_alertHeaderColor;
        v6->_alertHeaderColor = v12;
      }

      v14 = [dictionaryCopy bs_safeDictionaryForKey:@"SBSCFUNSAKeyColor"];
      if (v14)
      {
        v15 = [[SBSUserNotificationColorDefinition alloc] _initWithDictionary:v14];
        keyColor = v6->_keyColor;
        v6->_keyColor = v15;
      }

      v17 = [dictionaryCopy bs_safeNumberForKey:@"SBSCFUNSAAlertTextAlignment"];
      alertTextAlignment = v6->_alertTextAlignment;
      v6->_alertTextAlignment = v17;

      v19 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNSADefaultButtonTitle"];
      defaultButtonTitle = v6->_defaultButtonTitle;
      v6->_defaultButtonTitle = v19;

      v21 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNSAAlternateButtonTitle"];
      alternateButtonTitle = v6->_alternateButtonTitle;
      v6->_alternateButtonTitle = v21;

      v23 = [dictionaryCopy bs_safeNumberForKey:@"SBSCFUNSAPreventsAutomaticDismissalKey"];
      v6->_preventsAutomaticDismissal = [v23 BOOLValue];

      v24 = [dictionaryCopy bs_safeDictionaryForKey:@"SBSCFUNSALeadingAssetDefinition"];
      if (v24)
      {
        v25 = [SBSUserNotificationAssetDefinition _definitionFromSerializedDefinition:v24];
        leadingAssetDefinition = v6->_leadingAssetDefinition;
        v6->_leadingAssetDefinition = v25;
      }
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)build
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  alertHeader = self->_alertHeader;
  if (alertHeader)
  {
    [dictionary setObject:alertHeader forKey:@"SBSCFUNSAAlertHeader"];
  }

  alertMessage = self->_alertMessage;
  if (alertMessage)
  {
    [v4 setObject:alertMessage forKey:@"SBSCFUNSAAlertMessage"];
  }

  alertHeaderColor = self->_alertHeaderColor;
  if (alertHeaderColor)
  {
    build = [(SBSUserNotificationColorDefinition *)alertHeaderColor build];
    [v4 setObject:build forKey:@"SBSCFUNSAAlertHeaderColor"];
  }

  keyColor = self->_keyColor;
  if (keyColor)
  {
    build2 = [(SBSUserNotificationColorDefinition *)keyColor build];
    [v4 setObject:build2 forKey:@"SBSCFUNSAKeyColor"];
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
    build3 = [(SBSUserNotificationAssetDefinition *)leadingAssetDefinition build];
    [v4 setObject:build3 forKey:@"SBSCFUNSALeadingAssetDefinition"];
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
  leadingAssetDefinition = [(SBSUserNotificationSystemApertureContentDefinition *)self leadingAssetDefinition];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    leadingAssetDefinition2 = [(SBSUserNotificationSystemApertureContentDefinition *)self leadingAssetDefinition];
  }

  else
  {
    leadingAssetDefinition2 = 0;
  }

  return leadingAssetDefinition2;
}

- (void)setAlertHeaderColorName:(id)name
{
  v4 = [SBSUserNotificationColorDefinition definitionWithColorName:name];
  [(SBSUserNotificationSystemApertureContentDefinition *)self setAlertHeaderColor:v4];
}

- (NSString)alertHeaderColorName
{
  alertHeaderColor = [(SBSUserNotificationSystemApertureContentDefinition *)self alertHeaderColor];
  colorName = [alertHeaderColor colorName];

  return colorName;
}

- (void)setKeyColorName:(id)name
{
  v4 = [SBSUserNotificationColorDefinition definitionWithColorName:name];
  [(SBSUserNotificationSystemApertureContentDefinition *)self setKeyColor:v4];
}

- (NSString)keyColorName
{
  keyColor = [(SBSUserNotificationSystemApertureContentDefinition *)self keyColor];
  colorName = [keyColor colorName];

  return colorName;
}

- (void)_initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationSystemApertureContentDefinition.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end