@interface PXStoryPassthroughPersistableRecipeProducer
- (PXStoryPassthroughPersistableRecipeProducer)initWithPersistableRecipe:(id)a3;
- (id)requestPersistableRecipeWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryPassthroughPersistableRecipeProducer

- (id)requestPersistableRecipeWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = [PXStoryPersistableRecipeResult alloc];
  v7 = [(PXStoryPassthroughPersistableRecipeProducer *)self persistableRecipe];
  v8 = [(PXStoryPersistableRecipeResult *)v6 initWithPersistableRecipe:v7];

  v9 = [[PXStoryProducerResult alloc] initWithObject:v8];
  v5[2](v5, v9);

  return 0;
}

- (PXStoryPassthroughPersistableRecipeProducer)initWithPersistableRecipe:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughPersistableRecipeProducer;
  v5 = [(PXStoryPassthroughPersistableRecipeProducer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    persistableRecipe = v5->_persistableRecipe;
    v5->_persistableRecipe = v6;
  }

  return v5;
}

@end