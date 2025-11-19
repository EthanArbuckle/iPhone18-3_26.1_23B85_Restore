@interface WFLinkActionRunDescriptor(Conversion)
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
@end

@implementation WFLinkActionRunDescriptor(Conversion)

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v63 = *MEMORY[0x1E69E9840];
  v55 = a4;
  v8 = a5;
  v9 = [a1 action];
  v10 = [a1 identifier];
  v51 = a1;
  v11 = [a1 metadata];
  v12 = [v10 compositeIdentifier];
  v13 = objc_opt_new();
  v14 = [v11 shortcutsActionMetadata];
  v15 = [v14 dictionaryRepresentation];

  v52 = v15;
  v53 = v9;
  if (v15)
  {
    v16 = [v15 objectForKeyedSubscript:@"IdentifierOverrideKey"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v46 = a3;
      v48 = v11;
      v49 = v10;
      v50 = v8;
      v47 = v16;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v17 = [v9 parameters];
      v18 = [v17 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v59;
        v21 = 0x1E69AC000uLL;
        v54 = v17;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v23 = [*(*(&v58 + 1) + 8 * i) value];
            v24 = [v23 value];

            if (v24)
            {
              v25 = *(v21 + 2000);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = v21;
                v27 = v13;
                v28 = [(WFWorkflow *)v24 identifier];
                v29 = [v28 instanceIdentifier];
                v57 = 0;
                v30 = [v55 serializedParametersForAppEntityIdentifier:v29 error:&v57];
                v31 = v57;

                if (v31)
                {
                  v8 = v50;
                  (v50)[2](v50, 0, v31);

                  v42 = v47;
                  v11 = v48;
                  v12 = v47;
                  v44 = v53;
                  v41 = v54;
                  v10 = v49;
                  v13 = v27;
                  goto LABEL_27;
                }

                v13 = v27;
                if (v30)
                {
                  v32 = [MEMORY[0x1E696ACD0] unarchiveObjectWithData:v30];
                  [v27 addEntriesFromDictionary:v32];
                }

                v21 = v26;
                v17 = v54;
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v12 = v47;
      v10 = v49;
      v8 = v50;
      v9 = v53;
      v11 = v48;
      a3 = v46;
    }

    else
    {
    }
  }

  v33 = +[WFActionRegistry sharedRegistry];
  v34 = [v33 createActionWithIdentifier:v12 serializedParameters:0 forceLocalActionsOnly:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = WFLinkActionSerializedParametersForWFAction(v34, v9, v11);
    v36 = a3;
    v37 = [v35 mutableCopy];

    v13 = v37;
    a3 = v36;
  }

  v38 = [v34 copyWithSerializedParameters:v13];

  v39 = [WFWorkflow alloc];
  v40 = objc_opt_new();
  v56 = 0;
  v24 = [(WFWorkflow *)v39 initWithRecord:v40 reference:0 storageProvider:0 migrateIfNecessary:0 environment:a3 error:&v56];
  v41 = v56;

  if (v24)
  {
    v42 = v38;
    [(WFWorkflow *)v24 addAction:v38];
    if ([v51 isAutoShortcut])
    {
      [(WFWorkflow *)v24 setSource:@"ShortcutSourceAppShortcut"];
    }

    v43 = [v51 name];
    [(WFWorkflow *)v24 setName:v43];

    v8[2](v8, v24, 0);
  }

  else
  {
    (v8)[2](v8, 0, v41);
    v42 = v38;
  }

  v44 = v53;
LABEL_27:

  v45 = *MEMORY[0x1E69E9840];
}

@end