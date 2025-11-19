@interface PXStoryDuplicateDisplayAsset
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (NSString)description;
- (PXStoryDuplicateDisplayAsset)initWithDisplayAsset:(id)a3 alternateUUID:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (unint64_t)hash;
@end

@implementation PXStoryDuplicateDisplayAsset

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PXStoryDuplicateDisplayAsset;
  v4 = [(PXStoryDuplicateDisplayAsset *)&v10 description];
  v5 = [(PXStoryDuplicateDisplayAsset *)self alternateUUID];
  v6 = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@ alternateUUID %@ -> %@", v4, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5 = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  if (objc_opt_isKindOfClass())
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXStoryDuplicateDisplayAsset;
    v6 = [(PXStoryDuplicateDisplayAsset *)&v8 isKindOfClass:a3];
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = PXStoryDuplicateDisplayAsset;
  v5 = [(PXStoryDuplicateDisplayAsset *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXStoryDuplicateDisplayAsset;
  if ([(PXStoryDuplicateDisplayAsset *)&v8 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
    v5 = [v6 conformsToProtocol:v4];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = PXStoryDuplicateDisplayAsset;
  if ([(PXStoryDuplicateDisplayAsset *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PXStoryDuplicateDisplayAsset *)self displayAsset];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (PXStoryDuplicateDisplayAsset)initWithDisplayAsset:(id)a3 alternateUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXStoryDuplicateDisplayAsset;
  v9 = [(PXStoryDuplicateDisplayAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayAsset, a3);
    objc_storeStrong(&v10->_alternateUUID, a4);
  }

  return v10;
}

@end