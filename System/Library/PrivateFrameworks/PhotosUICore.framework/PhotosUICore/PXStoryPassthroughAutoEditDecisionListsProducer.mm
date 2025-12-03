@interface PXStoryPassthroughAutoEditDecisionListsProducer
- (PXStoryPassthroughAutoEditDecisionListsProducer)initWithAutoEditDecisionLists:(id)lists;
- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)options songs:(id)songs colorGradeCategoriesBySong:(id)song resultHandler:(id)handler;
- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)category options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughAutoEditDecisionListsProducer

- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)category options:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [PXStoryProducerResult alloc];
  autoEditDecisionLists = [(PXStoryPassthroughAutoEditDecisionListsProducer *)self autoEditDecisionLists];
  v10 = [(PXStoryProducerResult *)v8 initWithObject:autoEditDecisionLists];
  (*(handler + 2))(handlerCopy, v10);

  return 0;
}

- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)options songs:(id)songs colorGradeCategoriesBySong:(id)song resultHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [PXStoryProducerResult alloc];
  autoEditDecisionLists = [(PXStoryPassthroughAutoEditDecisionListsProducer *)self autoEditDecisionLists];
  v11 = [(PXStoryProducerResult *)v9 initWithObject:autoEditDecisionLists];
  (*(handler + 2))(handlerCopy, v11);

  return 0;
}

- (PXStoryPassthroughAutoEditDecisionListsProducer)initWithAutoEditDecisionLists:(id)lists
{
  listsCopy = lists;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughAutoEditDecisionListsProducer;
  v5 = [(PXStoryPassthroughAutoEditDecisionListsProducer *)&v9 init];
  if (v5)
  {
    v6 = [listsCopy copy];
    autoEditDecisionLists = v5->_autoEditDecisionLists;
    v5->_autoEditDecisionLists = v6;
  }

  return v5;
}

@end