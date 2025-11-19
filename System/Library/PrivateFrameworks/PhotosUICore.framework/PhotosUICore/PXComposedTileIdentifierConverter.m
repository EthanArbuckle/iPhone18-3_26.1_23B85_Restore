@interface PXComposedTileIdentifierConverter
- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)a3;
- (BOOL)transformTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4;
- (PXComposedTileIdentifierConverter)initWithTileIdentifierConverters:(id)a3;
@end

@implementation PXComposedTileIdentifierConverter

- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PXComposedTileIdentifierConverter *)self converters];
  v5 = [v4 reverseObjectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) reverseTransformTileIdentifier:a3])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)transformTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PXComposedTileIdentifierConverter *)self converters];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v13 + 1) + 8 * i) transformTileIdentifier:a3 group:a4])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (PXComposedTileIdentifierConverter)initWithTileIdentifierConverters:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXComposedTileIdentifierConverter;
  v5 = [(PXComposedTileIdentifierConverter *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    converters = v5->_converters;
    v5->_converters = v6;
  }

  return v5;
}

@end