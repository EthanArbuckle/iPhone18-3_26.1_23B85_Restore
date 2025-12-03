@interface _PFUnreversibleValueTransformer
- (_PFUnreversibleValueTransformer)initWithTransformedValueClass:(Class)class reverseValueClass:(Class)valueClass;
- (_PFUnreversibleValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer;
- (id)transformedValue:(id)value;
- (id)transformedValue:(id)value context:(id)context;
@end

@implementation _PFUnreversibleValueTransformer

- (_PFUnreversibleValueTransformer)initWithTransformedValueClass:(Class)class transformer:(id)transformer
{
  transformerCopy = transformer;
  v11.receiver = self;
  v11.super_class = _PFUnreversibleValueTransformer;
  v7 = [(_PFGenericValueTransformerConcreteImplementation *)&v11 initWithTransformedValueClass:class];
  if (v7)
  {
    v8 = [transformerCopy copy];
    transformer = v7->_transformer;
    v7->_transformer = v8;
  }

  return v7;
}

- (_PFUnreversibleValueTransformer)initWithTransformedValueClass:(Class)class reverseValueClass:(Class)valueClass
{
  [(_PFUnreversibleValueTransformer *)self doesNotRecognizeSelector:a2, valueClass];

  return 0;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  v5 = (*(self->_transformer + 2))();
  if (v5 && [(PFGenericValueTransformer *)self assertOnInvalidObjectTypes])
  {
    [_PFUnreversibleValueTransformer transformedValue:];
  }

  return v5;
}

- (id)transformedValue:(id)value context:(id)context
{
  valueCopy = value;
  contextCopy = context;
  v8 = (*(self->_transformer + 2))();
  if (v8 && [(PFGenericValueTransformer *)self assertOnInvalidObjectTypes])
  {
    [_PFUnreversibleValueTransformer transformedValue:context:];
  }

  return v8;
}

- (uint64_t)transformedValue:.cold.1()
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
      JUMPOUT(0x1C26DA570);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)transformedValue:context:.cold.1()
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
      JUMPOUT(0x1C26DA6ACLL);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end