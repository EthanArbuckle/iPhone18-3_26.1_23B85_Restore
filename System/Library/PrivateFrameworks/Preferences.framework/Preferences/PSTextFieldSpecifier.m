@interface PSTextFieldSpecifier
+ (id)preferenceSpecifierNamed:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
+ (id)specifierWithSpecifier:(id)a3;
- (BOOL)isEqualToSpecifier:(id)a3;
@end

@implementation PSTextFieldSpecifier

+ (id)preferenceSpecifierNamed:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(PSTextFieldSpecifier);
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
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___PSTextFieldSpecifier;
  v5 = objc_msgSendSuper2(&v8, sel_specifierWithSpecifier_, v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 placeholder];
    [v5 setPlaceholder:v6];
  }

  return v5;
}

- (BOOL)isEqualToSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSTextFieldSpecifier;
  if ([(PSSpecifier *)&v9 isEqualToSpecifier:v4])
  {
    if (self->_placeholder)
    {
      placeholder = self->_placeholder;
    }

    else
    {
      placeholder = &stru_1EFE45030;
    }

    v6 = [v4 placeholder];
    v7 = [(__CFString *)placeholder isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end