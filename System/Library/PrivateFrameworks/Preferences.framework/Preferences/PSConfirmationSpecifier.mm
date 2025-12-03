@interface PSConfirmationSpecifier
+ (id)preferenceSpecifierNamed:(id)named target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
+ (id)specifierWithSpecifier:(id)specifier;
- (BOOL)isAlternateDestructive;
- (BOOL)isDestructive;
- (BOOL)isEqualToSpecifier:(id)specifier;
- (void)setupWithDictionary:(id)dictionary;
@end

@implementation PSConfirmationSpecifier

+ (id)preferenceSpecifierNamed:(id)named target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  targetCopy = target;
  namedCopy = named;
  v16 = objc_alloc_init(PSConfirmationSpecifier);
  [(PSSpecifier *)v16 setName:namedCopy];

  objc_storeWeak(&v16->super.target, targetCopy);
  v16->super.getter = get;
  v16->super.setter = set;
  v16->super.detailControllerClass = detail;
  v16->super.cellType = cell;
  v16->super.editPaneClass = edit;

  return v16;
}

+ (id)specifierWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___PSConfirmationSpecifier;
  v5 = objc_msgSendSuper2(&v13, sel_specifierWithSpecifier_, specifierCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = specifierCopy;
    title = [v6 title];
    [v5 setTitle:title];

    prompt = [v6 prompt];
    [v5 setPrompt:prompt];

    okButton = [v6 okButton];
    [v5 setOkButton:okButton];

    alternateButton = [v6 alternateButton];
    [v5 setAlternateButton:alternateButton];

    cancelButton = [v6 cancelButton];

    [v5 setCancelButton:cancelButton];
  }

  return v5;
}

- (void)setupWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"title"];
  [(PSConfirmationSpecifier *)self setTitle:v5];

  v6 = [dictionaryCopy objectForKey:@"prompt"];
  [(PSConfirmationSpecifier *)self setPrompt:v6];

  v7 = [dictionaryCopy objectForKey:@"okTitle"];
  [(PSConfirmationSpecifier *)self setOkButton:v7];

  v8 = [dictionaryCopy objectForKey:@"altTitle"];
  [(PSConfirmationSpecifier *)self setAlternateButton:v8];

  v9 = [dictionaryCopy objectForKey:@"cancelTitle"];

  [(PSConfirmationSpecifier *)self setCancelButton:v9];
}

- (BOOL)isDestructive
{
  v2 = [(PSSpecifier *)self propertyForKey:@"isDestructive"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAlternateDestructive
{
  v2 = [(PSSpecifier *)self propertyForKey:@"isAlternateDestructive"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEqualToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = PSConfirmationSpecifier;
  if ([(PSSpecifier *)&v19 isEqualToSpecifier:specifierCopy])
  {
    v5 = specifierCopy;
    v6 = v5;
    if (self->_title)
    {
      title = self->_title;
    }

    else
    {
      title = &stru_1EFE45030;
    }

    title = [v5 title];
    if ([(__CFString *)title isEqualToString:title])
    {
      if (self->_prompt)
      {
        prompt = self->_prompt;
      }

      else
      {
        prompt = &stru_1EFE45030;
      }

      prompt = [v6 prompt];
      if ([(__CFString *)prompt isEqualToString:prompt])
      {
        if (self->_okButton)
        {
          okButton = self->_okButton;
        }

        else
        {
          okButton = &stru_1EFE45030;
        }

        okButton = [v6 okButton];
        if ([(__CFString *)okButton isEqualToString:okButton])
        {
          if (self->_alternateButton)
          {
            alternateButton = self->_alternateButton;
          }

          else
          {
            alternateButton = &stru_1EFE45030;
          }

          alternateButton = [v6 alternateButton];
          if ([(__CFString *)alternateButton isEqualToString:alternateButton])
          {
            if (self->_cancelButton)
            {
              cancelButton = self->_cancelButton;
            }

            else
            {
              cancelButton = &stru_1EFE45030;
            }

            cancelButton = [v6 cancelButton];
            v17 = [(__CFString *)cancelButton isEqualToString:cancelButton];
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