@interface SMTUserProfileMetadata
- (SMTUserProfileMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMTUserProfileMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SMTUserProfileMetadata allocWithZone:?]];
  [(SMTUserProfileMetadata *)v4 setHeadphoneConnected:[(SMTUserProfileMetadata *)self headphoneConnected]];
  [(SMTUserProfileMetadata *)v4 setConfidence:[(SMTUserProfileMetadata *)self confidence]];
  v5 = [(SMTUserProfileMetadata *)self userProfileIdentifier];
  [(SMTUserProfileMetadata *)v4 setUserProfileIdentifier:v5];

  return v4;
}

- (SMTUserProfileMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  -[SMTUserProfileMetadata setConfidence:](self, "setConfidence:", [v4 decodeIntegerForKey:@"SMTUserProfileMetadataConfidenceCodingKey"]);
  -[SMTUserProfileMetadata setHeadphoneConnected:](self, "setHeadphoneConnected:", [v4 decodeBoolForKey:@"SMTUserProfileMetadataHeadPhoneConnectedCodingKey"]);
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SMTUserProfileMetadataUserProfileIdentifierCodingKey"];

  [(SMTUserProfileMetadata *)self setUserProfileIdentifier:v5];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SMTUserProfileMetadata confidence](self forKey:{"confidence"), @"SMTUserProfileMetadataConfidenceCodingKey"}];
  [v4 encodeBool:-[SMTUserProfileMetadata headphoneConnected](self forKey:{"headphoneConnected"), @"SMTUserProfileMetadataHeadPhoneConnectedCodingKey"}];
  v5 = [(SMTUserProfileMetadata *)self userProfileIdentifier];
  [v4 encodeObject:v5 forKey:@"SMTUserProfileMetadataUserProfileIdentifierCodingKey"];
}

@end