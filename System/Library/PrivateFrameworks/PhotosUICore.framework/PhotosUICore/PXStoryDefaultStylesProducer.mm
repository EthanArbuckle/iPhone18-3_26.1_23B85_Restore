@interface PXStoryDefaultStylesProducer
- (PXStoryDefaultStylesProducer)init;
- (PXStoryDefaultStylesProducer)initWithAutoEditDecisionLists:(id)a3;
- (id)requestStylesWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryDefaultStylesProducer

- (id)requestStylesWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = [(PXStoryDefaultStylesProducer *)self autoEditDecisionLists];
  v7 = [v6 count];
  if (v6)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = [v6 objectAtIndexedSubscript:i];
        v12 = [v11 song];
        v13 = [PXStoryStyleConfiguration alloc];
        v14 = [v12 colorGradeCategory];
        v15 = [(PXStoryStyleConfiguration *)v13 initWithOriginalColorGradeCategory:v14 customColorGradeKind:0 songResource:v12 autoEditDecisionList:v11 isCustomized:0];

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
  v5[2](v5, v17);

  return 0;
}

- (PXStoryDefaultStylesProducer)initWithAutoEditDecisionLists:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXStoryDefaultStylesProducer;
  v6 = [(PXStoryDefaultStylesProducer *)&v13 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v8 UTF8String];

    v10 = os_log_create(*MEMORY[0x1E69BFF60], v9);
    log = v6->_log;
    v6->_log = v10;

    objc_storeStrong(&v6->_autoEditDecisionLists, a3);
  }

  return v6;
}

- (PXStoryDefaultStylesProducer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryDefaultStylesProducer.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryDefaultStylesProducer init]"}];

  abort();
}

@end