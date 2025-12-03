@interface SRTrialCommand
+ (id)runTrialCommand:(id)command;
+ (id)usageInformationForSubcommand:(id)subcommand;
@end

@implementation SRTrialCommand

+ (id)usageInformationForSubcommand:(id)subcommand
{
  subcommandCopy = subcommand;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\n"];
  if ([subcommandCopy isEqualToString:@"factor"])
  {
    [v4 appendFormat:@"searchutil -c trial:factor:fetch:<factorName>\n\tDump all trial factor values for factors with the name <factorName>.\n"];
    v5 = @"searchutil -c trial:factor:override:<factorName>:<client>:<type>:<value>\n\tOverride factor for <client> and <factorName> with (<type>, <value>)\n";
  }

  else if ([subcommandCopy isEqualToString:@"namespace"])
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

  else if ([subcommandCopy isEqualToString:@"trigger"])
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

+ (id)runTrialCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy count] < 2)
  {
    goto LABEL_30;
  }

  v5 = [commandCopy objectAtIndexedSubscript:1];
  lowercaseString = [v5 lowercaseString];

  if ([lowercaseString isEqualToString:@"factor"])
  {
    if ([commandCopy count] > 3)
    {
      v7 = [commandCopy objectAtIndexedSubscript:2];
      lowercaseString2 = [v7 lowercaseString];

      v9 = [commandCopy objectAtIndexedSubscript:3];
      lowercaseString3 = [v9 lowercaseString];

      if ([lowercaseString2 isEqualToString:@"fetch"])
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
        v12 = lowercaseString3;
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

      if ([lowercaseString2 isEqualToString:@"override"])
      {
        if ([commandCopy count] <= 6)
        {
          v20 = [self usageInformationForSubcommand:lowercaseString];
          goto LABEL_17;
        }

        v34 = [commandCopy objectAtIndexedSubscript:4];
        capitalizedString = [v34 capitalizedString];

        v35 = [commandCopy objectAtIndexedSubscript:5];
        capitalizedString2 = [v35 capitalizedString];

        v36 = [commandCopy objectAtIndexedSubscript:6];
        v37 = +[SRResourcesManager sharedResourcesManager];
        v38 = [v37 overrideFactor:lowercaseString3 client:capitalizedString type:capitalizedString2 value:v36];

        if (v38)
        {
          +[SRResourcesManager fetchOverrideList];
          v39 = @"succeeded";
        }

        else
        {
          v39 = @"failed";
        }

        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nOverride for factor %@ %@.\n", lowercaseString3, v39];

        goto LABEL_36;
      }

      goto LABEL_28;
    }
  }

  else if ([lowercaseString isEqualToString:@"namespace"])
  {
    if ([commandCopy count] > 3)
    {
      v17 = [commandCopy objectAtIndexedSubscript:2];
      lowercaseString2 = [v17 lowercaseString];

      v18 = [commandCopy objectAtIndexedSubscript:3];
      lowercaseString3 = [v18 lowercaseString];

      if ([lowercaseString2 isEqualToString:@"load"])
      {
        v19 = +[SRResourcesManager sharedResourcesManager];
        [v19 loadDataSource:lowercaseString3 force:1];

        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nLoaded namespace %@.\n", lowercaseString3];
LABEL_17:
        v29 = v20;
LABEL_38:

        goto LABEL_39;
      }

      if ([lowercaseString2 isEqualToString:@"factors"])
      {
        capitalizedString = +[SRResourcesManager trialParameterList];
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        capitalizedString2 = [capitalizedString objectForKeyedSubscript:lowercaseString3];
        v33 = [v31 initWithFormat:@"\n%@\n", capitalizedString2];
      }

      else
      {
        if (![lowercaseString2 isEqualToString:@"experiment"])
        {
LABEL_28:

          goto LABEL_29;
        }

        capitalizedString = [SSTrialManager trialManagerForNamespaceId:lowercaseString3];
        if (!capitalizedString)
        {
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nInvalid namespaceID %@\n", lowercaseString3];
          goto LABEL_37;
        }

        capitalizedString2 = objc_alloc_init(MEMORY[0x1E695DF90]);
        experimentId = [capitalizedString experimentId];
        [capitalizedString2 setObject:experimentId forKeyedSubscript:@"Experiment ID"];

        treatmentId = [capitalizedString treatmentId];
        [capitalizedString2 setObject:treatmentId forKeyedSubscript:@"Treatment ID"];

        v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(capitalizedString, "experimentDeploymentId")}];
        [capitalizedString2 setObject:v42 forKeyedSubscript:@"Deployment ID"];

        rolloutId = [capitalizedString rolloutId];
        [capitalizedString2 setObject:rolloutId forKeyedSubscript:@"Rollout ID"];

        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", capitalizedString2];
      }

      v29 = v33;
LABEL_36:

LABEL_37:
      goto LABEL_38;
    }
  }

  else
  {
    if (![lowercaseString isEqualToString:@"trigger"])
    {
LABEL_29:

LABEL_30:
      if ([commandCopy count] <= 1)
      {
        v29 = [self usageInformationForSubcommand:0];
        goto LABEL_41;
      }

      lowercaseString = [commandCopy objectAtIndexedSubscript:1];
      goto LABEL_32;
    }

    if ([commandCopy count] > 4)
    {
      v21 = [commandCopy objectAtIndexedSubscript:2];
      lowercaseString2 = [v21 capitalizedString];

      v22 = [commandCopy objectAtIndexedSubscript:3];
      unsignedLongLongValue = [v22 unsignedLongLongValue];

      v24 = [commandCopy objectAtIndexedSubscript:4];
      uppercaseString = [v24 uppercaseString];

      v26 = +[SRResourcesManager sharedResourcesManager];
      v27 = [v26 resourcesForClient:lowercaseString2 options:&unk_1F2427B98];

      v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uppercaseString];
      [v27 logForTrigger:v28 queryID:unsignedLongLongValue];

      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\nInvoked log trigger logic for (%@, %llu, %@); check feedback stream with 'parsec_tool feedback --dump --pretty'.\n", lowercaseString2, unsignedLongLongValue, uppercaseString];
LABEL_39:

      goto LABEL_40;
    }
  }

LABEL_32:
  v29 = [self usageInformationForSubcommand:lowercaseString];
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