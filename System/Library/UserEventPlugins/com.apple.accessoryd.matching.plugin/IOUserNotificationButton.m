@interface IOUserNotificationButton
+ (id)buttonWithTitle:(id)a3;
- (IOUserNotificationButton)initWithTitle:(id)a3;
- (id)description;
@end

@implementation IOUserNotificationButton

+ (id)buttonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTitle:v4];

  return v5;
}

- (IOUserNotificationButton)initWithTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IOUserNotificationButton;
  v5 = [(IOUserNotificationButton *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;

    v5->_selected = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IOUserNotificationButton *)self title];
  v6 = [NSString stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v4, self, v5, [(IOUserNotificationButton *)self selected]];

  return v6;
}

@end