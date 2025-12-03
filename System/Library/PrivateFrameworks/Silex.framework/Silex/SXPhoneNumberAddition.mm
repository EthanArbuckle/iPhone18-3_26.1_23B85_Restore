@interface SXPhoneNumberAddition
- (id)action;
@end

@implementation SXPhoneNumberAddition

- (id)action
{
  v3 = [SXPhoneNumberAction alloc];
  phoneNumber = [(SXPhoneNumberAddition *)self phoneNumber];
  v5 = [(SXPhoneNumberAction *)v3 initWithPhoneNumber:phoneNumber];

  return v5;
}

@end