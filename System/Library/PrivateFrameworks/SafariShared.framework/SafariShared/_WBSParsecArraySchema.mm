@interface _WBSParsecArraySchema
- (BOOL)_validateChild:(id)a3 ofParent:(id)a4 withParentAssociatedError:(id)a5 errorHandler:(id)a6;
- (_WBSParsecArraySchema)initWithElementSchema:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5;
@end

@implementation _WBSParsecArraySchema

- (_WBSParsecArraySchema)initWithElementSchema:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = _WBSParsecArraySchema;
  v12 = [(WBSParsecSchema *)&v15 _initWithExpectedClass:v11 associatedError:v10 isOptional:v5];

  if (v12)
  {
    objc_storeStrong(&v12->_elementSchema, a3);
    v13 = v12;
  }

  return v12;
}

- (BOOL)_validateChild:(id)a3 ofParent:(id)a4 withParentAssociatedError:(id)a5 errorHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = _WBSParsecArraySchema;
  if ([(WBSParsecSchema *)&v32 _validateChild:v10 ofParent:v11 withParentAssociatedError:v12 errorHandler:v13])
  {
    v14 = [(WBSParsecSchema *)self associatedError];
    v25 = v14;
    v26 = v12;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v10;
    v17 = v10;
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

          if (![(WBSParsecSchema *)self->_elementSchema _validateChild:*(*(&v28 + 1) + 8 * i) ofParent:v17 withParentAssociatedError:v16 errorHandler:v13])
          {
            v23 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349312;
              v34 = v17;
              v35 = 2050;
              v36 = v11;
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

    v12 = v26;
    v10 = v27;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

@end