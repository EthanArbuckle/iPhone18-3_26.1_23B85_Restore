@interface PUReuseQueue
- (PUReuseQueue)init;
- (id)dequeueObjectWithReuseIdentifier:(id)a3 isReused:(BOOL *)a4;
- (void)enqueueObjectForReuse:(id)a3 withReuseIdentifier:(id)a4;
- (void)registerObjectCreationBlock:(id)a3 withReuseIdentifier:(id)a4;
@end

@implementation PUReuseQueue

- (void)enqueueObjectForReuse:(id)a3 withReuseIdentifier:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_3:
  v8 = [(PUReuseQueue *)self _reusableObjectsByReuseIdentifier];
  v9 = [v8 objectForKeyedSubscript:v7];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    [v8 setObject:v9 forKeyedSubscript:v7];
  }

  [v9 addObject:v12];
}

- (id)dequeueObjectWithReuseIdentifier:(id)a3 isReused:(BOOL *)a4
{
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];
  }

  v8 = [(PUReuseQueue *)self _reusableObjectsByReuseIdentifier];
  v9 = [v8 objectForKeyedSubscript:v7];
  if (![v9 count] || !-[PUReuseQueue isReuseEnabled](self, "isReuseEnabled"))
  {
    v12 = [(PUReuseQueue *)self _objectCreationBlocksByReuseIdentifier];
    v13 = [v12 objectForKeyedSubscript:v7];

    if (v13)
    {
      v10 = v13[2](v13);
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = [v9 firstObject];
  [v9 removeObjectAtIndex:0];
  v11 = 1;
  if (a4)
  {
LABEL_11:
    *a4 = v11;
  }

LABEL_12:

  return v10;
}

- (void)registerObjectCreationBlock:(id)a3 withReuseIdentifier:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"objectCreationBlock != NULL"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PUReuseQueue.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_3:
  v8 = [v12 copy];
  v9 = [(PUReuseQueue *)self _objectCreationBlocksByReuseIdentifier];
  [v9 setObject:v8 forKeyedSubscript:v7];
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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    objectCreationBlocksByReuseIdentifier = v3->__objectCreationBlocksByReuseIdentifier;
    v3->__objectCreationBlocksByReuseIdentifier = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    reusableObjectsByReuseIdentifier = v3->__reusableObjectsByReuseIdentifier;
    v3->__reusableObjectsByReuseIdentifier = v6;
  }

  return v3;
}

@end