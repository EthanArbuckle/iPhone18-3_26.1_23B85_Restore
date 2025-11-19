@interface PKAccountInvitationAccessLevelOption
- (PKAccountInvitationAccessLevelOption)initWithAccessLevel:(unint64_t)a3;
@end

@implementation PKAccountInvitationAccessLevelOption

- (PKAccountInvitationAccessLevelOption)initWithAccessLevel:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKAccountInvitationAccessLevelOption;
  result = [(PKAccountInvitationAccessLevelOption *)&v5 init];
  if (result)
  {
    result->_accessLevel = a3;
  }

  return result;
}

@end