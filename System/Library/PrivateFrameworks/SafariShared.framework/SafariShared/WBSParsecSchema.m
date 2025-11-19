@interface WBSParsecSchema
+ (id)schemaForArrayWithElementSchema:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5;
+ (id)schemaForDictionaryWithStructure:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5;
+ (id)schemaWithConstantValue:(id)a3;
+ (id)schemaWithExpectedClass:(Class)a3 associatedError:(id)a4 isOptional:(BOOL)a5;
- (BOOL)_validateChild:(id)a3 ofParent:(id)a4 withParentAssociatedError:(id)a5 errorHandler:(id)a6;
- (id)_initWithExpectedClass:(Class)a3 associatedError:(id)a4 isOptional:(BOOL)a5;
@end

@implementation WBSParsecSchema

+ (id)schemaWithConstantValue:(id)a3
{
  v4 = a3;
  v5 = [a1 schemaWithExpectedClass:objc_opt_class()];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__WBSParsecSchema_schemaWithConstantValue___block_invoke;
  v8[3] = &unk_1E7FC9028;
  v9 = v4;
  v6 = v4;
  [v5 setValidationBlock:v8];

  return v5;
}

+ (id)schemaForArrayWithElementSchema:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[_WBSParsecArraySchema alloc] initWithElementSchema:v8 associatedError:v7 isOptional:v5];

  return v9;
}

+ (id)schemaForDictionaryWithStructure:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[_WBSParsecDictionarySchema alloc] initWithSchemaDictionary:v8 associatedError:v7 isOptional:v5];

  return v9;
}

+ (id)schemaWithExpectedClass:(Class)a3 associatedError:(id)a4 isOptional:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [[a1 alloc] _initWithExpectedClass:a3 associatedError:v8 isOptional:v5];

  return v9;
}

- (id)_initWithExpectedClass:(Class)a3 associatedError:(id)a4 isOptional:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = WBSParsecSchema;
  v10 = [(WBSParsecSchema *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_expectedClass, a3);
    objc_storeStrong(&v11->_associatedError, a4);
    v11->_optional = a5;
    v12 = v11;
  }

  return v11;
}

- (BOOL)_validateChild:(id)a3 ofParent:(id)a4 withParentAssociatedError:(id)a5 errorHandler:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  associatedError = self->_associatedError;
  if (!associatedError)
  {
    associatedError = v12;
  }

  v15 = associatedError;
  if (v10)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        expectedClass = self->_expectedClass;
        v18 = v16;
        v29 = 134349826;
        v30 = v10;
        v31 = 2050;
        v32 = v11;
        v33 = 2114;
        v34 = expectedClass;
        v35 = 2114;
        v36 = objc_opt_class();
        v19 = v36;
        _os_log_error_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_ERROR, "Child %{public}p of parent %{public}p: expected class %{public}@, actual class %{public}@", &v29, 0x2Au);
      }

LABEL_19:
      v13[2](v13, v15);
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
      [WBSParsecSchema _validateChild:v11 ofParent:v25 withParentAssociatedError:? errorHandler:?];
    }

    goto LABEL_19;
  }

  validationBlock = self->_validationBlock;
  if (validationBlock && (validationBlock[2](validationBlock, v10, v11) & 1) == 0)
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
    v22 = specializedSchemaBlock[2](specializedSchemaBlock, v10, v11);
    v23 = v22;
    if (v22 && ([v22 _validateChild:v10 ofParent:v11 withParentAssociatedError:v15 errorHandler:v13] & 1) == 0)
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