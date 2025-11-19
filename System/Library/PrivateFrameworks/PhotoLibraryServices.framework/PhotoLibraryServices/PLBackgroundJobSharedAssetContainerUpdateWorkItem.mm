@interface PLBackgroundJobSharedAssetContainerUpdateWorkItem
- (PLBackgroundJobSharedAssetContainerUpdateWorkItem)initWithFlags:(int64_t)a3 identifiers:(id)a4;
@end

@implementation PLBackgroundJobSharedAssetContainerUpdateWorkItem

- (PLBackgroundJobSharedAssetContainerUpdateWorkItem)initWithFlags:(int64_t)a3 identifiers:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PLBackgroundJobSharedAssetContainerUpdateWorkItem;
  v8 = [(PLBackgroundJobSharedAssetContainerUpdateWorkItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_flags = a3;
    objc_storeStrong(&v8->_identifiers, a4);
    v10 = v9;
  }

  return v9;
}

@end