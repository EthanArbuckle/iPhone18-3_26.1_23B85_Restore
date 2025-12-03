@interface _PFReversibleValueTransformer
- (_PFReversibleValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer reverseValueClass:(Class)valueClass reverseTransformer:(id)reverseTransformer;
- (id)transformedValue:(id)value;
- (id)transformedValue:(id)value context:(id)context;
@end

@implementation _PFReversibleValueTransformer

- (_PFReversibleValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer reverseValueClass:(Class)valueClass reverseTransformer:(id)reverseTransformer
{
  reverseTransformerCopy = reverseTransformer;
  v16.receiver = self;
  v16.super_class = _PFReversibleValueTransformer;
  v11 = [(_PFUnreversibleValueTransformer *)&v16 initWithTransformedValueClass:class transformer:transformer];
  v12 = v11;
  if (v11)
  {
    v11->_reverseTransformerClass = valueClass;
    v13 = [reverseTransformerCopy copy];
    reverseTransformer = v12->_reverseTransformer;
    v12->_reverseTransformer = v13;
  }

  return v12;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy && [(PFGenericValueTransformer *)self assertOnInvalidObjectTypes]&& self->_reverseTransformerClass && (objc_opt_isKindOfClass() & 1) == 0)
  {
    [(_PFReversibleValueTransformer *)&self->_reverseTransformerClass transformedValue:a2];
  }

  v8.receiver = self;
  v8.super_class = _PFReversibleValueTransformer;
  v6 = [(_PFUnreversibleValueTransformer *)&v8 transformedValue:valueCopy];
  if (v6 && [(PFGenericValueTransformer *)self assertOnInvalidObjectTypes])
  {
    [_PFReversibleValueTransformer transformedValue:];
  }

  return v6;
}

- (id)transformedValue:(id)value context:(id)context
{
  valueCopy = value;
  contextCopy = context;
  if (valueCopy && [(PFGenericValueTransformer *)self assertOnInvalidObjectTypes]&& self->_reverseTransformerClass && (objc_opt_isKindOfClass() & 1) == 0)
  {
    [_PFReversibleValueTransformer transformedValue:a2 context:?];
  }

  v11.receiver = self;
  v11.super_class = _PFReversibleValueTransformer;
  v9 = [(_PFUnreversibleValueTransformer *)&v11 transformedValue:valueCopy context:contextCopy];
  if (v9 && [(PFGenericValueTransformer *)self assertOnInvalidObjectTypes])
  {
    [_PFReversibleValueTransformer transformedValue:context:];
  }

  return v9;
}

- (void)transformedValue:(Class *)a1 .cold.1(Class *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromClass(*a1);
  v4 = [v3 stringWithFormat:@"value is not of expected type %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (uint64_t)transformedValue:.cold.2()
{
  OUTLINED_FUNCTION_2_3();
  v18 = *MEMORY[0x1E69E9840];
  result = [(_PFGenericValueTransformerConcreteImplementation *)v2 transformedValueClass];
  if (result)
  {
    [(_PFGenericValueTransformerConcreteImplementation *)v0 transformedValueClass];
    result = OUTLINED_FUNCTION_7_1();
    if ((result & 1) == 0)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [(_PFGenericValueTransformerConcreteImplementation *)v0 transformedValueClass];
      v15 = NSStringFromClass(v6);
      v7 = [v5 stringWithFormat:@"transformedValue is not of expected type %@"];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(v1);
        objc_claimAutoreleasedReturnValue();
        v8 = OUTLINED_FUNCTION_6_0();
        v9 = NSStringFromClass(v8);
        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16, v17);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1C26DA1F4);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)transformedValue:(Class *)a1 context:(const char *)a2 .cold.1(Class *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromClass(*a1);
  v4 = [v3 stringWithFormat:@"value is not of expected type %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (uint64_t)transformedValue:context:.cold.2()
{
  OUTLINED_FUNCTION_2_3();
  v18 = *MEMORY[0x1E69E9840];
  result = [(_PFGenericValueTransformerConcreteImplementation *)v2 transformedValueClass];
  if (result)
  {
    [(_PFGenericValueTransformerConcreteImplementation *)v0 transformedValueClass];
    result = OUTLINED_FUNCTION_7_1();
    if ((result & 1) == 0)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [(_PFGenericValueTransformerConcreteImplementation *)v0 transformedValueClass];
      v15 = NSStringFromClass(v6);
      v7 = [v5 stringWithFormat:@"transformedValue is not of expected type %@"];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(v1);
        objc_claimAutoreleasedReturnValue();
        v8 = OUTLINED_FUNCTION_6_0();
        v9 = NSStringFromClass(v8);
        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16, v17);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1C26DA434);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end