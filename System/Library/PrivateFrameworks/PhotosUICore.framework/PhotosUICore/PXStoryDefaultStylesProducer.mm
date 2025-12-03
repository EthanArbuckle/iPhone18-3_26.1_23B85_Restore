@interface PXStoryDefaultStylesProducer
- (PXStoryDefaultStylesProducer)init;
- (PXStoryDefaultStylesProducer)initWithAutoEditDecisionLists:(id)lists;
- (id)requestStylesWithOptions:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryDefaultStylesProducer

- (id)requestStylesWithOptions:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  autoEditDecisionLists = [(PXStoryDefaultStylesProducer *)self autoEditDecisionLists];
  v7 = [autoEditDecisionLists count];
  if (autoEditDecisionLists)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = [autoEditDecisionLists objectAtIndexedSubscript:i];
        song = [v11 song];
        v13 = [PXStoryStyleConfiguration alloc];
        colorGradeCategory = [song colorGradeCategory];
        v15 = [(PXStoryStyleConfiguration *)v13 initWithOriginalColorGradeCategory:colorGradeCategory customColorGradeKind:0 songResource:song autoEditDecisionList:v11 isCustomized:0];

        [v9 addObject:v15];
      }
    }

    v16 = [v9 copy];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = [[PXStoryProducerResult alloc] initWithObject:v16];
  handlerCopy[2](handlerCopy, v17);

  return 0;
}

- (PXStoryDefaultStylesProducer)initWithAutoEditDecisionLists:(id)lists
{
  listsCopy = lists;
  v13.receiver = self;
  v13.super_class = PXStoryDefaultStylesProducer;
  v6 = [(PXStoryDefaultStylesProducer *)&v13 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    uTF8String = [v8 UTF8String];

    v10 = os_log_create(*MEMORY[0x1E69BFF60], uTF8String);
    log = v6->_log;
    v6->_log = v10;

    objc_storeStrong(&v6->_autoEditDecisionLists, lists);
  }

  return v6;
}

- (PXStoryDefaultStylesProducer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDefaultStylesProducer.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryDefaultStylesProducer init]"}];

  abort();
}

@end