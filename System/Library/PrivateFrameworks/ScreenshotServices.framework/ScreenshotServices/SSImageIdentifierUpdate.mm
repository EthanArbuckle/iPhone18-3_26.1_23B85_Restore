@interface SSImageIdentifierUpdate
- (BSSettings)bsSettings;
- (NSString)loggableDescription;
- (SSImageIdentifierUpdate)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSImageIdentifierUpdate

- (SSImageIdentifierUpdate)initWithBSXPCCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = SSImageIdentifierUpdate;
  coderCopy = coder;
  v4 = [(SSImageIdentifierUpdate *)&v11 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"SSImageIdentifierUpdateKeyImageIdentifier", v11.receiver, v11.super_class}];
  imageIdentifier = v4->_imageIdentifier;
  v4->_imageIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSImageIdentifierUpdateKeyEnvironmentDescriptionIdentifier"];
  environmentDescriptionIdentifier = v4->_environmentDescriptionIdentifier;
  v4->_environmentDescriptionIdentifier = v7;

  v9 = [coderCopy decodeBoolForKey:@"SSImageIdentifierUpdateKeySuccess"];
  v4->_success = v9;
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  imageIdentifier = [(SSImageIdentifierUpdate *)self imageIdentifier];
  [coderCopy encodeObject:imageIdentifier forKey:@"SSImageIdentifierUpdateKeyImageIdentifier"];

  environmentDescriptionIdentifier = [(SSImageIdentifierUpdate *)self environmentDescriptionIdentifier];
  [coderCopy encodeObject:environmentDescriptionIdentifier forKey:@"SSImageIdentifierUpdateKeyEnvironmentDescriptionIdentifier"];

  [coderCopy encodeBool:-[SSImageIdentifierUpdate success](self forKey:{"success"), @"SSImageIdentifierUpdateKeySuccess"}];
}

- (BSSettings)bsSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:self forSetting:2];

  return v3;
}

- (NSString)loggableDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  imageIdentifier = [(SSImageIdentifierUpdate *)self imageIdentifier];
  shorterLoggableString = [imageIdentifier shorterLoggableString];
  v7 = [v4 stringWithFormat:@"imageIdentifier: %@ ", shorterLoggableString];
  [string appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  environmentDescriptionIdentifier = [(SSImageIdentifierUpdate *)self environmentDescriptionIdentifier];
  shorterLoggableString2 = [environmentDescriptionIdentifier shorterLoggableString];
  v11 = [v8 stringWithFormat:@"environmentDescriptionIdentifier: %@", shorterLoggableString2];
  [string appendString:v11];

  v12 = MEMORY[0x1E696AEC0];
  success = [(SSImageIdentifierUpdate *)self success];
  v14 = @"NO";
  if (success)
  {
    v14 = @"YES";
  }

  v15 = [v12 stringWithFormat:@"success: %@", v14];
  [string appendString:v15];

  return string;
}

@end