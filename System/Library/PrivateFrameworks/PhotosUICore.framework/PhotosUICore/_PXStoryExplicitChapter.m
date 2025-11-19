@interface _PXStoryExplicitChapter
- (NSString)diagnosticDescription;
- (_PXStoryExplicitChapter)initWithFirstAssetUUID:(id)a3 assetUUIDs:(id)a4;
@end

@implementation _PXStoryExplicitChapter

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(_PXStoryExplicitChapter *)self identifier];
  v5 = [(_PXStoryExplicitChapter *)self localizedTitle];
  v6 = [(_PXStoryExplicitChapter *)self localizedSubtitle];
  v7 = [(_PXStoryExplicitChapter *)self assetUUIDs];
  v8 = [v3 initWithFormat:@"{ id=%@ title=“%@” subtitle=“%@” assetUUIDs=%@ }", v4, v5, v6, v7];

  return v8;
}

- (_PXStoryExplicitChapter)initWithFirstAssetUUID:(id)a3 assetUUIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _PXStoryExplicitChapter;
  v9 = [(_PXStoryExplicitChapter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = [v7 copy];
    firstAssetUUID = v10->_firstAssetUUID;
    v10->_firstAssetUUID = v11;

    v13 = [v8 copy];
    assetUUIDs = v10->_assetUUIDs;
    v10->_assetUUIDs = v13;
  }

  return v10;
}

@end