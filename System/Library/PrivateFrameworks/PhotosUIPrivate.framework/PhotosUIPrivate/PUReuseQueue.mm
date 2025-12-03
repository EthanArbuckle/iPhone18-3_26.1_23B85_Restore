@interface PUReuseQueue
- (PUReuseQueue)init;
- (id)dequeueObjectWithReuseIdentifier:(id)identifier isReused:(BOOL *)reused;
- (void)enqueueObjectForReuse:(id)reuse withReuseIdentifier:(id)identifier;
- (void)registerObjectCreationBlock:(id)block withReuseIdentifier:(id)identifier;
@end

@implementation PUReuseQueue

- (void)enqueueObjectForReuse:(id)reuse withReuseIdentifier:(id)identifier
{
  reuseCopy = reuse;
  identifierCopy = identifier;
  if (reuseCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_3:
  _reusableObjectsByReuseIdentifier = [(PUReuseQueue *)self _reusableObjectsByReuseIdentifier];
  array = [_reusableObjectsByReuseIdentifier objectForKeyedSubscript:identifierCopy];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [_reusableObjectsByReuseIdentifier setObject:array forKeyedSubscript:identifierCopy];
  }

  [array addObject:reuseCopy];
}

- (id)dequeueObjectWithReuseIdentifier:(id)identifier isReused:(BOOL *)reused
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];
  }

  _reusableObjectsByReuseIdentifier = [(PUReuseQueue *)self _reusableObjectsByReuseIdentifier];
  v9 = [_reusableObjectsByReuseIdentifier objectForKeyedSubscript:identifierCopy];
  if (![v9 count] || !-[PUReuseQueue isReuseEnabled](self, "isReuseEnabled"))
  {
    _objectCreationBlocksByReuseIdentifier = [(PUReuseQueue *)self _objectCreationBlocksByReuseIdentifier];
    v13 = [_objectCreationBlocksByReuseIdentifier objectForKeyedSubscript:identifierCopy];

    if (v13)
    {
      firstObject = v13[2](v13);
    }

    else
    {
      firstObject = 0;
    }

    v11 = 0;
    if (!reused)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  firstObject = [v9 firstObject];
  [v9 removeObjectAtIndex:0];
  v11 = 1;
  if (reused)
  {
LABEL_11:
    *reused = v11;
  }

LABEL_12:

  return firstObject;
}

- (void)registerObjectCreationBlock:(id)block withReuseIdentifier:(id)identifier
{
  blockCopy = block;
  identifierCopy = identifier;
  if (blockCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"objectCreationBlock != NULL"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_3:
  v8 = [blockCopy copy];
  _objectCreationBlocksByReuseIdentifier = [(PUReuseQueue *)self _objectCreationBlocksByReuseIdentifier];
  [_objectCreationBlocksByReuseIdentifier setObject:v8 forKeyedSubscript:identifierCopy];
}

- (PUReuseQueue)init
{
  v9.receiver = self;
  v9.super_class = PUReuseQueue;
  v2 = [(PUReuseQueue *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_reuseEnabled = 1;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objectCreationBlocksByReuseIdentifier = v3->__objectCreationBlocksByReuseIdentifier;
    v3->__objectCreationBlocksByReuseIdentifier = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    reusableObjectsByReuseIdentifier = v3->__reusableObjectsByReuseIdentifier;
    v3->__reusableObjectsByReuseIdentifier = dictionary2;
  }

  return v3;
}

@end