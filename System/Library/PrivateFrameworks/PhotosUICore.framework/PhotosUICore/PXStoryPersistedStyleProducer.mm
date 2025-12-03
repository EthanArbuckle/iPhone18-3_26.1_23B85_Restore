@interface PXStoryPersistedStyleProducer
- (PXStoryPersistedStyleProducer)initWithPersistedRecipe:(id)recipe songResource:(id)resource autoEditDecisionList:(id)list;
- (id)requestStylesWithOptions:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPersistedStyleProducer

- (id)requestStylesWithOptions:(unint64_t)options resultHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  persistedRecipe = [(PXStoryPersistedStyleProducer *)self persistedRecipe];
  currentStyle = [persistedRecipe currentStyle];

  autoEditDecisionList = [(PXStoryPersistedStyleProducer *)self autoEditDecisionList];
  songResource = [(PXStoryPersistedStyleProducer *)self songResource];
  originalColorGradeCategory = [currentStyle originalColorGradeCategory];
  customColorGradeKind = [currentStyle customColorGradeKind];
  isCustomized = [currentStyle isCustomized];
  if (!customColorGradeKind)
  {
    v13 = +[PXStoryColorGradingRepositoryFactory sharedRepository];
    customColorGradeKind = [v13 colorGradeKindForColorGradeCategory:originalColorGradeCategory];
  }

  v14 = [[PXStoryStyleConfiguration alloc] initWithOriginalColorGradeCategory:originalColorGradeCategory customColorGradeKind:customColorGradeKind songResource:songResource autoEditDecisionList:autoEditDecisionList isCustomized:isCustomized];
  v15 = [PXStoryProducerResult alloc];
  v20[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [(PXStoryProducerResult *)v15 initWithObject:v16];
  v18 = [(PXStoryProducerResult *)v17 flags:autoEditDecisionList == 0];
  handlerCopy[2](handlerCopy, v18);

  return 0;
}

- (PXStoryPersistedStyleProducer)initWithPersistedRecipe:(id)recipe songResource:(id)resource autoEditDecisionList:(id)list
{
  recipeCopy = recipe;
  resourceCopy = resource;
  listCopy = list;
  v19.receiver = self;
  v19.super_class = PXStoryPersistedStyleProducer;
  v12 = [(PXStoryPersistedStyleProducer *)&v19 init];
  if (v12)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    uTF8String = [v14 UTF8String];

    v16 = os_log_create(*MEMORY[0x1E69BFF60], uTF8String);
    log = v12->_log;
    v12->_log = v16;

    objc_storeStrong(&v12->_songResource, resource);
    objc_storeStrong(&v12->_persistedRecipe, recipe);
    objc_storeStrong(&v12->_autoEditDecisionList, list);
  }

  return v12;
}

@end