@interface UIAvoidanceCoordinator
- (CGRect)avoidanceFrame;
- (UIAvoidanceCoordinator)init;
- (id)findBlockadesForName:(id)name;
- (id)findClientsForBlockade:(id)blockade;
- (id)findNamesForBlockade:(id)blockade;
- (void)addAvoidanceObject:(id)object;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)releaseAll:(id)all withType:(unint64_t)type;
- (void)removeAvoidanceObject:(id)object;
- (void)setGroupOfBlockades:(id)blockades forBlockadeIdentifier:(id)identifier;
- (void)updateClients:(id)clients;
@end

@implementation UIAvoidanceCoordinator

- (UIAvoidanceCoordinator)init
{
  v8.receiver = self;
  v8.super_class = UIAvoidanceCoordinator;
  v2 = [(UIAvoidanceCoordinator *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    blockades = v2->_blockades;
    v2->_blockades = dictionary;

    v5 = [MEMORY[0x1E695DFA8] set];
    clients = v2->_clients;
    v2->_clients = v5;
  }

  return v2;
}

- (void)releaseAll:(id)all withType:(unint64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  allCopy = all;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [allCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allCopy);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __46__UIAvoidanceCoordinator_releaseAll_withType___block_invoke;
        v12[3] = &unk_1E712A2B8;
        v12[4] = self;
        ForPropertiesMatchingType(type, v11, v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [allCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)dealloc
{
  [(UIAvoidanceCoordinator *)self releaseAll:self->_blockades withType:1];
  [(UIAvoidanceCoordinator *)self releaseAll:self->_clients withType:2];
  v3.receiver = self;
  v3.super_class = UIAvoidanceCoordinator;
  [(UIAvoidanceCoordinator *)&v3 dealloc];
}

- (void)setGroupOfBlockades:(id)blockades forBlockadeIdentifier:(id)identifier
{
  blockadesCopy = blockades;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_blockades objectForKey:identifierCopy];
  if (blockadesCopy)
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A blockade already exists with the name '%@', unable to create group", identifierCopy}];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Expected NSArray, got %@", objc_opt_class()}];
    }

    [(NSMutableDictionary *)self->_blockades setObject:blockadesCopy forKeyedSubscript:identifierCopy];
  }

  else if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Blockade name '%@' is not a group", identifierCopy}];
    }

    [(NSMutableDictionary *)self->_blockades removeObjectForKey:identifierCopy];
  }
}

- (void)addAvoidanceObject:(id)object
{
  objectCopy = object;
  Type = FindType(objectCopy);
  v6 = Type;
  if (Type)
  {
    if (Type)
    {
      v7 = objectCopy;
      blockades = self->_blockades;
      blockadeIdentifier = [v7 blockadeIdentifier];
      v10 = [(NSMutableDictionary *)blockades objectForKey:blockadeIdentifier];

      if (v10)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __45__UIAvoidanceCoordinator_addAvoidanceObject___block_invoke;
        v19[3] = &unk_1E712A2B8;
        v19[4] = self;
        ForPropertiesMatchingType(1, v10, v19);
      }

      blockadeIdentifier2 = [v7 blockadeIdentifier];
      if (blockadeIdentifier2 && (v12 = blockadeIdentifier2, [v7 blockadeIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", &stru_1EFB14550), v13, v12, (v14 & 1) == 0))
      {
        v15 = self->_blockades;
        blockadeIdentifier3 = [v7 blockadeIdentifier];
        [(NSMutableDictionary *)v15 setObject:v7 forKey:blockadeIdentifier3];
      }

      else
      {
        v6 &= 2u;
      }
    }

    if ((v6 & 2) != 0)
    {
      if ([(NSMutableSet *)self->_clients containsObject:objectCopy])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __45__UIAvoidanceCoordinator_addAvoidanceObject___block_invoke_2;
        v18[3] = &unk_1E712A2B8;
        v18[4] = self;
        ForPropertiesMatchingType(2, objectCopy, v18);
      }

      else
      {
        [(NSMutableSet *)self->_clients addObject:objectCopy];
      }
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Object %@ must conform to at least one of UIAvoidanceBlockade, UIAvoidanceClient", objectCopy}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__UIAvoidanceCoordinator_addAvoidanceObject___block_invoke_3;
  v17[3] = &unk_1E712A2B8;
  v17[4] = self;
  ForPropertiesMatchingType(v6, objectCopy, v17);
}

- (void)removeAvoidanceObject:(id)object
{
  objectCopy = object;
  Type = FindType(objectCopy);
  if (Type)
  {
    v6 = objectCopy;
    blockades = self->_blockades;
    blockadeIdentifier = [v6 blockadeIdentifier];
    v9 = [(NSMutableDictionary *)blockades objectForKey:blockadeIdentifier];

    if (v9)
    {
      v10 = self->_blockades;
      blockadeIdentifier2 = [v6 blockadeIdentifier];
      [(NSMutableDictionary *)v10 removeObjectForKey:blockadeIdentifier2];
    }

    else
    {
      Type &= 2u;
    }
  }

  if ((Type & 2) == 0)
  {
LABEL_10:
    if (!Type)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (![(NSMutableSet *)self->_clients containsObject:objectCopy])
  {
    Type &= ~2uLL;
    goto LABEL_10;
  }

  [(NSMutableSet *)self->_clients removeObject:objectCopy];
LABEL_11:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__UIAvoidanceCoordinator_removeAvoidanceObject___block_invoke;
  v14[3] = &unk_1E712A2B8;
  v14[4] = self;
  ForPropertiesMatchingType(Type, objectCopy, v14);
  if (Type)
  {
    blockadeIdentifier3 = [objectCopy blockadeIdentifier];
    v13 = [(UIAvoidanceCoordinator *)self findClientsForBlockade:blockadeIdentifier3];
    [(UIAvoidanceCoordinator *)self updateClients:v13];
  }

LABEL_13:
}

- (id)findNamesForBlockade:(id)blockade
{
  v23 = *MEMORY[0x1E69E9840];
  blockadeCopy = blockade;
  v5 = [MEMORY[0x1E695DFA8] setWithObject:blockadeCopy];
  v6 = blockadeCopy;
  v7 = 0;
  v17 = v6;
  while (2)
  {
    v8 = v7;
    v7 = v6;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_blockades;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [(NSMutableDictionary *)self->_blockades objectForKey:v14];
        if ([v15 conformsToProtocol:&unk_1F016E2B0] & 1) == 0 && (objc_msgSend(v15, "containsObject:", v7))
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

      [v5 addObject:v14];
      v6 = v14;

      if (v6)
      {
        continue;
      }
    }

    else
    {
LABEL_14:
    }

    break;
  }

  return v5;
}

- (id)findClientsForBlockade:(id)blockade
{
  v23 = *MEMORY[0x1E69E9840];
  blockadeCopy = blockade;
  v5 = blockadeCopy;
  if (blockadeCopy && ![blockadeCopy isEqualToString:&stru_1EFB14550])
  {
    v17 = v5;
    v7 = [(UIAvoidanceCoordinator *)self findNamesForBlockade:v5];
    v6 = [MEMORY[0x1E695DFA8] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_clients;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 conformsToProtocol:&unk_1F016E310])
          {
            blockades = [v13 blockades];
            v15 = [v7 intersectsSet:blockades];

            if (v15)
            {
              [v6 addObject:v13];
            }
          }
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v5 = v17;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (id)findBlockadesForName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DF70] arrayWithObject:nameCopy];
  while ([v6 count])
  {
    lastObject = [v6 lastObject];
    [v6 removeLastObject];
    v8 = [(NSMutableDictionary *)self->_blockades objectForKey:lastObject];
    if ([v8 conformsToProtocol:&unk_1F016E2B0])
    {
      [v5 addObject:v8];
    }

    else
    {
      [v6 addObjectsFromArray:v8];
    }
  }

  return v5;
}

- (void)updateClients:(id)clients
{
  v48 = *MEMORY[0x1E69E9840];
  clientsCopy = clients;
  recurseCount = self->_recurseCount;
  if (recurseCount <= 10)
  {
    self->_recurseCount = recurseCount + 1;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = clientsCopy;
    v27 = [clientsCopy countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v27)
    {
      v26 = *v42;
      v24 = *MEMORY[0x1E695D940];
      do
      {
        v6 = 0;
        do
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v6;
          v7 = *(*(&v41 + 1) + 8 * v6);
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v28 = v7;
          blockades = [v7 blockades];
          v8 = [blockades countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v8)
          {
            v9 = v8;
            v31 = *v38;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v38 != v31)
                {
                  objc_enumerationMutation(blockades);
                }

                v11 = *(*(&v37 + 1) + 8 * i);
                selfCopy = self;
                v13 = [(UIAvoidanceCoordinator *)self findBlockadesForName:v11];
                v14 = [MEMORY[0x1E695DFA8] set];
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v15 = v13;
                v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v34;
                  do
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v34 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      blockadeShapes = [*(*(&v33 + 1) + 8 * j) blockadeShapes];
                      [v14 unionSet:blockadeShapes];
                    }

                    v17 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v17);
                }

                [dictionary setObject:v14 forKey:v11];
                self = selfCopy;
              }

              v9 = [blockades countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v9);
          }

          avoidanceApplicator = [v28 avoidanceApplicator];
          if (!avoidanceApplicator)
          {
            [MEMORY[0x1E695DF30] raise:v24 format:{@"Client %@ needs an applicator", v28}];
          }

          avoidanceController = [v28 avoidanceController];
          v23 = [avoidanceController avoid:dictionary forClient:v28 withCoordinator:self];
          [avoidanceApplicator updateClient:v28 toPosition:v23];

          v6 = v29 + 1;
        }

        while (v29 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v27);
    }

    --self->_recurseCount;
    clientsCopy = obj;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = changeCopy;
  if (context - 3 < 4)
  {
    v13 = [MEMORY[0x1E695DFD8] setWithObject:objectCopy];
    [(UIAvoidanceCoordinator *)self updateClients:v13];

    goto LABEL_20;
  }

  if (context == 1)
  {
    v16 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
    if (v16)
    {
      v15 = [(UIAvoidanceCoordinator *)self findClientsForBlockade:v16];
      [(NSMutableDictionary *)self->_blockades removeObjectForKey:v16];
    }

    else
    {
      v15 = 0;
    }

    v17 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
    if (v17)
    {
      v18 = [(UIAvoidanceCoordinator *)self findClientsForBlockade:v17];
      [(NSMutableDictionary *)self->_blockades setObject:objectCopy forKeyedSubscript:v17];
      v19 = v15;
      v20 = v18;
      v21 = v20;
      if (!v19)
      {
        v23 = v20;
        goto LABEL_18;
      }

      if (v20)
      {
        v22 = [v19 mutableCopy];
        [v22 intersectSet:v21];
        v23 = [v19 mutableCopy];
        [v23 unionSet:v21];
        [v23 minusSet:v22];

LABEL_18:
        [(UIAvoidanceCoordinator *)self updateClients:v23];

        goto LABEL_19;
      }
    }

    else if (!v15)
    {
      v21 = 0;
      v23 = 0;
      goto LABEL_18;
    }

    v23 = v15;
    v21 = 0;
    goto LABEL_18;
  }

  if (context != 2)
  {
    NSLog(&cfstr_UnknownContext.isa, context);
    goto LABEL_20;
  }

  blockadeIdentifier = [objectCopy blockadeIdentifier];
  v15 = [(UIAvoidanceCoordinator *)self findClientsForBlockade:blockadeIdentifier];

  [(UIAvoidanceCoordinator *)self updateClients:v15];
LABEL_19:

LABEL_20:
}

- (CGRect)avoidanceFrame
{
  x = self->_avoidanceFrame.origin.x;
  y = self->_avoidanceFrame.origin.y;
  width = self->_avoidanceFrame.size.width;
  height = self->_avoidanceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end