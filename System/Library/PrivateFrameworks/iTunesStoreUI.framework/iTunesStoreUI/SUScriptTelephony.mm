@interface SUScriptTelephony
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (BOOL)_checkIfIsAllowed;
- (NSString)countryCode;
- (NSString)mobileCountryCode;
- (NSString)mobileNetworkCode;
- (NSString)operatorName;
- (NSString)phoneNumber;
- (NSString)providerName;
- (SUScriptTelephony)init;
- (id)formattedPhoneNumber:(id)a3;
- (id)isCellularRoaming;
- (id)isGreenTea;
- (id)scriptAttributeKeys;
- (id)sendSMSWithBodyText:(id)a3 digits:(id)a4 countryCode:(id)a5;
- (void)dealloc;
@end

@implementation SUScriptTelephony

- (SUScriptTelephony)init
{
  v6.receiver = self;
  v6.super_class = SUScriptTelephony;
  v2 = [(SUScriptObject *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69D4A20] sharedController];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__handleOperatorNameChangedNotification_ name:*MEMORY[0x1E69D4D70] object:v3];
    [v4 addObserver:v2 selector:sel__handlePhoneNumberChangedNotification_ name:*MEMORY[0x1E69D4D78] object:v3];
    [v4 addObserver:v2 selector:sel__handleRegistrationChangedNotification_ name:*MEMORY[0x1E69D4D80] object:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69D4A20] sharedController];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69D4D70] object:v3];
  [v4 removeObserver:self name:*MEMORY[0x1E69D4D78] object:v3];
  [v4 removeObserver:self name:*MEMORY[0x1E69D4D80] object:v3];

  v5.receiver = self;
  v5.super_class = SUScriptTelephony;
  [(SUScriptObject *)&v5 dealloc];
}

- (NSString)countryCode
{
  if ([(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    active = CPPhoneNumberCopyActiveCountryCode();
  }

  else
  {
    active = 0;
  }

  return active;
}

- (id)isCellularRoaming
{
  if (![(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    goto LABEL_8;
  }

  v2 = CTRegistrationCopyDataStatus();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, *MEMORY[0x1E6965400]);
  if (!Value)
  {
    CFRelease(v3);
LABEL_8:
    v6 = MEMORY[0x1E695E4C0];
    goto LABEL_9;
  }

  v5 = CFEqual(Value, *MEMORY[0x1E6965408]);
  CFRelease(v3);
  v6 = MEMORY[0x1E695E4D0];
  if (!v5)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

LABEL_9:
  v7 = *v6;

  return v7;
}

- (id)isGreenTea
{
  v2 = MGGetBoolAnswer();
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;

  return v4;
}

- (NSString)mobileCountryCode
{
  if ([(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    v2 = [MEMORY[0x1E69D4A20] sharedController];
    v3 = [v2 mobileSubscriberCountryCode];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)mobileNetworkCode
{
  if ([(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    v2 = [MEMORY[0x1E69D4A20] sharedController];
    v3 = [v2 mobileSubscriberNetworkCode];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)operatorName
{
  if ([(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    v2 = [MEMORY[0x1E69D4A20] sharedController];
    v3 = [v2 operatorName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)phoneNumber
{
  if ([(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    v2 = [MEMORY[0x1E69D4A20] sharedController];
    v3 = [v2 phoneNumber];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)providerName
{
  if ([(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    v2 = [MEMORY[0x1E69D4A20] sharedController];
    v3 = [v2 providerName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)formattedPhoneNumber:(id)a3
{
  v4 = a3;
  if ([(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    v5 = CPPhoneNumberCopyFormattedStringForTextMessage();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sendSMSWithBodyText:(id)a3 digits:(id)a4 countryCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(SUScriptTelephony *)self _checkIfIsAllowed])
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v10 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_13:
    v13 = MEMORY[0x1E695E4C0];
    goto LABEL_14;
  }

  v11 = [MEMORY[0x1E69D4A20] sharedController];
  v12 = [v11 sendSMSWithText:v8 toPhoneNumber:v9 countryCode:v10 error:0];

  v13 = MEMORY[0x1E695E4D0];
  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E695E4C0];
  }

LABEL_14:
  v14 = *v13;
  v15 = *v13;

  return v14;
}

- (BOOL)_checkIfIsAllowed
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SUScriptAccessSecurity);
  v4 = [(SUScriptObject *)self webFrame];
  v16 = 0;
  v5 = [(SUScriptAccessSecurity *)v3 canAccessTelephonyInFrame:v4 error:&v16];
  v6 = v16;

  if (v6)
  {
    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v12 = v11;
      LODWORD(v15) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_11:

        goto LABEL_12;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v17, v15}];
      free(v13);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_55 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptTelephony;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2(a3, &__SelectorMapping_40, 2);
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptTelephony;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptTelephony;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_55 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_40 = sel_formattedPhoneNumber_;
    *algn_1EBF3B4C8 = @"formattedPhoneNumber";
    qword_1EBF3B4D0 = sel_sendSMSWithBodyText_digits_countryCode_;
    unk_1EBF3B4D8 = @"sendSMS";
    __KeyMapping_55 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"countryCode", @"isCellularRoaming", @"isCellularRoaming", @"isGreenTea", @"isGreenTea", @"mobileCountryCode", @"mobileCountryCode", @"mobileNetworkCode", @"mobileNetworkCode", @"operatorName", @"operatorName", @"phoneNumber", @"phoneNumber", @"providerName", @"providerName", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end