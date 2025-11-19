@interface SESPrivacyKey
+ (id)withGroupIdentifier:(id)a3 keyIdentifier:(id)a4 publicKey:(id)a5 creationDate:(id)a6;
- (SESPrivacyKey)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SESPrivacyKey

+ (id)withGroupIdentifier:(id)a3 keyIdentifier:(id)a4 publicKey:(id)a5 creationDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = v13[3];
  v13[3] = v9;
  v15 = v9;

  v16 = v13[2];
  v13[2] = v10;
  v17 = v10;

  v18 = v13[1];
  v13[1] = v11;
  v19 = v11;

  v20 = v13[4];
  v13[4] = v12;

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  groupIdentifier = self->_groupIdentifier;
  v5 = a3;
  [v5 encodeObject:groupIdentifier forKey:@"groupIdentifier"];
  [v5 encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
  [v5 encodeObject:self->_publicKey forKey:@"publicKey"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (SESPrivacyKey)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SESPrivacyKey;
  v5 = [(SESPrivacyKey *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v12;
  }

  return v5;
}

@end