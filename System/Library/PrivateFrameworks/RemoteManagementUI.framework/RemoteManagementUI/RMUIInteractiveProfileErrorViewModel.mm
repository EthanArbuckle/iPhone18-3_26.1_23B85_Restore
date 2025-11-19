@interface RMUIInteractiveProfileErrorViewModel
- (RMUIInteractiveProfileErrorViewModel)initWithCoder:(id)a3;
- (RMUIInteractiveProfileErrorViewModel)initWithError:(id)a3 isActivating:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMUIInteractiveProfileErrorViewModel

- (RMUIInteractiveProfileErrorViewModel)initWithError:(id)a3 isActivating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13.receiver = self;
  v13.super_class = RMUIInteractiveProfileErrorViewModel;
  v7 = [(RMUIInteractiveProfileErrorViewModel *)&v13 init];
  if (v7)
  {
    if (v4)
    {
      v8 = @"RMUI_PROFILE_ACTIVATE_ERROR_TITLE";
    }

    else
    {
      v8 = @"RMUI_PROFILE_DEACTIVATE_ERROR_TITLE";
    }

    v9 = [RMUILocalizable string:v8];
    [(RMUIInteractiveProfileErrorViewModel *)v7 setTitle:v9];

    v10 = [v6 localizedDescription];
    [(RMUIInteractiveProfileErrorViewModel *)v7 setMessage:v10];

    v11 = [RMUILocalizable string:@"RMUI_PROFILE_ERROR_OK"];
    [(RMUIInteractiveProfileErrorViewModel *)v7 setOkText:v11];

    [(RMUIInteractiveProfileErrorViewModel *)v7 setError:v6];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMUIInteractiveProfileErrorViewModel *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(RMUIInteractiveProfileErrorViewModel *)self message];
  [v4 encodeObject:v6 forKey:@"message"];

  v7 = [(RMUIInteractiveProfileErrorViewModel *)self okText];
  [v4 encodeObject:v7 forKey:@"okText"];

  v8 = [(RMUIInteractiveProfileErrorViewModel *)self error];
  [v4 encodeObject:v8 forKey:@"error"];
}

- (RMUIInteractiveProfileErrorViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = RMUIInteractiveProfileErrorViewModel;
  v5 = [(RMUIInteractiveProfileErrorViewModel *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"message"];
    message = v5->_message;
    v5->_message = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"okText"];
    okText = v5->_okText;
    v5->_okText = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"error"];
    error = v5->_error;
    v5->_error = v16;
  }

  return v5;
}

@end