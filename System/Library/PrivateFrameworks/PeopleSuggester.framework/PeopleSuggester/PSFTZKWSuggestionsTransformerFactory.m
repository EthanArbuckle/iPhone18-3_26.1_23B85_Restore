@interface PSFTZKWSuggestionsTransformerFactory
@end

@implementation PSFTZKWSuggestionsTransformerFactory

void __120___PSFTZKWSuggestionsTransformerFactory_formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = +[_PSConstants mobileMessagesBundleId];
  v4 = +[_PSConstants macMessagesBundleId];
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  objc_autoreleasePoolPop(v1);
  v6 = formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasExprOnceResult;
  formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v0);
}

id __77___PSFTZKWSuggestionsTransformerFactory_formatWithBundleIdsForGroupMatching___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 32) formatWithSuggestion:*(*(&v13 + 1) + 8 * i) bundleIdsForGroupMatching:*(a1 + 40) checkForMessagesGroupIdentifier:{1, v13}];
          [v4 addObjectsFromArray:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

id __60___PSFTZKWSuggestionsTransformerFactory_filterIDSReachable___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    if (*(a1 + 40) == 1)
    {
      v4 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Bypassing the IDS reachability filter", buf, 2u);
      }

      v28 = v3;
    }

    else
    {
      v28 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = v3;
      obj = v3;
      v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v30)
      {
        v29 = *v38;
        do
        {
          v5 = 0;
          do
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v32 = v5;
            v6 = *(*(&v37 + 1) + 8 * v5);
            v7 = objc_opt_new();
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v31 = v6;
            v8 = [v6 recipients];
            v9 = [v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v34;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v34 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v13 = *(*(&v33 + 1) + 8 * i);
                  if ([*(a1 + 32) isEligibleRecipient:v13])
                  {
                    [v7 addObject:v13];
                  }

                  else
                  {
                    v14 = +[_PSLogging generalChannel];
                    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                    {
                      v15 = [v13 handle];
                      *buf = 138412290;
                      v42 = v15;
                      _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "Filtering recipient %@ since not IDS eligible", buf, 0xCu);
                    }
                  }
                }

                v10 = [v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
              }

              while (v10);
            }

            if ([v7 count])
            {
              v16 = [v7 count];
              v17 = [v31 recipients];
              v18 = [v17 count];

              if (v16 == v18)
              {
                [v28 addObject:v31];
              }

              else
              {
                v19 = [_PSSuggestion alloc];
                v20 = [v31 bundleID];
                v21 = [v31 reason];
                v22 = [v31 reasonType];
                v23 = [(_PSSuggestion *)v19 initWithBundleID:v20 conversationIdentifier:0 groupName:0 recipients:v7 reason:v21 reasonType:v22];
                [v28 addObject:v23];
              }
            }

            v5 = v32 + 1;
          }

          while (v32 + 1 != v30);
          v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v30);
      }

      v3 = v26;
    }
  }

  else
  {
    v28 = MEMORY[0x1E695E0F0];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v28;
}

id __74___PSFTZKWSuggestionsTransformerFactory_getCraftedIdentfierForSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 contact];

  if (v3)
  {
    v4 = [v2 contact];

    v5 = [v4 identifier];
    v2 = v4;
  }

  else
  {
    v5 = [v2 handle];
  }

  return v5;
}

id __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithSeedRecipients___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] && objc_msgSend(*(a1 + 32), "count"))
  {
    v21 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    v7 = *v23;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 recipients];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [v9 recipients];
          v13 = [v12 count];

          if (v13 > 1)
          {
            continue;
          }

          v14 = [v9 recipients];
          v15 = [v14 firstObject];

          v16 = *(a1 + 32);
          v17 = [v15 handle];
          LOBYTE(v16) = [v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            [v21 addObject:v9];
          }
        }

        else
        {
          v15 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v27 = v9;
            _os_log_fault_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_FAULT, "Empty recipients list in suggestion: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (!v6)
      {
LABEL_17:

        v3 = v20;
        goto LABEL_19;
      }
    }
  }

  v21 = v3;
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];

  return v21;
}

id __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithMaxSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v71 = v3;
    obj = v3;
    v7 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v103;
      v73 = a1;
      v74 = v4;
      v72 = v5;
      v75 = *v103;
LABEL_4:
      v10 = 0;
      v76 = v8;
      while (1)
      {
        if (*v103 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v102 + 1) + 8 * v10);
        if ([v4 count] == *(a1 + 32))
        {
          goto LABEL_83;
        }

        v85 = v11;
        v12 = [v11 recipients];
        v13 = [v12 count];

        v84 = v10;
        if (v13 == 1)
        {
          break;
        }

        if (v13)
        {
          v63 = [v85 conversationIdentifier];
          if (!v63)
          {
            goto LABEL_81;
          }

          v64 = v63;
          v65 = [v85 conversationIdentifier];
          v66 = [v5 containsObject:v65];

          v15 = v85;
          if (v66)
          {
            goto LABEL_81;
          }

          v67 = [v85 conversationIdentifier];
          [v5 addObject:v67];

          v14 = [_PSFTZKWSuggestionsTransformerFactory getCraftedIdentfierForSuggestion:v85];
          if (([v5 containsObject:v14] & 1) == 0)
          {
            [v5 addObject:v14];
LABEL_80:

            [v4 addObject:v15];
            goto LABEL_81;
          }
        }

        else
        {
          v14 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v111 = v85;
            _os_log_error_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_ERROR, "No recipient filled in suggestion %@", buf, 0xCu);
          }
        }

LABEL_81:
        v10 = v84 + 1;
        if (v84 + 1 == v8)
        {
          v8 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }
      }

      v15 = v85;
      v16 = [v85 recipients];
      v17 = [v16 firstObject];

      v18 = objc_opt_new();
      v19 = v17;
      v20 = objc_opt_new();
      v21 = [v19 identifier];
      if (v21)
      {
        [v18 addObject:v21];
      }

      v78 = v21;
      v22 = [v19 handle];
      if (v22)
      {
        [v18 addObject:v22];
      }

      [v19 contact];
      v81 = v79 = v19;
      if (v81)
      {
        v23 = [v81 identifier];
        [v18 addObject:v23];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v24 = [v81 emailAddresses];
        v25 = [v24 countByEnumeratingWithState:&v98 objects:v109 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v99;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v99 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v98 + 1) + 8 * i);
              v30 = [v29 identifier];
              [v18 addObject:v30];

              v31 = [v29 value];
              [v18 addObject:v31];
            }

            v26 = [v24 countByEnumeratingWithState:&v98 objects:v109 count:16];
          }

          while (v26);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v32 = [v81 phoneNumbers];
        v33 = [v32 countByEnumeratingWithState:&v94 objects:v108 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v95;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v95 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v94 + 1) + 8 * j);
              v38 = [v37 identifier];
              [v18 addObject:v38];

              v39 = [v37 value];
              [v20 addObject:v39];
              v40 = [v39 stringValue];

              if (v40)
              {
                v41 = [v39 stringValue];
                [v18 addObject:v41];
              }

              v42 = [v39 digits];

              if (v42)
              {
                v43 = [v39 digits];
                [v18 addObject:v43];
              }

              v44 = [v39 stringValue];

              if (v44)
              {
                v45 = [v39 stringValue];
                [v18 addObject:v45];
              }

              v46 = [v39 formattedStringValue];

              if (v46)
              {
                v47 = [v39 formattedStringValue];
                [v18 addObject:v47];
              }

              v48 = [v39 formattedInternationalStringValue];

              if (v48)
              {
                v49 = [v39 formattedInternationalStringValue];
                [v18 addObject:v49];
              }

              v50 = [v39 unformattedInternationalStringValue];

              if (v50)
              {
                v51 = [v39 unformattedInternationalStringValue];
                [v18 addObject:v51];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v94 objects:v108 count:16];
          }

          while (v34);
        }

        a1 = v73;
        v4 = v74;
        v5 = v72;
        v15 = v85;
      }

      if ([v5 intersectsSet:v18] & 1) != 0 || (objc_msgSend(v6, "intersectsSet:", v20))
      {
LABEL_74:
        [v5 unionSet:v18];
        [v6 unionSet:v20];
LABEL_75:
        v68 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v111 = v79;
          _os_log_impl(&dword_1B5ED1000, v68, OS_LOG_TYPE_DEFAULT, "Recipient already added %@", buf, 0xCu);
        }

        v9 = v75;
        v8 = v76;
        goto LABEL_81;
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v52 = v20;
      v83 = [v52 countByEnumeratingWithState:&v90 objects:v107 count:16];
      if (v83)
      {
        v80 = v52;
        v53 = 0;
        v82 = *v91;
        while (2)
        {
          for (k = 0; k != v83; ++k)
          {
            if (*v91 != v82)
            {
              objc_enumerationMutation(v80);
            }

            if (v53)
            {

              a1 = v73;
              v4 = v74;
              v5 = v72;
              goto LABEL_74;
            }

            v55 = *(*(&v90 + 1) + 8 * k);
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v56 = v6;
            v57 = [v56 countByEnumeratingWithState:&v86 objects:v106 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = v22;
              v60 = v6;
              v61 = *v87;
              while (2)
              {
                for (m = 0; m != v58; ++m)
                {
                  if (*v87 != v61)
                  {
                    objc_enumerationMutation(v56);
                  }

                  if ([v55 isLikePhoneNumber:*(*(&v86 + 1) + 8 * m)])
                  {
                    v53 = 1;
                    goto LABEL_63;
                  }
                }

                v58 = [v56 countByEnumeratingWithState:&v86 objects:v106 count:16];
                if (v58)
                {
                  continue;
                }

                break;
              }

              v53 = 0;
LABEL_63:
              v6 = v60;
              v22 = v59;
            }

            else
            {
              v53 = 0;
            }
          }

          v83 = [v80 countByEnumeratingWithState:&v90 objects:v107 count:16];
          if (v83)
          {
            continue;
          }

          break;
        }

        v52 = v80;

        v5 = v72;
        [v72 unionSet:v18];
        [v56 unionSet:v80];
        a1 = v73;
        v4 = v74;
        v15 = v85;
        if (v53)
        {
          goto LABEL_75;
        }
      }

      else
      {

        [v5 unionSet:v18];
        [v6 unionSet:v52];
      }

      v9 = v75;
      v8 = v76;
      v14 = v79;
      goto LABEL_80;
    }

LABEL_83:

    v3 = v71;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v69 = *MEMORY[0x1E69E9840];

  return v4;
}

id __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v4 = getCNContactFormatterClass_softClass_4;
    v18 = getCNContactFormatterClass_softClass_4;
    if (!getCNContactFormatterClass_softClass_4)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getCNContactFormatterClass_block_invoke_4;
      v14[3] = &unk_1E7C23BF0;
      v14[4] = &v15;
      __getCNContactFormatterClass_block_invoke_4(v14);
      v4 = v16[3];
    }

    v5 = v4;
    _Block_object_dispose(&v15, 8);
    v6 = objc_opt_new();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2;
    v11[3] = &unk_1E7C26260;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    v11[4] = v7;
    v12 = v6;
    v8 = v6;
    v9 = [v3 _pas_mappedArrayWithTransform:v11];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

_PSSuggestion *__77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 recipients];
    if ([v6 count] < 2)
    {
      v8 = 0;
    }

    else
    {
      v7 = [v3 groupName];
      if ([v7 length])
      {
        v8 = 1;
      }

      else
      {
        v17 = [v3 conversationIdentifier];
        v8 = v17 != 0;
      }
    }

    v18 = [v3 recipients];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42;
    v40[3] = &unk_1E7C26238;
    v40[4] = *(a1 + 32);
    v43 = v8;
    v44 = *(a1 + 48);
    v19 = v3;
    v41 = v19;
    v42 = *(a1 + 40);
    v20 = [v18 _pas_mappedArrayWithTransform:v40];

    if ([v20 count])
    {
      if ([v20 count] < 2)
      {
        v38 = 0;
        v39 = 0;
      }

      else
      {
        v39 = [v19 conversationIdentifier];
        v38 = [v19 groupName];
      }

      v28 = [_PSSuggestion alloc];
      v37 = [v19 bundleID];
      v29 = [v19 derivedIntentIdentifier];
      v30 = [v19 image];
      v31 = [v19 reason];
      v32 = [v19 reasonType];
      v33 = [v19 score];
      LOBYTE(v36) = [v19 familySuggestion];
      v21 = v39;
      v16 = [(_PSSuggestion *)v28 initWithBundleID:v37 conversationIdentifier:v39 groupName:v38 recipients:v20 derivedIntentIdentifier:v29 image:v30 reason:v31 reasonType:v32 score:v33 familySuggestion:v36];

      v34 = [v19 messagesGroupIdentifier];
      [(_PSSuggestion *)v16 setMessagesGroupIdentifier:v34];
    }

    else
    {
      v21 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_1(v19, v21, v22, v23, v24, v25, v26, v27);
      }

      v16 = 0;
    }
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_2(v3, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = 0;
  }

  return v16;
}

_PSRecipient *__77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 contact];
  if (v4)
  {
    v5 = v4;
LABEL_4:
    if ([v5 contactType]== 1)
    {
      v8 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42_cold_1(a1, v8, v9, v10, v11, v12, v13, v14);
      }

LABEL_8:
      v15 = 0;
      goto LABEL_15;
    }

    v16 = [v3 handle];
    if (*(*(a1 + 32) + 16))
    {
      v17 = [v3 handle];

      if (v17)
      {
        v18 = *(a1 + 32);
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = [v3 handle];
        v22 = [v19 getFaceTimeableHandleForContact:v5 interactionStore:v20 seedRecipientHandle:v21];

        v16 = v22;
      }
    }

    v23 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v3 handle];
      v40 = 138412546;
      v41 = v24;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "Mapped handle %@ to handle %@ and to contact", &v40, 0x16u);
    }

    v25 = [_PSRecipient alloc];
    v26 = [v5 identifier];
    v27 = [v3 senderHandle];
    v28 = [*(a1 + 48) stringFromContact:v5];
    v15 = [(_PSRecipient *)v25 initWithIdentifier:v26 senderHandle:v27 handle:v16 displayName:v28 contact:v5];

    goto LABEL_15;
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = [v3 handle];
  v5 = [v6 getContactForHandle:v7 handleType:{objc_msgSend(v3, "handleType")}];

  if (v5)
  {
    goto LABEL_4;
  }

  if ((*(a1 + 56) & 1) == 0 && (*(a1 + 57) & 1) == 0)
  {
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v3 handle];
      v40 = 138412290;
      v41 = v39;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Filtering %@ since no mapped contact found and unmapped suggestions are not allowed", &v40, 0xCu);
    }

    goto LABEL_8;
  }

  v31 = [v3 displayName];
  v32 = [v31 length];

  if (v32)
  {
    v15 = v3;
  }

  else
  {
    v33 = [_PSRecipient alloc];
    v34 = [v3 handle];
    v35 = [v3 senderHandle];
    v36 = [v3 handle];
    v37 = [v3 handle];
    v38 = [v3 contact];
    v15 = [(_PSRecipient *)v33 initWithIdentifier:v34 senderHandle:v35 handle:v36 displayName:v37 contact:v38];
  }

LABEL_15:

  v29 = *MEMORY[0x1E69E9840];

  return v15;
}

id __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 count])
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 experimentId];
    v7 = [*(a1 + 32) deploymentId];
    v8 = [*(a1 + 32) treatmentId];
    [v5 stringWithFormat:@"Experiment:%@/%u/%@", v6, v7, v8];
  }

  else
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      v13 = @"Default";
      goto LABEL_8;
    }

    v11 = MEMORY[0x1E696AEC0];
    v6 = [v10 rolloutId];
    v12 = [*(a1 + 40) deploymentId];
    v8 = [*(a1 + 40) factorPackId];
    [v11 stringWithFormat:@"Rollout:%@/%u/%@", v6, v12, v8];
  }
  v13 = ;

LABEL_8:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke_2;
  v16[3] = &unk_1E7C26288;
  v17 = v13;
  v14 = v13;
  v9 = [v3 _pas_mappedArrayWithTransform:v16];

LABEL_9:

  return v9;
}

id __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrialID:*(a1 + 32)];

  return v3;
}

id __63___PSFTZKWSuggestionsTransformerFactory_boostPriorityContacts___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _pas_mappedArrayWithTransform:&__block_literal_global_57];
  if ([v3 count] && objc_msgSend(v4, "count"))
  {
    v22 = v4;
    v21 = objc_opt_new();
    v5 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [v10 recipients];
          if ([v11 count] != 1)
          {
            goto LABEL_10;
          }

          v12 = [v10 recipients];
          v13 = [v12 firstObject];
          v14 = [v13 identifier];
          v15 = [v22 containsObject:v14];

          v16 = v21;
          if ((v15 & 1) == 0)
          {
LABEL_10:
            v16 = v5;
          }

          [v16 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v7);
    }

    v17 = [v21 arrayByAddingObjectsFromArray:v5];

    v3 = v20;
    v4 = v22;
  }

  else
  {
    v17 = v3;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __62___PSFTZKWSuggestionsTransformerFactory_filterBlockedContacts__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 _pas_filteredArrayWithTest:&__block_literal_global_62];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

uint64_t __62___PSFTZKWSuggestionsTransformerFactory_filterBlockedContacts__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [a2 recipients];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v15 + 1) + 8 * v6) handle];
        v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" ()-"];
        v9 = [v7 componentsSeparatedByCharactersInSet:v8];
        v10 = [v9 componentsJoinedByString:&stru_1F2D6CE98];

        v11 = +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
        LOBYTE(v8) = [v11 isHandleBlocked:v10];

        if (v8)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __80___PSFTZKWSuggestionsTransformerFactory_getResultsFromTransformers_suggestions___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("ps_ft_zkw_transformer", v1);

  v3 = getResultsFromTransformers_suggestions___pasExprOnceResult;
  getResultsFromTransformers_suggestions___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

void __80___PSFTZKWSuggestionsTransformerFactory_getResultsFromTransformers_suggestions___block_invoke_71(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      if (![*(*(*(a1 + 40) + 8) + 40) count])
      {
        break;
      }

      v8 = (*(v7 + 16))(v7, *(*(*(a1 + 40) + 8) + 40));
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, a2, a3, "Filtering %@ since no recipients in suggestion after contact mapping", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, a2, a3, "Filtering %@ since no recipients provided in suggestion", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, a2, a3, "Skipping suggestion %@ since mapped contact is an organization", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end