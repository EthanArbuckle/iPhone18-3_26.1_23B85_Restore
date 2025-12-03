@interface SMTUserProfileMetadata
- (SMTUserProfileMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTUserProfileMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SMTUserProfileMetadata allocWithZone:?]];
  [(SMTUserProfileMetadata *)v4 setHeadphoneConnected:[(SMTUserProfileMetadata *)self headphoneConnected]];
  [(SMTUserProfileMetadata *)v4 setConfidence:[(SMTUserProfileMetadata *)self confidence]];
  userProfileIdentifier = [(SMTUserProfileMetadata *)self userProfileIdentifier];
  [(SMTUserProfileMetadata *)v4 setUserProfileIdentifier:userProfileIdentifier];

  return v4;
}

- (SMTUserProfileMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  -[SMTUserProfileMetadata setConfidence:](self, "setConfidence:", [coderCopy decodeIntegerForKey:@"SMTUserProfileMetadataConfidenceCodingKey"]);
  -[SMTUserProfileMetadata setHeadphoneConnected:](self, "setHeadphoneConnected:", [coderCopy decodeBoolForKey:@"SMTUserProfileMetadataHeadPhoneConnectedCodingKey"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTUserProfileMetadataUserProfileIdentifierCodingKey"];

  [(SMTUserProfileMetadata *)self setUserProfileIdentifier:v5];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SMTUserProfileMetadata confidence](self forKey:{"confidence"), @"SMTUserProfileMetadataConfidenceCodingKey"}];
  [coderCopy encodeBool:-[SMTUserProfileMetadata headphoneConnected](self forKey:{"headphoneConnected"), @"SMTUserProfileMetadataHeadPhoneConnectedCodingKey"}];
  userProfileIdentifier = [(SMTUserProfileMetadata *)self userProfileIdentifier];
  [coderCopy encodeObject:userProfileIdentifier forKey:@"SMTUserProfileMetadataUserProfileIdentifierCodingKey"];
}

@end