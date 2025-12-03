@interface SSEnvironmentElementMetadataUpdate
- (BSSettings)bsSettings;
- (NSString)loggableDescription;
- (SSEnvironmentElementMetadataUpdate)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSEnvironmentElementMetadataUpdate

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  environmentElementIdentifier = [(SSEnvironmentElementMetadataUpdate *)self environmentElementIdentifier];
  [coderCopy encodeObject:environmentElementIdentifier forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];

  metadata = [(SSEnvironmentElementMetadataUpdate *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"SSEnvironmentElementMetadataUpdateMetadataKey"];
}

- (SSEnvironmentElementMetadataUpdate)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSEnvironmentElementMetadataUpdate *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];
  environmentElementIdentifier = v5->_environmentElementIdentifier;
  v5->_environmentElementIdentifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateMetadataKey"];

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
  string = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  environmentElementIdentifier = [(SSEnvironmentElementMetadataUpdate *)self environmentElementIdentifier];
  shorterLoggableString = [environmentElementIdentifier shorterLoggableString];
  v7 = [v4 stringWithFormat:@"element: %@ ", shorterLoggableString];
  [string appendString:v7];

  [string appendString:@"metadata: <"];
  metadata = [(SSEnvironmentElementMetadataUpdate *)self metadata];

  if (metadata)
  {
    metadata2 = [(SSEnvironmentElementMetadataUpdate *)self metadata];
    loggableDescription = [metadata2 loggableDescription];
    [string appendString:loggableDescription];
  }

  [string appendString:@">"];

  return string;
}

@end