@interface PXFeedAssetContainerList
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSString)transientIdentifier;
- (unint64_t)containersCount;
- (unint64_t)hash;
@end

@implementation PXFeedAssetContainerList

- (NSString)transientIdentifier
{
  transientIdentifier = self->_transientIdentifier;
  if (!transientIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_transientIdentifier;
    self->_transientIdentifier = v5;

    transientIdentifier = self->_transientIdentifier;
  }

  return transientIdentifier;
}

- (BOOL)isEmpty
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(PXFeedAssetContainerList *)self containers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) isEmpty])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (unint64_t)containersCount
{
  v2 = [(PXFeedAssetContainerList *)self containers];
  v3 = [v2 count];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXFeedAssetContainerList *)self containers];
    v7 = [v5 containers];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(PXFeedAssetContainerList *)self containers];
  v3 = [v2 hash];

  return v3;
}

@end