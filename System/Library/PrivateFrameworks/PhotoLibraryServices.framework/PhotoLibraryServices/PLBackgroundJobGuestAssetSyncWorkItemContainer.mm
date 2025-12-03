@interface PLBackgroundJobGuestAssetSyncWorkItemContainer
+ (id)initialSyncWorkItem;
+ (id)libraryOrPreferencesChangedWorkItem;
+ (id)persistedJobWorkItemWithObjectID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PLBackgroundJobGuestAssetSyncWorkItemContainer

- (id)copyWithZone:(_NSZone *)zone
{
  libraryOrPreferencesChangedWorkItem = [objc_opt_class() libraryOrPreferencesChangedWorkItem];

  if (libraryOrPreferencesChangedWorkItem == self)
  {

    return self;
  }

  else
  {
    v4 = objc_alloc_init(PLBackgroundJobGuestAssetSyncWorkItemContainer);
    objectID = [(PLBackgroundJobGuestAssetSyncWorkItemContainer *)self objectID];
    objectID = v4->_objectID;
    v4->_objectID = objectID;

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

+ (id)persistedJobWorkItemWithObjectID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(PLBackgroundJobGuestAssetSyncWorkItemContainer);
  objectID = v4->_objectID;
  v4->_objectID = dCopy;
  v4->_type = 2;

  return v4;
}

@end