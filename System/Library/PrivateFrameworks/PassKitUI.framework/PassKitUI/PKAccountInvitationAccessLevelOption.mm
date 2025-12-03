@interface PKAccountInvitationAccessLevelOption
- (PKAccountInvitationAccessLevelOption)initWithAccessLevel:(unint64_t)level;
@end

@implementation PKAccountInvitationAccessLevelOption

- (PKAccountInvitationAccessLevelOption)initWithAccessLevel:(unint64_t)level
{
  v5.receiver = self;
  v5.super_class = PKAccountInvitationAccessLevelOption;
  result = [(PKAccountInvitationAccessLevelOption *)&v5 init];
  if (result)
  {
    result->_accessLevel = level;
  }

  return result;
}

@end