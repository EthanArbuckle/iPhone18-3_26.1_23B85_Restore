@interface SRAssetCommand
+ (id)runAssetCommand:(id)command;
+ (id)usageInformationForSubcommand:(id)subcommand;
@end

@implementation SRAssetCommand

+ (id)usageInformationForSubcommand:(id)subcommand
{
  subcommandCopy = subcommand;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\n"];
  if ([subcommandCopy isEqualToString:@"dump"])
  {
    [v4 appendFormat:@"searchutil -c asset:dump:cache\n\tDump %@'s OTA asset bundle cache.\n", @"searchd"];
    [v4 appendFormat:@"searchutil -c asset:dump:loaded\n\tDump all assets loaded by %@.\n", @"searchd"];
    [v4 appendFormat:@"searchutil -c asset:dump:defaults\n\tDump user defaults used internally by SpotlightResources framework.\n"];
    v5 = @"searchutil -c asset:dump:assertions\n\tDump DDS assertions currently held by SpotlightResources.\n";
    v6 = @"searchutil -c asset:dump:locales\n\tDump asset locales that SpotlightResources knows to load assets for.\n";
    v7 = @"searchutil -c asset:dump:config\n\tDump asset configuration loaded from RequiredAsset_root.bundle.\n";
LABEL_10:
    [v4 appendFormat:v7];
LABEL_11:
    [v4 appendFormat:v6];
    goto LABEL_12;
  }

  if ([subcommandCopy isEqualToString:@"bundle"])
  {
    v5 = @"\tkey: path, compatibilityversion, contentversion, or bundleversion; anything else will dump all MobileAsset properties\n";
    v6 = @"\tdeliveryType: Required, Optional, Delta, OptionalTest, or DeltaTest\n";
    v7 = @"searchutil -c asset:bundle:<deliveryType>:<language>:<key>\n\tDump information about an asset bundle on device.\n";
    goto LABEL_10;
  }

  if ([subcommandCopy isEqualToString:@"content"])
  {
    v5 = @"searchutil -c asset:content:<contentType>:<language>\n\tDump all loaded assets for a content type and language.\n";
    goto LABEL_12;
  }

  if ([subcommandCopy isEqualToString:@"load"] & 1) != 0 || (objc_msgSend(subcommandCopy, "isEqual:", @"unload"))
  {
    v5 = @"searchutil -c asset:reset\n\tSpotlightResources will no longer hold on to assertions for requests from 'searchutil -c asset:load'.\n";
    v6 = @"\tdeliveryType: Required, Optional, Delta, OptionalTest, or DeltaTest\n";
    v7 = @"searchutil -c asset:load[:force]:<language>\n\tRequests a specified asset bundle to be loaded/downloaded.\n";
    goto LABEL_10;
  }

  if ([subcommandCopy isEqualToString:@"availability"])
  {
    v5 = @"\tdeliveryType: Required, Optional, Delta, OptionalTest, or DeltaTest\n";
    v6 = @"searchutil -c asset:availability:<localeIdentifier>[:<deliveryType>]\n\tReturns asset availability for the specified locale or (locale, delivery type).\n";
    goto LABEL_11;
  }

  v5 = @"searchutil -c asset:<subcommand>[:options]\n\tsubcommands: dump, bundle, content, load, reset\n";
LABEL_12:
  [v4 appendFormat:v5];

  return v4;
}

+ (id)runAssetCommand:(id)command
{
  v85[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  if ([commandCopy count] >= 2)
  {
    v5 = [commandCopy objectAtIndexedSubscript:1];
    lowercaseString = [v5 lowercaseString];

    if ([lowercaseString isEqualToString:@"dump"])
    {
      if ([commandCopy count] <= 2)
      {
        goto LABEL_36;
      }

      v7 = [commandCopy objectAtIndexedSubscript:2];
      lowercaseString2 = [v7 lowercaseString];

      if ([lowercaseString2 isEqualToString:@"cache"])
      {
        v9 = +[SRAssetBundleCache sharedInstance];
        dumpCache = [v9 dumpCache];
LABEL_21:
        v15 = dumpCache;

LABEL_22:
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", v15];
LABEL_72:

LABEL_73:
        goto LABEL_74;
      }

      if ([lowercaseString2 isEqualToString:@"loaded"])
      {
        v9 = +[SRDefaultsManager sharedDefaultsManager];
        dumpCache = [v9 allLoadedAssets];
        goto LABEL_21;
      }

      if ([lowercaseString2 isEqualToString:@"defaults"])
      {
        v15 = +[SRDefaultsManager defaultProperties];
        goto LABEL_22;
      }

      if ([lowercaseString2 isEqualToString:@"config"])
      {
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = +[SRDefaultsManager sharedDefaultsManager];
        assetConfigDump = [v15 assetConfigDump];
      }

      else if ([lowercaseString2 isEqualToString:@"locales"])
      {
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = +[SRDefaultsManager sharedDefaultsManager];
        assetConfigDump = [v15 langConfigDump];
      }

      else
      {
        if (![lowercaseString2 isEqualToString:@"assertions"])
        {
          v20 = [self usageInformationForSubcommand:lowercaseString];
          goto LABEL_73;
        }

        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = +[SRDefaultsManager sharedDefaultsManager];
        assetConfigDump = [v15 assertionsDump];
      }

      lowercaseString10 = assetConfigDump;
      v47 = [v43 initWithFormat:@"\n%@\n", assetConfigDump, v70];
      goto LABEL_70;
    }

    if ([lowercaseString isEqualToString:@"bundle"])
    {
      if ([commandCopy count] <= 4)
      {
        goto LABEL_36;
      }

      v11 = [commandCopy objectAtIndexedSubscript:2];
      lowercaseString3 = [v11 lowercaseString];
      lowercaseString2 = deliveryTypeFromLowerCaseString(lowercaseString3);

      v13 = [commandCopy objectAtIndexedSubscript:3];
      lowercaseString4 = [v13 lowercaseString];
      v15 = languageFromLowerCaseString(lowercaseString4);

      lowercaseString10 = getAssetBundleInfo(lowercaseString2, v15, 0);
      if (!lowercaseString10)
      {
        v20 = @"\nAsset bundle could not be found or was not cached.\n";
LABEL_71:

        goto LABEL_72;
      }

      v17 = [commandCopy objectAtIndexedSubscript:4];
      lowercaseString5 = [v17 lowercaseString];

      if ([lowercaseString5 isEqualToString:@"path"])
      {
        v19 = @"Path";
      }

      else if ([lowercaseString5 isEqualToString:@"compatibilityversion"])
      {
        v19 = @"Compatibility Version";
      }

      else if ([lowercaseString5 isEqualToString:@"contentversion"])
      {
        v19 = @"Content Version";
      }

      else if ([lowercaseString5 isEqualToString:@"bundleversion"])
      {
        v19 = @"Bundle Version";
      }

      else
      {
        v19 = @"MobileAsset Properties";
      }

      v51 = [lowercaseString10 objectForKeyedSubscript:v19];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", v51];

LABEL_63:
      goto LABEL_71;
    }

    if ([lowercaseString isEqualToString:@"content"])
    {
      if ([commandCopy count] > 3)
      {
        v21 = [commandCopy objectAtIndexedSubscript:2];
        lowercaseString6 = [v21 lowercaseString];

        v23 = [commandCopy objectAtIndexedSubscript:3];
        lowercaseString7 = [v23 lowercaseString];
        v25 = languageFromLowerCaseString(lowercaseString7);

        v78 = 0;
        v79 = &v78;
        v80 = 0x3032000000;
        v81 = __Block_byref_object_copy_;
        v82 = __Block_byref_object_dispose_;
        v83 = 0;
        v26 = +[SRDefaultsManager sharedDefaultsManager];
        allLoadedAssets = [v26 allLoadedAssets];

        v28 = [allLoadedAssets objectForKeyedSubscript:v25];

        if (v28)
        {
          v29 = [allLoadedAssets objectForKeyedSubscript:v25];
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v75[2] = __34__SRAssetCommand_runAssetCommand___block_invoke;
          v75[3] = &unk_1E7A2B100;
          v76 = lowercaseString6;
          v77 = &v78;
          [v29 enumerateKeysAndObjectsUsingBlock:v75];
        }

        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = [v30 initWithFormat:@"\n%@\n", v79[5]];

        _Block_object_dispose(&v78, 8);
        goto LABEL_74;
      }

      goto LABEL_36;
    }

    if ([lowercaseString isEqualToString:@"load"])
    {
      if ([commandCopy count] <= 2)
      {
        goto LABEL_36;
      }

      v31 = [commandCopy objectAtIndexedSubscript:2];
      lowercaseString8 = [v31 lowercaseString];
      v33 = [lowercaseString8 isEqualToString:@"force"];

      if (v33)
      {
        if ([commandCopy count] <= 3)
        {
LABEL_36:
          v20 = [self usageInformationForSubcommand:lowercaseString];
LABEL_74:

          goto LABEL_75;
        }

        v49 = @"Force-loaded";
        v50 = 3;
      }

      else
      {
        v49 = @"Kicked off loading of";
        v50 = 2;
      }

      v52 = [commandCopy objectAtIndexedSubscript:v50];
      lowercaseString9 = [v52 lowercaseString];
      v54 = languageFromLowerCaseString(lowercaseString9);

      v55 = +[SRDefaultsManager sharedDefaultsManager];
      v56 = objc_alloc(MEMORY[0x1E695DFD8]);
      v85[0] = v54;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
      v58 = [v56 initWithArray:v57];
      [v55 requestAssetsForLanguages:v58 removeExisting:0 force:v33];

      v59 = +[SRDefaultsManager sharedDefaultsManager];
      currentAssetTypes = [v59 currentAssetTypes];

      v61 = +[SRDefaultsManager sharedDefaultsManager];
      [v61 loadTestAssetsForLanguage:v54 assetTypes:currentAssetTypes];

      v62 = +[SRDefaultsManager sharedDefaultsManager];
      v63 = [v62 loadOTAAssetsForLanguage:v54 updateCache:0 assetTypes:currentAssetTypes force:v33];

      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@ OTA assets for %@.\n", v49, v54];
      goto LABEL_74;
    }

    if ([lowercaseString isEqualToString:@"availability"])
    {
      if ([commandCopy count] <= 2)
      {
        goto LABEL_36;
      }

      lowercaseString2 = [commandCopy objectAtIndexedSubscript:2];
      v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:lowercaseString2];
      if ([commandCopy count] <= 3)
      {
        v45 = SRAreAssetsAvailableForLocale(v15);
        v46 = objc_alloc(MEMORY[0x1E696AEC0]);
        lowercaseString10 = SRAssetAvailabilityString(v45);
        v47 = [v46 initWithFormat:@"\n%@ for %@\n", lowercaseString10, lowercaseString2];
LABEL_70:
        v20 = v47;
        goto LABEL_71;
      }

      v64 = [commandCopy objectAtIndexedSubscript:3];
      lowercaseString10 = [v64 lowercaseString];

      v65 = languageCodeForLocale(v15);
      v66 = SRIsAssetAvailable(lowercaseString10, v65, 0, 0, 0, 0);

      v67 = objc_alloc(MEMORY[0x1E696AEC0]);
      lowercaseString5 = SRAssetAvailabilityString(v66);
      v20 = [v67 initWithFormat:@"\n%@ for (%@, %@)\n", lowercaseString5, lowercaseString2, lowercaseString10];
      goto LABEL_63;
    }

    if ([lowercaseString isEqualToString:@"reset"])
    {
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v36 = preferredLanguages;
      v37 = [v36 countByEnumeratingWithState:&v71 objects:v84 count:16];
      if (v37)
      {
        v38 = *v72;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v72 != v38)
            {
              objc_enumerationMutation(v36);
            }

            v40 = normalizedLocaleForIdentifier(*(*(&v71 + 1) + 8 * i));
            v41 = languageCodeForLocale(v40);
            [v35 addObject:v41];
          }

          v37 = [v36 countByEnumeratingWithState:&v71 objects:v84 count:16];
        }

        while (v37);
      }

      v42 = +[SRDefaultsManager sharedDefaultsManager];
      [v42 requestAssetsForLanguages:v35 removeExisting:1 force:0];

      v20 = @"\nRemoved any DDS assertions added by searchutil -c assets:load.\n";
      goto LABEL_74;
    }
  }

  if ([commandCopy count] <= 1)
  {
    v20 = [self usageInformationForSubcommand:0];
  }

  else
  {
    v48 = [commandCopy objectAtIndexedSubscript:1];
    v20 = [self usageInformationForSubcommand:v48];
  }

LABEL_75:

  v68 = *MEMORY[0x1E69E9840];

  return v20;
}

void __34__SRAssetCommand_runAssetCommand___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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