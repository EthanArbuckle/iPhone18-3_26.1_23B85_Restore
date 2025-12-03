@interface SSAMSPurchase
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPurchase:(id)purchase;
- (SSAMSPurchase)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSAMSPurchase

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SSAMSPurchase;
  coderCopy = coder;
  [(AMSPurchase *)&v7 encodeWithCoder:coderCopy];
  v5 = [(SSAMSPurchase *)self accountIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"accountIdentifier"];

  mediaType = [(SSAMSPurchase *)self mediaType];
  [coderCopy encodeObject:mediaType forKey:@"mediaType"];

  [coderCopy encodeBool:-[SSAMSPurchase isPreauthenticated](self forKey:{"isPreauthenticated"), @"preauthenticated"}];
}

- (SSAMSPurchase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SSAMSPurchase;
  v5 = [(AMSPurchase *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v8;

    v5->_preauthenticated = [coderCopy decodeBoolForKey:@"preauthenticated"];
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SSAMSPurchase;
  v3 = [(AMSPurchase *)&v10 hash];
  accountIdentifier = [(SSAMSPurchase *)self accountIdentifier];
  v5 = [accountIdentifier hash];
  mediaType = [(SSAMSPurchase *)self mediaType];
  v7 = v5 ^ [mediaType hash];
  v8 = v7 ^ [(SSAMSPurchase *)self isPreauthenticated];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SSAMSPurchase *)self isEqualToPurchase:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToPurchase:(id)purchase
{
  purchaseCopy = purchase;
  uniqueIdentifier = [(AMSPurchase *)self uniqueIdentifier];
  uniqueIdentifier2 = [purchaseCopy uniqueIdentifier];
  if ([uniqueIdentifier isEqualToNumber:uniqueIdentifier2])
  {
    accountIdentifier = [(SSAMSPurchase *)self accountIdentifier];
    accountIdentifier2 = [purchaseCopy accountIdentifier];
    if ([accountIdentifier isEqualToNumber:accountIdentifier2])
    {
      mediaType = [(SSAMSPurchase *)self mediaType];
      mediaType2 = [purchaseCopy mediaType];
      if ([mediaType isEqualToString:mediaType2])
      {
        isPreauthenticated = [(SSAMSPurchase *)self isPreauthenticated];
        v12 = isPreauthenticated ^ [purchaseCopy isPreauthenticated] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end