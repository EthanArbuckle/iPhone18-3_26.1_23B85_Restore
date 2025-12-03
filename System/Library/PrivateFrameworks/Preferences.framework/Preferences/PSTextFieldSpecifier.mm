@interface PSTextFieldSpecifier
+ (id)preferenceSpecifierNamed:(id)named target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
+ (id)specifierWithSpecifier:(id)specifier;
- (BOOL)isEqualToSpecifier:(id)specifier;
@end

@implementation PSTextFieldSpecifier

+ (id)preferenceSpecifierNamed:(id)named target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  targetCopy = target;
  namedCopy = named;
  v16 = objc_alloc_init(PSTextFieldSpecifier);
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
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___PSTextFieldSpecifier;
  v5 = objc_msgSendSuper2(&v8, sel_specifierWithSpecifier_, specifierCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    placeholder = [specifierCopy placeholder];
    [v5 setPlaceholder:placeholder];
  }

  return v5;
}

- (BOOL)isEqualToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = PSTextFieldSpecifier;
  if ([(PSSpecifier *)&v9 isEqualToSpecifier:specifierCopy])
  {
    if (self->_placeholder)
    {
      placeholder = self->_placeholder;
    }

    else
    {
      placeholder = &stru_1EFE45030;
    }

    placeholder = [specifierCopy placeholder];
    v7 = [(__CFString *)placeholder isEqualToString:placeholder];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end