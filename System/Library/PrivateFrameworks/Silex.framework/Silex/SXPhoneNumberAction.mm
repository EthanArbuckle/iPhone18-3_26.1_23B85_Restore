@interface SXPhoneNumberAction
- (SXPhoneNumberAction)initWithPhoneNumber:(id)number;
@end

@implementation SXPhoneNumberAction

- (SXPhoneNumberAction)initWithPhoneNumber:(id)number
{
  numberCopy = number;
  v9.receiver = self;
  v9.super_class = SXPhoneNumberAction;
  v6 = [(SXPhoneNumberAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_phoneNumber, number);
  }

  return v7;
}

@end