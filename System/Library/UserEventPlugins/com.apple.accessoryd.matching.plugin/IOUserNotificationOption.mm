@interface IOUserNotificationOption
- (IOUserNotificationOption)initWithTitle:(id)title selected:(BOOL)selected;
- (id)description;
@end

@implementation IOUserNotificationOption

- (IOUserNotificationOption)initWithTitle:(id)title selected:(BOOL)selected
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = IOUserNotificationOption;
  v7 = [(IOUserNotificationOption *)&v11 init];
  if (v7)
  {
    v8 = [titleCopy copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_selected = selected;
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  title = [(IOUserNotificationOption *)self title];
  v6 = [NSString stringWithFormat:@"<%@: %p, title: %@, selected: %d>", v4, self, title, [(IOUserNotificationOption *)self selected]];

  return v6;
}

@end