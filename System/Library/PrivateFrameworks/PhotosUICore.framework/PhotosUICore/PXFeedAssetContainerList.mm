@interface PXFeedAssetContainerList
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_transientIdentifier;
    self->_transientIdentifier = uUIDString;

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
  containers = [(PXFeedAssetContainerList *)self containers];
  v3 = [containers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(containers);
        }

        if (![*(*(&v9 + 1) + 8 * i) isEmpty])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [containers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  containers = [(PXFeedAssetContainerList *)self containers];
  v3 = [containers count];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    containers = [(PXFeedAssetContainerList *)self containers];
    containers2 = [v5 containers];

    v8 = [containers isEqual:containers2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  containers = [(PXFeedAssetContainerList *)self containers];
  v3 = [containers hash];

  return v3;
}

@end