@interface PPTopicStore
+ (double)decayValue:(double)a3 withDecayRate:(double)a4 forTimeElapsed:(double)a5;
+ (id)defaultStore;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThan:(id)a5 deletedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteAllTopicsWithTopicId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)donateTopics:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 sentimentScore:(double)a7 exactMatchesInSourceText:(id)a8 error:(id *)a9;
- (BOOL)iterRankedTopicsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)iterScoresForTopicMapping:(id)a3 query:(id)a4 error:(id *)a5 block:(id)a6;
- (BOOL)iterTopicRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (PPTopicStore)init;
- (id)_initFromSubclass;
- (id)cachedTopicScores;
- (id)rankedTopicsWithQuery:(id)a3 error:(id *)a4;
- (id)scoresForTopicMapping:(id)a3 query:(id)a4 error:(id *)a5;
- (id)topicExtractionsFromText:(id)a3 error:(id *)a4;
- (id)topicRecordsWithQuery:(id)a3 error:(id *)a4;
- (id)unmapMappedTopicIdentifier:(id)a3 mappingIdentifier:(id)a4 error:(id *)a5;
- (void)registerFeedback:(id)a3 completion:(id)a4;
- (void)registerUniversalSearchSpotlightFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPTopicStore

- (PPTopicStore)init
{
  v3 = [[PPXPCTopicStore alloc] _init];

  return v3;
}

- (id)_initFromSubclass
{
  v3.receiver = self;
  v3.super_class = PPTopicStore;
  return [(PPTopicStore *)&v3 init];
}

- (void)registerUniversalSearchSpotlightFeedback:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __break(1u);
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThan:(id)a5 deletedCount:(unint64_t *)a6 error:(id *)a7
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  __break(1u);
  return v11;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v5 = a3;
  __break(1u);
  return v5;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v7 = a3;
  v8 = a4;
  __break(1u);
  return v8;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v7 = a3;
  v8 = a4;
  __break(1u);
  return v8;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v5 = a3;
  __break(1u);
  return v5;
}

- (BOOL)donateTopics:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 sentimentScore:(double)a7 exactMatchesInSourceText:(id)a8 error:(id *)a9
{
  v11 = a3;
  v12 = a4;
  v13 = a8;
  __break(1u);
  return v13;
}

- (id)topicExtractionsFromText:(id)a3 error:(id *)a4
{
  result = a3;
  __break(1u);
  return result;
}

- (id)topicRecordsWithQuery:(id)a3 error:(id *)a4
{
  result = a3;
  __break(1u);
  return result;
}

- (BOOL)iterTopicRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v6 = a3;
  v7 = a5;
  __break(1u);
  return v7;
}

- (id)unmapMappedTopicIdentifier:(id)a3 mappingIdentifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (id)scoresForTopicMapping:(id)a3 query:(id)a4 error:(id *)a5
{
  v6 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (BOOL)iterScoresForTopicMapping:(id)a3 query:(id)a4 error:(id *)a5 block:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  __break(1u);
  return v10;
}

- (id)rankedTopicsWithQuery:(id)a3 error:(id *)a4
{
  result = a3;
  __break(1u);
  return result;
}

- (BOOL)iterRankedTopicsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v6 = a3;
  v7 = a5;
  __break(1u);
  return v7;
}

+ (double)decayValue:(double)a3 withDecayRate:(double)a4 forTimeElapsed:(double)a5
{
  v5 = a3;
  if (a5 >= 0.0)
  {
    return exp(-(a4 * a5)) * a3;
  }

  return v5;
}

+ (id)defaultStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PPTopicStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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