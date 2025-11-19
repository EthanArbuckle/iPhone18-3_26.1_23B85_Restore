@interface PreferencesPasscodeFieldWrapper
- (PreferencesPasscodeFieldWrapper)init;
- (void)passcodeField:(id)a3 enteredPasscode:(id)a4;
@end

@implementation PreferencesPasscodeFieldWrapper

- (PreferencesPasscodeFieldWrapper)init
{
  v8.receiver = self;
  v8.super_class = PreferencesPasscodeFieldWrapper;
  v2 = [(PreferencesPasscodeFieldWrapper *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getPSPasscodeFieldClass_softClass;
    v13 = getPSPasscodeFieldClass_softClass;
    if (!getPSPasscodeFieldClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getPSPasscodeFieldClass_block_invoke;
      v9[3] = &unk_2782E8258;
      v9[4] = &v10;
      __getPSPasscodeFieldClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [[v3 alloc] initWithNumberOfEntryFields:1];
    passcodeField = v2->_passcodeField;
    v2->_passcodeField = v5;

    [(PSPasscodeField *)v2->_passcodeField setDelegate:v2];
  }

  return v2;
}

- (void)passcodeField:(id)a3 enteredPasscode:(id)a4
{
  v7 = a4;
  v5 = [(PreferencesPasscodeFieldWrapper *)self handler];

  if (v5)
  {
    v6 = [(PreferencesPasscodeFieldWrapper *)self handler];
    (v6)[2](v6, v7);
  }
}

@end