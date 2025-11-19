@interface PXStoryPersistedStyleProducer
- (PXStoryPersistedStyleProducer)initWithPersistedRecipe:(id)a3 songResource:(id)a4 autoEditDecisionList:(id)a5;
- (id)requestStylesWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryPersistedStyleProducer

- (id)requestStylesWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXStoryPersistedStyleProducer *)self persistedRecipe];
  v7 = [v6 currentStyle];

  v8 = [(PXStoryPersistedStyleProducer *)self autoEditDecisionList];
  v9 = [(PXStoryPersistedStyleProducer *)self songResource];
  v10 = [v7 originalColorGradeCategory];
  v11 = [v7 customColorGradeKind];
  v12 = [v7 isCustomized];
  if (!v11)
  {
    v13 = +[PXStoryColorGradingRepositoryFactory sharedRepository];
    v11 = [v13 colorGradeKindForColorGradeCategory:v10];
  }

  v14 = [[PXStoryStyleConfiguration alloc] initWithOriginalColorGradeCategory:v10 customColorGradeKind:v11 songResource:v9 autoEditDecisionList:v8 isCustomized:v12];
  v15 = [PXStoryProducerResult alloc];
  v20[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [(PXStoryProducerResult *)v15 initWithObject:v16];
  v18 = [(PXStoryProducerResult *)v17 flags:v8 == 0];
  v5[2](v5, v18);

  return 0;
}

- (PXStoryPersistedStyleProducer)initWithPersistedRecipe:(id)a3 songResource:(id)a4 autoEditDecisionList:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PXStoryPersistedStyleProducer;
  v12 = [(PXStoryPersistedStyleProducer *)&v19 init];
  if (v12)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v14 UTF8String];

    v16 = os_log_create(*MEMORY[0x1E69BFF60], v15);
    log = v12->_log;
    v12->_log = v16;

    objc_storeStrong(&v12->_songResource, a4);
    objc_storeStrong(&v12->_persistedRecipe, a3);
    objc_storeStrong(&v12->_autoEditDecisionList, a5);
  }

  return v12;
}

@end