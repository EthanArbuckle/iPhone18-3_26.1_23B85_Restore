@interface WFSmartPromptStringGenerator
+ (id)contentDescriptionWithAttributionSet:(id)a3 contentItemCache:(id)a4;
+ (id)localizedOutputContentDescriptionWithContentCollection:(id)a3;
+ (id)localizedPromptForWorkflowName:(id)a3 attributionSet:(id)a4 contentCollection:(id)a5 contentItemCache:(id)a6 contentDestination:(id)a7 action:(id)a8 isWebpageCoercion:(BOOL)a9;
+ (id)localizedSubtitleForWorkflowName:(id)a3 attributionSet:(id)a4 previousAttributions:(id)a5 contentItemCache:(id)a6 contentDestination:(id)a7 action:(id)a8 isWebpageCoercion:(BOOL)a9;
@end

@implementation WFSmartPromptStringGenerator

+ (id)localizedOutputContentDescriptionWithContentCollection:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AB50] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v3 items];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = objc_opt_class();
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
    v15 = [v13 allObjects];
    v16 = [v14 localizedStringByJoiningStrings:v15];
    v17 = [v16 localizedLowercaseString];
  }

  else
  {
    v18 = MEMORY[0x1E696AEC0];
    v15 = WFLocalizedPluralString(@"%1$d items");
    v19 = [v3 numberOfItems];
    v17 = [v18 localizedStringWithFormat:v15, v19, v22, v23, v24, v25];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v17;
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

+ (id)contentDescriptionWithAttributionSet:(id)a3 contentItemCache:(id)a4
{
  v92 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AB50] set];
  v8 = [MEMORY[0x1E695DFA8] set];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v64 = v5;
  v9 = [v5 attributions];
  v10 = [v9 countByEnumeratingWithState:&v80 objects:v91 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v80 + 1) + 8 * i) privateItemIdentifiers];
        v15 = [v14 set];
        [v8 unionSet:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v80 objects:v91 count:16];
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

        v21 = [v6 contentItemForUUID:*(*(&v76 + 1) + 8 * j)];
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
    v26 = [MEMORY[0x1E696AB50] set];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v29 = [v64 attributions];
    v30 = [v29 countByEnumeratingWithState:&v70 objects:v89 count:16];
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
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v70 + 1) + 8 * k);
          v35 = [v34 origin];
          if (v35)
          {
            v36 = v35;
            v37 = [v34 disclosureLevel];

            if (v37 == 1)
            {
              if ([v34 count])
              {
                v38 = 0;
                do
                {
                  v39 = [v34 origin];
                  [v26 addObject:v39];

                  ++v38;
                }

                while ([v34 count] > v38);
              }
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v70 objects:v89 count:16];
      }

      while (v31);
    }

    if (![v26 count])
    {
      v28 = 0;
      v23 = v62;
      v24 = v63;
      goto LABEL_57;
    }

    v61 = v16;
    v27 = [MEMORY[0x1E695DFA0] orderedSet];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v26 = v26;
    v40 = [v26 countByEnumeratingWithState:&v66 objects:v88 count:16];
    v41 = v26;
    v24 = v63;
    if (v40)
    {
      v42 = v40;
      v65 = v27;
      v43 = 0;
      v44 = *v67;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(v26);
          }

          v46 = *(*(&v66 + 1) + 8 * m);
          v47 = [v26 countForObject:v46];
          v48 = [v46 localizedTitle];
          if (v48)
          {
            v49 = MEMORY[0x1E696AEC0];
            if (v47 == 1)
            {
              v50 = WFLocalizedString(@"1 %1$@ item");
              v51 = [v49 localizedStringWithFormat:v50, v48];
              [v65 addObject:v51];
            }

            else
            {
              v53 = WFLocalizedString(@"%1$d %2$@ items");
              v54 = [v49 localizedStringWithFormat:v53, v47, v48];
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

        v42 = [v26 countByEnumeratingWithState:&v66 objects:v88 count:16];
      }

      while (v42);

      v24 = v63;
      v27 = v65;
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
    if ([v27 count])
    {
      v57 = MEMORY[0x1E696AD08];
      v58 = [v27 array];
      v28 = [v57 localizedStringByJoiningStrings:v58];
    }

    else
    {
      v28 = 0;
    }

    v16 = v61;
    v23 = v62;
    goto LABEL_56;
  }

  v25 = MEMORY[0x1E696AD08];
  v26 = [v24 allObjects];
  v27 = [v25 localizedStringByJoiningStrings:v26];
  v28 = [v27 localizedLowercaseString];
LABEL_56:

LABEL_57:
  v59 = *MEMORY[0x1E69E9840];

  return v28;
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

+ (id)localizedSubtitleForWorkflowName:(id)a3 attributionSet:(id)a4 previousAttributions:(id)a5 contentItemCache:(id)a6 contentDestination:(id)a7 action:(id)a8 isWebpageCoercion:(BOOL)a9
{
  v60 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [a1 contentDescriptionWithAttributionSet:v16 contentItemCache:v18];
  v22 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:2];
  v53 = v17;
  if (v17)
  {
    v17 = [a1 contentDescriptionWithAttributionSet:v17 contentItemCache:v18];
  }

  v23 = [v19 localizedTitle];
  v51 = v20;
  v49 = v17;
  v54 = v15;
  v24 = [v20 smartPromptSubtitleWithPreviousContentDescription:v17 contentDestination:v23 workflowName:v15];

  if ([v24 length])
  {
    [v22 addObject:v24];
  }

  v48 = v24;
  if (!a9)
  {
    v25 = [MEMORY[0x1E6996D78] webpagesLocation];
    if ([v19 isEqual:v25])
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
    v32 = [v19 localizedTitle];
    v33 = [v28 localizedStringWithFormat:v31, v54, v32];
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
    v32 = [v28 localizedStringWithFormat:v31, v54];
    [v22 addObject:v32];
  }

LABEL_19:
  v50 = v19;
  v34 = v21;
  v52 = v18;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v16;
  v36 = [v16 attributions];
  v37 = [v36 countByEnumeratingWithState:&v55 objects:v59 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v55 + 1) + 8 * i) disclosureWarnings];
        v42 = [v41 if_map:&__block_literal_global_44640];

        [v22 unionOrderedSet:v42];
      }

      v38 = [v36 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v38);
  }

  if ([v22 count])
  {
    v43 = MEMORY[0x1E696AD08];
    v44 = [v22 array];
    v45 = [v43 localizedStringByJoiningStrings:v44];
  }

  else
  {
    v45 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

+ (id)localizedPromptForWorkflowName:(id)a3 attributionSet:(id)a4 contentCollection:(id)a5 contentItemCache:(id)a6 contentDestination:(id)a7 action:(id)a8 isWebpageCoercion:(BOOL)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v17 promptingBehaviour] == 2 && (objc_msgSend(v18, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"is.workflow.actions.askllm"), v19, !v20))
  {
    v21 = 0;
  }

  else
  {
    v21 = [a1 contentDescriptionWithAttributionSet:v15 contentItemCache:v16];
  }

  v22 = [v17 localizedTitle];
  if (!a9)
  {
    goto LABEL_12;
  }

  v23 = [MEMORY[0x1E6996D78] webpagesLocation];
  v24 = [v17 isEqual:v23];

  if (!v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = MEMORY[0x1E696AEC0];
      if (v21)
      {
        v26 = WFLocalizedString(@"Allow “%1$@” to access %2$@ while loading web content on “%3$@”?");
        v28 = [v17 localizedTitle];
        [v27 localizedStringWithFormat:v26, v14, v21, v28];
      }

      else
      {
        v26 = WFLocalizedString(@"Allow “%1$@” to load web content on “%2$@”?");
        v28 = [v17 localizedTitle];
        [v27 localizedStringWithFormat:v26, v14, v28, v32];
      }
      v29 = ;

      goto LABEL_17;
    }

LABEL_12:
    v29 = [v18 smartPromptWithContentDescription:v21 contentDestination:v22 workflowName:v14];
    goto LABEL_18;
  }

  v25 = MEMORY[0x1E696AEC0];
  if (v21)
  {
    v26 = WFLocalizedString(@"Allow “%1$@” to access %2$@ while loading web content?");
    [v25 localizedStringWithFormat:v26, v14, v21];
  }

  else
  {
    v26 = WFLocalizedString(@"Allow “%1$@” to load web content?");
    [v25 localizedStringWithFormat:v26, v14, v31];
  }
  v29 = ;
LABEL_17:

LABEL_18:

  return v29;
}

@end