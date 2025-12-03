@interface _WBSParsecArraySchema
- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler;
- (_WBSParsecArraySchema)initWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional;
@end

@implementation _WBSParsecArraySchema

- (_WBSParsecArraySchema)initWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  schemaCopy = schema;
  errorCopy = error;
  v11 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = _WBSParsecArraySchema;
  v12 = [(WBSParsecSchema *)&v15 _initWithExpectedClass:v11 associatedError:errorCopy isOptional:optionalCopy];

  if (v12)
  {
    objc_storeStrong(&v12->_elementSchema, schema);
    v13 = v12;
  }

  return v12;
}

- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  childCopy = child;
  parentCopy = parent;
  errorCopy = error;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = _WBSParsecArraySchema;
  if ([(WBSParsecSchema *)&v32 _validateChild:childCopy ofParent:parentCopy withParentAssociatedError:errorCopy errorHandler:handlerCopy])
  {
    associatedError = [(WBSParsecSchema *)self associatedError];
    v25 = associatedError;
    v26 = errorCopy;
    if (associatedError)
    {
      v15 = associatedError;
    }

    else
    {
      v15 = errorCopy;
    }

    v16 = v15;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = childCopy;
    v17 = childCopy;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      v21 = 1;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if (![(WBSParsecSchema *)self->_elementSchema _validateChild:*(*(&v28 + 1) + 8 * i) ofParent:v17 withParentAssociatedError:v16 errorHandler:handlerCopy])
          {
            v23 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349312;
              v34 = v17;
              v35 = 2050;
              v36 = parentCopy;
              _os_log_error_impl(&dword_1BB6F3000, v23, OS_LOG_TYPE_ERROR, "Array element schema validation failed on child %{public}p of parent %{public}p", buf, 0x16u);
            }

            v21 = 0;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v19);
    }

    else
    {
      v21 = 1;
    }

    errorCopy = v26;
    childCopy = v27;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

@end