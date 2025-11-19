@interface PXIDSAddressQuery
- (NSSet)remainingDestinations;
- (PXIDSAddressQuery)initWithDestinations:(id)a3 resultHandler:(id)a4;
- (id)popStashedResults;
- (void)stashDestination:(id)a3 withResult:(BOOL)a4;
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

- (void)stashDestination:(id)a3 withResult:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v14 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

    v7 = 0;
  }

  if (([(NSMutableSet *)self->_mutableRemainingDestinations containsObject:v7]& 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"[_mutableRemainingDestinations containsObject:destination]"}];
  }

  mutableStashedResults = self->_mutableStashedResults;
  ++self->_resultsCount;
  if (!mutableStashedResults)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = self->_mutableStashedResults;
    self->_mutableStashedResults = v9;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [(NSMutableDictionary *)self->_mutableStashedResults setObject:v11 forKeyedSubscript:v14];

  [(NSMutableSet *)self->_mutableRemainingDestinations removeObject:v14];
}

- (PXIDSAddressQuery)initWithDestinations:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"destinations.count > 0"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXIDSAddressQueryController.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = PXIDSAddressQuery;
  v9 = [(PXIDSAddressQuery *)&v17 init];
  if (v9)
  {
    v9->_destinationsCount = [v7 count];
    v10 = [MEMORY[0x1E695DFA8] setWithArray:v7];
    mutableRemainingDestinations = v9->_mutableRemainingDestinations;
    v9->_mutableRemainingDestinations = v10;

    v12 = [v8 copy];
    resultHandler = v9->_resultHandler;
    v9->_resultHandler = v12;

    v9->_resultsCount = 0;
  }

  return v9;
}

@end