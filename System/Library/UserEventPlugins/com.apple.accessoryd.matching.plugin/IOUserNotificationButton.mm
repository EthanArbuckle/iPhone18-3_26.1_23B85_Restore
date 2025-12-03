@interface IOUserNotificationButton
+ (id)buttonWithTitle:(id)title;
- (IOUserNotificationButton)initWithTitle:(id)title;
- (id)description;
@end

@implementation IOUserNotificationButton

+ (id)buttonWithTitle:(id)title
{
  titleCopy = title;
  v5 = [[self alloc] initWithTitle:titleCopy];

  return v5;
}

- (IOUserNotificationButton)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = IOUserNotificationButton;
  v5 = [(IOUserNotificationButton *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
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
  title = [(IOUserNotificationButton *)self title];
  v6 = [NSString stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v4, self, title, [(IOUserNotificationButton *)self selected]];

  return v6;
}

@end