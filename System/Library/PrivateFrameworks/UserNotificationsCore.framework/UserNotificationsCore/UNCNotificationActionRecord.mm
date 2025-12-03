@interface UNCNotificationActionRecord
- (BOOL)isEqual:(id)equal;
- (UNCNotificationActionRecord)initWithCoder:(id)coder;
- (UNCNotificationActionRecord)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCNotificationActionRecord

- (UNCNotificationActionRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v28.receiver = self;
  v28.super_class = UNCNotificationActionRecord;
  v5 = [(UNCNotificationActionRecord *)&v28 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"ActionType"];
    [(UNCNotificationActionRecord *)v5 setActionType:v6];

    v7 = [representationCopy objectForKey:@"Identifier"];
    [(UNCNotificationActionRecord *)v5 setIdentifier:v7];

    v8 = [representationCopy objectForKey:@"AuthenticationRequired"];
    -[UNCNotificationActionRecord setAuthenticationRequired:](v5, "setAuthenticationRequired:", [v8 BOOLValue]);

    v9 = [representationCopy objectForKey:@"Destructive"];
    -[UNCNotificationActionRecord setDestructive:](v5, "setDestructive:", [v9 BOOLValue]);

    v10 = [representationCopy objectForKey:@"Foreground"];
    -[UNCNotificationActionRecord setForeground:](v5, "setForeground:", [v10 BOOLValue]);

    v11 = [representationCopy objectForKey:@"HasSystemIcon"];
    -[UNCNotificationActionRecord setHasSystemIcon:](v5, "setHasSystemIcon:", [v11 BOOLValue]);

    v12 = [representationCopy objectForKey:@"IconImageName"];
    [(UNCNotificationActionRecord *)v5 setIconImageName:v12];

    v13 = [representationCopy objectForKey:@"ShouldPreventNotificationDismiss"];
    -[UNCNotificationActionRecord setShouldPreventNotificationDismiss:](v5, "setShouldPreventNotificationDismiss:", [v13 BOOLValue]);

    v14 = [representationCopy objectForKey:@"TextInputButtonTitle"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitle:v14];

    v15 = [representationCopy objectForKey:@"TextInputButtonTitleLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitleLocalizationArguments:v15];

    v16 = [representationCopy objectForKey:@"TextInputButtonTitleLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTextInputButtonTitleLocalizationKey:v16];

    v17 = [representationCopy objectForKey:@"TextInputPlaceholder"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholder:v17];

    v18 = [representationCopy objectForKey:@"TextInputPlaceholderLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholderLocalizationArguments:v18];

    v19 = [representationCopy objectForKey:@"TextInputPlaceholderLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTextInputPlaceholderLocalizationKey:v19];

    v20 = [representationCopy objectForKey:@"Title"];
    [(UNCNotificationActionRecord *)v5 setTitle:v20];

    v21 = [representationCopy objectForKey:@"TitleLocalizationArguments"];
    [(UNCNotificationActionRecord *)v5 setTitleLocalizationArguments:v21];

    v22 = [representationCopy objectForKey:@"TitleLocalizationKey"];
    [(UNCNotificationActionRecord *)v5 setTitleLocalizationKey:v22];

    v23 = [representationCopy objectForKey:@"URL"];

    if (v23)
    {
      v24 = MEMORY[0x1E695DFF8];
      v25 = [representationCopy objectForKey:@"URL"];
      v26 = [v24 URLWithString:v25];
      [(UNCNotificationActionRecord *)v5 setUrl:v26];
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  actionType = [(UNCNotificationActionRecord *)self actionType];
  [dictionary unc_safeSetObject:actionType forKey:@"ActionType"];

  identifier = [(UNCNotificationActionRecord *)self identifier];
  [dictionary unc_safeSetObject:identifier forKey:@"Identifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord hasSystemIcon](self, "hasSystemIcon")}];
  [dictionary unc_safeSetObject:v6 forKey:@"HasSystemIcon"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isAuthenticationRequired](self, "isAuthenticationRequired")}];
  [dictionary unc_safeSetObject:v7 forKey:@"AuthenticationRequired"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isDestructive](self, "isDestructive")}];
  [dictionary unc_safeSetObject:v8 forKey:@"Destructive"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord isForeground](self, "isForeground")}];
  [dictionary unc_safeSetObject:v9 forKey:@"Foreground"];

  iconImageName = [(UNCNotificationActionRecord *)self iconImageName];
  [dictionary unc_safeSetObject:iconImageName forKey:@"IconImageName"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self, "shouldPreventNotificationDismiss")}];
  [dictionary unc_safeSetObject:v11 forKey:@"ShouldPreventNotificationDismiss"];

  textInputButtonTitle = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  [dictionary unc_safeSetObject:textInputButtonTitle forKey:@"TextInputButtonTitle"];

  textInputButtonTitleLocalizationArguments = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  [dictionary unc_safeSetObject:textInputButtonTitleLocalizationArguments forKey:@"TextInputButtonTitleLocalizationArguments"];

  textInputButtonTitleLocalizationKey = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  [dictionary unc_safeSetObject:textInputButtonTitleLocalizationKey forKey:@"TextInputButtonTitleLocalizationKey"];

  textInputPlaceholder = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  [dictionary unc_safeSetObject:textInputPlaceholder forKey:@"TextInputPlaceholder"];

  textInputPlaceholderLocalizationArguments = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  [dictionary unc_safeSetObject:textInputPlaceholderLocalizationArguments forKey:@"TextInputPlaceholderLocalizationArguments"];

  textInputPlaceholderLocalizationKey = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  [dictionary unc_safeSetObject:textInputPlaceholderLocalizationKey forKey:@"TextInputPlaceholderLocalizationKey"];

  title = [(UNCNotificationActionRecord *)self title];
  [dictionary unc_safeSetObject:title forKey:@"Title"];

  titleLocalizationArguments = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  [dictionary unc_safeSetObject:titleLocalizationArguments forKey:@"TitleLocalizationArguments"];

  titleLocalizationKey = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  [dictionary unc_safeSetObject:titleLocalizationKey forKey:@"TitleLocalizationKey"];

  v21 = [(UNCNotificationActionRecord *)self url];
  absoluteString = [v21 absoluteString];
  [dictionary unc_safeSetObject:absoluteString forKey:@"URL"];

  return dictionary;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(UNCNotificationActionRecord *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"Identifier"];

  actionType = [(UNCNotificationActionRecord *)self actionType];
  v7 = [v3 appendObject:actionType withName:@"ActionType"];

  v8 = [v3 appendBool:-[UNCNotificationActionRecord hasSystemIcon](self withName:{"hasSystemIcon"), @"HasSystemIcon"}];
  v9 = [v3 appendBool:-[UNCNotificationActionRecord isAuthenticationRequired](self withName:{"isAuthenticationRequired"), @"AuthenticationRequired"}];
  v10 = [v3 appendBool:-[UNCNotificationActionRecord isDestructive](self withName:{"isDestructive"), @"Destructive"}];
  v11 = [v3 appendBool:-[UNCNotificationActionRecord isForeground](self withName:{"isForeground"), @"Foreground"}];
  iconImageName = [(UNCNotificationActionRecord *)self iconImageName];
  [v3 appendString:iconImageName withName:@"IconImageName"];

  v13 = [v3 appendBool:-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self withName:{"shouldPreventNotificationDismiss"), @"ShouldPreventNotificationDismiss"}];
  textInputButtonTitle = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  v15 = [v3 appendObject:textInputButtonTitle withName:@"textInputButtonTitle"];

  textInputButtonTitleLocalizationArguments = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  v17 = [v3 appendObject:textInputButtonTitleLocalizationArguments withName:@"textInputButtonTitleLocalizationArguments"];

  textInputButtonTitleLocalizationKey = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  v19 = [v3 appendObject:textInputButtonTitleLocalizationKey withName:@"textInputButtonTitleLocalizationKey"];

  textInputPlaceholder = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  v21 = [v3 appendObject:textInputPlaceholder withName:@"textInputPlaceholder"];

  textInputPlaceholderLocalizationArguments = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  v23 = [v3 appendObject:textInputPlaceholderLocalizationArguments withName:@"textInputPlaceholderLocalizationArguments"];

  textInputPlaceholderLocalizationKey = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  v25 = [v3 appendObject:textInputPlaceholderLocalizationKey withName:@"textInputPlaceholderLocalizationKey"];

  title = [(UNCNotificationActionRecord *)self title];
  v27 = [v3 appendObject:title withName:@"Title"];

  titleLocalizationArguments = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  v29 = [v3 appendObject:titleLocalizationArguments withName:@"TitleLocalizationArguments"];

  titleLocalizationKey = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  v31 = [v3 appendObject:titleLocalizationKey withName:@"TitleLocalizationKey"];

  v32 = [(UNCNotificationActionRecord *)self url];
  v33 = [v3 appendObject:v32 withName:@"URL"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    goto LABEL_21;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_21;
  }

  identifier = [(UNCNotificationActionRecord *)self identifier];
  identifier2 = [equalCopy identifier];
  v8 = UNEqualObjects();

  if (!v8)
  {
    goto LABEL_21;
  }

  actionType = [(UNCNotificationActionRecord *)self actionType];
  actionType2 = [equalCopy actionType];
  v11 = UNEqualObjects();

  if (!v11)
  {
    goto LABEL_21;
  }

  isAuthenticationRequired = [(UNCNotificationActionRecord *)self isAuthenticationRequired];
  if (isAuthenticationRequired != [equalCopy isAuthenticationRequired])
  {
    goto LABEL_21;
  }

  isDestructive = [(UNCNotificationActionRecord *)self isDestructive];
  if (isDestructive != [equalCopy isDestructive])
  {
    goto LABEL_21;
  }

  isForeground = [(UNCNotificationActionRecord *)self isForeground];
  if (isForeground != [equalCopy isForeground])
  {
    goto LABEL_21;
  }

  hasSystemIcon = [(UNCNotificationActionRecord *)self hasSystemIcon];
  if (hasSystemIcon != [equalCopy hasSystemIcon])
  {
    goto LABEL_21;
  }

  shouldPreventNotificationDismiss = [(UNCNotificationActionRecord *)self shouldPreventNotificationDismiss];
  if (shouldPreventNotificationDismiss != [equalCopy shouldPreventNotificationDismiss])
  {
    goto LABEL_21;
  }

  iconImageName = [(UNCNotificationActionRecord *)self iconImageName];
  iconImageName2 = [equalCopy iconImageName];
  v19 = UNEqualObjects();

  if (!v19)
  {
    goto LABEL_21;
  }

  textInputButtonTitle = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  textInputButtonTitle2 = [equalCopy textInputButtonTitle];
  v22 = UNEqualObjects();

  if (!v22)
  {
    goto LABEL_21;
  }

  textInputButtonTitleLocalizationArguments = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  textInputButtonTitleLocalizationArguments2 = [equalCopy textInputButtonTitleLocalizationArguments];
  v25 = UNEqualObjects();

  if (!v25)
  {
    goto LABEL_21;
  }

  textInputButtonTitleLocalizationKey = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  textInputButtonTitleLocalizationKey2 = [equalCopy textInputButtonTitleLocalizationKey];
  v28 = UNEqualObjects();

  if (!v28)
  {
    goto LABEL_21;
  }

  textInputPlaceholder = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  textInputPlaceholder2 = [equalCopy textInputPlaceholder];
  v31 = UNEqualObjects();

  if (!v31)
  {
    goto LABEL_21;
  }

  textInputPlaceholderLocalizationArguments = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  textInputPlaceholderLocalizationArguments2 = [equalCopy textInputPlaceholderLocalizationArguments];
  v34 = UNEqualObjects();

  if (!v34)
  {
    goto LABEL_21;
  }

  textInputPlaceholderLocalizationKey = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  textInputPlaceholderLocalizationKey2 = [equalCopy textInputPlaceholderLocalizationKey];
  v37 = UNEqualObjects();

  if (!v37)
  {
    goto LABEL_21;
  }

  title = [(UNCNotificationActionRecord *)self title];
  title2 = [equalCopy title];
  v40 = UNEqualObjects();

  if (!v40)
  {
    goto LABEL_21;
  }

  titleLocalizationArguments = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  titleLocalizationArguments2 = [equalCopy titleLocalizationArguments];
  v43 = UNEqualObjects();

  if (!v43)
  {
    goto LABEL_21;
  }

  titleLocalizationKey = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  titleLocalizationKey2 = [equalCopy titleLocalizationKey];
  v46 = UNEqualObjects();

  if (v46)
  {
    v47 = [(UNCNotificationActionRecord *)self url];
    v48 = [equalCopy url];
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[UNCNotificationActionRecord isAuthenticationRequired](self, "isAuthenticationRequired")}];
  v5 = [builder appendBool:{-[UNCNotificationActionRecord isDestructive](self, "isDestructive")}];
  v6 = [builder appendBool:{-[UNCNotificationActionRecord isForeground](self, "isForeground")}];
  v7 = [builder appendBool:{-[UNCNotificationActionRecord hasSystemIcon](self, "hasSystemIcon")}];
  v8 = [builder appendBool:{-[UNCNotificationActionRecord shouldPreventNotificationDismiss](self, "shouldPreventNotificationDismiss")}];
  identifier = [(UNCNotificationActionRecord *)self identifier];
  v10 = [builder appendObject:identifier];

  actionType = [(UNCNotificationActionRecord *)self actionType];
  v12 = [builder appendObject:actionType];

  iconImageName = [(UNCNotificationActionRecord *)self iconImageName];
  v14 = [builder appendObject:iconImageName];

  textInputButtonTitle = [(UNCNotificationActionRecord *)self textInputButtonTitle];
  v16 = [builder appendObject:textInputButtonTitle];

  textInputButtonTitleLocalizationArguments = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationArguments];
  v18 = [builder appendObject:textInputButtonTitleLocalizationArguments];

  textInputButtonTitleLocalizationKey = [(UNCNotificationActionRecord *)self textInputButtonTitleLocalizationKey];
  v20 = [builder appendObject:textInputButtonTitleLocalizationKey];

  textInputPlaceholder = [(UNCNotificationActionRecord *)self textInputPlaceholder];
  v22 = [builder appendObject:textInputPlaceholder];

  textInputPlaceholderLocalizationArguments = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationArguments];
  v24 = [builder appendObject:textInputPlaceholderLocalizationArguments];

  textInputPlaceholderLocalizationKey = [(UNCNotificationActionRecord *)self textInputPlaceholderLocalizationKey];
  v26 = [builder appendObject:textInputPlaceholderLocalizationKey];

  title = [(UNCNotificationActionRecord *)self title];
  v28 = [builder appendObject:title];

  titleLocalizationArguments = [(UNCNotificationActionRecord *)self titleLocalizationArguments];
  v30 = [builder appendObject:titleLocalizationArguments];

  titleLocalizationKey = [(UNCNotificationActionRecord *)self titleLocalizationKey];
  v32 = [builder appendObject:titleLocalizationKey];

  v33 = [(UNCNotificationActionRecord *)self url];
  v34 = [builder appendObject:v33];

  v35 = [builder hash];
  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(UNCNotificationActionRecord *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dictionary"];
}

- (UNCNotificationActionRecord)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCNotificationActionRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end