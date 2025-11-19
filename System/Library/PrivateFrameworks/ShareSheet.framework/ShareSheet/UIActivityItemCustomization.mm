@interface UIActivityItemCustomization
+ (id)actionCustomizationWithTitle:(id)a3 identifier:(id)a4 handler:(id)a5;
+ (id)pickerCustomizationWithTitle:(id)a3 identifier:(id)a4 options:(id)a5 selectedOptionIndex:(int64_t)a6 valueChangedHandler:(id)a7;
+ (id)switchCustomizationWithTitle:(id)a3 identifier:(id)a4 value:(BOOL)a5 valueChangedHandler:(id)a6;
- (id)_initWithTitle:(id)a3 identifier:(id)a4;
@end

@implementation UIActivityItemCustomization

+ (id)switchCustomizationWithTitle:(id)a3 identifier:(id)a4 value:(BOOL)a5 valueChangedHandler:(id)a6
{
  v7 = a4;
  v8 = a3;
  v9 = [[UIActivityItemCustomization alloc] _initWithTitle:v8 identifier:v7];

  return v9;
}

+ (id)pickerCustomizationWithTitle:(id)a3 identifier:(id)a4 options:(id)a5 selectedOptionIndex:(int64_t)a6 valueChangedHandler:(id)a7
{
  v8 = a4;
  v9 = a3;
  v10 = [[UIActivityItemCustomization alloc] _initWithTitle:v9 identifier:v8];

  return v10;
}

+ (id)actionCustomizationWithTitle:(id)a3 identifier:(id)a4 handler:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[UIActivityItemCustomization alloc] _initWithTitle:v7 identifier:v6];

  return v8;
}

- (id)_initWithTitle:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = UIActivityItemCustomization;
  v8 = [(UIActivityItemCustomization *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;

    v8->_enabled = 1;
    v13 = v8;
  }

  return v8;
}

@end