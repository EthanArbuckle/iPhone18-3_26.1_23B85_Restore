@interface IPAEditDescription
+ (BOOL)containsValidOperations:(id)operations;
+ (Class)expectedOperationClass;
+ (id)presetifyAdjustmentStack:(id)stack;
+ (id)sortOperations:(id)operations withOrdering:(id)ordering;
+ (unint64_t)insertIndexForOperationWithIdentifier:(id)identifier inArray:(id)array withOrdering:(id)ordering;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescriptionRenderOperations:(id)operations;
- (IPAEditDescription)descriptionWithOperations:(id)operations;
- (IPAEditDescription)descriptionWithOperationsUpToUUID:(id)d;
- (IPAEditDescription)init;
- (IPAEditDescription)initWithOperations:(id)operations;
- (NSString)debugDescription;
- (id)_init;
- (id)_operationAtIndex:(unint64_t)index;
- (id)archivalRepresentation;
- (id)descriptionByAddingOperation:(id)operation;
- (id)descriptionByAddingOperation:(id)operation atIndex:(unint64_t)index;
- (id)descriptionByRemovingOperation:(id)operation;
- (id)descriptionByRemovingOperationAtIndex:(unint64_t)index;
- (id)descriptionByRemovingOperationsStartingAtIndex:(unint64_t)index;
- (id)descriptionByReplacingOperation:(id)operation atIndex:(unint64_t)index;
- (id)firstOperationWithIdentifier:(id)identifier;
- (id)operationAtIndex:(unint64_t)index;
- (id)operationWithUUID:(id)d;
- (id)operations;
- (unint64_t)firstIndexOfOperationWithIdentifier:(id)identifier;
- (unint64_t)indexOfOperationWithUUID:(id)d;
- (unint64_t)insertIndexForOperationWithIdentifier:(id)identifier;
- (unint64_t)sortOrderForOperationWithIdentifier:(id)identifier;
- (void)forEachImmutableOperation:(id)operation;
- (void)withImmutableOperationAtIndex:(unint64_t)index block:(id)block;
@end

@implementation IPAEditDescription

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@:%p operations=%@", objc_opt_class(), self, self->_operations];
  _debugDescriptionSuffix = [(IPAEditDescription *)self _debugDescriptionSuffix];
  v5 = _debugDescriptionSuffix;
  if (_debugDescriptionSuffix)
  {
    [v3 appendFormat:@" %@", _debugDescriptionSuffix];
  }

  [v3 appendString:@">"];
  v6 = [v3 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

  return v6;
}

- (IPAEditDescription)descriptionWithOperationsUpToUUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    _PFAssertFailHandler();
  }

  v5 = dCopy;
  selfCopy = self;
  v7 = [(NSArray *)selfCopy->_operations count];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = selfCopy->_operations;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        uUID = [v14 UUID];
        v16 = [v5 isEqual:uUID];

        if (v16)
        {
          break;
        }

        [v8 addObject:v14];
        if (v11 == ++v13)
        {
          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v17 = [(IPAEditDescription *)selfCopy descriptionWithOperations:v8];

    selfCopy = v17;
  }

  return selfCopy;
}

- (id)descriptionByRemovingOperationsStartingAtIndex:(unint64_t)index
{
  v5 = [(NSArray *)self->_operations count];
  selfCopy = self;
  if (v5 > index)
  {
    index = [(NSArray *)self->_operations subarrayWithRange:0, index];
    v8 = [(IPAEditDescription *)selfCopy descriptionWithOperations:index];

    selfCopy = v8;
  }

  return selfCopy;
}

- (id)descriptionByReplacingOperation:(id)operation atIndex:(unint64_t)index
{
  operationCopy = operation;
  selfCopy = self;
  if ([(NSArray *)selfCopy->_operations count]> index)
  {
    v8 = [(NSArray *)selfCopy->_operations mutableCopy];
    v9 = [operationCopy copy];
    [v8 replaceObjectAtIndex:index withObject:v9];
    v10 = [(IPAEditDescription *)selfCopy descriptionWithOperations:v8];

    selfCopy = v10;
  }

  return selfCopy;
}

- (id)descriptionByRemovingOperation:(id)operation
{
  v21 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  selfCopy = self;
  if (operationCopy)
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = selfCopy->_operations;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([v12 isEqual:{operationCopy, v16}] & 1) == 0)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [(NSArray *)selfCopy->_operations count];
    if (v13 != [v6 count])
    {
      v14 = [(IPAEditDescription *)selfCopy descriptionWithOperations:v6];

      selfCopy = v14;
    }
  }

  return selfCopy;
}

- (id)descriptionByRemovingOperationAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_operations count]<= index)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [(NSArray *)self->_operations mutableCopy];
    [v5 removeObjectAtIndex:index];
    selfCopy = [(IPAEditDescription *)self descriptionWithOperations:v5];
  }

  return selfCopy;
}

- (id)descriptionByAddingOperation:(id)operation atIndex:(unint64_t)index
{
  v6 = [operation copyWithZone:0];
  v7 = [(NSArray *)self->_operations mutableCopy];
  [v7 insertObject:v6 atIndex:index];
  v8 = [(IPAEditDescription *)self descriptionWithOperations:v7];

  return v8;
}

- (id)descriptionByAddingOperation:(id)operation
{
  v4 = [operation copyWithZone:0];
  v5 = [(NSArray *)self->_operations arrayByAddingObject:v4];
  v6 = [(IPAEditDescription *)self descriptionWithOperations:v5];

  return v6;
}

- (IPAEditDescription)descriptionWithOperations:(id)operations
{
  operationsCopy = operations;
  if (operationsCopy)
  {
    v4 = operationsCopy;
    _init = [objc_alloc(objc_opt_class()) _init];
    v6 = [v4 copy];
    v7 = _init[1];
    _init[1] = v6;

    return _init;
  }

  else
  {
    v9 = _PFAssertFailHandler();
    [(IPAEditDescription *)v9 withImmutableOperationAtIndex:v10 block:v11, v12];
  }

  return result;
}

- (void)withImmutableOperationAtIndex:(unint64_t)index block:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if ([(NSArray *)self->_operations count]> index)
    {
      v6 = [(NSArray *)self->_operations objectAtIndexedSubscript:index];
      blockCopy[2](blockCopy, v6);
    }
  }

  else
  {
    v7 = _PFAssertFailHandler();
    [(IPAEditDescription *)v7 forEachImmutableOperation:v8, v9];
  }
}

- (void)forEachImmutableOperation:(id)operation
{
  v16 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_operations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        operationCopy[2](operationCopy, v8++, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)operationWithUUID:(id)d
{
  v4 = [(IPAEditDescription *)self indexOfOperationWithUUID:d];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(IPAEditDescription *)self operationAtIndex:v4];
  }

  return v5;
}

- (id)operationAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || [(NSArray *)self->_operations count]<= index)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_operations objectAtIndexedSubscript:index];
    v6 = [v5 copy];
  }

  return v6;
}

- (id)firstOperationWithIdentifier:(id)identifier
{
  v4 = [(IPAEditDescription *)self firstIndexOfOperationWithIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(IPAEditDescription *)self operationAtIndex:v4];
  }

  return v5;
}

- (unint64_t)insertIndexForOperationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() insertIndexForOperationWithIdentifier:identifierCopy inArray:self->_operations withOrdering:self];

  return v5;
}

- (unint64_t)indexOfOperationWithUUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    _PFAssertFailHandler();
  }

  v5 = dCopy;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_operations;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
LABEL_4:
    v11 = 0;
    v12 = v9;
    v9 += v8;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      uUID = [*(*(&v16 + 1) + 8 * v11) UUID];
      v14 = [uUID isEqual:v5];

      if (v14)
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (unint64_t)firstIndexOfOperationWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    _PFAssertFailHandler();
  }

  v5 = identifierCopy;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_operations;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
LABEL_4:
    v11 = 0;
    v12 = v9;
    v9 += v8;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      identifier = [*(*(&v16 + 1) + 8 * v11) identifier];
      v14 = [identifier isEqualToString:v5];

      if (v14)
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)operations
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_operations copyItems:1];

  return v2;
}

- (BOOL)isEqualToDescriptionRenderOperations:(id)operations
{
  operationsCopy = operations;
  operationCount = [operationsCopy operationCount];
  if (operationCount == [(IPAEditDescription *)self operationCount])
  {
    objectEnumerator = [(NSArray *)self->_operations objectEnumerator];
    objectEnumerator2 = [operationsCopy[1] objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    nextObject2 = [objectEnumerator2 nextObject];
    v10 = nextObject2;
    LOBYTE(v11) = 1;
    if (nextObject && nextObject2)
    {
      while (1)
      {
        v11 = [nextObject isEqual:v10];
        if (!v11)
        {
          break;
        }

        nextObject3 = [objectEnumerator nextObject];

        nextObject4 = [objectEnumerator2 nextObject];

        if (nextObject3)
        {
          v10 = nextObject4;
          nextObject = nextObject3;
          if (nextObject4)
          {
            continue;
          }
        }

        goto LABEL_10;
      }
    }

    nextObject3 = nextObject;
    nextObject4 = v10;
LABEL_10:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAEditDescription *)self isEqualToDescription:equalCopy];

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = IPAEditDescription;
  return [(IPAEditDescription *)&v3 init];
}

- (IPAEditDescription)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"unsupported method"];

  return 0;
}

+ (id)sortOperations:(id)operations withOrdering:(id)ordering
{
  v36 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  orderingCopy = ordering;
  if (!orderingCopy)
  {
    _PFAssertFailHandler();
  }

  if (operationsCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = operationsCopy;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            identifier = [v14 identifier];
            if (identifier)
            {
              v16 = [self insertIndexForOperationWithIdentifier:identifier inArray:array withOrdering:orderingCopy];
              if (v16 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v17 = IPAAdjustmentGetLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  selfCopy = self;
                  v33 = 2112;
                  v34 = v14;
                  v18 = v17;
                  v19 = "%@ unable to divine insert index for operation: %@";
                  v20 = 22;
                  goto LABEL_17;
                }

                goto LABEL_18;
              }

              [array insertObject:v14 atIndex:v16];
            }

            else
            {
              v17 = IPAAdjustmentGetLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                selfCopy = v14;
                v18 = v17;
                v19 = "%@ does not have an identifier";
                v20 = 12;
LABEL_17:
                _os_log_impl(&dword_25E5BB000, v18, OS_LOG_TYPE_ERROR, v19, buf, v20);
              }

LABEL_18:
            }

            goto LABEL_21;
          }

          v14 = IPAAdjustmentGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy = v13;
            _os_log_impl(&dword_25E5BB000, v14, OS_LOG_TYPE_ERROR, "%@ is not an edit operation", buf, 0xCu);
          }

LABEL_21:
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v10);
    }

    v21 = [array count];
    if (v21 != [v8 count])
    {
      v22 = IPAAdjustmentGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [array count];
        v24 = [v8 count];
        *buf = 134218240;
        selfCopy = v23;
        v33 = 2048;
        v34 = v24;
        _os_log_impl(&dword_25E5BB000, v22, OS_LOG_TYPE_ERROR, "ordered count %lu doesn't match input count %lu - something went wrong (see above)", buf, 0x16u);
      }
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

+ (unint64_t)insertIndexForOperationWithIdentifier:(id)identifier inArray:(id)array withOrdering:(id)ordering
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  arrayCopy = array;
  orderingCopy = ordering;
  if (!identifierCopy)
  {
    _PFAssertFailHandler();
LABEL_16:
    _PFAssertFailHandler();
  }

  if (!arrayCopy)
  {
    goto LABEL_16;
  }

  v10 = orderingCopy;
  v22 = identifierCopy;
  v11 = [orderingCopy sortOrderForOperationWithIdentifier:identifierCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = arrayCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v24;
LABEL_5:
    v17 = 0;
    v18 = v15;
    v15 += v14;
    while (1)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(v12);
      }

      identifier = [*(*(&v23 + 1) + 8 * v17) identifier];
      v20 = [v10 sortOrderForOperationWithIdentifier:identifier];

      if (v11 < v20)
      {
        break;
      }

      ++v18;
      if (v14 == ++v17)
      {
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v18 = [v12 count];
LABEL_14:

  return v18;
}

- (id)_operationAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    if ([(NSArray *)self->_operations count]<= index)
    {
      v4 = 0;
    }

    else
    {
      v4 = [(NSArray *)self->_operations objectAtIndexedSubscript:index];
    }
  }

  return v4;
}

- (IPAEditDescription)initWithOperations:(id)operations
{
  operationsCopy = operations;
  v9.receiver = self;
  v9.super_class = IPAEditDescription;
  v5 = [(IPAEditDescription *)&v9 init];
  if (v5)
  {
    if (operationsCopy)
    {
      v6 = [operationsCopy copy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    operations = v5->_operations;
    v5->_operations = v6;
  }

  return v5;
}

- (unint64_t)sortOrderForOperationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  return [(IPAEditDescription *)v5 archivalRepresentation];
}

- (id)archivalRepresentation
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  return [(IPAEditDescription *)v3 containsValidOperations:v4, v5];
}

+ (BOOL)containsValidOperations:(id)operations
{
  v16 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  [objc_opt_class() expectedOperationClass];
  v4 = [operationsCopy count];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = operationsCopy;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  return v4 == 0;
}

+ (Class)expectedOperationClass
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  return [(IPAEditDescription *)v3 presetifyAdjustmentStack:v4, v5];
}

+ (id)presetifyAdjustmentStack:(id)stack
{
  stackCopy = stack;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  [(IPAPhotoAdjustmentStack *)v5 .cxx_destruct];
  return result;
}

@end