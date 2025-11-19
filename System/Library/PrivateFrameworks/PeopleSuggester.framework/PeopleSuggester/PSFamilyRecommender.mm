@interface PSFamilyRecommender
@end

@implementation PSFamilyRecommender

uint64_t __48___PSFamilyRecommender_indexToInsertDate_array___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timeIntervalSinceDate:v5];
  if (v6 >= 0.0)
  {
    [v4 timeIntervalSinceDate:v5];
    v7 = v8 > 0.0;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __37___PSFamilyRecommender_currentFamily__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v39 = a3;
  if (v39)
  {
    v4 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37___PSFamilyRecommender_currentFamily__block_invoke_cold_1();
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [v41 members];
  v44 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v44)
  {
    v43 = *v54;
    do
    {
      v5 = 0;
      do
      {
        if (*v54 != v43)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v45 = v5;
        v7 = *(*(&v53 + 1) + 8 * v5);
        v46 = [v7 dictionary];
        v47 = [v46 objectForKeyedSubscript:@"member-phone-numbers"];
        if ([v47 length] >= 2)
        {
          v8 = [v47 componentsSeparatedByString:{@", "}];
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v49 objects:v66 count:16];
          if (v10)
          {
            v11 = *v50;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v50 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v49 + 1) + 8 * i);
                v14 = [*(a1 + 32) contactStore];
                CNContactClass_1 = getCNContactClass_1();
                v62 = 0;
                v63 = &v62;
                v64 = 0x2050000000;
                v16 = getCNPhoneNumberClass_softClass_0;
                v65 = getCNPhoneNumberClass_softClass_0;
                if (!getCNPhoneNumberClass_softClass_0)
                {
                  v57 = MEMORY[0x1E69E9820];
                  v58 = 3221225472;
                  v59 = __getCNPhoneNumberClass_block_invoke_0;
                  v60 = &unk_1E7C23BF0;
                  v61 = &v62;
                  ContactsLibraryCore_1();
                  Class = objc_getClass("CNPhoneNumber");
                  *(v61[1] + 24) = Class;
                  getCNPhoneNumberClass_softClass_0 = *(v61[1] + 24);
                  v16 = v63[3];
                }

                v18 = v16;
                _Block_object_dispose(&v62, 8);
                v19 = [v16 phoneNumberWithStringValue:v13];
                v20 = [CNContactClass_1 predicateForContactsMatchingPhoneNumber:v19];
                v21 = [*(a1 + 32) contactKeysToFetch];
                v22 = [v14 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:0];
                v23 = [v22 firstObject];

                if (v23)
                {
                  [*(*(*(a1 + 48) + 8) + 40) addObject:v23];

                  goto LABEL_29;
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v49 objects:v66 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

LABEL_29:

          goto LABEL_30;
        }

        v24 = [v7 appleID];

        if (v24)
        {
          v25 = [*(a1 + 32) contactStore];
          v26 = getCNContactClass_1();
          v27 = [v7 appleID];
          v28 = [v26 predicateForContactsMatchingEmailAddress:v27];
          v29 = [*(a1 + 32) contactKeysToFetch];
          v30 = [v25 unifiedContactsMatchingPredicate:v28 keysToFetch:v29 error:0];
          v9 = [v30 firstObject];

          if (v9)
          {
            goto LABEL_24;
          }
        }

        v31 = [v7 inviteEmail];

        if (v31)
        {
          v32 = [*(a1 + 32) contactStore];
          v33 = getCNContactClass_1();
          v34 = [v7 inviteEmail];
          v35 = [v33 predicateForContactsMatchingEmailAddress:v34];
          v36 = [*(a1 + 32) contactKeysToFetch];
          v37 = [v32 unifiedContactsMatchingPredicate:v35 keysToFetch:v36 error:0];
          v9 = [v37 firstObject];

          if (v9)
          {
LABEL_24:
            [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
LABEL_30:
          }
        }

        v5 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v44);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) identifier];
    v5 = [v3 identifier];
    if ([v4 isEqualToString:v5])
    {
      v6 = 0;
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = [v3 identifier];
      if ([v7 containsObject:v8])
      {
        v6 = 0;
      }

      else
      {
        v9 = *(a1 + 48);
        v10 = [v3 identifier];
        v6 = [v9 containsObject:v10] ^ 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(a1 + 32) recipientFromFamilyContactId:*(*(&v15 + 1) + 8 * v10) familySuggestions:0 me:*(a1 + 40) currentFamilyIds:*(a1 + 48)];
        if ((*(*(a1 + 72) + 16))())
        {
          [*(a1 + 56) addObject:v11];
          v12 = *(a1 + 64);
          v13 = [v11 identifier];
          [v12 addObject:v13];

          v6[2](v6, v11);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_379(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPhotosInference:1];
  [v2 setFamilyHeuristic:0];
}

void __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_382(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPhotosInference:1];
  [v2 setFamilyHeuristic:0];
}

uint64_t __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_403(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __55___PSFamilyRecommender_contactIdsFromEmergencyContacts__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55___PSFamilyRecommender_contactIdsFromEmergencyContacts__block_invoke_cold_1(a1 + 40, v5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __37___PSFamilyRecommender_currentFamily__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "FAFamilyMember request error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55___PSFamilyRecommender_contactIdsFromEmergencyContacts__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Fetched emergency contacts %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end