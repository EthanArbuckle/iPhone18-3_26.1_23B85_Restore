@interface UAFTrialConversions
+ (id)entitledTrialNamespaceNames;
+ (id)generateEntitledTrialNamespaces;
@end

@implementation UAFTrialConversions

+ (id)generateEntitledTrialNamespaces
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = 0x1E7FFC000uLL;
  if (!+[UAFCommonUtilities isTrialAvailable])
  {
    v22 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v37 = "+[UAFTrialConversions generateEntitledTrialNamespaces]";
      _os_log_error_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_ERROR, "%s This system doesn't support Trial. Returning nil.", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = [&unk_1F3B73248 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (!v27)
  {
LABEL_31:
    v4 = 0;
    goto LABEL_32;
  }

  v4 = 0;
  v5 = *v33;
  v6 = 0x1E695D000uLL;
  *&v3 = 136315650;
  v25 = v3;
  v26 = *v33;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v33 != v5)
      {
        objc_enumerationMutation(&unk_1F3B73248);
      }

      v8 = *(*(&v32 + 1) + 8 * i);
      v9 = [*(v2 + 2584) valueForEntitlement:{v8, v25}];
      v10 = *(v6 + 3784);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v4)
        {
          v4 = objc_opt_new();
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v42 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = v2;
          v15 = *v29;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v28 + 1) + 8 * j);
              v18 = [v17 intValue];
              if (v18)
              {
                v19 = [MEMORY[0x1E69DB550] namespaceNameFromId:v18];
                [v4 addObject:v19];
              }

              else
              {
                [v4 addObject:v17];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v42 count:16];
          }

          while (v13);
          v2 = v14;
          v5 = v26;
          v6 = 0x1E695D000;
        }
      }

      else
      {
        if (!v9)
        {
          goto LABEL_25;
        }

        v11 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          *buf = v25;
          v37 = "+[UAFTrialConversions generateEntitledTrialNamespaces]";
          v38 = 2114;
          v39 = v8;
          v40 = 2112;
          v41 = v20;
          v21 = v20;
          _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s %{public}@ is unexpected type: %@", buf, 0x20u);
        }
      }

LABEL_25:
    }

    v27 = [&unk_1F3B73248 countByEnumeratingWithState:&v32 objects:v43 count:16];
  }

  while (v27);
LABEL_32:
  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

void __50__UAFTrialConversions_entitledTrialNamespaceNames__block_invoke()
{
  v0 = +[UAFTrialConversions generateEntitledTrialNamespaces];
  v1 = _MergedGlobals_3;
  _MergedGlobals_3 = v0;
}

+ (id)entitledTrialNamespaceNames
{
  if (qword_1ED7D10B0 != -1)
  {
    dispatch_once(&qword_1ED7D10B0, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

@end