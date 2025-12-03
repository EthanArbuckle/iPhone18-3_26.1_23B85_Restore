@interface PKIdentityButton
+ (PKIdentityButton)buttonWithLabel:(PKIdentityButtonLabel)label style:(PKIdentityButtonStyle)style;
- (PKIdentityButton)init;
- (PKIdentityButton)initWithCoder:(id)coder;
- (PKIdentityButton)initWithLabel:(PKIdentityButtonLabel)label style:(PKIdentityButtonStyle)style;
@end

@implementation PKIdentityButton

+ (PKIdentityButton)buttonWithLabel:(PKIdentityButtonLabel)label style:(PKIdentityButtonStyle)style
{
  v4 = [objc_alloc(objc_opt_class()) initWithLabel:label style:style];

  return v4;
}

- (PKIdentityButton)init
{
  v3 = objc_alloc_init(_PKIdentityButton);

  return v3;
}

- (PKIdentityButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[_PKIdentityButton alloc] initWithCoder:coderCopy];

  return v5;
}

- (PKIdentityButton)initWithLabel:(PKIdentityButtonLabel)label style:(PKIdentityButtonStyle)style
{
  v5 = [[_PKIdentityButton alloc] initWithLabel:label style:style];

  return v5;
}

@end