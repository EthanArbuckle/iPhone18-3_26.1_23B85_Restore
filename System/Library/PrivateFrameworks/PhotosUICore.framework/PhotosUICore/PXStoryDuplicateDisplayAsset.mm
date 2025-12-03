@interface PXStoryDuplicateDisplayAsset
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (NSString)description;
- (PXStoryDuplicateDisplayAsset)initWithDisplayAsset:(id)asset alternateUUID:(id)d;
- (id)methodSignatureForSelector:(SEL)selector;
- (unint64_t)hash;
@end

@implementation PXStoryDuplicateDisplayAsset

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PXStoryDuplicateDisplayAsset;
  v4 = [(PXStoryDuplicateDisplayAsset *)&v10 description];
  alternateUUID = [(PXStoryDuplicateDisplayAsset *)self alternateUUID];
  displayAsset = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  v7 = [displayAsset description];
  v8 = [v3 stringWithFormat:@"%@ alternateUUID %@ -> %@", v4, alternateUUID, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  displayAsset = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  v6 = [displayAsset isEqual:equalCopy];

  return v6;
}

- (BOOL)isKindOfClass:(Class)class
{
  displayAsset = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  if (objc_opt_isKindOfClass())
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXStoryDuplicateDisplayAsset;
    v6 = [(PXStoryDuplicateDisplayAsset *)&v8 isKindOfClass:class];
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = PXStoryDuplicateDisplayAsset;
  v5 = [(PXStoryDuplicateDisplayAsset *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    displayAsset = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
    v5 = [displayAsset methodSignatureForSelector:selector];
  }

  return v5;
}

- (unint64_t)hash
{
  displayAsset = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  v3 = [displayAsset hash];

  return v3;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v8.receiver = self;
  v8.super_class = PXStoryDuplicateDisplayAsset;
  if ([(PXStoryDuplicateDisplayAsset *)&v8 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    displayAsset = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
    v5 = [displayAsset conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = PXStoryDuplicateDisplayAsset;
  if ([(PXStoryDuplicateDisplayAsset *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    displayAsset = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (PXStoryDuplicateDisplayAsset)initWithDisplayAsset:(id)asset alternateUUID:(id)d
{
  assetCopy = asset;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PXStoryDuplicateDisplayAsset;
  v9 = [(PXStoryDuplicateDisplayAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayAsset, asset);
    objc_storeStrong(&v10->_alternateUUID, d);
  }

  return v10;
}

@end