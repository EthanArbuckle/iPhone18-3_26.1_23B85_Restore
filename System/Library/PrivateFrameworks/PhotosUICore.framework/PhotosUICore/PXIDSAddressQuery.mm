@interface PXIDSAddressQuery
- (NSSet)remainingDestinations;
- (PXIDSAddressQuery)initWithDestinations:(id)destinations resultHandler:(id)handler;
- (id)popStashedResults;
- (void)stashDestination:(id)destination withResult:(BOOL)result;
@end

@implementation PXIDSAddressQuery

- (NSSet)remainingDestinations
{
  v2 = [(NSMutableSet *)self->_mutableRemainingDestinations copy];

  return v2;
}

- (id)popStashedResults
{
  v3 = [(NSMutableDictionary *)self->_mutableStashedResults copy];
  mutableStashedResults = self->_mutableStashedResults;
  self->_mutableStashedResults = 0;

  return v3;
}

- (void)stashDestination:(id)destination withResult:(BOOL)result
{
  resultCopy = result;
  destinationCopy = destination;
  v14 = destinationCopy;
  if (!destinationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

    destinationCopy = 0;
  }

  if (([(NSMutableSet *)self->_mutableRemainingDestinations containsObject:destinationCopy]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"[_mutableRemainingDestinations containsObject:destination]"}];
  }

  mutableStashedResults = self->_mutableStashedResults;
  ++self->_resultsCount;
  if (!mutableStashedResults)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = self->_mutableStashedResults;
    self->_mutableStashedResults = dictionary;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:resultCopy];
  [(NSMutableDictionary *)self->_mutableStashedResults setObject:v11 forKeyedSubscript:v14];

  [(NSMutableSet *)self->_mutableRemainingDestinations removeObject:v14];
}

- (PXIDSAddressQuery)initWithDestinations:(id)destinations resultHandler:(id)handler
{
  destinationsCopy = destinations;
  handlerCopy = handler;
  if ([destinationsCopy count])
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"destinations.count > 0"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = PXIDSAddressQuery;
  v9 = [(PXIDSAddressQuery *)&v17 init];
  if (v9)
  {
    v9->_destinationsCount = [destinationsCopy count];
    v10 = [MEMORY[0x1E695DFA8] setWithArray:destinationsCopy];
    mutableRemainingDestinations = v9->_mutableRemainingDestinations;
    v9->_mutableRemainingDestinations = v10;

    v12 = [handlerCopy copy];
    resultHandler = v9->_resultHandler;
    v9->_resultHandler = v12;

    v9->_resultsCount = 0;
  }

  return v9;
}

@end