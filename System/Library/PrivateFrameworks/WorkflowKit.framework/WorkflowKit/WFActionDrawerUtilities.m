@interface WFActionDrawerUtilities
+ (id)activitySectionsForDonations:(id)a3;
+ (id)localizedAppNames;
+ (id)suggestionSectionsForDonations:(id)a3 excludingConvertedLinkActions:(BOOL)a4;
@end

@implementation WFActionDrawerUtilities

+ (id)activitySectionsForDonations:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__WFActionDrawerUtilities_activitySectionsForDonations___block_invoke;
  v17[3] = &unk_1E837AFF0;
  v18 = v7;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  [v5 enumerateObjectsUsingBlock:v17];

  v10 = [v9 array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__WFActionDrawerUtilities_activitySectionsForDonations___block_invoke_2;
  v14[3] = &unk_1E837B018;
  v15 = v8;
  v16 = a1;
  v11 = v8;
  v12 = [v10 if_compactMap:v14];

  return v12;
}

void __56__WFActionDrawerUtilities_activitySectionsForDonations___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v11;
  if (isKindOfClass)
  {
    v8 = v11;
    v9 = [v8 sourceAppIdentifierForDisplay];
    [*(a1 + 32) addObject:v9];
    if ([v9 length])
    {
      v10 = [*(a1 + 40) objectForKey:v9];
      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [*(a1 + 40) setObject:v10 forKey:v9];
      }

      if ([v10 count] > 9)
      {
        *a4 = 1;
      }

      else
      {
        [v10 addObject:v8];
      }
    }

    v7 = v11;
  }
}

WFActionDrawerSection *__56__WFActionDrawerUtilities_activitySectionsForDonations___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = *(a1 + 40);
  v6 = [objc_opt_class() localizedAppNames];
  v7 = [v6 objectForKey:v3];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v3];
  v7 = [v8 localizedName];

  if (v7)
  {
    v9 = *(a1 + 40);
    v10 = [objc_opt_class() localizedAppNames];
    [v10 setObject:v7 forKey:v3];

LABEL_4:
    v11 = [[WFActionDrawerSection alloc] initWithLocalizedTitle:v7 donations:v4 bundleIdentifier:v3 sectionType:4];

    goto LABEL_5;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

+ (id)suggestionSectionsForDonations:(id)a3 excludingConvertedLinkActions:(BOOL)a4
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__48216;
  v20 = __Block_byref_object_dispose__48217;
  v21 = 0;
  v6 = [v5 valueForKeyPath:@"sourceAppIdentifier"];
  v7 = [MEMORY[0x1E696E878] sharedConnection];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__WFActionDrawerUtilities_suggestionSectionsForDonations_excludingConvertedLinkActions___block_invoke;
  v12[3] = &unk_1E837AFC8;
  v9 = v5;
  v13 = v9;
  v14 = &v16;
  v15 = a4;
  [v7 wf_accessBundleContentForBundleIdentifiers:v8 withBlock:v12];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __88__WFActionDrawerUtilities_suggestionSectionsForDonations_excludingConvertedLinkActions___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__WFActionDrawerUtilities_suggestionSectionsForDonations_excludingConvertedLinkActions___block_invoke_2;
  v17[3] = &unk_1E837AF78;
  v18 = v4;
  v19 = v3;
  v6 = v2;
  v20 = v6;
  v7 = v3;
  v8 = v4;
  [v5 enumerateObjectsUsingBlock:v17];
  v9 = [v7 array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__WFActionDrawerUtilities_suggestionSectionsForDonations_excludingConvertedLinkActions___block_invoke_3;
  v14[3] = &unk_1E837AFA0;
  v15 = v6;
  v16 = *(a1 + 48);
  v10 = v6;
  v11 = [v9 if_compactMap:v14];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __88__WFActionDrawerUtilities_suggestionSectionsForDonations_excludingConvertedLinkActions___block_invoke_2(id *a1, void *a2)
{
  v48 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v48;
  if (isKindOfClass)
  {
    v46 = a1;
    v5 = v48;
    v6 = [v5 interaction];
    v7 = [v6 intent];
    v8 = [v7 _keyParameter];
    v9 = [v7 _codableDescription];
    v10 = [v9 keyAttribute];

    if (v10)
    {
      v11 = [v10 propertyName];
      v12 = [v7 _isValidKey:v11];
    }

    else
    {
      v12 = 0;
    }

    v47 = v10;
    if (v8 || v12)
    {
      v13 = [v7 _emptyCopy];
      if (v8)
      {
        v14 = [v8 value];
        v15 = [v8 codableAttribute];
        v16 = [v15 propertyName];
        [v13 setValue:v14 forKey:v16];
      }

      if (v12)
      {
        v17 = [v47 propertyName];
        v18 = [v7 valueForKey:v17];
        v19 = [v47 propertyName];
        [v13 setValue:v18 forKey:v19];
      }

      [v6 _setIntent:v13];
      v20 = objc_alloc(MEMORY[0x1E69E0920]);
      v21 = [v5 identifier];
      v22 = [v5 sourceAppIdentifier];
      v23 = [v20 initWithIdentifier:v21 sourceAppIdentifier:v22 interaction:v6];

      v5 = v23;
    }

    v24 = [v7 typeName];
    v25 = [v5 sourceAppIdentifierForDisplay];
    v26 = v25;
    v27 = MEMORY[0x1E696AEC0];
    v45 = v25;
    if (v8)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v24, v25];
      v29 = v6;
      v30 = MEMORY[0x1E696AEC0];
      v31 = [v8 value];
      [MEMORY[0x1E696EA80] localizerForLanguage:0];
      v43 = v7;
      v32 = v44 = v5;
      [v8 codableAttribute];
      v34 = v33 = v24;
      v35 = [v34 metadata];
      v36 = [v31 _intents_readableTitleWithLocalizer:v32 metadata:v35];
      v37 = v30;
      v6 = v29;
      v38 = [v37 stringWithFormat:@"%@-%@", v28, v36];

      v24 = v33;
      v7 = v43;
      v5 = v44;
    }

    else
    {
      v39 = [v5 uniqueProperty];
      v40 = [v27 stringWithFormat:@"%@-%@-%@", v24, v26, v39];

      v38 = v40;
      v28 = v38;
    }

    v41 = [v46[4] objectForKeyedSubscript:v38];

    if (!v41)
    {
      [v46[4] setObject:v5 forKeyedSubscript:v38];
      [v46[5] addObject:v28];
      if ([v24 length])
      {
        v42 = [v46[6] objectForKey:v28];
        if (!v42)
        {
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v46[6] setObject:v42 forKey:v28];
        }

        if ([v42 count] <= 9)
        {
          [v42 addObject:v5];
        }
      }
    }

    v4 = v48;
  }
}

WFActionDrawerSection *__88__WFActionDrawerUtilities_suggestionSectionsForDonations_excludingConvertedLinkActions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = [v3 firstObject];
  v5 = [v4 interaction];
  v6 = [v5 intent];

  v7 = +[WFActionRegistry sharedRegistry];
  v8 = [v7 replacementActionForDonatedIntent:v6];

  if (!v8 || (v9 = 0, [v8 visibleForUse:0]))
  {
    v10 = [v4 interaction];
    v11 = [v10 intent];
    v12 = [v11 _codableDescription];

    if (v8)
    {
      [v8 localizedName];
    }

    else
    {
      [v12 localizedTitle];
    }
    v31 = ;
    v13 = [v6 _keyParameter];
    v14 = [v13 codableAttribute];

    v32 = v12;
    if (v14)
    {
      v30 = v3;
      v15 = [v13 codableAttribute];
      v16 = [v15 propertyName];
      if ([v6 _isValidKey:v16])
      {
        v17 = [v13 codableAttribute];
        [v17 propertyName];
        v18 = v29 = v2;
        v19 = [v6 valueForKey:v18];
        v20 = v19 != 0;

        v2 = v29;
      }

      else
      {
        v20 = 0;
      }

      v3 = v30;
    }

    else
    {
      v20 = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (*(v2 + 40))
    {
      v9 = 0;
      v23 = v31;
      v22 = v32;
LABEL_22:

      goto LABEL_23;
    }

    if (v14)
    {
      if (v20)
      {
        if (v8)
        {
LABEL_18:
          v24 = 1;
LABEL_21:
          v22 = v32;
          v25 = [WFActionDrawerSection alloc];
          v26 = [v4 sourceAppIdentifierForDisplay];
          v27 = v25;
          v23 = v31;
          v9 = [(WFActionDrawerSection *)v27 initWithLocalizedTitle:v31 donations:v3 bundleIdentifier:v26 sectionType:v24];

          goto LABEL_22;
        }
      }

      else if (!((v8 == 0) | isKindOfClass & 1))
      {
        goto LABEL_18;
      }
    }

    v24 = 2;
    goto LABEL_21;
  }

LABEL_23:

  return v9;
}

+ (id)localizedAppNames
{
  if (localizedAppNames_onceToken != -1)
  {
    dispatch_once(&localizedAppNames_onceToken, &__block_literal_global_48236);
  }

  v3 = localizedAppNames_localizedAppNames;

  return v3;
}

void __44__WFActionDrawerUtilities_localizedAppNames__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = localizedAppNames_localizedAppNames;
  localizedAppNames_localizedAppNames = v0;
}

@end