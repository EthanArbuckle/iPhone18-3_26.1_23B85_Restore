@interface WFSmartPromptStringGenerator
+ (id)contentDescriptionWithAttributionSet:(id)set contentItemCache:(id)cache;
+ (id)localizedOutputContentDescriptionWithContentCollection:(id)collection;
+ (id)localizedPromptForWorkflowName:(id)name attributionSet:(id)set contentCollection:(id)collection contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion;
+ (id)localizedSubtitleForWorkflowName:(id)name attributionSet:(id)set previousAttributions:(id)attributions contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion;
@end

@implementation WFSmartPromptStringGenerator

+ (id)localizedOutputContentDescriptionWithContentCollection:(id)collection
{
  v32 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v4 = [MEMORY[0x1E696AB50] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  items = [collectionCopy items];
  v6 = [items countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = objc_opt_class();
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [items countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __87__WFSmartPromptStringGenerator_localizedOutputContentDescriptionWithContentCollection___block_invoke;
  v25 = &unk_1E837A498;
  v12 = v4;
  v26 = v12;
  v13 = [v12 if_map:&v22];
  if ([v13 count])
  {
    v14 = MEMORY[0x1E696AD08];
    allObjects = [v13 allObjects];
    v16 = [v14 localizedStringByJoiningStrings:allObjects];
    localizedLowercaseString = [v16 localizedLowercaseString];
  }

  else
  {
    v18 = MEMORY[0x1E696AEC0];
    allObjects = WFLocalizedPluralString(@"%1$d items");
    numberOfItems = [collectionCopy numberOfItems];
    localizedLowercaseString = [v18 localizedStringWithFormat:allObjects, numberOfItems, v22, v23, v24, v25];
  }

  v20 = *MEMORY[0x1E69E9840];

  return localizedLowercaseString;
}

id __87__WFSmartPromptStringGenerator_localizedOutputContentDescriptionWithContentCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) countForObject:a2];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a2 localizedCountDescriptionWithValue:v3];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a2 countDescription];
    v4 = [v5 localizedStringWithFormat:v6, v3];
  }

  return v4;
}

+ (id)contentDescriptionWithAttributionSet:(id)set contentItemCache:(id)cache
{
  v92 = *MEMORY[0x1E69E9840];
  setCopy = set;
  cacheCopy = cache;
  v7 = [MEMORY[0x1E696AB50] set];
  v8 = [MEMORY[0x1E695DFA8] set];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v64 = setCopy;
  attributions = [setCopy attributions];
  v10 = [attributions countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v81;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v81 != v12)
        {
          objc_enumerationMutation(attributions);
        }

        privateItemIdentifiers = [*(*(&v80 + 1) + 8 * i) privateItemIdentifiers];
        v15 = [privateItemIdentifiers set];
        [v8 unionSet:v15];
      }

      v11 = [attributions countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v11);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v77;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v77 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [cacheCopy contentItemForUUID:*(*(&v76 + 1) + 8 * j)];
        v22 = objc_opt_class();
        if (v22)
        {
          [v7 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v18);
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __86__WFSmartPromptStringGenerator_contentDescriptionWithAttributionSet_contentItemCache___block_invoke;
  v74[3] = &unk_1E837A498;
  v23 = v7;
  v75 = v23;
  v24 = [v23 if_map:v74];
  if (![v24 count])
  {
    v62 = v23;
    v63 = v24;
    allObjects = [MEMORY[0x1E696AB50] set];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    attributions2 = [v64 attributions];
    v30 = [attributions2 countByEnumeratingWithState:&v70 objects:v89 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v71;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v71 != v32)
          {
            objc_enumerationMutation(attributions2);
          }

          v34 = *(*(&v70 + 1) + 8 * k);
          origin = [v34 origin];
          if (origin)
          {
            v36 = origin;
            disclosureLevel = [v34 disclosureLevel];

            if (disclosureLevel == 1)
            {
              if ([v34 count])
              {
                v38 = 0;
                do
                {
                  origin2 = [v34 origin];
                  [allObjects addObject:origin2];

                  ++v38;
                }

                while ([v34 count] > v38);
              }
            }
          }
        }

        v31 = [attributions2 countByEnumeratingWithState:&v70 objects:v89 count:16];
      }

      while (v31);
    }

    if (![allObjects count])
    {
      localizedLowercaseString = 0;
      v23 = v62;
      v24 = v63;
      goto LABEL_57;
    }

    v61 = v16;
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    allObjects = allObjects;
    v40 = [allObjects countByEnumeratingWithState:&v66 objects:v88 count:16];
    v41 = allObjects;
    v24 = v63;
    if (v40)
    {
      v42 = v40;
      v65 = orderedSet;
      v43 = 0;
      v44 = *v67;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(allObjects);
          }

          v46 = *(*(&v66 + 1) + 8 * m);
          v47 = [allObjects countForObject:v46];
          localizedTitle = [v46 localizedTitle];
          if (localizedTitle)
          {
            v49 = MEMORY[0x1E696AEC0];
            if (v47 == 1)
            {
              v50 = WFLocalizedString(@"1 %1$@ item");
              v51 = [v49 localizedStringWithFormat:v50, localizedTitle];
              [v65 addObject:v51];
            }

            else
            {
              v53 = WFLocalizedString(@"%1$d %2$@ items");
              v54 = [v49 localizedStringWithFormat:v53, v47, localizedTitle];
              [v65 addObject:v54];
            }
          }

          else
          {
            v52 = getWFSecurityLogObject();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v85 = "+[WFSmartPromptStringGenerator contentDescriptionWithAttributionSet:contentItemCache:]";
              v86 = 2112;
              v87 = v46;
              _os_log_impl(&dword_1CA256000, v52, OS_LOG_TYPE_INFO, "%s Could not get localizedTitle for origin %@", buf, 0x16u);
            }

            v43 += v47;
          }
        }

        v42 = [allObjects countByEnumeratingWithState:&v66 objects:v88 count:16];
      }

      while (v42);

      v24 = v63;
      orderedSet = v65;
      if (!v43)
      {
        goto LABEL_52;
      }

      if (v43 == 1)
      {
        v41 = WFLocalizedString(@"1 item");
        [v65 addObject:v41];
      }

      else
      {
        v55 = MEMORY[0x1E696AEC0];
        v41 = WFLocalizedString(@"%1$d items");
        v56 = [v55 localizedStringWithFormat:v41, v43];
        [v65 addObject:v56];
      }
    }

LABEL_52:
    if ([orderedSet count])
    {
      v57 = MEMORY[0x1E696AD08];
      array = [orderedSet array];
      localizedLowercaseString = [v57 localizedStringByJoiningStrings:array];
    }

    else
    {
      localizedLowercaseString = 0;
    }

    v16 = v61;
    v23 = v62;
    goto LABEL_56;
  }

  v25 = MEMORY[0x1E696AD08];
  allObjects = [v24 allObjects];
  orderedSet = [v25 localizedStringByJoiningStrings:allObjects];
  localizedLowercaseString = [orderedSet localizedLowercaseString];
LABEL_56:

LABEL_57:
  v59 = *MEMORY[0x1E69E9840];

  return localizedLowercaseString;
}

id __86__WFSmartPromptStringGenerator_contentDescriptionWithAttributionSet_contentItemCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) countForObject:a2];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a2 localizedCountDescriptionWithValue:v3];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a2 countDescription];
    v4 = [v5 localizedStringWithFormat:v6, v3];
  }

  return v4;
}

+ (id)localizedSubtitleForWorkflowName:(id)name attributionSet:(id)set previousAttributions:(id)attributions contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion
{
  v60 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  setCopy = set;
  attributionsCopy = attributions;
  cacheCopy = cache;
  destinationCopy = destination;
  actionCopy = action;
  v21 = [self contentDescriptionWithAttributionSet:setCopy contentItemCache:cacheCopy];
  v22 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:2];
  v53 = attributionsCopy;
  if (attributionsCopy)
  {
    attributionsCopy = [self contentDescriptionWithAttributionSet:attributionsCopy contentItemCache:cacheCopy];
  }

  localizedTitle = [destinationCopy localizedTitle];
  v51 = actionCopy;
  v49 = attributionsCopy;
  v54 = nameCopy;
  v24 = [actionCopy smartPromptSubtitleWithPreviousContentDescription:attributionsCopy contentDestination:localizedTitle workflowName:nameCopy];

  if ([v24 length])
  {
    [v22 addObject:v24];
  }

  v48 = v24;
  if (!coercion)
  {
    webpagesLocation = [MEMORY[0x1E6996D78] webpagesLocation];
    if ([destinationCopy isEqual:webpagesLocation])
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  objc_opt_class();
  v27 = objc_opt_isKindOfClass();
  v28 = MEMORY[0x1E696AEC0];
  if (v27)
  {
    if (v21)
    {
      v29 = @"This might allow “%1$@” to share this content with “%2$@” and potentially other websites.";
    }

    else
    {
      v29 = @"This might allow “%1$@” to share content with “%2$@” and potentially other websites.";
    }

    v31 = WFLocalizedString(v29);
    localizedTitle2 = [destinationCopy localizedTitle];
    v33 = [v28 localizedStringWithFormat:v31, v54, localizedTitle2];
    [v22 addObject:v33];
  }

  else
  {
    if (v21)
    {
      v30 = @"This might allow “%1$@” to share this content with any website.";
    }

    else
    {
      v30 = @"This might allow “%1$@” to share content with any website.";
    }

    v31 = WFLocalizedString(v30);
    localizedTitle2 = [v28 localizedStringWithFormat:v31, v54];
    [v22 addObject:localizedTitle2];
  }

LABEL_19:
  v50 = destinationCopy;
  v34 = v21;
  v52 = cacheCopy;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = setCopy;
  attributions = [setCopy attributions];
  v37 = [attributions countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v56;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(attributions);
        }

        disclosureWarnings = [*(*(&v55 + 1) + 8 * i) disclosureWarnings];
        v42 = [disclosureWarnings if_map:&__block_literal_global_44640];

        [v22 unionOrderedSet:v42];
      }

      v38 = [attributions countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v38);
  }

  if ([v22 count])
  {
    v43 = MEMORY[0x1E696AD08];
    array = [v22 array];
    v45 = [v43 localizedStringByJoiningStrings:array];
  }

  else
  {
    v45 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

+ (id)localizedPromptForWorkflowName:(id)name attributionSet:(id)set contentCollection:(id)collection contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion
{
  nameCopy = name;
  setCopy = set;
  cacheCopy = cache;
  destinationCopy = destination;
  actionCopy = action;
  if ([destinationCopy promptingBehaviour] == 2 && (objc_msgSend(actionCopy, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"is.workflow.actions.askllm"), v19, !v20))
  {
    v21 = 0;
  }

  else
  {
    v21 = [self contentDescriptionWithAttributionSet:setCopy contentItemCache:cacheCopy];
  }

  localizedTitle = [destinationCopy localizedTitle];
  if (!coercion)
  {
    goto LABEL_12;
  }

  webpagesLocation = [MEMORY[0x1E6996D78] webpagesLocation];
  v24 = [destinationCopy isEqual:webpagesLocation];

  if (!v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = MEMORY[0x1E696AEC0];
      if (v21)
      {
        v26 = WFLocalizedString(@"Allow “%1$@” to access %2$@ while loading web content on “%3$@”?");
        localizedTitle2 = [destinationCopy localizedTitle];
        [v27 localizedStringWithFormat:v26, nameCopy, v21, localizedTitle2];
      }

      else
      {
        v26 = WFLocalizedString(@"Allow “%1$@” to load web content on “%2$@”?");
        localizedTitle2 = [destinationCopy localizedTitle];
        [v27 localizedStringWithFormat:v26, nameCopy, localizedTitle2, v32];
      }
      v29 = ;

      goto LABEL_17;
    }

LABEL_12:
    v29 = [actionCopy smartPromptWithContentDescription:v21 contentDestination:localizedTitle workflowName:nameCopy];
    goto LABEL_18;
  }

  v25 = MEMORY[0x1E696AEC0];
  if (v21)
  {
    v26 = WFLocalizedString(@"Allow “%1$@” to access %2$@ while loading web content?");
    [v25 localizedStringWithFormat:v26, nameCopy, v21];
  }

  else
  {
    v26 = WFLocalizedString(@"Allow “%1$@” to load web content?");
    [v25 localizedStringWithFormat:v26, nameCopy, v31];
  }
  v29 = ;
LABEL_17:

LABEL_18:

  return v29;
}

@end