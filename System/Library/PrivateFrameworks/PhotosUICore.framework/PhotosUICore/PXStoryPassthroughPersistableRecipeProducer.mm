@interface PXStoryPassthroughPersistableRecipeProducer
- (PXStoryPassthroughPersistableRecipeProducer)initWithPersistableRecipe:(id)recipe;
- (id)requestPersistableRecipeWithOptions:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughPersistableRecipeProducer

- (id)requestPersistableRecipeWithOptions:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [PXStoryPersistableRecipeResult alloc];
  persistableRecipe = [(PXStoryPassthroughPersistableRecipeProducer *)self persistableRecipe];
  v8 = [(PXStoryPersistableRecipeResult *)v6 initWithPersistableRecipe:persistableRecipe];

  v9 = [[PXStoryProducerResult alloc] initWithObject:v8];
  handlerCopy[2](handlerCopy, v9);

  return 0;
}

- (PXStoryPassthroughPersistableRecipeProducer)initWithPersistableRecipe:(id)recipe
{
  recipeCopy = recipe;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughPersistableRecipeProducer;
  v5 = [(PXStoryPassthroughPersistableRecipeProducer *)&v9 init];
  if (v5)
  {
    v6 = [recipeCopy copyWithZone:0];
    persistableRecipe = v5->_persistableRecipe;
    v5->_persistableRecipe = v6;
  }

  return v5;
}

@end