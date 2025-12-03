@interface RMUIInteractiveProfileErrorViewModel
- (RMUIInteractiveProfileErrorViewModel)initWithCoder:(id)coder;
- (RMUIInteractiveProfileErrorViewModel)initWithError:(id)error isActivating:(BOOL)activating;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMUIInteractiveProfileErrorViewModel

- (RMUIInteractiveProfileErrorViewModel)initWithError:(id)error isActivating:(BOOL)activating
{
  activatingCopy = activating;
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = RMUIInteractiveProfileErrorViewModel;
  v7 = [(RMUIInteractiveProfileErrorViewModel *)&v13 init];
  if (v7)
  {
    if (activatingCopy)
    {
      v8 = @"RMUI_PROFILE_ACTIVATE_ERROR_TITLE";
    }

    else
    {
      v8 = @"RMUI_PROFILE_DEACTIVATE_ERROR_TITLE";
    }

    v9 = [RMUILocalizable string:v8];
    [(RMUIInteractiveProfileErrorViewModel *)v7 setTitle:v9];

    localizedDescription = [errorCopy localizedDescription];
    [(RMUIInteractiveProfileErrorViewModel *)v7 setMessage:localizedDescription];

    v11 = [RMUILocalizable string:@"RMUI_PROFILE_ERROR_OK"];
    [(RMUIInteractiveProfileErrorViewModel *)v7 setOkText:v11];

    [(RMUIInteractiveProfileErrorViewModel *)v7 setError:errorCopy];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(RMUIInteractiveProfileErrorViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  message = [(RMUIInteractiveProfileErrorViewModel *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  okText = [(RMUIInteractiveProfileErrorViewModel *)self okText];
  [coderCopy encodeObject:okText forKey:@"okText"];

  error = [(RMUIInteractiveProfileErrorViewModel *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (RMUIInteractiveProfileErrorViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = RMUIInteractiveProfileErrorViewModel;
  v5 = [(RMUIInteractiveProfileErrorViewModel *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"message"];
    message = v5->_message;
    v5->_message = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"okText"];
    okText = v5->_okText;
    v5->_okText = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"error"];
    error = v5->_error;
    v5->_error = v16;
  }

  return v5;
}

@end