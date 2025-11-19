@interface SXPhoneNumberAddition
- (id)action;
@end

@implementation SXPhoneNumberAddition

- (id)action
{
  v3 = [SXPhoneNumberAction alloc];
  v4 = [(SXPhoneNumberAddition *)self phoneNumber];
  v5 = [(SXPhoneNumberAction *)v3 initWithPhoneNumber:v4];

  return v5;
}

@end