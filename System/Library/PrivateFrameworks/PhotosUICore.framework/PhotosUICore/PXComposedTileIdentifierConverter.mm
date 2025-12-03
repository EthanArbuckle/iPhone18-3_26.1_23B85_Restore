@interface PXComposedTileIdentifierConverter
- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier;
- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group;
- (PXComposedTileIdentifierConverter)initWithTileIdentifierConverters:(id)converters;
@end

@implementation PXComposedTileIdentifierConverter

- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  converters = [(PXComposedTileIdentifierConverter *)self converters];
  reverseObjectEnumerator = [converters reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        if ([*(*(&v12 + 1) + 8 * i) reverseTransformTileIdentifier:identifier])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  converters = [(PXComposedTileIdentifierConverter *)self converters];
  v7 = [converters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(converters);
        }

        if ([*(*(&v13 + 1) + 8 * i) transformTileIdentifier:identifier group:group])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [converters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (PXComposedTileIdentifierConverter)initWithTileIdentifierConverters:(id)converters
{
  convertersCopy = converters;
  v9.receiver = self;
  v9.super_class = PXComposedTileIdentifierConverter;
  v5 = [(PXComposedTileIdentifierConverter *)&v9 init];
  if (v5)
  {
    v6 = [convertersCopy copy];
    converters = v5->_converters;
    v5->_converters = v6;
  }

  return v5;
}

@end