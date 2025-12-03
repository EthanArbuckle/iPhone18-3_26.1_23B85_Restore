@interface VSTwoFactorEntryViewModel
- (VSTwoFactorEntryViewModel)init;
- (VSTwoFactorEntryViewModelDelegate)delegate;
- (void)buttonAtIndexWasPressed:(unint64_t)pressed;
- (void)configureWithRequest:(id)request;
- (void)setTwoFactorTextField:(id)field;
@end

@implementation VSTwoFactorEntryViewModel

- (VSTwoFactorEntryViewModel)init
{
  v25[1] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = VSTwoFactorEntryViewModel;
  v2 = [(VSCuratedViewModel *)&v23 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSTwoFactorEntryTextField);
    twoFactorTextField = v2->_twoFactorTextField;
    v2->_twoFactorTextField = v3;

    [(VSTwoFactorEntryTextField *)v2->_twoFactorTextField setReturnKeyType:9];
    v5 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"twoFactorTextField.text"];
    v22 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"originalTwoFacorCode"];
    v6 = MEMORY[0x277CCA9C0];
    v25[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v21 = [v6 expressionForFunction:@"length:" arguments:v7];

    v20 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"twoFactorTextField.expectedLength"];
    v8 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v5 rightExpression:v22 modifier:0 type:5 options:0];
    v9 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v21 rightExpression:v20 modifier:0 type:4 options:0];
    v10 = MEMORY[0x277CCA920];
    v24[0] = v9;
    v24[1] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v13 = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];
    v14 = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC28]];
    v15 = [MEMORY[0x277CCA9C0] expressionForConditional:v12 trueExpression:v13 falseExpression:v14];
    v16 = objc_alloc_init(MEMORY[0x277CE2248]);
    [v16 setObject:v2];
    [v16 setExpression:v15];
    [(VSTwoFactorEntryViewModel *)v2 setButtonExpressionEvaluator:v16];
    v17 = VSMainConcurrencyBindingOptions();
    [(VSTwoFactorEntryViewModel *)v2 vs_bind:@"beginValidationButtonEnabled" toObject:v16 withKeyPath:@"value" options:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)configureWithRequest:(id)request
{
  v4 = MEMORY[0x277CCA8D8];
  requestCopy = request;
  vs_frameworkBundle = [v4 vs_frameworkBundle];
  v7 = [vs_frameworkBundle localizedStringForKey:@"TWO_FACTOR_VERIFY_BUTTON_TITLE" value:0 table:0];

  [(VSCuratedViewModel *)self setBeginValidationButtonTitle:v7];
  identityProvider = [(VSViewModel *)self identityProvider];
  displayName = [identityProvider displayName];
  forceUnwrapObject = [displayName forceUnwrapObject];

  [(VSViewModel *)self setTitle:forceUnwrapObject];
  v11.receiver = self;
  v11.super_class = VSTwoFactorEntryViewModel;
  [(VSCuratedViewModel *)&v11 configureWithRequest:requestCopy];
}

- (void)setTwoFactorTextField:(id)field
{
  objc_storeStrong(&self->_twoFactorTextField, field);
  fieldCopy = field;
  [fieldCopy setReturnKeyType:9];
  text = [fieldCopy text];

  [(VSTwoFactorEntryViewModel *)self setOriginalTwoFacorCode:text];
}

- (void)buttonAtIndexWasPressed:(unint64_t)pressed
{
  delegate = [(VSTwoFactorEntryViewModel *)self delegate];
  [delegate twoFactorEntryViewModel:self didPressButtonAtIndex:pressed];
}

- (VSTwoFactorEntryViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end