@interface URTAlertAction
+ (id)actionWithTitle:(id)title handler:(id)handler;
- (URTAlertAction)initWithCoder:(id)coder;
- (URTAlertAction)initWithTitle:(id)title handler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation URTAlertAction

+ (id)actionWithTitle:(id)title handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy handler:handlerCopy];

  return v8;
}

- (URTAlertAction)initWithTitle:(id)title handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = URTAlertAction;
  v9 = [(URTAlertAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    v11 = MEMORY[0x2743AB1A0](handlerCopy);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (URTAlertAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = URTAlertAction;
  v5 = [(URTAlertAction *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertActionTitleKey"];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(URTAlertAction *)self title];
  [coderCopy encodeObject:title forKey:@"URTAlertActionTitleKey"];
}

@end