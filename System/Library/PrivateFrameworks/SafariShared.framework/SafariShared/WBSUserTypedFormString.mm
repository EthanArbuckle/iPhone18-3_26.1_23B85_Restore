@interface WBSUserTypedFormString
- (WBSUserTypedFormString)initWithUserTypedString:(id)string;
@end

@implementation WBSUserTypedFormString

- (WBSUserTypedFormString)initWithUserTypedString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = WBSUserTypedFormString;
  v5 = [(WBSUserTypedFormString *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    userTypedString = v5->_userTypedString;
    v5->_userTypedString = v6;

    v8 = v5;
  }

  return v5;
}

@end