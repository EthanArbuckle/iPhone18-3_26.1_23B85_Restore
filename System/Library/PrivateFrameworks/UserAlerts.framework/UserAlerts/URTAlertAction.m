@interface URTAlertAction
+ (id)actionWithTitle:(id)a3 handler:(id)a4;
- (URTAlertAction)initWithCoder:(id)a3;
- (URTAlertAction)initWithTitle:(id)a3 handler:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation URTAlertAction

+ (id)actionWithTitle:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 handler:v6];

  return v8;
}

- (URTAlertAction)initWithTitle:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = URTAlertAction;
  v9 = [(URTAlertAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    v11 = MEMORY[0x2743AB1A0](v8);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (URTAlertAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = URTAlertAction;
  v5 = [(URTAlertAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertActionTitleKey"];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(URTAlertAction *)self title];
  [v4 encodeObject:v5 forKey:@"URTAlertActionTitleKey"];
}

@end