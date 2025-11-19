@interface IOUserNotificationOption
- (IOUserNotificationOption)initWithTitle:(id)a3 selected:(BOOL)a4;
- (id)description;
@end

@implementation IOUserNotificationOption

- (IOUserNotificationOption)initWithTitle:(id)a3 selected:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = IOUserNotificationOption;
  v7 = [(IOUserNotificationOption *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_selected = a4;
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IOUserNotificationOption *)self title];
  v6 = [NSString stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v4, self, v5, [(IOUserNotificationOption *)self selected]];

  return v6;
}

@end