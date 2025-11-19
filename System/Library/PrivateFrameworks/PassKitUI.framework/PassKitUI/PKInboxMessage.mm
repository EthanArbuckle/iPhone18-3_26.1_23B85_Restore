@interface PKInboxMessage
+ (id)accountUserInvitationInboxMessageWithAccountUserInvitation:(id)a3 familyMember:(id)a4;
- (BOOL)_isEqualToInboxMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKInboxMessage)initWithType:(int64_t)a3 identifier:(id)a4;
@end

@implementation PKInboxMessage

- (PKInboxMessage)initWithType:(int64_t)a3 identifier:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PKInboxMessage;
  v7 = [(PKInboxMessage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;
  }

  return v8;
}

+ (id)accountUserInvitationInboxMessageWithAccountUserInvitation:(id)a3 familyMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = [v6 applicationIdentifier];
  v10 = [v8 initWithType:0 identifier:v9];

  v11 = *(v10 + 32);
  *(v10 + 32) = v6;
  v12 = v6;

  v13 = *(v10 + 40);
  *(v10 + 40) = v7;

  v14 = [v12 applicationState];
  *(v10 + 8) = v14 == 14;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKInboxMessage *)self _isEqualToInboxMessage:v5];
  }

  return v6;
}

- (BOOL)_isEqualToInboxMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_type == *(v4 + 2) && PKEqualObjects() && PKEqualObjects())
  {
    v6 = PKEqualObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end