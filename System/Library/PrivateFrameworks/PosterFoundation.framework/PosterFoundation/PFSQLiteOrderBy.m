@interface PFSQLiteOrderBy
- (PFSQLiteOrderBy)init;
- (PFSQLiteOrderBy)initWithColumn:(id)a3 comparison:(int64_t)a4;
- (id)orderByColumn:(id)a3 comparison:(int64_t)a4;
- (id)pf_toSQLWithBindings:(unint64_t *)a3;
- (int64_t)comparisonForColumn:(id)a3;
@end

@implementation PFSQLiteOrderBy

- (PFSQLiteOrderBy)initWithColumn:(id)a3 comparison:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [PFSQLiteOrderBy initWithColumn:a2 comparison:?];
  }

  if (!a4)
  {
    [PFSQLiteOrderBy initWithColumn:a2 comparison:?];
  }

  v8 = v7;
  v17.receiver = self;
  v17.super_class = PFSQLiteOrderBy;
  v9 = [(PFSQLiteOrderBy *)&v17 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFA0] orderedSetWithObject:v8];
    columns = v9->_columns;
    v9->_columns = v10;

    v12 = MEMORY[0x1E695DFA0];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
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

- (int64_t)comparisonForColumn:(id)a3
{
  v3 = [(NSMutableOrderedSet *)self->_comparison objectAtIndex:[(NSMutableOrderedSet *)self->_columns indexOfObject:a3]];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)orderByColumn:(id)a3 comparison:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [PFSQLiteOrderBy orderByColumn:a2 comparison:?];
  }

  if (!a4)
  {
    [PFSQLiteOrderBy orderByColumn:a2 comparison:?];
  }

  v8 = v7;
  [(NSMutableOrderedSet *)self->_columns addObject:v7];
  comparison = self->_comparison;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableOrderedSet *)comparison addObject:v10];

  return self;
}

- (id)pf_toSQLWithBindings:(unint64_t *)a3
{
  if (a3)
  {
    *a3 = 0;
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