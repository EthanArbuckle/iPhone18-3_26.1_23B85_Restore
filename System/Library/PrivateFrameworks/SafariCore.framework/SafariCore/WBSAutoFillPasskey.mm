@interface WBSAutoFillPasskey
- (WBSAutoFillPasskey)initWithCoder:(id)coder;
- (WBSAutoFillPasskey)initWithUsername:(id)username customTitle:(id)title relyingPartyIdentifier:(id)identifier identifier:(id)a6 operationUUID:(id)d shouldRequireUserVerification:(BOOL)verification requestUsedNonEmptyAllowList:(BOOL)list;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSAutoFillPasskey

- (WBSAutoFillPasskey)initWithUsername:(id)username customTitle:(id)title relyingPartyIdentifier:(id)identifier identifier:(id)a6 operationUUID:(id)d shouldRequireUserVerification:(BOOL)verification requestUsedNonEmptyAllowList:(BOOL)list
{
  usernameCopy = username;
  titleCopy = title;
  identifierCopy = identifier;
  v18 = a6;
  dCopy = d;
  v31.receiver = self;
  v31.super_class = WBSAutoFillPasskey;
  v20 = [(WBSAutoFillPasskey *)&v31 init];
  if (v20)
  {
    v21 = [usernameCopy copy];
    username = v20->_username;
    v20->_username = v21;

    v23 = [titleCopy copy];
    customTitle = v20->_customTitle;
    v20->_customTitle = v23;

    v25 = [identifierCopy copy];
    relyingPartyIdentifier = v20->_relyingPartyIdentifier;
    v20->_relyingPartyIdentifier = v25;

    v27 = [v18 copy];
    identifier = v20->_identifier;
    v20->_identifier = v27;

    objc_storeStrong(&v20->_operationUUID, d);
    v20->_shouldRequireUserVerification = verification;
    v20->_requestUsedNonEmptyAllowList = list;
    v29 = v20;
  }

  return v20;
}

- (WBSAutoFillPasskey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customTitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationUUD"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v10 = [coderCopy decodeBoolForKey:@"shouldRequireUserVerification"];
  v11 = [coderCopy decodeBoolForKey:@"requestUsedNonEmptyAllowList"];

  LOBYTE(v14) = v11;
  v12 = [(WBSAutoFillPasskey *)self initWithUsername:v5 customTitle:v6 relyingPartyIdentifier:v7 identifier:v9 operationUUID:v8 shouldRequireUserVerification:v10 requestUsedNonEmptyAllowList:v14];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  username = self->_username;
  coderCopy = coder;
  [coderCopy encodeObject:username forKey:@"username"];
  [coderCopy encodeObject:self->_customTitle forKey:@"customTitle"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_operationUUID forKey:@"operationUUD"];
  [coderCopy encodeBool:self->_shouldRequireUserVerification forKey:@"shouldRequireUserVerification"];
  [coderCopy encodeBool:self->_requestUsedNonEmptyAllowList forKey:@"requestUsedNonEmptyAllowList"];
}

@end