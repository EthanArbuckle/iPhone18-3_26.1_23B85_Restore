@interface PFSQLiteOrderBy
- (PFSQLiteOrderBy)init;
- (PFSQLiteOrderBy)initWithColumn:(id)column comparison:(int64_t)comparison;
- (id)orderByColumn:(id)column comparison:(int64_t)comparison;
- (id)pf_toSQLWithBindings:(unint64_t *)bindings;
- (int64_t)comparisonForColumn:(id)column;
@end

@implementation PFSQLiteOrderBy

- (PFSQLiteOrderBy)initWithColumn:(id)column comparison:(int64_t)comparison
{
  columnCopy = column;
  if (!columnCopy)
  {
    [PFSQLiteOrderBy initWithColumn:a2 comparison:?];
  }

  if (!comparison)
  {
    [PFSQLiteOrderBy initWithColumn:a2 comparison:?];
  }

  v8 = columnCopy;
  v17.receiver = self;
  v17.super_class = PFSQLiteOrderBy;
  v9 = [(PFSQLiteOrderBy *)&v17 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFA0] orderedSetWithObject:v8];
    columns = v9->_columns;
    v9->_columns = v10;

    v12 = MEMORY[0x1E695DFA0];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:comparison];
    v14 = [v12 orderedSetWithObject:v13];
    comparison = v9->_comparison;
    v9->_comparison = v14;
  }

  return v9;
}

- (PFSQLiteOrderBy)init
{
  [(PFSQLiteOrderBy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (int64_t)comparisonForColumn:(id)column
{
  v3 = [(NSMutableOrderedSet *)self->_comparison objectAtIndex:[(NSMutableOrderedSet *)self->_columns indexOfObject:column]];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)orderByColumn:(id)column comparison:(int64_t)comparison
{
  columnCopy = column;
  if (!columnCopy)
  {
    [PFSQLiteOrderBy orderByColumn:a2 comparison:?];
  }

  if (!comparison)
  {
    [PFSQLiteOrderBy orderByColumn:a2 comparison:?];
  }

  v8 = columnCopy;
  [(NSMutableOrderedSet *)self->_columns addObject:columnCopy];
  comparison = self->_comparison;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:comparison];
  [(NSMutableOrderedSet *)comparison addObject:v10];

  return self;
}

- (id)pf_toSQLWithBindings:(unint64_t *)bindings
{
  if (bindings)
  {
    *bindings = 0;
  }

  v4 = [MEMORY[0x1E696AD60] stringWithString:@"ORDER BY "];
  columns = self->_columns;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__PFSQLiteOrderBy_pf_toSQLWithBindings___block_invoke;
  v10[3] = &unk_1E8189580;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [(NSMutableOrderedSet *)columns enumerateObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __40__PFSQLiteOrderBy_pf_toSQLWithBindings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = [v7 unsignedIntegerValue];

  v9 = *(a1 + 40);
  if (a3)
  {
    v10 = @", ";
  }

  else
  {
    v10 = &stru_1F425B6D8;
  }

  v12 = [v6 name];

  v11 = @"DESC";
  if (v8 == -1)
  {
    v11 = @"ASC";
  }

  [v9 appendFormat:@"%@%@ %@", v10, v12, v11];
}

- (void)initWithColumn:(char *)a1 comparison:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to sort by NSOrderedSame"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    v8 = @"PFSQLitePredicate.m";
    v9 = 1024;
    v10 = 583;
    v11 = v5;
    v12 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithColumn:(char *)a1 comparison:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"column"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    v8 = @"PFSQLitePredicate.m";
    v9 = 1024;
    v10 = 582;
    v11 = v5;
    v12 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)orderByColumn:(char *)a1 comparison:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to sort by NSOrderedSame"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    v8 = @"PFSQLitePredicate.m";
    v9 = 1024;
    v10 = 609;
    v11 = v5;
    v12 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)orderByColumn:(char *)a1 comparison:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"column"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    v8 = @"PFSQLitePredicate.m";
    v9 = 1024;
    v10 = 608;
    v11 = v5;
    v12 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end