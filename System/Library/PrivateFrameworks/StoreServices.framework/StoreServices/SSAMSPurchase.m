@interface SSAMSPurchase
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPurchase:(id)a3;
- (SSAMSPurchase)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSAMSPurchase

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SSAMSPurchase;
  v4 = a3;
  [(AMSPurchase *)&v7 encodeWithCoder:v4];
  v5 = [(SSAMSPurchase *)self accountIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"accountIdentifier"];

  v6 = [(SSAMSPurchase *)self mediaType];
  [v4 encodeObject:v6 forKey:@"mediaType"];

  [v4 encodeBool:-[SSAMSPurchase isPreauthenticated](self forKey:{"isPreauthenticated"), @"preauthenticated"}];
}

- (SSAMSPurchase)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SSAMSPurchase;
  v5 = [(AMSPurchase *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v8;

    v5->_preauthenticated = [v4 decodeBoolForKey:@"preauthenticated"];
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SSAMSPurchase;
  v3 = [(AMSPurchase *)&v10 hash];
  v4 = [(SSAMSPurchase *)self accountIdentifier];
  v5 = [v4 hash];
  v6 = [(SSAMSPurchase *)self mediaType];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SSAMSPurchase *)self isPreauthenticated];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (BOOL)isEqualToPurchase:(id)a3
{
  v4 = a3;
  v5 = [(AMSPurchase *)self uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];
  if ([v5 isEqualToNumber:v6])
  {
    v7 = [(SSAMSPurchase *)self accountIdentifier];
    v8 = [v4 accountIdentifier];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(SSAMSPurchase *)self mediaType];
      v10 = [v4 mediaType];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(SSAMSPurchase *)self isPreauthenticated];
        v12 = v11 ^ [v4 isPreauthenticated] ^ 1;
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