@interface _PFSQLiteKeyedArchiverTransaction
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)setDouble:(double)a3 forKey:(id)a4;
- (BOOL)setFloat:(float)a3 forKey:(id)a4;
- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4;
- (BOOL)setObject:(id)a3 forKey:(id)a4;
- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteAccessor:(id)a3 archiver:(id)a4;
- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteMutator:(id)a3 archiver:(id)a4;
- (double)doubleForKey:(id)a3;
- (float)floatForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dateCreatedForKey:(id)a3;
- (id)lastModifiedForKey:(id)a3;
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
- (id)objectForKey:(id)a3 ofClasses:(id)a4;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
@end

@implementation _PFSQLiteKeyedArchiverTransaction

- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteMutator:(id)a3 archiver:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [_PFSQLiteKeyedArchiverTransaction initWithPFSQLiteMutator:a2 archiver:?];
  }

  v10 = v9;
  v17.receiver = self;
  v17.super_class = _PFSQLiteKeyedArchiverTransaction;
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mutator, a3);
    objc_storeStrong(&v12->_archiver, a4);
    v13 = +[_PFSQLiteKeyedArchiverEntry pf_sqliteCodingDescriptor];
    v14 = [v13 columnForName:@"_key"];
    keyColumn = v12->_keyColumn;
    v12->_keyColumn = v14;
  }

  return v12;
}

- (_PFSQLiteKeyedArchiverTransaction)initWithPFSQLiteAccessor:(id)a3 archiver:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [_PFSQLiteKeyedArchiverTransaction initWithPFSQLiteAccessor:a2 archiver:?];
  }

  v10 = v9;
  v17.receiver = self;
  v17.super_class = _PFSQLiteKeyedArchiverTransaction;
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accessor, a3);
    objc_storeStrong(&v12->_archiver, a4);
    v13 = +[_PFSQLiteKeyedArchiverEntry pf_sqliteCodingDescriptor];
    v14 = [v13 columnForName:@"_key"];
    keyColumn = v12->_keyColumn;
    v12->_keyColumn = v14;
  }

  return v12;
}

- (id)objectForKey:(id)a3 ofClasses:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    mutator = self->_mutator;
    if (!mutator)
    {
      mutator = self->_accessor;
    }

    v10 = mutator;
    v11 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:v7];
    v12 = objc_opt_self();
    v13 = [(PFSQLiteMutator *)v10 unarchiveObjectsOfClass:v12 predicate:v11 error:0];

    if ([v13 count] >= 2)
    {
      [_PFSQLiteKeyedArchiverTransaction objectForKey:a2 ofClasses:?];
    }

    v14 = [v13 firstObject];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 data];
      v17 = [(PFGenericValueTransformer *)self->_archiver reverseTransformedValue:v16 context:v8];
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

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v7 ofClasses:v8];

  return v9;
}

- (BOOL)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (!self->_mutator)
    {
      [_PFSQLiteKeyedArchiverTransaction setObject:a2 forKey:?];
    }

    v9 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:v8];
    mutator = self->_mutator;
    v11 = objc_opt_self();
    if (!v7)
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

    v13 = [v12 firstObject];
    v14 = [(PFGenericValueTransformer *)self->_archiver transformedValue:v7];
    if (v13)
    {
      v15 = [(_PFSQLiteKeyedArchiverEntry *)v13 data];
      v16 = [v15 isEqualToData:v14];

      if (v16)
      {
        v17 = 1;
LABEL_13:

        goto LABEL_14;
      }

      [(_PFSQLiteKeyedArchiverEntry *)v13 updateWithData:v14];
    }

    else
    {
      v13 = [[_PFSQLiteKeyedArchiverEntry alloc] initWithKey:v8 data:v14];
    }

    v17 = [(PFSQLiteMutator *)self->_mutator archiveObject:v13 error:0];
    goto LABEL_13;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (void)removeObjectForKey:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (!self->_mutator)
    {
      [_PFSQLiteKeyedArchiverTransaction removeObjectForKey:a2];
    }

    v6 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:v5];
    mutator = self->_mutator;
    v8 = objc_opt_self();
    [(PFSQLiteMutator *)mutator deleteObjectsOfClass:v8 predicate:v6 error:0];
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v4 ofClass:v5];

  return v6;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v4 ofClass:v5];

  return v6;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v4 ofClass:v5];

  v7 = [v6 integerValue];
  return v7;
}

- (float)floatForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v4 ofClass:v5];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v4 ofClass:v5];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v4 ofClass:v5];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)self objectForKey:v4 ofClass:v5];

  return v6;
}

- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  LOBYTE(self) = [(_PFSQLiteKeyedArchiverTransaction *)self setObject:v8 forKey:v7];

  return self;
}

- (BOOL)setFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  LOBYTE(self) = [(_PFSQLiteKeyedArchiverTransaction *)self setObject:v9 forKey:v7];

  return self;
}

- (BOOL)setDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  LOBYTE(self) = [(_PFSQLiteKeyedArchiverTransaction *)self setObject:v8 forKey:v7];

  return self;
}

- (void)removeAllObjects
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

- (id)dateCreatedForKey:(id)a3
{
  v5 = a3;
  if (v5)
  {
    mutator = self->_mutator;
    if (!mutator)
    {
      mutator = self->_accessor;
    }

    v7 = mutator;
    v8 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:v5];
    v9 = objc_opt_self();
    v10 = [(PFSQLiteMutator *)v7 unarchiveObjectsOfClass:v9 predicate:v8 error:0];

    if ([v10 count] >= 2)
    {
      [_PFSQLiteKeyedArchiverTransaction dateCreatedForKey:a2];
    }

    v11 = [v10 firstObject];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 dateCreated];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)lastModifiedForKey:(id)a3
{
  v5 = a3;
  if (v5)
  {
    mutator = self->_mutator;
    if (!mutator)
    {
      mutator = self->_accessor;
    }

    v7 = mutator;
    v8 = [PFSQLitePredicate predicateWithColumn:self->_keyColumn operatorType:0 value:v5];
    v9 = objc_opt_self();
    v10 = [(PFSQLiteMutator *)v7 unarchiveObjectsOfClass:v9 predicate:v8 error:0];

    if ([v10 count] >= 2)
    {
      [_PFSQLiteKeyedArchiverTransaction lastModifiedForKey:a2];
    }

    v11 = [v10 firstObject];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 lastModified];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
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