@interface INIntentCodableDescription(Workflow)
- (id)wf_actionParameterDefinitionsWithOverrides:()Workflow;
- (id)wf_relationResourceDefinitionForAttribute:()Workflow parameters:overrides:;
@end

@implementation INIntentCodableDescription(Workflow)

- (id)wf_relationResourceDefinitionForAttribute:()Workflow parameters:overrides:
{
  v7 = a4;
  v8 = a5;
  relationship = [a3 relationship];
  v10 = relationship;
  if (relationship)
  {
    parentCodableAttribute = [relationship parentCodableAttribute];

    if (parentCodableAttribute)
    {
      parentCodableAttribute = objc_opt_new();
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [parentCodableAttribute setObject:v13 forKeyedSubscript:@"WFResourceClass"];

      parentCodableAttribute2 = [v10 parentCodableAttribute];
      propertyName = [parentCodableAttribute2 propertyName];

      v16 = [v8 objectForKeyedSubscript:propertyName];
      v17 = [v16 objectForKey:@"Key"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = propertyName;
      }

      v20 = v19;

      [parentCodableAttribute setObject:v20 forKeyedSubscript:@"WFParameterKey"];
      v21 = [v10 relation] - 1;
      if (v21 <= 8 && ((0x17Du >> v21) & 1) != 0)
      {
        v22 = *off_1E8376138[v21];
      }

      else
      {
        v22 = 0;
      }

      [parentCodableAttribute setObject:v22 forKeyedSubscript:@"WFParameterRelation"];
      values = [v10 values];
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __103__INIntentCodableDescription_Workflow__wf_relationResourceDefinitionForAttribute_parameters_overrides___block_invoke;
      v29 = &unk_1E8376118;
      v30 = v7;
      v31 = v10;
      v24 = [values if_map:&v26];
      [parentCodableAttribute setObject:v24 forKeyedSubscript:{@"WFParameterValues", v26, v27, v28, v29}];
    }
  }

  else
  {
    parentCodableAttribute = 0;
  }

  return parentCodableAttribute;
}

- (id)wf_actionParameterDefinitionsWithOverrides:()Workflow
{
  v61 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = v4;
  selfCopy = self;
  displayOrderedAttributes = [self displayOrderedAttributes];
  v8 = [displayOrderedAttributes countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(displayOrderedAttributes);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        if ([v12 isConfigurable])
        {
          propertyName = [v12 propertyName];
          v14 = [v46 objectForKeyedSubscript:propertyName];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v17 = [WFParameterDefinition alloc];
            v16 = [(WFParameterDefinition *)v17 initWithDictionary:MEMORY[0x1E695E0F8]];
          }

          v18 = v16;

          if ([v12 supportsDynamicEnumeration])
          {
            wf_parameterClass = objc_opt_class();
          }

          else
          {
            wf_parameterClass = [v12 wf_parameterClass];
          }

          v20 = wf_parameterClass;
          if (wf_parameterClass)
          {
            v21 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
            v22 = [v12 wf_updatedParameterDefinition:v18 parameterClass:v20 localizer:v21];

            propertyName2 = [v12 propertyName];
            [v5 setObject:v22 forKey:propertyName2];

            propertyName3 = [v12 propertyName];
            [v6 addObject:propertyName3];

            v18 = v22;
          }
        }
      }

      v9 = [displayOrderedAttributes countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v9);
  }

  v43 = v6;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [selfCopy displayOrderedAttributes];
  v25 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v50;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v49 + 1) + 8 * j);
        v30 = [selfCopy wf_relationResourceDefinitionForAttribute:v29 parameters:v5 overrides:v46];
        if (v30)
        {
          propertyName4 = [v29 propertyName];
          v32 = [v5 objectForKeyedSubscript:propertyName4];

          v33 = objc_alloc(MEMORY[0x1E695DF70]);
          v34 = [v32 objectForKey:@"RequiredResources"];
          v35 = [v33 initWithArray:v34];

          [v35 addObject:v30];
          v57 = @"RequiredResources";
          v58 = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v37 = [v32 definitionByAddingEntriesInDictionary:v36];
          propertyName5 = [v29 propertyName];
          [v5 setObject:v37 forKeyedSubscript:propertyName5];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v26);
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __83__INIntentCodableDescription_Workflow__wf_actionParameterDefinitionsWithOverrides___block_invoke;
  v47[3] = &unk_1E83760B0;
  v48 = v5;
  v39 = v5;
  v40 = [v43 if_map:v47];

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

@end