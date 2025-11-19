@interface SSHarvestedApplicationMetadata
- (NSString)loggableDescription;
- (SSHarvestedApplicationMetadata)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSHarvestedApplicationMetadata

- (SSHarvestedApplicationMetadata)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSHarvestedApplicationMetadata *)self init];
  v6 = objc_opt_class();
  v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataContentRectsKey"];
  contentRects = v5->_contentRects;
  v5->_contentRects = v7;

  v5->_canGenerateDocument = [v4 decodeBoolForKey:@"kSSHarvestedApplicationMetadataCanGenerateDocument"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataUserActivityTitleKey"];
  userActivityTitle = v5->_userActivityTitle;
  v5->_userActivityTitle = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataUserActivityURLKey"];

  v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
  userActivityURL = v5->_userActivityURL;
  v5->_userActivityURL = v12;

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSHarvestedApplicationMetadata *)self contentRects];
  [v4 encodeCollection:v5 forKey:@"kSSHarvestedApplicationMetadataContentRectsKey"];

  [v4 encodeBool:self->_canGenerateDocument forKey:@"kSSHarvestedApplicationMetadataCanGenerateDocument"];
  v6 = [(SSHarvestedApplicationMetadata *)self userActivityTitle];
  [v4 encodeObject:v6 forKey:@"kSSHarvestedApplicationMetadataUserActivityTitleKey"];

  v8 = [(SSHarvestedApplicationMetadata *)self userActivityURL];
  v7 = [v8 absoluteString];
  [v4 encodeObject:v7 forKey:@"kSSHarvestedApplicationMetadataUserActivityURLKey"];
}

- (NSString)loggableDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@" contentRects: <"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SSHarvestedApplicationMetadata *)self contentRects];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v16 + 1) + 8 * i) CGRectValue];
        v9 = NSStringFromCGRect(v23);
        [v3 appendString:v9];

        [v3 appendString:@" "];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(SSHarvestedApplicationMetadata *)self userActivityTitle];
  v12 = [v10 stringWithFormat:@" has userActivityTitle: %d", v11 != 0];
  [v3 appendString:v12];

  if (self->_canGenerateDocument)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" can provide PDF: %@", v13];
  [v3 appendString:v14];

  return v3;
}

@end