@interface STCoreDowntimeOverride
- (BOOL)_validateAssociatedDowntime:(id)a3;
- (BOOL)_validateState:(id)a3;
- (BOOL)_validateType:(id)a3;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (id)dictionaryRepresentation;
- (int64_t)state;
- (int64_t)type;
- (void)setState:(int64_t)a3;
- (void)setType:(int64_t)a3;
@end

@implementation STCoreDowntimeOverride

- (int64_t)type
{
  [(STCoreDowntimeOverride *)self willAccessValueForKey:@"type"];
  v3 = [(STCoreDowntimeOverride *)self primitiveType];
  v4 = [v3 integerValue];

  [(STCoreDowntimeOverride *)self didAccessValueForKey:@"type"];
  return v4;
}

- (void)setType:(int64_t)a3
{
  [(STCoreDowntimeOverride *)self willChangeValueForKey:@"type"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(STCoreDowntimeOverride *)self setPrimitiveType:v5];

  [(STCoreDowntimeOverride *)self didChangeValueForKey:@"type"];
}

- (int64_t)state
{
  [(STCoreDowntimeOverride *)self willAccessValueForKey:@"state"];
  v3 = [(STCoreDowntimeOverride *)self primitiveState];
  v4 = [v3 integerValue];

  [(STCoreDowntimeOverride *)self didAccessValueForKey:@"state"];
  return v4;
}

- (void)setState:(int64_t)a3
{
  [(STCoreDowntimeOverride *)self willChangeValueForKey:@"state"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(STCoreDowntimeOverride *)self setPrimitiveState:v5];

  [(STCoreDowntimeOverride *)self didChangeValueForKey:@"state"];
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"isTombstoned"];
  -[STCoreDowntimeOverride setIsTombstoned:](self, "setIsTombstoned:", [v5 BOOLValue]);

  if ([(STCoreDowntimeOverride *)self isTombstoned])
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = self;
      _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Deleting tombstoned downtime override: %@", &v14, 0xCu);
    }

    v7 = [(STCoreDowntimeOverride *)self managedObjectContext];
    [v7 deleteObject:self];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"type"];
    -[STCoreDowntimeOverride setType:](self, "setType:", [v8 integerValue]);

    v9 = [v4 objectForKeyedSubscript:@"state"];
    -[STCoreDowntimeOverride setState:](self, "setState:", [v9 integerValue]);

    v10 = [v4 objectForKeyedSubscript:@"creationDate"];
    [(STCoreDowntimeOverride *)self setCreationDate:v10];

    v11 = [v4 objectForKeyedSubscript:@"calendarIdentifier"];
    [(STCoreDowntimeOverride *)self setCalendarIdentifier:v11];

    v7 = [v4 objectForKeyedSubscript:@"endDate"];
    [(STCoreDowntimeOverride *)self setEndDate:v7];
  }

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STCoreDowntimeOverride type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STCoreDowntimeOverride state](self, "state")}];
  [v3 setObject:v5 forKeyedSubscript:@"state"];

  v6 = [(STCoreDowntimeOverride *)self creationDate];
  [v3 setObject:v6 forKeyedSubscript:@"creationDate"];

  v7 = [(STCoreDowntimeOverride *)self calendarIdentifier];
  [v3 setObject:v7 forKeyedSubscript:@"calendarIdentifier"];

  v8 = [(STCoreDowntimeOverride *)self endDate];
  [v3 setObject:v8 forKeyedSubscript:@"endDate"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreDowntimeOverride isTombstoned](self, "isTombstoned")}];
  [v3 setObject:v9 forKeyedSubscript:@"isTombstoned"];

  v10 = [v3 copy];

  return v10;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STCoreDowntimeOverride;
  if ([(STCoreDowntimeOverride *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STCoreDowntimeOverride *)self _validateState:v5];
    [(STCoreDowntimeOverride *)self _validateType:v5];
    [(STCoreDowntimeOverride *)self _validateAssociatedDowntime:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STCoreDowntimeOverride validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STCoreDowntimeOverride;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDowntimeOverride validateForUpdate:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STCoreDowntimeOverride;
  if ([(STCoreDowntimeOverride *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STCoreDowntimeOverride *)self _validateState:v5];
    [(STCoreDowntimeOverride *)self _validateType:v5];
    [(STCoreDowntimeOverride *)self _validateAssociatedDowntime:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STCoreDowntimeOverride validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STCoreDowntimeOverride;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDowntimeOverride validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v7.receiver = self;
  v7.super_class = STCoreDowntimeOverride;
  v4 = [(STCoreDowntimeOverride *)&v7 validateForDelete:?];
  if (v4)
  {
    _os_feature_enabled_impl();
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDowntimeOverride validateForDelete:a3];
    }
  }

  return v4;
}

- (BOOL)_validateState:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreDowntimeOverride *)self state];
  if (v5 >= 2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"CoreDowntimeOverride has an unexpected state.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:544 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 < 2;
}

- (BOOL)_validateType:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreDowntimeOverride *)self type];
  if (v5 >= 2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"CoreDowntimeOverride has an unexpected type.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:544 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 < 2;
}

- (BOOL)_validateAssociatedDowntime:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreDowntimeOverride *)self downtime];

  if (!v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"CoreDowntimeOverride does not have an associated Downtime blueprint.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:546 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v2, v3, "%{public}s Built-in CoreData Validation for update on CoreDowntimeOverride failed with: %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Validate for update on CoreDowntimeOverride failed with error: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v2, v3, "%{public}s Built-in CoreData Validation for Insert on CoreDowntimeOverride failed with: %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Validate for Insert on CoreDowntimeOverride failed with error: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v2, v3, "%{public}s Built-in CoreData Validation for Delete on CoreDowntimeOverride failed with: %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end