@interface UITextAutofillSuggestion
+ (id)autofillSuggestionWithUsername:(id)username password:(id)password;
- (UITextAutofillSuggestion)initWithUsername:(id)username password:(id)password;
@end

@implementation UITextAutofillSuggestion

+ (id)autofillSuggestionWithUsername:(id)username password:(id)password
{
  passwordCopy = password;
  usernameCopy = username;
  v8 = [[self alloc] initWithUsername:usernameCopy password:passwordCopy];

  return v8;
}

- (UITextAutofillSuggestion)initWithUsername:(id)username password:(id)password
{
  usernameCopy = username;
  passwordCopy = password;
  v12.receiver = self;
  v12.super_class = UITextAutofillSuggestion;
  v9 = [(UITextSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_username, username);
    objc_storeStrong(&v10->_password, password);
  }

  return v10;
}

@end