@interface SRTrialCommand
+ (id)runTrialCommand:(id)a3;
+ (id)usageInformationForSubcommand:(id)a3;
@end

@implementation SRTrialCommand

+ (id)usageInformationForSubcommand:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\n"];
  if ([v3 isEqualToString:@"factor"])
  {
    [v4 appendFormat:@"searchutil -c trial:factor:fetch:<factorName>\n\tDump all trial factor values for factors with the name <factorName>.\n"];
    v5 = @"searchutil -c trial:factor:override:<factorName>:<client>:<type>:<value>\n\tOverride factor for <client> and <factorName> with (<type>, <value>)\n";
  }

  else if ([v3 isEqualToString:@"namespace"])
  {
    [v4 appendFormat:@"searchutil -c trial:namespace:load:<namespaceID>\n\tReload trial namespace <namespaceID>.\n"];
    [v4 appendFormat:@"searchutil -c trial:namespace:factors:<namespaceID>\n\tDump all factors for namespace <namespaceID>.\n"];
    [v4 appendFormat:@"searchutil -c trial:namespace:experiment:<namespaceID>\n\tDump any trial experiment metadata for namespace <namespaceID>.\n"];
    [v4 appendFormat:@"\tnamespaceID:\n"];
    [v4 appendFormat:@"\t\t332 (SPOTLIGHT_BLENDING_MODEL)\n"];
    [v4 appendFormat:@"\t\t333 (SPOTLIGHT_UI)\n"];
    [v4 appendFormat:@"\t\t334 (SPOTLIGHT_RANKING_RULES)\n"];
    [v4 appendFormat:@"\t\t335 (SPOTLIGHT_RANKING_POLICY)\n"];
    [v4 appendFormat:@"\t\t336 (SPOTLIGHT_KNOWLEDGE_BEHAVIOR)\n"];
    v5 = @"\t\t337 (SPOTLIGHT_MAIL_APP)\n";
  }

  else if ([v3 isEqualToString:@"trigger"])
  {
    v5 = @"searchutil -c trial:trigger:<client>:<queryID>:<codepathID>\n\tEmit a log trigger for <queryID> if the value of 'codepathIDs' for <client> includes <codepathID>.\n";
  }

  else
  {
    v5 = @"searchutil -c trial:<subcommand>[:options]\n\nsubcommands: factor, namespace, trigger\n\n";
  }

  [v4 appendFormat:v5];

  return v4;
}

+ (id)runTrialCommand:(id)a3
{
  v4 = a3;
  if ([v4 count] < 2)
  {
    goto LABEL_30;
  }

  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = [v5 lowercaseString];

  if ([v6 isEqualToString:@"factor"])
  {
    if ([v4 count] > 3)
    {
      v7 = [v4 objectAtIndexedSubscript:2];
      v8 = [v7 lowercaseString];

      v9 = [v4 objectAtIndexedSubscript:3];
      v10 = [v9 lowercaseString];

      if ([v8 isEqualToString:@"fetch"])
      {
        v51 = 0;
        v52 = &v51;
        v53 = 0x3032000000;
        v54 = __Block_byref_object_copy_;
        v55 = __Block_byref_object_dispose_;
        v56 = 0;
        v11 = +[SRResourcesManager trialParameterList];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __34__SRTrialCommand_runTrialCommand___block_invoke;
        v48[3] = &unk_1E7A2AD48;
        v12 = v10;
        v49 = v12;
        v50 = &v51;
        [v11 enumerateKeysAndObjectsUsingBlock:v48];
        v13 = +[SRResourcesManager trialOverrideList];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __34__SRTrialCommand_runTrialCommand___block_invoke_3;
        v45[3] = &unk_1E7A2AD48;
        v14 = v12;
        v46 = v14;
        v47 = &v51;
        [v13 enumerateKeysAndObjectsUsingBlock:v45];
        if ([v52[5] count])
        {
          v15 = objc_alloc(MEMORY[0x1E696AEC0]);
          v14 = v52[5];
          v16 = @"\n%@\n";
        }

        else
        {
          v15 = objc_alloc(MEMORY[0x1E696AEC0]);
          v16 = @"\nFactor %@ not found.\n";
        }

        v29 = [v15 initWithFormat:v16, v14];

        _Block_object_dispose(&v51, 8);
        goto LABEL_38;
      }

      if ([v8 isEqualToString:@"override"])
      {
        if ([v4 count] <= 6)
        {
          v20 = [a1 usageInformationForSubcommand:v6];
          goto LABEL_17;
        }

        v34 = [v4 objectAtIndexedSubscript:4];
        v30 = [v34 capitalizedString];

        v35 = [v4 objectAtIndexedSubscript:5];
        v32 = [v35 capitalizedString];

        v36 = [v4 objectAtIndexedSubscript:6];
        v37 = +[SRResourcesManager sharedResourcesManager];
        v38 = [v37 overrideFactor:v10 client:v30 type:v32 value:v36];

        if (v38)
        {
          +[SRResourcesManager fetchOverrideList];
          v39 = @"succeeded";
        }

        else
        {
          v39 = @"failed";
        }

        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nOverride for factor %@ %@.\n", v10, v39];

        goto LABEL_36;
      }

      goto LABEL_28;
    }
  }

  else if ([v6 isEqualToString:@"namespace"])
  {
    if ([v4 count] > 3)
    {
      v17 = [v4 objectAtIndexedSubscript:2];
      v8 = [v17 lowercaseString];

      v18 = [v4 objectAtIndexedSubscript:3];
      v10 = [v18 lowercaseString];

      if ([v8 isEqualToString:@"load"])
      {
        v19 = +[SRResourcesManager sharedResourcesManager];
        [v19 loadDataSource:v10 force:1];

        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nLoaded namespace %@.\n", v10];
LABEL_17:
        v29 = v20;
LABEL_38:

        goto LABEL_39;
      }

      if ([v8 isEqualToString:@"factors"])
      {
        v30 = +[SRResourcesManager trialParameterList];
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v32 = [v30 objectForKeyedSubscript:v10];
        v33 = [v31 initWithFormat:@"\n%@\n", v32];
      }

      else
      {
        if (![v8 isEqualToString:@"experiment"])
        {
LABEL_28:

          goto LABEL_29;
        }

        v30 = [SSTrialManager trialManagerForNamespaceId:v10];
        if (!v30)
        {
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nInvalid namespaceID %@\n", v10];
          goto LABEL_37;
        }

        v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v40 = [v30 experimentId];
        [v32 setObject:v40 forKeyedSubscript:@"Experiment ID"];

        v41 = [v30 treatmentId];
        [v32 setObject:v41 forKeyedSubscript:@"Treatment ID"];

        v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "experimentDeploymentId")}];
        [v32 setObject:v42 forKeyedSubscript:@"Deployment ID"];

        v43 = [v30 rolloutId];
        [v32 setObject:v43 forKeyedSubscript:@"Rollout ID"];

        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", v32];
      }

      v29 = v33;
LABEL_36:

LABEL_37:
      goto LABEL_38;
    }
  }

  else
  {
    if (![v6 isEqualToString:@"trigger"])
    {
LABEL_29:

LABEL_30:
      if ([v4 count] <= 1)
      {
        v29 = [a1 usageInformationForSubcommand:0];
        goto LABEL_41;
      }

      v6 = [v4 objectAtIndexedSubscript:1];
      goto LABEL_32;
    }

    if ([v4 count] > 4)
    {
      v21 = [v4 objectAtIndexedSubscript:2];
      v8 = [v21 capitalizedString];

      v22 = [v4 objectAtIndexedSubscript:3];
      v23 = [v22 unsignedLongLongValue];

      v24 = [v4 objectAtIndexedSubscript:4];
      v25 = [v24 uppercaseString];

      v26 = +[SRResourcesManager sharedResourcesManager];
      v27 = [v26 resourcesForClient:v8 options:&unk_1F2427B98];

      v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v25];
      [v27 logForTrigger:v28 queryID:v23];

      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nInvoked log trigger logic for (%@, %llu, %@); check feedback stream with 'parsec_tool feedback --dump --pretty'.\n", v8, v23, v25];
LABEL_39:

      goto LABEL_40;
    }
  }

LABEL_32:
  v29 = [a1 usageInformationForSubcommand:v6];
LABEL_40:

LABEL_41:

  return v29;
}

void __34__SRTrialCommand_runTrialCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __34__SRTrialCommand_runTrialCommand___block_invoke_2;
  v15 = &unk_1E7A2B128;
  v16 = *(a1 + 32);
  v17 = &v18;
  [v6 enumerateKeysAndObjectsUsingBlock:&v12];
  v7 = v19[5];
  if (v7)
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v7 = v19[5];
      v8 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v8 setObject:v7 forKeyedSubscript:{v5, v12, v13, v14, v15}];
  }

  _Block_object_dispose(&v18, 8);
}

void __34__SRTrialCommand_runTrialCommand___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v8 = [a2 lowercaseString];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __34__SRTrialCommand_runTrialCommand___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__SRTrialCommand_runTrialCommand___block_invoke_4;
  v11[3] = &unk_1E7A2B128;
  v12 = *(a1 + 32);
  v13 = &v14;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];
  if (v15[5] && !*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-Override", v5];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v15[5] forKeyedSubscript:v10];

  _Block_object_dispose(&v14, 8);
}

void __34__SRTrialCommand_runTrialCommand___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v8 = [a2 lowercaseString];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

@end