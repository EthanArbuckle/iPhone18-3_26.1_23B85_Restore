@interface SSEnvironmentElementMetadata
- (NSString)loggableDescription;
- (SSEnvironmentElementMetadata)initWithBSXPCCoder:(id)a3;
- (id)_decodedRectsForEncodedRects:(id)a3;
- (id)_encodableRects;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSEnvironmentElementMetadata

- (NSString)loggableDescription
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SSEnvironmentElementMetadata *)self rectsInElement];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * i) CGRectValue];
        v9 = MEMORY[0x1E696AEC0];
        v10 = NSStringFromCGRect(v21);
        v11 = [v9 stringWithFormat:@" %@ ", v10];
        [v3 appendString:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [(SSEnvironmentElementMetadata *)self userActivityTitle];
  [v3 appendString:v12];

  return v3;
}

- (id)_encodableRects
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SSEnvironmentElementMetadata *)self rectsInElement];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = objc_alloc_init(SSXPCEncodableRectWrapper);
        [v9 CGRectValue];
        [(SSXPCEncodableRectWrapper *)v10 setRect:?];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_decodedRectsForEncodedRects:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x1E696B098];
        [*(*(&v13 + 1) + 8 * i) rect];
        v11 = [v10 valueWithCGRect:?];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentElementMetadata *)self userActivityTitle];
  [v4 encodeObject:v5 forKey:@"SSEnvironmentElementMetadataUserActivityTitleKey"];

  v6 = [(SSEnvironmentElementMetadata *)self _encodableRects];
  [v4 encodeCollection:v6 forKey:@"SSEnvironmentElementMetadataRectKey"];
}

- (SSEnvironmentElementMetadata)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentElementMetadata *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUserActivityTitleKey"];
  userActivityTitle = v5->_userActivityTitle;
  v5->_userActivityTitle = v6;

  v8 = objc_opt_class();
  v9 = [v4 decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataRectKey"];

  v10 = [(SSEnvironmentElementMetadata *)v5 _decodedRectsForEncodedRects:v9];
  rectsInElement = v5->_rectsInElement;
  v5->_rectsInElement = v10;

  return v5;
}

@end