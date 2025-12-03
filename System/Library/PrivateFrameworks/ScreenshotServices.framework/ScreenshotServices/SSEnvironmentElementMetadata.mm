@interface SSEnvironmentElementMetadata
- (NSString)loggableDescription;
- (SSEnvironmentElementMetadata)initWithBSXPCCoder:(id)coder;
- (id)_decodedRectsForEncodedRects:(id)rects;
- (id)_encodableRects;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSEnvironmentElementMetadata

- (NSString)loggableDescription
{
  v19 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  rectsInElement = [(SSEnvironmentElementMetadata *)self rectsInElement];
  v5 = [rectsInElement countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(rectsInElement);
        }

        [*(*(&v14 + 1) + 8 * i) CGRectValue];
        v9 = MEMORY[0x1E696AEC0];
        v10 = NSStringFromCGRect(v21);
        v11 = [v9 stringWithFormat:@" %@ ", v10];
        [string appendString:v11];
      }

      v6 = [rectsInElement countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  userActivityTitle = [(SSEnvironmentElementMetadata *)self userActivityTitle];
  [string appendString:userActivityTitle];

  return string;
}

- (id)_encodableRects
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  rectsInElement = [(SSEnvironmentElementMetadata *)self rectsInElement];
  v5 = [rectsInElement countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(rectsInElement);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = objc_alloc_init(SSXPCEncodableRectWrapper);
        [v9 CGRectValue];
        [(SSXPCEncodableRectWrapper *)v10 setRect:?];
        [array addObject:v10];
      }

      v6 = [rectsInElement countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_decodedRectsForEncodedRects:(id)rects
{
  v18 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = rectsCopy;
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
        [array addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  userActivityTitle = [(SSEnvironmentElementMetadata *)self userActivityTitle];
  [coderCopy encodeObject:userActivityTitle forKey:@"SSEnvironmentElementMetadataUserActivityTitleKey"];

  _encodableRects = [(SSEnvironmentElementMetadata *)self _encodableRects];
  [coderCopy encodeCollection:_encodableRects forKey:@"SSEnvironmentElementMetadataRectKey"];
}

- (SSEnvironmentElementMetadata)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSEnvironmentElementMetadata *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataUserActivityTitleKey"];
  userActivityTitle = v5->_userActivityTitle;
  v5->_userActivityTitle = v6;

  v8 = objc_opt_class();
  v9 = [coderCopy decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"SSEnvironmentElementMetadataRectKey"];

  v10 = [(SSEnvironmentElementMetadata *)v5 _decodedRectsForEncodedRects:v9];
  rectsInElement = v5->_rectsInElement;
  v5->_rectsInElement = v10;

  return v5;
}

@end