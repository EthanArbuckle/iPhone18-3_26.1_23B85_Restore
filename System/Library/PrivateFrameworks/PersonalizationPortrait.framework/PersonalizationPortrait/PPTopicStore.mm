@interface PPTopicStore
+ (double)decayValue:(double)value withDecayRate:(double)rate forTimeElapsed:(double)elapsed;
+ (id)defaultStore;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error;
- (BOOL)iterRankedTopicsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block;
- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (PPTopicStore)init;
- (id)_initFromSubclass;
- (id)cachedTopicScores;
- (id)rankedTopicsWithQuery:(id)query error:(id *)error;
- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error;
- (id)topicExtractionsFromText:(id)text error:(id *)error;
- (id)topicRecordsWithQuery:(id)query error:(id *)error;
- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPTopicStore

- (PPTopicStore)init
{
  _init = [[PPXPCTopicStore alloc] _init];

  return _init;
}

- (id)_initFromSubclass
{
  v3.receiver = self;
  v3.super_class = PPTopicStore;
  return [(PPTopicStore *)&v3 init];
}

- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion
{
  feedbackCopy = feedback;
  completionCopy = completion;
  __break(1u);
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  feedbackCopy = feedback;
  completionCopy = completion;
  __break(1u);
}

- (id)cachedTopicScores
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [(PPTopicStore *)self cachePath:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = [PPTopicUtils cachedTopicScoresAtPath:v2];
  }

  else
  {
    v5 = pp_topics_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_error_impl(&dword_1A7FD3000, v5, OS_LOG_TYPE_ERROR, "PPTopicStore: unable to recover cache path over XPC: %@", buf, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  thanCopy = than;
  __break(1u);
  return thanCopy;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  __break(1u);
  return idCopy;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  __break(1u);
  return idsCopy;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  __break(1u);
  return idsCopy;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  __break(1u);
  return idCopy;
}

- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error
{
  topicsCopy = topics;
  sourceCopy = source;
  textCopy = text;
  __break(1u);
  return textCopy;
}

- (id)topicExtractionsFromText:(id)text error:(id *)error
{
  result = text;
  __break(1u);
  return result;
}

- (id)topicRecordsWithQuery:(id)query error:(id *)error
{
  result = query;
  __break(1u);
  return result;
}

- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  __break(1u);
  return blockCopy;
}

- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error
{
  identifierCopy = identifier;
  result = mappingIdentifier;
  __break(1u);
  return result;
}

- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error
{
  mappingCopy = mapping;
  result = query;
  __break(1u);
  return result;
}

- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block
{
  mappingCopy = mapping;
  queryCopy = query;
  blockCopy = block;
  __break(1u);
  return blockCopy;
}

- (id)rankedTopicsWithQuery:(id)query error:(id *)error
{
  result = query;
  __break(1u);
  return result;
}

- (BOOL)iterRankedTopicsWithQuery:(id)query error:(id *)error block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  __break(1u);
  return blockCopy;
}

+ (double)decayValue:(double)value withDecayRate:(double)rate forTimeElapsed:(double)elapsed
{
  valueCopy = value;
  if (elapsed >= 0.0)
  {
    return exp(-(rate * elapsed)) * value;
  }

  return valueCopy;
}

+ (id)defaultStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PPTopicStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultStore__pasOnceToken12 != -1)
  {
    dispatch_once(&defaultStore__pasOnceToken12, block);
  }

  v2 = defaultStore__pasExprOnceResult_2448;

  return v2;
}

void __28__PPTopicStore_defaultStore__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = defaultStore__pasExprOnceResult_2448;
  defaultStore__pasExprOnceResult_2448 = v4;

  objc_autoreleasePoolPop(v2);
}

@end