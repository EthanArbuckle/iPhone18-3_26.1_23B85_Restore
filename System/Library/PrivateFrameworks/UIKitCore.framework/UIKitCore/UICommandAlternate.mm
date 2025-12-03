@interface UICommandAlternate
+ (UICommandAlternate)alternateWithTitle:(NSString *)title action:(SEL)action modifierFlags:(UIKeyModifierFlags)modifierFlags;
- (BOOL)isEqual:(id)equal;
- (UICommandAlternate)initWithCoder:(NSCoder *)coder;
- (UICommandAlternate)initWithTitle:(id)title action:(SEL)action modifierFlags:(int64_t)flags;
- (id)_resolvedTargetFromFirstTarget:(id)target sender:(id)sender;
- (void)encodeWithCoder:(id)coder;
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

- (UICommandAlternate)initWithTitle:(id)title action:(SEL)action modifierFlags:(int64_t)flags
{
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = UICommandAlternate;
  v9 = [(UICommandAlternate *)&v13 init];
  if (v9)
  {
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;

    v9->_action = action;
    v9->_modifierFlags = flags;
  }

  return v9;
}

- (id)_resolvedTargetFromFirstTarget:(id)target sender:(id)sender
{
  targetCopy = target;
  senderCopy = sender;
  if ([targetCopy __isKindOfUIResponder])
  {
    objc_storeStrong(&self->_sender, sender);
    v8 = [targetCopy targetForAction:self->_action withSender:self];
    sender = self->_sender;
    self->_sender = 0;
  }

  else
  {
    v8 = targetCopy;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  v5 = NSStringFromSelector(self->_action);
  [coderCopy encodeObject:v5 forKey:@"action"];

  [coderCopy encodeInteger:self->_modifierFlags forKey:@"modifierFlags"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_modifierFlags == equalCopy[3];

  return v5;
}

@end