@interface PPNamedEntityStore
+ (id)defaultStore;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error;
- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error;
- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score error:(id *)error;
- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterRankedNamedEntitiesWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate error:(id *)error;
- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate query:(id)query error:(id *)error;
- (BOOL)removeMapItemForPlaceName:(id)name error:(id *)error;
- (BOOL)removeMapItemsBeforeCutoffDate:(id)date error:(id *)error;
- (PPNamedEntityStore)init;
- (id)_initFromSubclass;
- (id)mapItemForPlaceName:(id)name error:(id *)error;
- (id)namedEntityRecordsWithQuery:(id)query error:(id *)error;
- (id)rankedNamedEntitiesWithQuery:(id)query error:(id *)error;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPNamedEntityStore

- (PPNamedEntityStore)init
{
  _init = [[PPXPCNamedEntityStore alloc] _init];

  return _init;
}

- (id)_initFromSubclass
{
  v3.receiver = self;
  v3.super_class = PPNamedEntityStore;
  return [(PPNamedEntityStore *)&v3 init];
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  feedbackCopy = feedback;
  completionCopy = completion;
  __break(1u);
}

- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error
{
  entitiesCopy = entities;
  idCopy = id;
  groupIdCopy = groupId;
  __break(1u);
  return groupIdCopy;
}

- (BOOL)removeMapItemsBeforeCutoffDate:(id)date error:(id *)error
{
  dateCopy = date;
  __break(1u);
  return dateCopy;
}

- (BOOL)removeMapItemForPlaceName:(id)name error:(id *)error
{
  nameCopy = name;
  __break(1u);
  return nameCopy;
}

- (id)mapItemForPlaceName:(id)name error:(id *)error
{
  result = name;
  __break(1u);
  return result;
}

- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error
{
  itemCopy = item;
  nameCopy = name;
  __break(1u);
  return nameCopy;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  thanCopy = than;
  __break(1u);
  return thanCopy;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  __break(1u);
  return idCopy;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  __break(1u);
  return idsCopy;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  __break(1u);
  return idsCopy;
}

- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score error:(id *)error
{
  entitiesCopy = entities;
  sourceCopy = source;
  __break(1u);
  return sourceCopy;
}

- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate query:(id)query error:(id *)error
{
  delegateCopy = delegate;
  queryCopy = query;
  __break(1u);
  return queryCopy;
}

- (BOOL)loadNamedEntityRecordsAndMonitorChangesWithDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  __break(1u);
  return delegateCopy;
}

- (id)namedEntityRecordsWithQuery:(id)query error:(id *)error
{
  result = query;
  __break(1u);
  return result;
}

- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  __break(1u);
  return blockCopy;
}

- (id)rankedNamedEntitiesWithQuery:(id)query error:(id *)error
{
  result = query;
  __break(1u);
  return result;
}

- (BOOL)iterRankedNamedEntitiesWithQuery:(id)query error:(id *)error block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  __break(1u);
  return blockCopy;
}

+ (id)defaultStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PPNamedEntityStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultStore__pasOnceToken12_9705 != -1)
  {
    dispatch_once(&defaultStore__pasOnceToken12_9705, block);
  }

  v2 = defaultStore__pasExprOnceResult_9706;

  return v2;
}

void __34__PPNamedEntityStore_defaultStore__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = defaultStore__pasExprOnceResult_9706;
  defaultStore__pasExprOnceResult_9706 = v4;

  objc_autoreleasePoolPop(v2);
}

@end