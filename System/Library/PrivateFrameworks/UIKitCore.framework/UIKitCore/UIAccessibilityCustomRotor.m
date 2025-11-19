@interface UIAccessibilityCustomRotor
- (NSString)name;
- (UIAccessibilityCustomRotor)initWithAttributedName:(NSAttributedString *)attributedName itemSearchBlock:(UIAccessibilityCustomRotorSearch)itemSearchBlock;
- (UIAccessibilityCustomRotor)initWithName:(NSString *)name itemSearchBlock:(UIAccessibilityCustomRotorSearch)itemSearchBlock;
- (UIAccessibilityCustomRotor)initWithSystemType:(UIAccessibilityCustomSystemRotorType)type itemSearchBlock:(UIAccessibilityCustomRotorSearch)itemSearchBlock;
- (id)targetElement;
- (void)setAttributedName:(NSAttributedString *)attributedName;
- (void)setName:(NSString *)name;
@end

@implementation UIAccessibilityCustomRotor

- (UIAccessibilityCustomRotor)initWithName:(NSString *)name itemSearchBlock:(UIAccessibilityCustomRotorSearch)itemSearchBlock
{
  v6 = name;
  v7 = itemSearchBlock;
  v12.receiver = self;
  v12.super_class = UIAccessibilityCustomRotor;
  v8 = [(UIAccessibilityCustomRotor *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    [(UIAccessibilityCustomRotor *)v8 setUuid:v9];

    [(UIAccessibilityCustomRotor *)v8 setName:v6];
    [(UIAccessibilityCustomRotor *)v8 setItemSearchBlock:v7];
    v10 = v8;
  }

  return v8;
}

- (UIAccessibilityCustomRotor)initWithAttributedName:(NSAttributedString *)attributedName itemSearchBlock:(UIAccessibilityCustomRotorSearch)itemSearchBlock
{
  v6 = attributedName;
  v7 = itemSearchBlock;
  v12.receiver = self;
  v12.super_class = UIAccessibilityCustomRotor;
  v8 = [(UIAccessibilityCustomRotor *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    [(UIAccessibilityCustomRotor *)v8 setUuid:v9];

    [(UIAccessibilityCustomRotor *)v8 setAttributedName:v6];
    [(UIAccessibilityCustomRotor *)v8 setItemSearchBlock:v7];
    v10 = v8;
  }

  return v8;
}

- (UIAccessibilityCustomRotor)initWithSystemType:(UIAccessibilityCustomSystemRotorType)type itemSearchBlock:(UIAccessibilityCustomRotorSearch)itemSearchBlock
{
  v9.receiver = self;
  v9.super_class = UIAccessibilityCustomRotor;
  v5 = itemSearchBlock;
  v6 = [(UIAccessibilityCustomRotor *)&v9 init];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  [(UIAccessibilityCustomRotor *)v6 setUuid:v7];

  [(UIAccessibilityCustomRotor *)v6 setSystemRotorType:type];
  [(UIAccessibilityCustomRotor *)v6 setItemSearchBlock:v5];

  return v6;
}

- (NSString)name
{
  v2 = [(UIAccessibilityCustomRotor *)self attributedName];
  v3 = [v2 string];

  return v3;
}

- (void)setName:(NSString *)name
{
  v4 = name;
  if (!v4)
  {
    v5 = objc_opt_class();
    _UIAccessibilityReportNilNameErroneouslyProvided(v5);
    v4 = &stru_1EFB14550;
  }

  v7 = v4;
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  [(UIAccessibilityCustomRotor *)self setAttributedName:v6];
}

- (void)setAttributedName:(NSAttributedString *)attributedName
{
  v4 = attributedName;
  if (!v4)
  {
    v5 = objc_opt_class();
    _UIAccessibilityReportNilNameErroneouslyProvided(v5);
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
  }

  v8 = v4;
  v6 = [(NSAttributedString *)v4 copy];
  v7 = self->_attributedName;
  self->_attributedName = v6;
}

- (id)targetElement
{
  WeakRetained = objc_loadWeakRetained(&self->targetElement);

  return WeakRetained;
}

@end