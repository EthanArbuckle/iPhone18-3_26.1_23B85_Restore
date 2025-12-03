@interface PLSearchIndexPendingWorkItem
+ (id)pendingWorkItemWithType:(signed __int16)type flags:(int64_t)flags;
+ (id)rebuildInProgressPendingWorkItem;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PLSearchIndexPendingWorkItem

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(PLSearchIndexPendingWorkItem);
  *(result + 8) = self->_rebuildInProgress;
  *(result + 5) = self->_jobType;
  *(result + 2) = self->_jobFlags;
  return result;
}

+ (id)pendingWorkItemWithType:(signed __int16)type flags:(int64_t)flags
{
  typeCopy = type;
  v6 = objc_alloc_init(self);
  [v6 setJobType:typeCopy];
  [v6 setJobFlags:flags];

  return v6;
}

+ (id)rebuildInProgressPendingWorkItem
{
  v2 = objc_alloc_init(self);
  [v2 setRebuildInProgress:1];

  return v2;
}

@end