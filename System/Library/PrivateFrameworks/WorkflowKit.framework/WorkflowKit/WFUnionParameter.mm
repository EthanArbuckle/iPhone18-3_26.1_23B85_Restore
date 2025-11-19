@interface WFUnionParameter
- (NSArray)subparameters;
- (WFAction)action;
- (WFUnionParameter)initWithDefinition:(id)a3;
- (id)subdefinitionForType:(id)a3;
@end

@implementation WFUnionParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (NSArray)subparameters
{
  v2 = [(WFUnionParameter *)self subdefinitions];
  v3 = [v2 if_compactMap:&__block_literal_global_8330];

  return v3;
}

- (id)subdefinitionForType:(id)a3
{
  v4 = a3;
  v5 = [(WFUnionParameter *)self subtypes];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(WFUnionParameter *)self subdefinitions];
    v7 = [v8 objectAtIndex:v6];
  }

  return v7;
}

- (WFUnionParameter)initWithDefinition:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v66.receiver = self;
  v66.super_class = WFUnionParameter;
  v5 = [(WFParameter *)&v66 initWithDefinition:v4];
  if (!v5)
  {
    goto LABEL_37;
  }

  v52 = v4;
  v6 = [v4 objectForKey:@"WFUnionTypes"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass_8337(v6, v7);
  subtypes = v5->_subtypes;
  v5->_subtypes = v8;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = v5;
  v10 = v5->_subtypes;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = *v63;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v63 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v62 + 1) + 8 * i);
      v16 = objc_opt_class();
      v17 = WFEnforceClass_8337(v15, v16);
      v18 = NSClassFromString(v17);
      if (v18)
      {
        if (([(objc_class *)v18 isSubclassOfClass:objc_opt_class()]& 1) != 0)
        {
          goto LABEL_15;
        }

        v19 = getWFGeneralLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v70 = "[WFUnionParameter initWithDefinition:]";
          v71 = 2114;
          v72 = v17;
          v20 = v19;
          v21 = "%s %{public}@ is not a content item class.";
LABEL_13:
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, v21, buf, 0x16u);
        }
      }

      else
      {
        v19 = getWFGeneralLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v70 = "[WFUnionParameter initWithDefinition:]";
          v71 = 2114;
          v72 = v17;
          v20 = v19;
          v21 = "%s %{public}@ is not a known class name.";
          goto LABEL_13;
        }
      }

LABEL_15:
    }

    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v62 objects:v73 count:16];
  }

  while (v12);
LABEL_17:

  v22 = [v4 objectForKey:@"WFUnionDefinitions"];
  v23 = objc_opt_class();
  v24 = WFEnforceClass_8337(v22, v23);
  subdefinitions = v51->_subdefinitions;
  v51->_subdefinitions = v24;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = v51->_subdefinitions;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v58 + 1) + 8 * j);
        v32 = objc_opt_class();
        v33 = WFEnforceClass_8337(v31, v32);
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v28);
  }

  v53 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v34 = v51->_subdefinitions;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v55;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v54 + 1) + 8 * k);
        v40 = [v39 objectForKey:{@"WFLinkActionUnionParameterMemberValueTypeClassName", v51}];
        v41 = objc_opt_class();
        v42 = WFEnforceClass_8337(v40, v41);

        v43 = [v39 objectForKey:@"LinkUnionSubparameterMetadata"];
        v44 = objc_opt_class();
        v45 = WFEnforceClass_8337(v43, v44);

        if (v42)
        {
          v46 = v45 == 0;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          [(NSDictionary *)v53 setObject:v45 forKey:v42];
        }
      }

      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v36);
  }

  v5 = v51;
  parameterMetadataByType = v51->_parameterMetadataByType;
  v51->_parameterMetadataByType = v53;

  v48 = v51;
  v4 = v52;
LABEL_37:

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

@end