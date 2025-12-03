@interface _PXStoryExplicitChapter
- (NSString)diagnosticDescription;
- (_PXStoryExplicitChapter)initWithFirstAssetUUID:(id)d assetUUIDs:(id)ds;
@end

@implementation _PXStoryExplicitChapter

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(_PXStoryExplicitChapter *)self identifier];
  localizedTitle = [(_PXStoryExplicitChapter *)self localizedTitle];
  localizedSubtitle = [(_PXStoryExplicitChapter *)self localizedSubtitle];
  assetUUIDs = [(_PXStoryExplicitChapter *)self assetUUIDs];
  v8 = [v3 initWithFormat:@"{ id=%@ title=“%@” subtitle=“%@” assetUUIDs=%@ }", identifier, localizedTitle, localizedSubtitle, assetUUIDs];

  return v8;
}

- (_PXStoryExplicitChapter)initWithFirstAssetUUID:(id)d assetUUIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  v16.receiver = self;
  v16.super_class = _PXStoryExplicitChapter;
  v9 = [(_PXStoryExplicitChapter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, d);
    v11 = [dCopy copy];
    firstAssetUUID = v10->_firstAssetUUID;
    v10->_firstAssetUUID = v11;

    v13 = [dsCopy copy];
    assetUUIDs = v10->_assetUUIDs;
    v10->_assetUUIDs = v13;
  }

  return v10;
}

@end