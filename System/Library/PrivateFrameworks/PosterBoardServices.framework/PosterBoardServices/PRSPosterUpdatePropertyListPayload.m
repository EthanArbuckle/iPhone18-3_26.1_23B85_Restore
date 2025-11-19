@interface PRSPosterUpdatePropertyListPayload
- (PRSPosterUpdatePropertyListPayload)initWithCoder:(id)a3;
- (PRSPosterUpdatePropertyListPayload)initWithPropertyList:(id)a3;
- (PRSPosterUpdatePropertyListPayload)initWithPropertyListData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertyListRoot;
- (id)rawValue;
@end

@implementation PRSPosterUpdatePropertyListPayload

- (PRSPosterUpdatePropertyListPayload)initWithPropertyListData:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Nsdata.isa);
  if (!v5)
  {
    [PRSPosterUpdatePropertyListPayload initWithPropertyListData:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdatePropertyListPayload initWithPropertyListData:a2];
  }

  v10.receiver = self;
  v10.super_class = PRSPosterUpdatePropertyListPayload;
  v6 = [(PRSPosterUpdatePayload *)&v10 _init];
  if (v6)
  {
    v7 = [v5 copy];
    propertyListData = v6->_propertyListData;
    v6->_propertyListData = v7;
  }

  return v6;
}

- (PRSPosterUpdatePropertyListPayload)initWithPropertyList:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [PRSPosterUpdatePropertyListPayload initWithPropertyList:a2];
  }

  v7 = v6;
  if (([MEMORY[0x1E696AE40] propertyList:v6 isValidForFormat:200] & 1) == 0)
  {
    [PRSPosterUpdatePropertyListPayload initWithPropertyList:a2];
  }

  v13 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v13];
  if (v13)
  {
    [PRSPosterUpdatePropertyListPayload initWithPropertyList:a2];
  }

  v12.receiver = self;
  v12.super_class = PRSPosterUpdatePropertyListPayload;
  v9 = [(PRSPosterUpdatePayload *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, v8);
    objc_storeStrong(&v10->_propertyListRoot, a3);
  }

  return v10;
}

- (id)propertyListRoot
{
  propertyListRoot = self->_propertyListRoot;
  if (!propertyListRoot)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:self->_propertyListData options:0 format:0 error:0];
    v5 = self->_propertyListRoot;
    self->_propertyListRoot = v4;

    propertyListRoot = self->_propertyListRoot;
  }

  v6 = propertyListRoot;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  propertyListData = self->_propertyListData;

  return [v4 initWithPropertyListData:propertyListData];
}

- (PRSPosterUpdatePropertyListPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRSPosterUpdatePayload *)self _init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_propertyListData"];
    propertyListData = v5->_propertyListData;
    v5->_propertyListData = v7;
  }

  return v5;
}

- (id)rawValue
{
  v2 = [(NSData *)self->_propertyListData copy];

  return v2;
}

- (void)initWithPropertyListData:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDataClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPropertyListData:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPropertyList:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"propertyListRoot needs to be serializable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPropertyList:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"nil == serializationError", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPropertyList:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"propertyListRoot", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end