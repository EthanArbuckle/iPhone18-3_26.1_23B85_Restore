@interface _PFSQLiteKeyedArchiverTransaction
- (BOOL)BOOLForKey:(id)key;
- (BOOL)setDouble:(double)double forKey:(id)key;
- (BOOL)setFloat:(float)float forKey:(id)key;
- (BOOL)setInteger:(int64_t)integer forKey:(id)key;
- (BOOL)setObject:(id)object forKey:(id)key;
- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteAccessor:(id)accessor archiver:(id)archiver;
- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteMutator:(id)mutator archiver:(id)archiver;
- (double)doubleForKey:(id)key;
- (float)floatForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dateCreatedForKey:(id)key;
- (id)lastModifiedForKey:(id)key;
- (id)objectForKey:(id)key ofClass:(Class)class;
- (id)objectForKey:(id)key ofClasses:(id)classes;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
@end

@implementation _PFSQLiteKeyedArchiverTransaction

- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteMutator:(id)mutator archiver:(id)archiver
{
  mutatorCopy = mutator;
  archiverCopy = archiver;
  if (!mutatorCopy)
  {
    [_PFSQLiteKeyedArchiverTransaction initWithPFSQLiteMutator:a2 archiver:?];
  }

  v10 = archiverCopy;
  v17.receiver = self;
  v17.super_class = _PFSQLiteKeyedArchiverTransaction;
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mutator, mutator);
    objc_storeStrong(&v12->_archiver, archiver);
    v13 = +[_PFSQLiteKeyedArchiverEntry pf_sqliteCodingDescriptor];
    v14 = [v13 columnForName:@"_key"];
    keyColumn = v12->_keyColumn;
    v12->_keyColumn = v14;
  }

  return v12;
}

- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteAccessor:(id)accessor archiver:(id)archiver
{
  accessorCopy = accessor;
  archiverCopy = archiver;
  if (!accessorCopy)
  {
    [_PFSQLiteKeyedArchiverTransaction initWithPFSQLiteAccessor:a2 archiver:?];
  }

  v10 = archiverCopy;
  v17.receiver = self;
  v17.super_class = _PFSQLiteKeyedArchiverTransaction;
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accessor, accessor);
    objc_storeStrong(&v12->_archiver, archiver);
    v13 = +[_PFSQLiteKeyedArchiverEntry pf_sqliteCodingDescriptor];
    v14 = [v13 columnForName:@"_key"];
    keyColumn = v12->_keyColumn;
    v12->_keyColumn = v14;
  }

  return v12;
}

- (id)objectForKey:(id)key ofClasses:(id)classes
{
  keyCopy = key;
  classesCopy = classes;
  if (keyCopy)
  {
    mutator = self->_mutator;
    if (!mutator)
    {
      mutator = self->_accessor;
    }

    v10 = mutator;
    v11 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:keyCopy];
    v12 = objc_opt_self();
    v13 = [(PFSQLiteMutator *)v10 unarchiveObjectsOfClass:v12 predicate:v11 error:0];

    if ([v13 count] >= 2)
    {
      [_PFSQLiteKeyedArchiverTransaction objectForKey:a2 ofClasses:?];
    }

    firstObject = [v13 firstObject];
    v15 = firstObject;
    if (firstObject)
    {
      data = [firstObject data];
      v17 = [(PFGenericValueTransformer *)self->_archiver reverseTransformedValue:data context:classesCopy];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)objectForKey:(id)key ofClass:(Class)class
{
  v6 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v8 = [v6 setWithObject:class];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClasses:v8];

  return v9;
}

- (BOOL)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_mutator)
    {
      [_PFSQLiteKeyedArchiverTransaction setObject:a2 forKey:?];
    }

    v9 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:keyCopy];
    mutator = self->_mutator;
    v11 = objc_opt_self();
    if (!objectCopy)
    {
      v17 = [(PFSQLiteMutator *)mutator deleteObjectsOfClass:v11 predicate:v9 error:0];
      v12 = v11;
LABEL_14:

      goto LABEL_15;
    }

    v12 = [(PFSQLiteMutator *)mutator unarchiveObjectsOfClass:v11 predicate:v9 error:0];

    if ([v12 count] >= 2)
    {
      [_PFSQLiteKeyedArchiverTransaction setObject:a2 forKey:?];
    }

    firstObject = [v12 firstObject];
    v14 = [(PFGenericValueTransformer *)self->_archiver transformedValue:objectCopy];
    if (firstObject)
    {
      data = [(_PFSQLiteKeyedArchiverEntry *)firstObject data];
      v16 = [data isEqualToData:v14];

      if (v16)
      {
        v17 = 1;
LABEL_13:

        goto LABEL_14;
      }

      [(_PFSQLiteKeyedArchiverEntry *)firstObject updateWithData:v14];
    }

    else
    {
      firstObject = [[_PFSQLiteKeyedArchiverEntry alloc] initWithKey:keyCopy data:v14];
    }

    v17 = [(PFSQLiteMutator *)self->_mutator archiveObject:firstObject error:0];
    goto LABEL_13;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_mutator)
    {
      [_PFSQLiteKeyedArchiverTransaction removeObjectForKey:a2];
    }

    v6 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:keyCopy];
    mutator = self->_mutator;
    v8 = objc_opt_self();
    [(PFSQLiteMutator *)mutator deleteObjectsOfClass:v8 predicate:v6 error:0];
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClass:v5];

  return v6;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClass:v5];

  return v6;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClass:v5];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (float)floatForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClass:v5];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClass:v5];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClass:v5];

  LOBYTE(keyCopy) = [v6 BOOLValue];
  return keyCopy;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:keyCopy ofClass:v5];

  return v6;
}

- (BOOL)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  LOBYTE(self) = [(_PFSQLiteKeyedArchiverTransaction *)self setObject:v8 forKey:keyCopy];

  return self;
}

- (BOOL)setFloat:(float)float forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  *&v8 = float;
  v9 = [v6 numberWithFloat:v8];
  LOBYTE(self) = [(_PFSQLiteKeyedArchiverTransaction *)self setObject:v9 forKey:keyCopy];

  return self;
}

- (BOOL)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  LOBYTE(self) = [(_PFSQLiteKeyedArchiverTransaction *)self setObject:v8 forKey:keyCopy];

  return self;
}

- (void)removeAllObjects
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to mutate immutable archiver"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)dateCreatedForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    mutator = self->_mutator;
    if (!mutator)
    {
      mutator = self->_accessor;
    }

    v7 = mutator;
    v8 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:keyCopy];
    v9 = objc_opt_self();
    v10 = [(PFSQLiteMutator *)v7 unarchiveObjectsOfClass:v9 predicate:v8 error:0];

    if ([v10 count] >= 2)
    {
      [_PFSQLiteKeyedArchiverTransaction dateCreatedForKey:a2];
    }

    firstObject = [v10 firstObject];
    v12 = firstObject;
    if (firstObject)
    {
      dateCreated = [firstObject dateCreated];
    }

    else
    {
      dateCreated = 0;
    }
  }

  else
  {
    dateCreated = 0;
  }

  return dateCreated;
}

- (id)lastModifiedForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    mutator = self->_mutator;
    if (!mutator)
    {
      mutator = self->_accessor;
    }

    v7 = mutator;
    v8 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:keyCopy];
    v9 = objc_opt_self();
    v10 = [(PFSQLiteMutator *)v7 unarchiveObjectsOfClass:v9 predicate:v8 error:0];

    if ([v10 count] >= 2)
    {
      [_PFSQLiteKeyedArchiverTransaction lastModifiedForKey:a2];
    }

    firstObject = [v10 firstObject];
    v12 = firstObject;
    if (firstObject)
    {
      lastModified = [firstObject lastModified];
    }

    else
    {
      lastModified = 0;
    }
  }

  else
  {
    lastModified = 0;
  }

  return lastModified;
}

- (void)initWithPFSQLiteMutator:(char *)a1 archiver:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"mutator"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    v7 = @"PFSQLiteKeyedArchiver.m";
    v8 = 1024;
    v9 = 286;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPFSQLiteAccessor:(char *)a1 archiver:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"accessor"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    v7 = @"PFSQLiteKeyedArchiver.m";
    v8 = 1024;
    v9 = 297;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)objectForKey:(char *)a1 ofClasses:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Primary key failure multiple objects found"];;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forKey:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Primary key failure multiple objects found"];;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forKey:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to mutate immutable archiver"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeObjectForKey:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to mutate immutable archiver"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dateCreatedForKey:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Primary key failure multiple objects found"];;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)lastModifiedForKey:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Primary key failure multiple objects found"];;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_1(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end