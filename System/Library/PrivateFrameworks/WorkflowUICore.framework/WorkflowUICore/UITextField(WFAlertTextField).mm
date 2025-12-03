@interface UITextField(WFAlertTextField)
- (id)alertAutocapitalizationType;
- (id)alertClearButtonMode;
- (id)alertReturnKeyType;
- (uint64_t)setAlertAutocapitalizationType:()WFAlertTextField;
- (uint64_t)setAlertClearButtonMode:()WFAlertTextField;
- (uint64_t)setAlertReturnKeyType:()WFAlertTextField;
- (void)setSuggestions:()WFAlertTextField;
@end

@implementation UITextField(WFAlertTextField)

- (uint64_t)setAlertReturnKeyType:()WFAlertTextField
{
  v4 = WFReturnKeyTypeFromString(a3);

  return [self setReturnKeyType:v4];
}

- (id)alertReturnKeyType
{
  returnKeyType = [self returnKeyType];

  return WFReturnKeyTypeFromType(returnKeyType);
}

- (uint64_t)setAlertAutocapitalizationType:()WFAlertTextField
{
  v4 = WFAutocapitalizationTypeFromString(a3);

  return [self setAutocapitalizationType:v4];
}

- (id)alertAutocapitalizationType
{
  autocapitalizationType = [self autocapitalizationType];

  return WFAutocapitalizationTypeFromType(autocapitalizationType);
}

- (uint64_t)setAlertClearButtonMode:()WFAlertTextField
{
  v4 = WFClearButtonModeFromString(a3);

  return [self setClearButtonMode:v4];
}

- (id)alertClearButtonMode
{
  clearButtonMode = [self clearButtonMode];

  return WFClearButtonModeFromMode(clearButtonMode);
}

- (void)setSuggestions:()WFAlertTextField
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = getWFGeneralLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "[UITextField(WFAlertTextField) setSuggestions:]";
    _os_log_impl(&dword_274AD4000, v0, OS_LOG_TYPE_ERROR, "%s You tried to set suggestions on a text field that doesn't support it. You should check +usesSuggestions first.", &v1, 0xCu);
  }
}

@end