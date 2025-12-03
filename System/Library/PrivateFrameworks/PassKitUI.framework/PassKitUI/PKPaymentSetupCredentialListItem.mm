@interface PKPaymentSetupCredentialListItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKPaymentSetupCredentialListItem)initWithCredential:(id)credential;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PKPaymentSetupCredentialListItem

- (PKPaymentSetupCredentialListItem)initWithCredential:(id)credential
{
  credentialCopy = credential;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupCredentialListItem;
  v6 = [(PKPaymentSetupListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_credential, credential);
    v7->_isCellDisabled = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v8.receiver = self;
    v8.super_class = PKPaymentSetupCredentialListItem;
    v6 = [(PKPaymentSetupListItem *)&v8 isEqual:v5]&& self->_lastCheckedCredentialHash == v5[10] && PKEqualObjects() && self->_isAvailable == *(v5 + 64) && self->_isUnavailable == *(v5 + 65) && self->_isRefund == *(v5 + 66) && self->_isBeingProvisioned == *(v5 + 67) && self->_isCellDisabled == *(v5 + 68);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6.receiver = self;
  v6.super_class = PKPaymentSetupCredentialListItem;
  [(PKPaymentSetupListItem *)&v6 hash];
  PKCombinedHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  v4 = PKIntegerHash();

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupCredentialListItem;
  v4 = [(PKPaymentSetupListItem *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 9, self->_credential);
  objc_storeStrong(v4 + 11, self->_passSnapshot);
  *(v4 + 64) = self->_isAvailable;
  *(v4 + 65) = self->_isUnavailable;
  *(v4 + 66) = self->_isRefund;
  *(v4 + 67) = self->_isBeingProvisioned;
  *(v4 + 68) = self->_isCellDisabled;
  *(v4 + 69) = self->_isSnapshotFetchInProgress;
  v4[10] = self->_lastCheckedCredentialHash;
  return v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"credential: '%@'; ", self->_credential];
  if (self->_isAvailable)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  [v3 appendFormat:@"isAvailable: '%@'; ", v4];
  if (self->_isUnavailable)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  [v3 appendFormat:@"isUnavailable: '%@'; ", v5];
  if (self->_isRefund)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  [v3 appendFormat:@"isRefund: '%@'; ", v6];
  if (self->_isBeingProvisioned)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  [v3 appendFormat:@"isBeingProvisioned: '%@'; ", v7];
  if (self->_isCellDisabled)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  [v3 appendFormat:@"isCellDisabled: '%@'; ", v8];
  if (self->_isSnapshotFetchInProgress)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  [v3 appendFormat:@"isSnapshotFetchInProgress: '%@'; ", v9];
  [v3 appendFormat:@">"];

  return v3;
}

@end