@interface UISystemNavigationAction
- (BOOL)sendResponseForDestination:(unint64_t)a3;
- (NSArray)destinations;
- (UISystemNavigationAction)initWithDestinationContexts:(id)a3 forResponseOnQueue:(id)a4 withHandler:(id)a5;
- (id)URLForDestination:(unint64_t)a3;
- (id)_destinationContextForResponseDestination:(unint64_t)a3;
- (id)bundleIdForDestination:(unint64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)sceneIdentifierForDestination:(unint64_t)a3;
- (id)titleForDestination:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation UISystemNavigationAction

- (UISystemNavigationAction)initWithDestinationContexts:(id)a3 forResponseOnQueue:(id)a4 withHandler:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v26 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 allKeys];
    v12 = [v11 containsObject:&unk_1EFE308F8];

    if ((v12 & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"UISystemNavigationAction.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"!destinationsToContexts || [[destinationsToContexts allKeys] containsObject:@(UISystemNavigationActionResponseDestinationPrimary)]"}];
    }
  }

  v14 = self;
  v15 = objc_alloc_init(MEMORY[0x1E698E700]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        v22 = [v16 objectForKey:v21];
        if ([v21 integerValue] == 1)
        {
          v23 = 2;
        }

        else
        {
          v23 = 1;
        }

        [v15 setObject:v22 forSetting:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  v27.receiver = v14;
  v27.super_class = UISystemNavigationAction;
  v24 = [(UISystemNavigationAction *)&v27 initWithInfo:v15 timeout:v26 forResponseOnQueue:v10 withHandler:0.0];

  return v24;
}

- (NSArray)destinations
{
  destinations = self->_destinations;
  if (!destinations)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [(UISystemNavigationAction *)self info];
    v6 = [v5 allSettings];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__UISystemNavigationAction_destinations__block_invoke;
    v11[3] = &unk_1E7109700;
    v7 = v4;
    v12 = v7;
    [v6 enumerateRangesUsingBlock:v11];

    v8 = self->_destinations;
    self->_destinations = v7;
    v9 = v7;

    destinations = self->_destinations;
  }

  return destinations;
}

void __40__UISystemNavigationAction_destinations__block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v3 = a3;
    v5 = a2 - 2;
    do
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 == 0];
      [v6 addObject:v7];

      ++v5;
      --v3;
    }

    while (v3);
  }
}

- (id)titleForDestination:(unint64_t)a3
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:a3];
  v4 = [v3 title];

  return v4;
}

- (id)bundleIdForDestination:(unint64_t)a3
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:a3];
  v4 = [v3 bundleId];

  return v4;
}

- (id)URLForDestination:(unint64_t)a3
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:a3];
  v4 = [v3 URL];

  return v4;
}

- (id)sceneIdentifierForDestination:(unint64_t)a3
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:a3];
  v4 = [v3 sceneIdentifier];

  return v4;
}

- (BOOL)sendResponseForDestination:(unint64_t)a3
{
  v5 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:?];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    v7 = v6;
    if (a3 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [v6 setObject:MEMORY[0x1E695E118] forSetting:v8];
    v9 = [MEMORY[0x1E698E600] responseWithInfo:v7];
    [(UISystemNavigationAction *)self sendResponse:v9];
  }

  return v5 != 0;
}

- (id)_destinationContextForResponseDestination:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(UISystemNavigationAction *)self info];
  v5 = [v4 objectForSetting:v3];

  return v5;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"secondaryDestinationContext";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"primaryDestinationContext";
  }

  else
  {
    return v3;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v5 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:a5, a4];
  v6 = [v5 description];

  return v6;
}

@end