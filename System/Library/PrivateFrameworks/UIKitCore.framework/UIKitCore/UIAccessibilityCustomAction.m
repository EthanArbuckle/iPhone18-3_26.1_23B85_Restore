@interface UIAccessibilityCustomAction
- (NSString)name;
- (UIAccessibilityCustomAction)init;
- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName actionHandler:(UIAccessibilityCustomActionHandler)actionHandler;
- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName image:(UIImage *)image actionHandler:(UIAccessibilityCustomActionHandler)actionHandler;
- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName image:(UIImage *)image target:(id)target selector:(SEL)selector;
- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName target:(id)target selector:(SEL)selector;
- (UIAccessibilityCustomAction)initWithName:(NSString *)name actionHandler:(UIAccessibilityCustomActionHandler)actionHandler;
- (UIAccessibilityCustomAction)initWithName:(NSString *)name image:(UIImage *)image actionHandler:(UIAccessibilityCustomActionHandler)actionHandler;
- (UIAccessibilityCustomAction)initWithName:(NSString *)name image:(UIImage *)image target:(id)target selector:(SEL)selector;
- (UIAccessibilityCustomAction)initWithName:(NSString *)name target:(id)target selector:(SEL)selector;
- (id)target;
- (void)setAttributedName:(NSAttributedString *)attributedName;
- (void)setName:(NSString *)name;
@end

@implementation UIAccessibilityCustomAction

- (UIAccessibilityCustomAction)init
{
  if (dyld_program_sdk_at_least())
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Please use the designated initializer"];
    return 0;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIAccessibilityCustomAction;
    return [(UIAccessibilityCustomAction *)&v4 init];
  }
}

- (UIAccessibilityCustomAction)initWithName:(NSString *)name image:(UIImage *)image target:(id)target selector:(SEL)selector
{
  v10 = name;
  v11 = image;
  v12 = target;
  v16.receiver = self;
  v16.super_class = UIAccessibilityCustomAction;
  v13 = [(UIAccessibilityCustomAction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(UIAccessibilityCustomAction *)v13 setName:v10];
    [(UIAccessibilityCustomAction *)v14 setImage:v11];
    [(UIAccessibilityCustomAction *)v14 setTarget:v12];
    [(UIAccessibilityCustomAction *)v14 setSelector:selector];
  }

  return v14;
}

- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName image:(UIImage *)image target:(id)target selector:(SEL)selector
{
  v10 = attributedName;
  v11 = image;
  v12 = target;
  v16.receiver = self;
  v16.super_class = UIAccessibilityCustomAction;
  v13 = [(UIAccessibilityCustomAction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(UIAccessibilityCustomAction *)v13 setAttributedName:v10];
    [(UIAccessibilityCustomAction *)v14 setImage:v11];
    [(UIAccessibilityCustomAction *)v14 setTarget:v12];
    [(UIAccessibilityCustomAction *)v14 setSelector:selector];
  }

  return v14;
}

- (UIAccessibilityCustomAction)initWithName:(NSString *)name image:(UIImage *)image actionHandler:(UIAccessibilityCustomActionHandler)actionHandler
{
  v8 = name;
  v9 = image;
  v10 = actionHandler;
  v14.receiver = self;
  v14.super_class = UIAccessibilityCustomAction;
  v11 = [(UIAccessibilityCustomAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(UIAccessibilityCustomAction *)v11 setName:v8];
    [(UIAccessibilityCustomAction *)v12 setImage:v9];
    [(UIAccessibilityCustomAction *)v12 setActionHandler:v10];
  }

  return v12;
}

- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName image:(UIImage *)image actionHandler:(UIAccessibilityCustomActionHandler)actionHandler
{
  v8 = attributedName;
  v9 = image;
  v10 = actionHandler;
  v14.receiver = self;
  v14.super_class = UIAccessibilityCustomAction;
  v11 = [(UIAccessibilityCustomAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(UIAccessibilityCustomAction *)v11 setAttributedName:v8];
    [(UIAccessibilityCustomAction *)v12 setImage:v9];
    [(UIAccessibilityCustomAction *)v12 setActionHandler:v10];
  }

  return v12;
}

- (UIAccessibilityCustomAction)initWithName:(NSString *)name target:(id)target selector:(SEL)selector
{
  v8 = name;
  v9 = target;
  v13.receiver = self;
  v13.super_class = UIAccessibilityCustomAction;
  v10 = [(UIAccessibilityCustomAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UIAccessibilityCustomAction *)v10 setName:v8];
    [(UIAccessibilityCustomAction *)v11 setTarget:v9];
    [(UIAccessibilityCustomAction *)v11 setSelector:selector];
  }

  return v11;
}

- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName target:(id)target selector:(SEL)selector
{
  v8 = attributedName;
  v9 = target;
  v13.receiver = self;
  v13.super_class = UIAccessibilityCustomAction;
  v10 = [(UIAccessibilityCustomAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UIAccessibilityCustomAction *)v10 setAttributedName:v8];
    [(UIAccessibilityCustomAction *)v11 setTarget:v9];
    [(UIAccessibilityCustomAction *)v11 setSelector:selector];
  }

  return v11;
}

- (UIAccessibilityCustomAction)initWithName:(NSString *)name actionHandler:(UIAccessibilityCustomActionHandler)actionHandler
{
  v6 = name;
  v7 = actionHandler;
  v11.receiver = self;
  v11.super_class = UIAccessibilityCustomAction;
  v8 = [(UIAccessibilityCustomAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(UIAccessibilityCustomAction *)v8 setName:v6];
    [(UIAccessibilityCustomAction *)v9 setActionHandler:v7];
  }

  return v9;
}

- (UIAccessibilityCustomAction)initWithAttributedName:(NSAttributedString *)attributedName actionHandler:(UIAccessibilityCustomActionHandler)actionHandler
{
  v6 = attributedName;
  v7 = actionHandler;
  v11.receiver = self;
  v11.super_class = UIAccessibilityCustomAction;
  v8 = [(UIAccessibilityCustomAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(UIAccessibilityCustomAction *)v8 setAttributedName:v6];
    [(UIAccessibilityCustomAction *)v9 setActionHandler:v7];
  }

  return v9;
}

- (NSString)name
{
  v2 = [(UIAccessibilityCustomAction *)self attributedName];
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
  [(UIAccessibilityCustomAction *)self setAttributedName:v6];
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

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end