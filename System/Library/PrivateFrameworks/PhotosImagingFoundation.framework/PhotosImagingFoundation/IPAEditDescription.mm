@interface IPAEditDescription
+ (BOOL)containsValidOperations:(id)a3;
+ (Class)expectedOperationClass;
+ (id)presetifyAdjustmentStack:(id)a3;
+ (id)sortOperations:(id)a3 withOrdering:(id)a4;
+ (unint64_t)insertIndexForOperationWithIdentifier:(id)a3 inArray:(id)a4 withOrdering:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescriptionRenderOperations:(id)a3;
- (IPAEditDescription)descriptionWithOperations:(id)a3;
- (IPAEditDescription)descriptionWithOperationsUpToUUID:(id)a3;
- (IPAEditDescription)init;
- (IPAEditDescription)initWithOperations:(id)a3;
- (NSString)debugDescription;
- (id)_init;
- (id)_operationAtIndex:(unint64_t)a3;
- (id)archivalRepresentation;
- (id)descriptionByAddingOperation:(id)a3;
- (id)descriptionByAddingOperation:(id)a3 atIndex:(unint64_t)a4;
- (id)descriptionByRemovingOperation:(id)a3;
- (id)descriptionByRemovingOperationAtIndex:(unint64_t)a3;
- (id)descriptionByRemovingOperationsStartingAtIndex:(unint64_t)a3;
- (id)descriptionByReplacingOperation:(id)a3 atIndex:(unint64_t)a4;
- (id)firstOperationWithIdentifier:(id)a3;
- (id)operationAtIndex:(unint64_t)a3;
- (id)operationWithUUID:(id)a3;
- (id)operations;
- (unint64_t)firstIndexOfOperationWithIdentifier:(id)a3;
- (unint64_t)indexOfOperationWithUUID:(id)a3;
- (unint64_t)insertIndexForOperationWithIdentifier:(id)a3;
- (unint64_t)sortOrderForOperationWithIdentifier:(id)a3;
- (void)forEachImmutableOperation:(id)a3;
- (void)withImmutableOperationAtIndex:(unint64_t)a3 block:(id)a4;
@end

@implementation IPAEditDescription

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@:%p operations=%@", objc_opt_class(), self, self->_operations];
  v4 = [(IPAEditDescription *)self _debugDescriptionSuffix];
  v5 = v4;
  if (v4)
  {
    [v3 appendFormat:@" %@", v4];
  }

  [v3 appendString:@">"];
  v6 = [v3 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

  return v6;
}

- (IPAEditDescription)descriptionWithOperationsUpToUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _PFAssertFailHandler();
  }

  v5 = v4;
  v6 = self;
  v7 = [(NSArray *)v6->_operations count];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6->_operations;
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
        v15 = [v14 UUID];
        v16 = [v5 isEqual:v15];

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

    v17 = [(IPAEditDescription *)v6 descriptionWithOperations:v8];

    v6 = v17;
  }

  return v6;
}

- (id)descriptionByRemovingOperationsStartingAtIndex:(unint64_t)a3
{
  v5 = [(NSArray *)self->_operations count];
  v6 = self;
  if (v5 > a3)
  {
    v7 = [(NSArray *)self->_operations subarrayWithRange:0, a3];
    v8 = [(IPAEditDescription *)v6 descriptionWithOperations:v7];

    v6 = v8;
  }

  return v6;
}

- (id)descriptionByReplacingOperation:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  if ([(NSArray *)v7->_operations count]> a4)
  {
    v8 = [(NSArray *)v7->_operations mutableCopy];
    v9 = [v6 copy];
    [v8 replaceObjectAtIndex:a4 withObject:v9];
    v10 = [(IPAEditDescription *)v7 descriptionWithOperations:v8];

    v7 = v10;
  }

  return v7;
}

- (id)descriptionByRemovingOperation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  if (v4)
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5->_operations;
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
          if (([v12 isEqual:{v4, v16}] & 1) == 0)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [(NSArray *)v5->_operations count];
    if (v13 != [v6 count])
    {
      v14 = [(IPAEditDescription *)v5 descriptionWithOperations:v6];

      v5 = v14;
    }
  }

  return v5;
}

- (id)descriptionByRemovingOperationAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_operations count]<= a3)
  {
    v6 = self;
  }

  else
  {
    v5 = [(NSArray *)self->_operations mutableCopy];
    [v5 removeObjectAtIndex:a3];
    v6 = [(IPAEditDescription *)self descriptionWithOperations:v5];
  }

  return v6;
}

- (id)descriptionByAddingOperation:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [a3 copyWithZone:0];
  v7 = [(NSArray *)self->_operations mutableCopy];
  [v7 insertObject:v6 atIndex:a4];
  v8 = [(IPAEditDescription *)self descriptionWithOperations:v7];

  return v8;
}

- (id)descriptionByAddingOperation:(id)a3
{
  v4 = [a3 copyWithZone:0];
  v5 = [(NSArray *)self->_operations arrayByAddingObject:v4];
  v6 = [(IPAEditDescription *)self descriptionWithOperations:v5];

  return v6;
}

- (IPAEditDescription)descriptionWithOperations:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(objc_opt_class()) _init];
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;

    return v5;
  }

  else
  {
    v9 = _PFAssertFailHandler();
    [(IPAEditDescription *)v9 withImmutableOperationAtIndex:v10 block:v11, v12];
  }

  return result;
}

- (void)withImmutableOperationAtIndex:(unint64_t)a3 block:(id)a4
{
  v10 = a4;
  if (v10)
  {
    if ([(NSArray *)self->_operations count]> a3)
    {
      v6 = [(NSArray *)self->_operations objectAtIndexedSubscript:a3];
      v10[2](v10, v6);
    }
  }

  else
  {
    v7 = _PFAssertFailHandler();
    [(IPAEditDescription *)v7 forEachImmutableOperation:v8, v9];
  }
}

- (void)forEachImmutableOperation:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        v4[2](v4, v8++, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)operationWithUUID:(id)a3
{
  v4 = [(IPAEditDescription *)self indexOfOperationWithUUID:a3];
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

- (id)operationAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || [(NSArray *)self->_operations count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_operations objectAtIndexedSubscript:a3];
    v6 = [v5 copy];
  }

  return v6;
}

- (id)firstOperationWithIdentifier:(id)a3
{
  v4 = [(IPAEditDescription *)self firstIndexOfOperationWithIdentifier:a3];
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

- (unint64_t)insertIndexForOperationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() insertIndexForOperationWithIdentifier:v4 inArray:self->_operations withOrdering:self];

  return v5;
}

- (unint64_t)indexOfOperationWithUUID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _PFAssertFailHandler();
  }

  v5 = v4;
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

      v13 = [*(*(&v16 + 1) + 8 * v11) UUID];
      v14 = [v13 isEqual:v5];

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

- (unint64_t)firstIndexOfOperationWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _PFAssertFailHandler();
  }

  v5 = v4;
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

      v13 = [*(*(&v16 + 1) + 8 * v11) identifier];
      v14 = [v13 isEqualToString:v5];

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

- (BOOL)isEqualToDescriptionRenderOperations:(id)a3
{
  v4 = a3;
  v5 = [v4 operationCount];
  if (v5 == [(IPAEditDescription *)self operationCount])
  {
    v6 = [(NSArray *)self->_operations objectEnumerator];
    v7 = [v4[1] objectEnumerator];
    v8 = [v6 nextObject];
    v9 = [v7 nextObject];
    v10 = v9;
    LOBYTE(v11) = 1;
    if (v8 && v9)
    {
      while (1)
      {
        v11 = [v8 isEqual:v10];
        if (!v11)
        {
          break;
        }

        v12 = [v6 nextObject];

        v13 = [v7 nextObject];

        if (v12)
        {
          v10 = v13;
          v8 = v12;
          if (v13)
          {
            continue;
          }
        }

        goto LABEL_10;
      }
    }

    v12 = v8;
    v13 = v10;
LABEL_10:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAEditDescription *)self isEqualToDescription:v4];

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

+ (id)sortOperations:(id)a3 withOrdering:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = a4;
  if (!v26)
  {
    _PFAssertFailHandler();
  }

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v6;
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
            v15 = [v14 identifier];
            if (v15)
            {
              v16 = [a1 insertIndexForOperationWithIdentifier:v15 inArray:v7 withOrdering:v26];
              if (v16 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v17 = IPAAdjustmentGetLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v32 = a1;
                  v33 = 2112;
                  v34 = v14;
                  v18 = v17;
                  v19 = "%@ unable to divine insert index for operation: %@";
                  v20 = 22;
                  goto LABEL_17;
                }

                goto LABEL_18;
              }

              [v7 insertObject:v14 atIndex:v16];
            }

            else
            {
              v17 = IPAAdjustmentGetLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v32 = v14;
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
            v32 = v13;
            _os_log_impl(&dword_25E5BB000, v14, OS_LOG_TYPE_ERROR, "%@ is not an edit operation", buf, 0xCu);
          }

LABEL_21:
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v10);
    }

    v21 = [v7 count];
    if (v21 != [v8 count])
    {
      v22 = IPAAdjustmentGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v7 count];
        v24 = [v8 count];
        *buf = 134218240;
        v32 = v23;
        v33 = 2048;
        v34 = v24;
        _os_log_impl(&dword_25E5BB000, v22, OS_LOG_TYPE_ERROR, "ordered count %lu doesn't match input count %lu - something went wrong (see above)", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

+ (unint64_t)insertIndexForOperationWithIdentifier:(id)a3 inArray:(id)a4 withOrdering:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    _PFAssertFailHandler();
LABEL_16:
    _PFAssertFailHandler();
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v22 = v7;
  v11 = [v9 sortOrderForOperationWithIdentifier:v7];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v8;
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

      v19 = [*(*(&v23 + 1) + 8 * v17) identifier];
      v20 = [v10 sortOrderForOperationWithIdentifier:v19];

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

- (id)_operationAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    if ([(NSArray *)self->_operations count]<= a3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [(NSArray *)self->_operations objectAtIndexedSubscript:a3];
    }
  }

  return v4;
}

- (IPAEditDescription)initWithOperations:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IPAEditDescription;
  v5 = [(IPAEditDescription *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
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

- (unint64_t)sortOrderForOperationWithIdentifier:(id)a3
{
  v3 = a3;
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

+ (BOOL)containsValidOperations:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [objc_opt_class() expectedOperationClass];
  v4 = [v3 count];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
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

+ (id)presetifyAdjustmentStack:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  [(IPAPhotoAdjustmentStack *)v5 .cxx_destruct];
  return result;
}

@end