@interface UISystemNavigationAction
- (BOOL)sendResponseForDestination:(unint64_t)destination;
- (NSArray)destinations;
- (UISystemNavigationAction)initWithDestinationContexts:(id)contexts forResponseOnQueue:(id)queue withHandler:(id)handler;
- (id)URLForDestination:(unint64_t)destination;
- (id)_destinationContextForResponseDestination:(unint64_t)destination;
- (id)bundleIdForDestination:(unint64_t)destination;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)sceneIdentifierForDestination:(unint64_t)destination;
- (id)titleForDestination:(unint64_t)destination;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation UISystemNavigationAction

- (UISystemNavigationAction)initWithDestinationContexts:(id)contexts forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  queueCopy = queue;
  handlerCopy = handler;
  if (contextsCopy)
  {
    allKeys = [contextsCopy allKeys];
    v12 = [allKeys containsObject:&unk_1EFE308F8];

    if ((v12 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISystemNavigationAction.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"!destinationsToContexts || [[destinationsToContexts allKeys] containsObject:@(UISystemNavigationActionResponseDestinationPrimary)]"}];
    }
  }

  selfCopy = self;
  v15 = objc_alloc_init(MEMORY[0x1E698E700]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = contextsCopy;
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

  v27.receiver = selfCopy;
  v27.super_class = UISystemNavigationAction;
  v24 = [(UISystemNavigationAction *)&v27 initWithInfo:v15 timeout:queueCopy forResponseOnQueue:handlerCopy withHandler:0.0];

  return v24;
}

- (NSArray)destinations
{
  destinations = self->_destinations;
  if (!destinations)
  {
    array = [MEMORY[0x1E695DF70] array];
    info = [(UISystemNavigationAction *)self info];
    allSettings = [info allSettings];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__UISystemNavigationAction_destinations__block_invoke;
    v11[3] = &unk_1E7109700;
    v7 = array;
    v12 = v7;
    [allSettings enumerateRangesUsingBlock:v11];

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

- (id)titleForDestination:(unint64_t)destination
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:destination];
  title = [v3 title];

  return title;
}

- (id)bundleIdForDestination:(unint64_t)destination
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:destination];
  bundleId = [v3 bundleId];

  return bundleId;
}

- (id)URLForDestination:(unint64_t)destination
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:destination];
  v4 = [v3 URL];

  return v4;
}

- (id)sceneIdentifierForDestination:(unint64_t)destination
{
  v3 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:destination];
  sceneIdentifier = [v3 sceneIdentifier];

  return sceneIdentifier;
}

- (BOOL)sendResponseForDestination:(unint64_t)destination
{
  v5 = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:?];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    v7 = v6;
    if (destination == 1)
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

- (id)_destinationContextForResponseDestination:(unint64_t)destination
{
  if (destination == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  info = [(UISystemNavigationAction *)self info];
  v5 = [info objectForSetting:v3];

  return v5;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"secondaryDestinationContext";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"primaryDestinationContext";
  }

  else
  {
    return v3;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  object = [(UISystemNavigationAction *)self _destinationContextForResponseDestination:setting, object];
  v6 = [object description];

  return v6;
}

@end