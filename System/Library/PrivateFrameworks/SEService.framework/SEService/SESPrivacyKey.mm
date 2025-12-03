@interface SESPrivacyKey
+ (id)withGroupIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier publicKey:(id)key creationDate:(id)date;
- (SESPrivacyKey)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESPrivacyKey

+ (id)withGroupIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier publicKey:(id)key creationDate:(id)date
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  keyCopy = key;
  dateCopy = date;
  v13 = objc_opt_new();
  v14 = v13[3];
  v13[3] = identifierCopy;
  v15 = identifierCopy;

  v16 = v13[2];
  v13[2] = keyIdentifierCopy;
  v17 = keyIdentifierCopy;

  v18 = v13[1];
  v13[1] = keyCopy;
  v19 = keyCopy;

  v20 = v13[4];
  v13[4] = dateCopy;

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  groupIdentifier = self->_groupIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
  [coderCopy encodeObject:self->_publicKey forKey:@"publicKey"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (SESPrivacyKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SESPrivacyKey;
  v5 = [(SESPrivacyKey *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v12;
  }

  return v5;
}

@end