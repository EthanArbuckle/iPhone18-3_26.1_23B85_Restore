@interface SRAssetCommand
+ (id)runAssetCommand:(id)a3;
+ (id)usageInformationForSubcommand:(id)a3;
@end

@implementation SRAssetCommand

+ (id)usageInformationForSubcommand:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\n"];
  if ([v3 isEqualToString:@"dump"])
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

  if ([v3 isEqualToString:@"bundle"])
  {
    v5 = @"\tkey: path, compatibilityversion, contentversion, or bundleversion; anything else will dump all MobileAsset properties\n";
    v6 = @"\tdeliveryType: Required, Optional, Delta, OptionalTest, or DeltaTest\n";
    v7 = @"searchutil -c asset:bundle:<deliveryType>:<language>:<key>\n\tDump information about an asset bundle on device.\n";
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"content"])
  {
    v5 = @"searchutil -c asset:content:<contentType>:<language>\n\tDump all loaded assets for a content type and language.\n";
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"load"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"unload"))
  {
    v5 = @"searchutil -c asset:reset\n\tSpotlightResources will no longer hold on to assertions for requests from 'searchutil -c asset:load'.\n";
    v6 = @"\tdeliveryType: Required, Optional, Delta, OptionalTest, or DeltaTest\n";
    v7 = @"searchutil -c asset:load[:force]:<language>\n\tRequests a specified asset bundle to be loaded/downloaded.\n";
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"availability"])
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

+ (id)runAssetCommand:(id)a3
{
  v85[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 lowercaseString];

    if ([v6 isEqualToString:@"dump"])
    {
      if ([v4 count] <= 2)
      {
        goto LABEL_36;
      }

      v7 = [v4 objectAtIndexedSubscript:2];
      v8 = [v7 lowercaseString];

      if ([v8 isEqualToString:@"cache"])
      {
        v9 = +[SRAssetBundleCache sharedInstance];
        v10 = [v9 dumpCache];
LABEL_21:
        v15 = v10;

LABEL_22:
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", v15];
LABEL_72:

LABEL_73:
        goto LABEL_74;
      }

      if ([v8 isEqualToString:@"loaded"])
      {
        v9 = +[SRDefaultsManager sharedDefaultsManager];
        v10 = [v9 allLoadedAssets];
        goto LABEL_21;
      }

      if ([v8 isEqualToString:@"defaults"])
      {
        v15 = +[SRDefaultsManager defaultProperties];
        goto LABEL_22;
      }

      if ([v8 isEqualToString:@"config"])
      {
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = +[SRDefaultsManager sharedDefaultsManager];
        v44 = [v15 assetConfigDump];
      }

      else if ([v8 isEqualToString:@"locales"])
      {
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = +[SRDefaultsManager sharedDefaultsManager];
        v44 = [v15 langConfigDump];
      }

      else
      {
        if (![v8 isEqualToString:@"assertions"])
        {
          v20 = [a1 usageInformationForSubcommand:v6];
          goto LABEL_73;
        }

        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = +[SRDefaultsManager sharedDefaultsManager];
        v44 = [v15 assertionsDump];
      }

      v16 = v44;
      v47 = [v43 initWithFormat:@"\n%@\n", v44, v70];
      goto LABEL_70;
    }

    if ([v6 isEqualToString:@"bundle"])
    {
      if ([v4 count] <= 4)
      {
        goto LABEL_36;
      }

      v11 = [v4 objectAtIndexedSubscript:2];
      v12 = [v11 lowercaseString];
      v8 = deliveryTypeFromLowerCaseString(v12);

      v13 = [v4 objectAtIndexedSubscript:3];
      v14 = [v13 lowercaseString];
      v15 = languageFromLowerCaseString(v14);

      v16 = getAssetBundleInfo(v8, v15, 0);
      if (!v16)
      {
        v20 = @"\nAsset bundle could not be found or was not cached.\n";
LABEL_71:

        goto LABEL_72;
      }

      v17 = [v4 objectAtIndexedSubscript:4];
      v18 = [v17 lowercaseString];

      if ([v18 isEqualToString:@"path"])
      {
        v19 = @"Path";
      }

      else if ([v18 isEqualToString:@"compatibilityversion"])
      {
        v19 = @"Compatibility Version";
      }

      else if ([v18 isEqualToString:@"contentversion"])
      {
        v19 = @"Content Version";
      }

      else if ([v18 isEqualToString:@"bundleversion"])
      {
        v19 = @"Bundle Version";
      }

      else
      {
        v19 = @"MobileAsset Properties";
      }

      v51 = [v16 objectForKeyedSubscript:v19];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", v51];

LABEL_63:
      goto LABEL_71;
    }

    if ([v6 isEqualToString:@"content"])
    {
      if ([v4 count] > 3)
      {
        v21 = [v4 objectAtIndexedSubscript:2];
        v22 = [v21 lowercaseString];

        v23 = [v4 objectAtIndexedSubscript:3];
        v24 = [v23 lowercaseString];
        v25 = languageFromLowerCaseString(v24);

        v78 = 0;
        v79 = &v78;
        v80 = 0x3032000000;
        v81 = __Block_byref_object_copy_;
        v82 = __Block_byref_object_dispose_;
        v83 = 0;
        v26 = +[SRDefaultsManager sharedDefaultsManager];
        v27 = [v26 allLoadedAssets];

        v28 = [v27 objectForKeyedSubscript:v25];

        if (v28)
        {
          v29 = [v27 objectForKeyedSubscript:v25];
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v75[2] = __34__SRAssetCommand_runAssetCommand___block_invoke;
          v75[3] = &unk_1E7A2B100;
          v76 = v22;
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

    if ([v6 isEqualToString:@"load"])
    {
      if ([v4 count] <= 2)
      {
        goto LABEL_36;
      }

      v31 = [v4 objectAtIndexedSubscript:2];
      v32 = [v31 lowercaseString];
      v33 = [v32 isEqualToString:@"force"];

      if (v33)
      {
        if ([v4 count] <= 3)
        {
LABEL_36:
          v20 = [a1 usageInformationForSubcommand:v6];
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

      v52 = [v4 objectAtIndexedSubscript:v50];
      v53 = [v52 lowercaseString];
      v54 = languageFromLowerCaseString(v53);

      v55 = +[SRDefaultsManager sharedDefaultsManager];
      v56 = objc_alloc(MEMORY[0x1E695DFD8]);
      v85[0] = v54;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
      v58 = [v56 initWithArray:v57];
      [v55 requestAssetsForLanguages:v58 removeExisting:0 force:v33];

      v59 = +[SRDefaultsManager sharedDefaultsManager];
      v60 = [v59 currentAssetTypes];

      v61 = +[SRDefaultsManager sharedDefaultsManager];
      [v61 loadTestAssetsForLanguage:v54 assetTypes:v60];

      v62 = +[SRDefaultsManager sharedDefaultsManager];
      v63 = [v62 loadOTAAssetsForLanguage:v54 updateCache:0 assetTypes:v60 force:v33];

      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@ OTA assets for %@.\n", v49, v54];
      goto LABEL_74;
    }

    if ([v6 isEqualToString:@"availability"])
    {
      if ([v4 count] <= 2)
      {
        goto LABEL_36;
      }

      v8 = [v4 objectAtIndexedSubscript:2];
      v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v8];
      if ([v4 count] <= 3)
      {
        v45 = SRAreAssetsAvailableForLocale(v15);
        v46 = objc_alloc(MEMORY[0x1E696AEC0]);
        v16 = SRAssetAvailabilityString(v45);
        v47 = [v46 initWithFormat:@"\n%@ for %@\n", v16, v8];
LABEL_70:
        v20 = v47;
        goto LABEL_71;
      }

      v64 = [v4 objectAtIndexedSubscript:3];
      v16 = [v64 lowercaseString];

      v65 = languageCodeForLocale(v15);
      v66 = SRIsAssetAvailable(v16, v65, 0, 0, 0, 0);

      v67 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = SRAssetAvailabilityString(v66);
      v20 = [v67 initWithFormat:@"\n%@ for (%@, %@)\n", v18, v8, v16];
      goto LABEL_63;
    }

    if ([v6 isEqualToString:@"reset"])
    {
      v34 = [MEMORY[0x1E695DF58] preferredLanguages];
      v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v36 = v34;
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

  if ([v4 count] <= 1)
  {
    v20 = [a1 usageInformationForSubcommand:0];
  }

  else
  {
    v48 = [v4 objectAtIndexedSubscript:1];
    v20 = [a1 usageInformationForSubcommand:v48];
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