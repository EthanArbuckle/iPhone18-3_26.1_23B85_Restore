@interface WBSParsecSchema
+ (id)schemaForArrayWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional;
+ (id)schemaForDictionaryWithStructure:(id)structure associatedError:(id)error isOptional:(BOOL)optional;
+ (id)schemaWithConstantValue:(id)value;
+ (id)schemaWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional;
- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler;
- (id)_initWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional;
@end

@implementation WBSParsecSchema

+ (id)schemaWithConstantValue:(id)value
{
  valueCopy = value;
  v5 = [self schemaWithExpectedClass:objc_opt_class()];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__WBSParsecSchema_schemaWithConstantValue___block_invoke;
  v8[3] = &unk_1E7FC9028;
  v9 = valueCopy;
  v6 = valueCopy;
  [v5 setValidationBlock:v8];

  return v5;
}

+ (id)schemaForArrayWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  errorCopy = error;
  schemaCopy = schema;
  v9 = [[_WBSParsecArraySchema alloc] initWithElementSchema:schemaCopy associatedError:errorCopy isOptional:optionalCopy];

  return v9;
}

+ (id)schemaForDictionaryWithStructure:(id)structure associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  errorCopy = error;
  structureCopy = structure;
  v9 = [[_WBSParsecDictionarySchema alloc] initWithSchemaDictionary:structureCopy associatedError:errorCopy isOptional:optionalCopy];

  return v9;
}

+ (id)schemaWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  errorCopy = error;
  v9 = [[self alloc] _initWithExpectedClass:class associatedError:errorCopy isOptional:optionalCopy];

  return v9;
}

- (id)_initWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional
{
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = WBSParsecSchema;
  v10 = [(WBSParsecSchema *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_expectedClass, class);
    objc_storeStrong(&v11->_associatedError, error);
    v11->_optional = optional;
    v12 = v11;
  }

  return v11;
}

- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  childCopy = child;
  parentCopy = parent;
  errorCopy = error;
  handlerCopy = handler;
  associatedError = self->_associatedError;
  if (!associatedError)
  {
    associatedError = errorCopy;
  }

  v15 = associatedError;
  if (childCopy)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        expectedClass = self->_expectedClass;
        v18 = v16;
        v29 = 134349826;
        v30 = childCopy;
        v31 = 2050;
        v32 = parentCopy;
        v33 = 2114;
        v34 = expectedClass;
        v35 = 2114;
        v36 = objc_opt_class();
        v19 = v36;
        _os_log_error_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_ERROR, "Child %{public}p of parent %{public}p: expected class %{public}@, actual class %{public}@", &v29, 0x2Au);
      }

LABEL_19:
      handlerCopy[2](handlerCopy, v15);
LABEL_20:
      v24 = 0;
      goto LABEL_21;
    }
  }

  else if (!self->_optional)
  {
    v25 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WBSParsecSchema _validateChild:parentCopy ofParent:v25 withParentAssociatedError:? errorHandler:?];
    }

    goto LABEL_19;
  }

  validationBlock = self->_validationBlock;
  if (validationBlock && (validationBlock[2](validationBlock, childCopy, parentCopy) & 1) == 0)
  {
    v26 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [WBSParsecSchema _validateChild:ofParent:withParentAssociatedError:errorHandler:];
    }

    goto LABEL_19;
  }

  specializedSchemaBlock = self->_specializedSchemaBlock;
  if (specializedSchemaBlock)
  {
    v22 = specializedSchemaBlock[2](specializedSchemaBlock, childCopy, parentCopy);
    v23 = v22;
    if (v22 && ([v22 _validateChild:childCopy ofParent:parentCopy withParentAssociatedError:v15 errorHandler:handlerCopy] & 1) == 0)
    {
      v28 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [WBSParsecSchema _validateChild:ofParent:withParentAssociatedError:errorHandler:];
      }

      goto LABEL_20;
    }
  }

  v24 = 1;
LABEL_21:

  return v24;
}

- (void)_validateChild:(uint64_t)a1 ofParent:(NSObject *)a2 withParentAssociatedError:errorHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Non-optional child of parent %{public}p was missing", &v2, 0xCu);
}

@end