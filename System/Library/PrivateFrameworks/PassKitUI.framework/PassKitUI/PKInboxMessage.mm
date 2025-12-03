@interface PKInboxMessage
+ (id)accountUserInvitationInboxMessageWithAccountUserInvitation:(id)invitation familyMember:(id)member;
- (BOOL)_isEqualToInboxMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (PKInboxMessage)initWithType:(int64_t)type identifier:(id)identifier;
@end

@implementation PKInboxMessage

- (PKInboxMessage)initWithType:(int64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = PKInboxMessage;
  v7 = [(PKInboxMessage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;
  }

  return v8;
}

+ (id)accountUserInvitationInboxMessageWithAccountUserInvitation:(id)invitation familyMember:(id)member
{
  invitationCopy = invitation;
  memberCopy = member;
  v8 = [self alloc];
  applicationIdentifier = [invitationCopy applicationIdentifier];
  v10 = [v8 initWithType:0 identifier:applicationIdentifier];

  v11 = *(v10 + 32);
  *(v10 + 32) = invitationCopy;
  v12 = invitationCopy;

  v13 = *(v10 + 40);
  *(v10 + 40) = memberCopy;

  applicationState = [v12 applicationState];
  *(v10 + 8) = applicationState == 14;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKInboxMessage *)self _isEqualToInboxMessage:v5];
  }

  return v6;
}

- (BOOL)_isEqualToInboxMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy && self->_type == *(messageCopy + 2) && PKEqualObjects() && PKEqualObjects())
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