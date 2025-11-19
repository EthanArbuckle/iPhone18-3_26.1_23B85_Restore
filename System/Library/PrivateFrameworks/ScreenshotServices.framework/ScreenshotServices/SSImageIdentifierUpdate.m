@interface SSImageIdentifierUpdate
- (BSSettings)bsSettings;
- (NSString)loggableDescription;
- (SSImageIdentifierUpdate)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSImageIdentifierUpdate

- (SSImageIdentifierUpdate)initWithBSXPCCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = SSImageIdentifierUpdate;
  v3 = a3;
  v4 = [(SSImageIdentifierUpdate *)&v11 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"SSImageIdentifierUpdateKeyImageIdentifier", v11.receiver, v11.super_class}];
  imageIdentifier = v4->_imageIdentifier;
  v4->_imageIdentifier = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SSImageIdentifierUpdateKeyEnvironmentDescriptionIdentifier"];
  environmentDescriptionIdentifier = v4->_environmentDescriptionIdentifier;
  v4->_environmentDescriptionIdentifier = v7;

  v9 = [v3 decodeBoolForKey:@"SSImageIdentifierUpdateKeySuccess"];
  v4->_success = v9;
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6 = a3;
  v4 = [(SSImageIdentifierUpdate *)self imageIdentifier];
  [v6 encodeObject:v4 forKey:@"SSImageIdentifierUpdateKeyImageIdentifier"];

  v5 = [(SSImageIdentifierUpdate *)self environmentDescriptionIdentifier];
  [v6 encodeObject:v5 forKey:@"SSImageIdentifierUpdateKeyEnvironmentDescriptionIdentifier"];

  [v6 encodeBool:-[SSImageIdentifierUpdate success](self forKey:{"success"), @"SSImageIdentifierUpdateKeySuccess"}];
}

- (BSSettings)bsSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:self forSetting:2];

  return v3;
}

- (NSString)loggableDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SSImageIdentifierUpdate *)self imageIdentifier];
  v6 = [v5 shorterLoggableString];
  v7 = [v4 stringWithFormat:@"imageIdentifier: %@ ", v6];
  [v3 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(SSImageIdentifierUpdate *)self environmentDescriptionIdentifier];
  v10 = [v9 shorterLoggableString];
  v11 = [v8 stringWithFormat:@"environmentDescriptionIdentifier: %@", v10];
  [v3 appendString:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(SSImageIdentifierUpdate *)self success];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  v15 = [v12 stringWithFormat:@"success: %@", v14];
  [v3 appendString:v15];

  return v3;
}

@end