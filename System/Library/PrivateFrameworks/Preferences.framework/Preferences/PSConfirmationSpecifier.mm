@interface PSConfirmationSpecifier
+ (id)preferenceSpecifierNamed:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
+ (id)specifierWithSpecifier:(id)a3;
- (BOOL)isAlternateDestructive;
- (BOOL)isDestructive;
- (BOOL)isEqualToSpecifier:(id)a3;
- (void)setupWithDictionary:(id)a3;
@end

@implementation PSConfirmationSpecifier

+ (id)preferenceSpecifierNamed:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(PSConfirmationSpecifier);
  [(PSSpecifier *)v16 setName:v15];

  objc_storeWeak(&v16->super.target, v14);
  v16->super.getter = a6;
  v16->super.setter = a5;
  v16->super.detailControllerClass = a7;
  v16->super.cellType = a8;
  v16->super.editPaneClass = a9;

  return v16;
}

+ (id)specifierWithSpecifier:(id)a3
{
  v4 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___PSConfirmationSpecifier;
  v5 = objc_msgSendSuper2(&v13, sel_specifierWithSpecifier_, v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 title];
    [v5 setTitle:v7];

    v8 = [v6 prompt];
    [v5 setPrompt:v8];

    v9 = [v6 okButton];
    [v5 setOkButton:v9];

    v10 = [v6 alternateButton];
    [v5 setAlternateButton:v10];

    v11 = [v6 cancelButton];

    [v5 setCancelButton:v11];
  }

  return v5;
}

- (void)setupWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"title"];
  [(PSConfirmationSpecifier *)self setTitle:v5];

  v6 = [v4 objectForKey:@"prompt"];
  [(PSConfirmationSpecifier *)self setPrompt:v6];

  v7 = [v4 objectForKey:@"okTitle"];
  [(PSConfirmationSpecifier *)self setOkButton:v7];

  v8 = [v4 objectForKey:@"altTitle"];
  [(PSConfirmationSpecifier *)self setAlternateButton:v8];

  v9 = [v4 objectForKey:@"cancelTitle"];

  [(PSConfirmationSpecifier *)self setCancelButton:v9];
}

- (BOOL)isDestructive
{
  v2 = [(PSSpecifier *)self propertyForKey:@"isDestructive"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAlternateDestructive
{
  v2 = [(PSSpecifier *)self propertyForKey:@"isAlternateDestructive"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEqualToSpecifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PSConfirmationSpecifier;
  if ([(PSSpecifier *)&v19 isEqualToSpecifier:v4])
  {
    v5 = v4;
    v6 = v5;
    if (self->_title)
    {
      title = self->_title;
    }

    else
    {
      title = &stru_1EFE45030;
    }

    v8 = [v5 title];
    if ([(__CFString *)title isEqualToString:v8])
    {
      if (self->_prompt)
      {
        prompt = self->_prompt;
      }

      else
      {
        prompt = &stru_1EFE45030;
      }

      v10 = [v6 prompt];
      if ([(__CFString *)prompt isEqualToString:v10])
      {
        if (self->_okButton)
        {
          okButton = self->_okButton;
        }

        else
        {
          okButton = &stru_1EFE45030;
        }

        v12 = [v6 okButton];
        if ([(__CFString *)okButton isEqualToString:v12])
        {
          if (self->_alternateButton)
          {
            alternateButton = self->_alternateButton;
          }

          else
          {
            alternateButton = &stru_1EFE45030;
          }

          v14 = [v6 alternateButton];
          if ([(__CFString *)alternateButton isEqualToString:v14])
          {
            if (self->_cancelButton)
            {
              cancelButton = self->_cancelButton;
            }

            else
            {
              cancelButton = &stru_1EFE45030;
            }

            v16 = [v6 cancelButton];
            v17 = [(__CFString *)cancelButton isEqualToString:v16];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end