@interface UIActivityItemCustomization
+ (id)actionCustomizationWithTitle:(id)title identifier:(id)identifier handler:(id)handler;
+ (id)pickerCustomizationWithTitle:(id)title identifier:(id)identifier options:(id)options selectedOptionIndex:(int64_t)index valueChangedHandler:(id)handler;
+ (id)switchCustomizationWithTitle:(id)title identifier:(id)identifier value:(BOOL)value valueChangedHandler:(id)handler;
- (id)_initWithTitle:(id)title identifier:(id)identifier;
@end

@implementation UIActivityItemCustomization

+ (id)switchCustomizationWithTitle:(id)title identifier:(id)identifier value:(BOOL)value valueChangedHandler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  v9 = [[UIActivityItemCustomization alloc] _initWithTitle:titleCopy identifier:identifierCopy];

  return v9;
}

+ (id)pickerCustomizationWithTitle:(id)title identifier:(id)identifier options:(id)options selectedOptionIndex:(int64_t)index valueChangedHandler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  v10 = [[UIActivityItemCustomization alloc] _initWithTitle:titleCopy identifier:identifierCopy];

  return v10;
}

+ (id)actionCustomizationWithTitle:(id)title identifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  v8 = [[UIActivityItemCustomization alloc] _initWithTitle:titleCopy identifier:identifierCopy];

  return v8;
}

- (id)_initWithTitle:(id)title identifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = UIActivityItemCustomization;
  v8 = [(UIActivityItemCustomization *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;

    v8->_enabled = 1;
    v13 = v8;
  }

  return v8;
}

@end