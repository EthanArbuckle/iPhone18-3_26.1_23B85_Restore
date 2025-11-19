@interface UICommandAlternate
+ (UICommandAlternate)alternateWithTitle:(NSString *)title action:(SEL)action modifierFlags:(UIKeyModifierFlags)modifierFlags;
- (BOOL)isEqual:(id)a3;
- (UICommandAlternate)initWithCoder:(NSCoder *)coder;
- (UICommandAlternate)initWithTitle:(id)a3 action:(SEL)a4 modifierFlags:(int64_t)a5;
- (id)_resolvedTargetFromFirstTarget:(id)a3 sender:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UICommandAlternate

+ (UICommandAlternate)alternateWithTitle:(NSString *)title action:(SEL)action modifierFlags:(UIKeyModifierFlags)modifierFlags
{
  v7 = title;
  v8 = [[UICommandAlternate alloc] initWithTitle:v7 action:action modifierFlags:modifierFlags];

  return v8;
}

- (UICommandAlternate)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v10.receiver = self;
  v10.super_class = UICommandAlternate;
  v5 = [(UICommandAlternate *)&v10 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = NSSelectorFromString(v8);

    v5->_modifierFlags = [(NSCoder *)v4 decodeIntegerForKey:@"modifierFlags"];
  }

  return v5;
}

- (UICommandAlternate)initWithTitle:(id)a3 action:(SEL)a4 modifierFlags:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = UICommandAlternate;
  v9 = [(UICommandAlternate *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    title = v9->_title;
    v9->_title = v10;

    v9->_action = a4;
    v9->_modifierFlags = a5;
  }

  return v9;
}

- (id)_resolvedTargetFromFirstTarget:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 __isKindOfUIResponder])
  {
    objc_storeStrong(&self->_sender, a4);
    v8 = [v6 targetForAction:self->_action withSender:self];
    sender = self->_sender;
    self->_sender = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v6 = a3;
  [v6 encodeObject:title forKey:@"title"];
  v5 = NSStringFromSelector(self->_action);
  [v6 encodeObject:v5 forKey:@"action"];

  [v6 encodeInteger:self->_modifierFlags forKey:@"modifierFlags"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_modifierFlags == v4[3];

  return v5;
}

@end