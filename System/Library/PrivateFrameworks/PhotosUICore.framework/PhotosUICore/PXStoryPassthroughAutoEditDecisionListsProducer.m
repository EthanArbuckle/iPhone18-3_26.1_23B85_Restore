@interface PXStoryPassthroughAutoEditDecisionListsProducer
- (PXStoryPassthroughAutoEditDecisionListsProducer)initWithAutoEditDecisionLists:(id)a3;
- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)a3 songs:(id)a4 colorGradeCategoriesBySong:(id)a5 resultHandler:(id)a6;
- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5;
@end

@implementation PXStoryPassthroughAutoEditDecisionListsProducer

- (id)requestDefaultAutoEditDecisionListsWithColorGradeCategory:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5
{
  v7 = a5;
  v8 = [PXStoryProducerResult alloc];
  v9 = [(PXStoryPassthroughAutoEditDecisionListsProducer *)self autoEditDecisionLists];
  v10 = [(PXStoryProducerResult *)v8 initWithObject:v9];
  (*(a5 + 2))(v7, v10);

  return 0;
}

- (id)requestAutoEditDecisionListsWithOptions:(unint64_t)a3 songs:(id)a4 colorGradeCategoriesBySong:(id)a5 resultHandler:(id)a6
{
  v8 = a6;
  v9 = [PXStoryProducerResult alloc];
  v10 = [(PXStoryPassthroughAutoEditDecisionListsProducer *)self autoEditDecisionLists];
  v11 = [(PXStoryProducerResult *)v9 initWithObject:v10];
  (*(a6 + 2))(v8, v11);

  return 0;
}

- (PXStoryPassthroughAutoEditDecisionListsProducer)initWithAutoEditDecisionLists:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughAutoEditDecisionListsProducer;
  v5 = [(PXStoryPassthroughAutoEditDecisionListsProducer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    autoEditDecisionLists = v5->_autoEditDecisionLists;
    v5->_autoEditDecisionLists = v6;
  }

  return v5;
}

@end