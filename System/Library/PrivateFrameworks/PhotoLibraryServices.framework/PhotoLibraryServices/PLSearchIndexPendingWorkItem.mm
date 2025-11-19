@interface PLSearchIndexPendingWorkItem
+ (id)pendingWorkItemWithType:(signed __int16)a3 flags:(int64_t)a4;
+ (id)rebuildInProgressPendingWorkItem;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PLSearchIndexPendingWorkItem

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(PLSearchIndexPendingWorkItem);
  *(result + 8) = self->_rebuildInProgress;
  *(result + 5) = self->_jobType;
  *(result + 2) = self->_jobFlags;
  return result;
}

+ (id)pendingWorkItemWithType:(signed __int16)a3 flags:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(a1);
  [v6 setJobType:v5];
  [v6 setJobFlags:a4];

  return v6;
}

+ (id)rebuildInProgressPendingWorkItem
{
  v2 = objc_alloc_init(a1);
  [v2 setRebuildInProgress:1];

  return v2;
}

@end