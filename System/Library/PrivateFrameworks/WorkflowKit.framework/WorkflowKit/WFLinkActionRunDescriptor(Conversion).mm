@interface WFLinkActionRunDescriptor(Conversion)
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
@end

@implementation WFLinkActionRunDescriptor(Conversion)

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v63 = *MEMORY[0x1E69E9840];
  v55 = a4;
  v8 = a5;
  action = [self action];
  identifier = [self identifier];
  selfCopy = self;
  metadata = [self metadata];
  compositeIdentifier = [identifier compositeIdentifier];
  v13 = objc_opt_new();
  shortcutsActionMetadata = [metadata shortcutsActionMetadata];
  dictionaryRepresentation = [shortcutsActionMetadata dictionaryRepresentation];

  v52 = dictionaryRepresentation;
  v53 = action;
  if (dictionaryRepresentation)
  {
    v16 = [dictionaryRepresentation objectForKeyedSubscript:@"IdentifierOverrideKey"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v46 = a3;
      v48 = metadata;
      v49 = identifier;
      v50 = v8;
      v47 = v16;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      parameters = [action parameters];
      v18 = [parameters countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v59;
        v21 = 0x1E69AC000uLL;
        v54 = parameters;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(parameters);
            }

            value = [*(*(&v58 + 1) + 8 * i) value];
            v23Value = [value value];

            if (v23Value)
            {
              v25 = *(v21 + 2000);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = v21;
                v27 = v13;
                identifier2 = [(WFWorkflow *)v23Value identifier];
                instanceIdentifier = [identifier2 instanceIdentifier];
                v57 = 0;
                v30 = [v55 serializedParametersForAppEntityIdentifier:instanceIdentifier error:&v57];
                v31 = v57;

                if (v31)
                {
                  v8 = v50;
                  (v50)[2](v50, 0, v31);

                  v42 = v47;
                  metadata = v48;
                  compositeIdentifier = v47;
                  v44 = v53;
                  v41 = v54;
                  identifier = v49;
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
                parameters = v54;
              }
            }
          }

          v19 = [parameters countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      compositeIdentifier = v47;
      identifier = v49;
      v8 = v50;
      action = v53;
      metadata = v48;
      a3 = v46;
    }

    else
    {
    }
  }

  v33 = +[WFActionRegistry sharedRegistry];
  v34 = [v33 createActionWithIdentifier:compositeIdentifier serializedParameters:0 forceLocalActionsOnly:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = WFLinkActionSerializedParametersForWFAction(v34, action, metadata);
    v36 = a3;
    v37 = [v35 mutableCopy];

    v13 = v37;
    a3 = v36;
  }

  v38 = [v34 copyWithSerializedParameters:v13];

  v39 = [WFWorkflow alloc];
  v40 = objc_opt_new();
  v56 = 0;
  v23Value = [(WFWorkflow *)v39 initWithRecord:v40 reference:0 storageProvider:0 migrateIfNecessary:0 environment:a3 error:&v56];
  v41 = v56;

  if (v23Value)
  {
    v42 = v38;
    [(WFWorkflow *)v23Value addAction:v38];
    if ([selfCopy isAutoShortcut])
    {
      [(WFWorkflow *)v23Value setSource:@"ShortcutSourceAppShortcut"];
    }

    name = [selfCopy name];
    [(WFWorkflow *)v23Value setName:name];

    v8[2](v8, v23Value, 0);
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