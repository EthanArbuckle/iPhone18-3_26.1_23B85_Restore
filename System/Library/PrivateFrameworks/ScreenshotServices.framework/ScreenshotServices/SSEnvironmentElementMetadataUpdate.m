@interface SSEnvironmentElementMetadataUpdate
- (BSSettings)bsSettings;
- (NSString)loggableDescription;
- (SSEnvironmentElementMetadataUpdate)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSEnvironmentElementMetadataUpdate

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentElementMetadataUpdate *)self environmentElementIdentifier];
  [v4 encodeObject:v5 forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];

  v6 = [(SSEnvironmentElementMetadataUpdate *)self metadata];
  [v4 encodeObject:v6 forKey:@"SSEnvironmentElementMetadataUpdateMetadataKey"];
}

- (SSEnvironmentElementMetadataUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentElementMetadataUpdate *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];
  environmentElementIdentifier = v5->_environmentElementIdentifier;
  v5->_environmentElementIdentifier = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateMetadataKey"];

  metadata = v5->_metadata;
  v5->_metadata = v8;

  return v5;
}

- (BSSettings)bsSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:self forSetting:5];

  return v3;
}

- (NSString)loggableDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SSEnvironmentElementMetadataUpdate *)self environmentElementIdentifier];
  v6 = [v5 shorterLoggableString];
  v7 = [v4 stringWithFormat:@"element: %@ ", v6];
  [v3 appendString:v7];

  [v3 appendString:@"metadata: <"];
  v8 = [(SSEnvironmentElementMetadataUpdate *)self metadata];

  if (v8)
  {
    v9 = [(SSEnvironmentElementMetadataUpdate *)self metadata];
    v10 = [v9 loggableDescription];
    [v3 appendString:v10];
  }

  [v3 appendString:@">"];

  return v3;
}

@end