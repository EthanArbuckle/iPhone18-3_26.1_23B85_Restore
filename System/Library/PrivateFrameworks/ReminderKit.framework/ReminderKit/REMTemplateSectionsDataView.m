@interface REMTemplateSectionsDataView
- (REMTemplateSectionsDataView)initWithStore:(id)a3;
- (id)fetchTemplateSectionWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchTemplateSectionsInTemplate:(id)a3 error:(id *)a4;
- (id)fetchTemplateSectionsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchTemplateSectionsWithTemplateObjectID:(id)a3 error:(id *)a4;
- (id)templateSectionsFromTemplateStorages:(id)a3 templateSectionStorages:(id)a4 store:(id)a5;
@end

@implementation REMTemplateSectionsDataView

- (REMTemplateSectionsDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMTemplateSectionsDataView;
  v6 = [(REMTemplateSectionsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchTemplateSectionsWithTemplateObjectID:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = [[REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate alloc] initWithParentTemplateObjectID:v7];
    v9 = [(REMTemplateSectionsDataView *)self store];
    v10 = [v9 resultFromPerformingInvocation:v8 error:a4];

    v11 = objc_opt_class();
    v12 = REMDynamicCast(v11, v10);
    v13 = [v12 templateStorages];
    v14 = [v12 templateSectionStorages];
    v15 = [(REMTemplateSectionsDataView *)self store];
    v16 = [(REMTemplateSectionsDataView *)self templateSectionsFromTemplateStorages:v13 templateSectionStorages:v14 store:v15];
  }

  else
  {
    v17 = +[REMLogStore read];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateSectionsDataView fetchTemplateSectionsWithTemplateObjectID:a2 error:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "templateObjectID");
    v16 = 0;
  }

  return v16;
}

- (id)fetchTemplateSectionsInTemplate:(id)a3 error:(id *)a4
{
  v6 = [a3 objectID];
  v7 = [(REMTemplateSectionsDataView *)self fetchTemplateSectionsWithTemplateObjectID:v6 error:a4];

  return v7;
}

- (id)fetchTemplateSectionsWithObjectIDs:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if ([v7 count])
    {
      v9 = [[REMTemplateSectionsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:v8];
      v10 = [(REMTemplateSectionsDataView *)self store];
      v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

      v12 = objc_opt_class();
      v13 = REMDynamicCast(v12, v11);
      v14 = [v13 templateStorages];
      v15 = [v13 templateSectionStorages];
      v16 = [(REMTemplateSectionsDataView *)self store];
      v17 = [(REMTemplateSectionsDataView *)self templateSectionsFromTemplateStorages:v14 templateSectionStorages:v15 store:v16];

      if (v17)
      {
        v29 = v11;
        v30 = v9;
        v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v31 + 1) + 8 * i);
              v25 = [v24 objectID];
              [v18 setObject:v24 forKeyedSubscript:v25];
            }

            v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v21);
        }

        v11 = v29;
        v9 = v30;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v26 = +[REMLogStore read];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateSectionsDataView fetchTemplateSectionsWithObjectIDs:a2 error:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectIDs");
    v18 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)fetchTemplateSectionWithObjectID:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v16[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [(REMTemplateSectionsDataView *)self fetchTemplateSectionsWithObjectIDs:v9 error:a4];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:v8];
      if (v11)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = +[REMLogStore read];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [REMTemplateSectionsDataView fetchTemplateSectionWithObjectID:v8 error:v12];
      }

      if (a4)
      {
        [REMError noSuchObjectErrorWithObjectID:v8];
        *a4 = v11 = 0;
        goto LABEL_12;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

  v13 = +[REMLogStore read];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [REMTemplateSectionsDataView fetchTemplateSectionWithObjectID:a2 error:?];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  v11 = 0;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)templateSectionsFromTemplateStorages:(id)a3 templateSectionStorages:(id)a4 store:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [[REMTemplate alloc] initWithStore:v9 storage:*(*(&v35 + 1) + 8 * i)];
        v16 = [(REMTemplate *)v15 objectID];
        [v10 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = v8;
  v18 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v29);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = [v22 parentTemplateID];

        if (!v23)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "templateSectionStorage.parentTemplateID");
        }

        v24 = [v22 parentTemplateID];
        v25 = [v10 objectForKeyedSubscript:v24];
        v26 = [[REMTemplateSection alloc] initWithStore:v9 parentTemplate:v25 storage:v22];
        [v17 addObject:v26];
      }

      v19 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v19);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)fetchTemplateSectionsWithTemplateObjectID:(uint64_t)a1 error:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v5, v6, v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchTemplateSectionsWithObjectIDs:(uint64_t)a1 error:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v5, v6, v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchTemplateSectionWithObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "REMTemplateSectionsDataView: Requested to fetch non-existent templateSection {objectID: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchTemplateSectionWithObjectID:(uint64_t)a1 error:(const char *)a2 .cold.2(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v5, v6, v15);

  v14 = *MEMORY[0x1E69E9840];
}

@end