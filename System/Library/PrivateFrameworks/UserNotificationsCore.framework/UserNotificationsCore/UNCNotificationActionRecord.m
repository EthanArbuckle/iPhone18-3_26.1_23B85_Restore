@interface UNCNotificationActionRecord
- (BOOL)isEqual:(id)a3;
- (UNCNotificationActionRecord)initWithCoder:(id)a3;
- (UNCNotificationActionRecord)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCNotificationActionRecord

- (UNCNotificationActionRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = UNCNotificationActionRecord;
  v5 = [(UNCNotificationActionRecord *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"ActionType"];
    [(UNCNotificationActionRecord *)v5 setActionType:v6];

    v7 = [v4 objectForKey:@"Identifier"];
    [(UNCNotificationActionRecord *)v5 setIdentifier:v7];

    v8 = [v4 objectForKey:@"AuthenticationRequired"];
    -[UNCNotificationActionRecord setAuthenticationRequired:](v5, "setAuthenticationRequired:", [v8 BOOLValue]);

    v9 = [v4 objectForKey:@"Destructive"];
    -[UNCNotificationActionRecord setDestructive:](v5, "setDestructive:", [v9 BOOLValue]);

    v10 = [v4 objectForKey:@"Foreground"];
    -[UNCNotificationActionRecord setForeground:](v5, "setForeground:", [v10 BOOLValue]);

    v11 = [v4 objectForKey:@"HasSystemIcon"];
    -[UNCNotificationActionRecord setHasSystemIcon:](v5, "setHasSystemIcon:", [v11 BOOLValue]);

    v12 = [v4 objectForKey:@"IconImageName"];
    [(UNCNotificationActionRecord *)v5 setIconImageName:v12];

    v13 = [v4 objectForKey:@"ShouldPreventNotificationDismiss"];
    -[UNCNotificationActionRecord setShouldPreventNotificationDismiss:](v5, "setShouldPreventNotificationDismiss:", [v13 BOOLValue]);

    v14 = [v4 objectForKey:@"TextInputButtonTitle"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitle:v14];

    v15 = [v4 objectForKey:@"TextInputButtonTitleLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitleLocalizationArguments:v15];

    v16 = [v4 objectForKey:@"TextInputButtonTitleLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitleLocalizationKey:v16];

    v17 = [v4 objectForKey:@"TextInputPlaceholder"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholder:v17];

    v18 = [v4 objectForKey:@"TextInputPlaceholderLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholderLocalizationArguments:v18];

    v19 = [v4 objectForKey:@"TextInputPlaceholderLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholderLocalizationKey:v19];

    v20 = [v4 objectForKey:@"Title"];
    [(UNCNotificationActionRecord *)v5 setTitle:v20];

    v21 = [v4 objectForKey:@"TitleLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTitleLocalizationArguments:v21];

    v22 = [v4 objectForKey:@"TitleLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTitleLocalizationKey:v22];

    v23 = [v4 objectForKey:@"URL"];

    if (v23)
    {
      v24 = MEMORY[0x1E695DFF8];
      v25 = [v4 objectForKey:@"URL"];
      v26 = [v24 URLWithString:v25];
      [(UNCNotificationActionRecord *)v5 setUrl:v26];
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(UNCNotificationActionRecord *)self actionType];
  [v3 unc_safeSetObject:v4 forKey:@"ActionType"];

  v5 = [(UNCNotificationActionRecord *)self identifier];
  [v3 unc_safeSetObject:v5 forKey:@"Identifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord hasSystemIcon](self, "hasSystemIcon")}];
  [v3 unc_safeSetObject:v6 forKey:@"HasSystemIcon"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isAuthenticationRequired](self, "isAuthenticationRequired")}];
  [v3 unc_safeSetObject:v7 forKey:@"AuthenticationRequired"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isDestructive](self, "isDestructive")}];
  [v3 unc_safeSetObject:v8 forKey:@"Destructive"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isForeground](self, "isForeground")}];
  [v3 unc_safeSetObject:v9 forKey:@"Foreground"];

  v10 = [(UNCNotificationActionRecord *)self iconImageName];
  [v3 unc_safeSetObject:v10 forKey:@"IconImageName"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self, "shouldPreventNotificationDismiss")}];
  [v3 unc_safeSetObject:v11 forKey:@"ShouldPreventNotificationDismiss"];

  v12 = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  [v3 unc_safeSetObject:v12 forKey:@"TextInputButtonTitle"];

  v13 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  [v3 unc_safeSetObject:v13 forKey:@"TextInputButtonTitleLocalizationArguments"];

  v14 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  [v3 unc_safeSetObject:v14 forKey:@"TextInputButtonTitleLocalizationKey"];

  v15 = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  [v3 unc_safeSetObject:v15 forKey:@"TextInputPlaceholder"];

  v16 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  [v3 unc_safeSetObject:v16 forKey:@"TextInputPlaceholderLocalizationArguments"];

  v17 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  [v3 unc_safeSetObject:v17 forKey:@"TextInputPlaceholderLocalizationKey"];

  v18 = [(UNCNotificationActionRecord *)self title];
  [v3 unc_safeSetObject:v18 forKey:@"Title"];

  v19 = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  [v3 unc_safeSetObject:v19 forKey:@"TitleLocalizationArguments"];

  v20 = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  [v3 unc_safeSetObject:v20 forKey:@"TitleLocalizationKey"];

  v21 = [(UNCNotificationActionRecord *)self url];
  v22 = [v21 absoluteString];
  [v3 unc_safeSetObject:v22 forKey:@"URL"];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNCNotificationActionRecord *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"Identifier"];

  v6 = [(UNCNotificationActionRecord *)self actionType];
  v7 = [v3 appendObject:v6 withName:@"ActionType"];

  v8 = [v3 appendBool:-[UNCNotificationActionRecord hasSystemIcon](self withName:{"hasSystemIcon"), @"HasSystemIcon"}];
  v9 = [v3 appendBool:-[UNCNotificationActionRecord isAuthenticationRequired](self withName:{"isAuthenticationRequired"), @"AuthenticationRequired"}];
  v10 = [v3 appendBool:-[UNCNotificationActionRecord isDestructive](self withName:{"isDestructive"), @"Destructive"}];
  v11 = [v3 appendBool:-[UNCNotificationActionRecord isForeground](self withName:{"isForeground"), @"Foreground"}];
  v12 = [(UNCNotificationActionRecord *)self iconImageName];
  [v3 appendString:v12 withName:@"IconImageName"];

  v13 = [v3 appendBool:-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self withName:{"shouldPreventNotificationDismiss"), @"ShouldPreventNotificationDismiss"}];
  v14 = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  v15 = [v3 appendObject:v14 withName:@"textInputButtonTitle"];

  v16 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  v17 = [v3 appendObject:v16 withName:@"textInputButtonTitleLocalizationArguments"];

  v18 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  v19 = [v3 appendObject:v18 withName:@"textInputButtonTitleLocalizationKey"];

  v20 = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  v21 = [v3 appendObject:v20 withName:@"textInputPlaceholder"];

  v22 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  v23 = [v3 appendObject:v22 withName:@"textInputPlaceholderLocalizationArguments"];

  v24 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  v25 = [v3 appendObject:v24 withName:@"textInputPlaceholderLocalizationKey"];

  v26 = [(UNCNotificationActionRecord *)self title];
  v27 = [v3 appendObject:v26 withName:@"Title"];

  v28 = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  v29 = [v3 appendObject:v28 withName:@"TitleLocalizationArguments"];

  v30 = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  v31 = [v3 appendObject:v30 withName:@"TitleLocalizationKey"];

  v32 = [(UNCNotificationActionRecord *)self url];
  v33 = [v3 appendObject:v32 withName:@"URL"];

  v34 = [v3 build];

  return v34;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_21;
  }

  v6 = [(UNCNotificationActionRecord *)self identifier];
  v7 = [v4 identifier];
  v8 = UNEqualObjects();

  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = [(UNCNotificationActionRecord *)self actionType];
  v10 = [v4 actionType];
  v11 = UNEqualObjects();

  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = [(UNCNotificationActionRecord *)self isAuthenticationRequired];
  if (v12 != [v4 isAuthenticationRequired])
  {
    goto LABEL_21;
  }

  v13 = [(UNCNotificationActionRecord *)self isDestructive];
  if (v13 != [v4 isDestructive])
  {
    goto LABEL_21;
  }

  v14 = [(UNCNotificationActionRecord *)self isForeground];
  if (v14 != [v4 isForeground])
  {
    goto LABEL_21;
  }

  v15 = [(UNCNotificationActionRecord *)self hasSystemIcon];
  if (v15 != [v4 hasSystemIcon])
  {
    goto LABEL_21;
  }

  v16 = [(UNCNotificationActionRecord *)self shouldPreventNotificationDismiss];
  if (v16 != [v4 shouldPreventNotificationDismiss])
  {
    goto LABEL_21;
  }

  v17 = [(UNCNotificationActionRecord *)self iconImageName];
  v18 = [v4 iconImageName];
  v19 = UNEqualObjects();

  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  v21 = [v4 textInputButtonTitle];
  v22 = UNEqualObjects();

  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  v24 = [v4 textInputButtonTitleLocalizationArguments];
  v25 = UNEqualObjects();

  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  v27 = [v4 textInputButtonTitleLocalizationKey];
  v28 = UNEqualObjects();

  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  v30 = [v4 textInputPlaceholder];
  v31 = UNEqualObjects();

  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  v33 = [v4 textInputPlaceholderLocalizationArguments];
  v34 = UNEqualObjects();

  if (!v34)
  {
    goto LABEL_21;
  }

  v35 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  v36 = [v4 textInputPlaceholderLocalizationKey];
  v37 = UNEqualObjects();

  if (!v37)
  {
    goto LABEL_21;
  }

  v38 = [(UNCNotificationActionRecord *)self title];
  v39 = [v4 title];
  v40 = UNEqualObjects();

  if (!v40)
  {
    goto LABEL_21;
  }

  v41 = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  v42 = [v4 titleLocalizationArguments];
  v43 = UNEqualObjects();

  if (!v43)
  {
    goto LABEL_21;
  }

  v44 = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  v45 = [v4 titleLocalizationKey];
  v46 = UNEqualObjects();

  if (v46)
  {
    v47 = [(UNCNotificationActionRecord *)self url];
    v48 = [v4 url];
    v49 = UNEqualObjects();
  }

  else
  {
LABEL_21:
    v49 = 0;
  }

  return v49;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[UNCNotificationActionRecord isAuthenticationRequired](self, "isAuthenticationRequired")}];
  v5 = [v3 appendBool:{-[UNCNotificationActionRecord isDestructive](self, "isDestructive")}];
  v6 = [v3 appendBool:{-[UNCNotificationActionRecord isForeground](self, "isForeground")}];
  v7 = [v3 appendBool:{-[UNCNotificationActionRecord hasSystemIcon](self, "hasSystemIcon")}];
  v8 = [v3 appendBool:{-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self, "shouldPreventNotificationDismiss")}];
  v9 = [(UNCNotificationActionRecord *)self identifier];
  v10 = [v3 appendObject:v9];

  v11 = [(UNCNotificationActionRecord *)self actionType];
  v12 = [v3 appendObject:v11];

  v13 = [(UNCNotificationActionRecord *)self iconImageName];
  v14 = [v3 appendObject:v13];

  v15 = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  v16 = [v3 appendObject:v15];

  v17 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  v18 = [v3 appendObject:v17];

  v19 = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  v20 = [v3 appendObject:v19];

  v21 = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  v22 = [v3 appendObject:v21];

  v23 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  v24 = [v3 appendObject:v23];

  v25 = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  v26 = [v3 appendObject:v25];

  v27 = [(UNCNotificationActionRecord *)self title];
  v28 = [v3 appendObject:v27];

  v29 = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  v30 = [v3 appendObject:v29];

  v31 = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  v32 = [v3 appendObject:v31];

  v33 = [(UNCNotificationActionRecord *)self url];
  v34 = [v3 appendObject:v33];

  v35 = [v3 hash];
  return v35;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCNotificationActionRecord *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dictionary"];
}

- (UNCNotificationActionRecord)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCNotificationActionRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end