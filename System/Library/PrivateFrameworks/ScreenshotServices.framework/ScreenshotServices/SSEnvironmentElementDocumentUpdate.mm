@interface SSEnvironmentElementDocumentUpdate
- (BSSettings)bsSettings;
- (NSString)loggableDescription;
- (SSEnvironmentElementDocumentUpdate)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSEnvironmentElementDocumentUpdate

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentElementDocumentUpdate *)self environmentElementIdentifier];
  [v4 encodeObject:v5 forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];

  v6 = [(SSEnvironmentElementDocumentUpdate *)self document];
  [v4 encodeObject:v6 forKey:@"SSEnvironmentElementMetadataUpdateDocumentKey"];
}

- (SSEnvironmentElementDocumentUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentElementDocumentUpdate *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateEnvironmentElementIdentifierKey"];
  environmentElementIdentifier = v5->_environmentElementIdentifier;
  v5->_environmentElementIdentifier = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUpdateDocumentKey"];

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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SSEnvironmentElementDocumentUpdate *)self environmentElementIdentifier];
  v6 = [v5 shorterLoggableString];
  v7 = [v4 stringWithFormat:@"element: %@ ", v6];
  [v3 appendString:v7];

  [v3 appendString:@"metadata: <"];
  v8 = [(SSEnvironmentElementDocumentUpdate *)self document];

  if (v8)
  {
    v9 = [(SSEnvironmentElementDocumentUpdate *)self document];
    v10 = [v9 loggableDescription];
    [v3 appendString:v10];
  }

  [v3 appendString:@">"];

  return v3;
}

@end