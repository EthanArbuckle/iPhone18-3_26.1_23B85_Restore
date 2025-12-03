@interface SSEnvironmentElementDocumentUpdate
- (BSSettings)bsSettings;
- (NSString)loggableDescription;
- (SSEnvironmentElementDocumentUpdate)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSEnvironmentElementDocumentUpdate

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  environmentElementIdentifier = [(SSEnvironmentElementDocumentUpdate *)self environmentElementIdentifier];
  [coderCopy encodeObject:environmentElementIdentifier forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];

  document = [(SSEnvironmentElementDocumentUpdate *)self document];
  [coderCopy encodeObject:document forKey:@"SSEnvironmentElementMetadataUpdateDocumentKey"];
}

- (SSEnvironmentElementDocumentUpdate)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSEnvironmentElementDocumentUpdate *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];
  environmentElementIdentifier = v5->_environmentElementIdentifier;
  v5->_environmentElementIdentifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateDocumentKey"];

  document = v5->_document;
  v5->_document = v8;

  return v5;
}

- (BSSettings)bsSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:self forSetting:6];

  return v3;
}

- (NSString)loggableDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  environmentElementIdentifier = [(SSEnvironmentElementDocumentUpdate *)self environmentElementIdentifier];
  shorterLoggableString = [environmentElementIdentifier shorterLoggableString];
  v7 = [v4 stringWithFormat:@"element: %@ ", shorterLoggableString];
  [string appendString:v7];

  [string appendString:@"metadata: <"];
  document = [(SSEnvironmentElementDocumentUpdate *)self document];

  if (document)
  {
    document2 = [(SSEnvironmentElementDocumentUpdate *)self document];
    loggableDescription = [document2 loggableDescription];
    [string appendString:loggableDescription];
  }

  [string appendString:@">"];

  return string;
}

@end