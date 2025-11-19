@interface UITextAutofillSuggestion
+ (id)autofillSuggestionWithUsername:(id)a3 password:(id)a4;
- (UITextAutofillSuggestion)initWithUsername:(id)a3 password:(id)a4;
@end

@implementation UITextAutofillSuggestion

+ (id)autofillSuggestionWithUsername:(id)a3 password:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithUsername:v7 password:v6];

  return v8;
}

- (UITextAutofillSuggestion)initWithUsername:(id)a3 password:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UITextAutofillSuggestion;
  v9 = [(UITextSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_username, a3);
    objc_storeStrong(&v10->_password, a4);
  }

  return v10;
}

@end