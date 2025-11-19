@interface PLBackgroundJobGuestAssetSyncWorkItemContainer
+ (id)initialSyncWorkItem;
+ (id)libraryOrPreferencesChangedWorkItem;
+ (id)persistedJobWorkItemWithObjectID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PLBackgroundJobGuestAssetSyncWorkItemContainer

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() libraryOrPreferencesChangedWorkItem];

  if (v3 == self)
  {

    return self;
  }

  else
  {
    v4 = objc_alloc_init(PLBackgroundJobGuestAssetSyncWorkItemContainer);
    v5 = [(PLBackgroundJobGuestAssetSyncWorkItemContainer *)self objectID];
    objectID = v4->_objectID;
    v4->_objectID = v5;

    v4->_type = [(PLBackgroundJobGuestAssetSyncWorkItemContainer *)self type];
    return v4;
  }
}

+ (id)initialSyncWorkItem
{
  v2 = objc_alloc_init(PLBackgroundJobGuestAssetSyncWorkItemContainer);
  v2->_type = 1;

  return v2;
}

+ (id)libraryOrPreferencesChangedWorkItem
{
  v2 = objc_alloc_init(PLBackgroundJobGuestAssetSyncWorkItemContainer);
  v2->_type = 0;

  return v2;
}

+ (id)persistedJobWorkItemWithObjectID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PLBackgroundJobGuestAssetSyncWorkItemContainer);
  objectID = v4->_objectID;
  v4->_objectID = v3;
  v4->_type = 2;

  return v4;
}

@end