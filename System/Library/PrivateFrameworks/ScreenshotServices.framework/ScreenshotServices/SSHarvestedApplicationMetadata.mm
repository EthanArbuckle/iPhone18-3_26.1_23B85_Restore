@interface SSHarvestedApplicationMetadata
- (NSString)loggableDescription;
- (SSHarvestedApplicationMetadata)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSHarvestedApplicationMetadata

- (SSHarvestedApplicationMetadata)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSHarvestedApplicationMetadata *)self init];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataContentRectsKey"];
  contentRects = v5->_contentRects;
  v5->_contentRects = v7;

  v5->_canGenerateDocument = [coderCopy decodeBoolForKey:@"kSSHarvestedApplicationMetadataCanGenerateDocument"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataUserActivityTitleKey"];
  userActivityTitle = v5->_userActivityTitle;
  v5->_userActivityTitle = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSSHarvestedApplicationMetadataUserActivityURLKey"];

  v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
  userActivityURL = v5->_userActivityURL;
  v5->_userActivityURL = v12;

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  contentRects = [(SSHarvestedApplicationMetadata *)self contentRects];
  [coderCopy encodeCollection:contentRects forKey:@"kSSHarvestedApplicationMetadataContentRectsKey"];

  [coderCopy encodeBool:self->_canGenerateDocument forKey:@"kSSHarvestedApplicationMetadataCanGenerateDocument"];
  userActivityTitle = [(SSHarvestedApplicationMetadata *)self userActivityTitle];
  [coderCopy encodeObject:userActivityTitle forKey:@"kSSHarvestedApplicationMetadataUserActivityTitleKey"];

  userActivityURL = [(SSHarvestedApplicationMetadata *)self userActivityURL];
  absoluteString = [userActivityURL absoluteString];
  [coderCopy encodeObject:absoluteString forKey:@"kSSHarvestedApplicationMetadataUserActivityURLKey"];
}

- (NSString)loggableDescription
{
  v21 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@" contentRects: <"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  contentRects = [(SSHarvestedApplicationMetadata *)self contentRects];
  v5 = [contentRects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(contentRects);
        }

        [*(*(&v16 + 1) + 8 * i) CGRectValue];
        v9 = NSStringFromCGRect(v23);
        [string appendString:v9];

        [string appendString:@" "];
      }

      v6 = [contentRects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [string appendString:@">"];
  v10 = MEMORY[0x1E696AEC0];
  userActivityTitle = [(SSHarvestedApplicationMetadata *)self userActivityTitle];
  v12 = [v10 stringWithFormat:@" has userActivityTitle: %d", userActivityTitle != 0];
  [string appendString:v12];

  if (self->_canGenerateDocument)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" can provide PDF: %@", v13];
  [string appendString:v14];

  return string;
}

@end