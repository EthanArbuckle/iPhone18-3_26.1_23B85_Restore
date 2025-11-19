@interface PSContactSuggesterForPeopleWidget
@end

@implementation PSContactSuggesterForPeopleWidget

void __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke_cold_1();
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v5 members];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 32) processFamilyMember:*(*(&v14 + 1) + 8 * v12++) toFillContactArray:*(*(*(a1 + 48) + 8) + 40)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v13 = *MEMORY[0x1E69E9840];
}

void __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke_38_cold_1();
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v5 members];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 32) processFamilyMember:*(*(&v14 + 1) + 8 * v12++) toFillContactArray:*(*(*(a1 + 48) + 8) + 40)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v13 = *MEMORY[0x1E69E9840];
}

void __57___PSContactSuggesterForPeopleWidget_iCloudFamilyMembers__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) cnContact];
  v4 = [v3 identifier];
  v5 = [v9 valueForKey:v4];

  if (!v5)
  {
    v6 = [*(a1 + 32) cnContact];
    v7 = [*(a1 + 32) cnContact];
    v8 = [v7 identifier];
    [v9 setValue:v6 forKey:v8];
  }
}

void __63___PSContactSuggesterForPeopleWidget_familyRecommendedContacts__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) contact];
  v4 = [v3 identifier];
  v5 = [v9 valueForKey:v4];

  if (!v5)
  {
    v6 = [*(a1 + 32) contact];
    v7 = [*(a1 + 32) contact];
    v8 = [v7 identifier];
    [v9 setValue:v6 forKey:v8];
  }
}

uint64_t __73___PSContactSuggesterForPeopleWidget_interactionBasedRecommendedContacts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 regularityScore];
  v7 = v6;
  [v5 regularityScore];
  if (v7 <= v8)
  {
    [v4 regularityScore];
    v11 = v10;
    [v5 regularityScore];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __73___PSContactSuggesterForPeopleWidget_interactionBasedRecommendedContacts__block_invoke_45(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v7 valueForKey:v3];

  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 identifier];
    [v7 setValue:v5 forKey:v6];
  }
}

void __55___PSContactSuggesterForPeopleWidget_favoritedContacts__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  v6 = 0x1E7C23000uLL;
  if (v4)
  {
    v7 = v4;
    v8 = *v28;
    *&v5 = 138412290;
    v24 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 contactProperty];

        if (v11)
        {
          v12 = [v10 contactProperty];
          v13 = [v12 contact];

          v14 = v6;
          v15 = [*(v6 + 1360) generalChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v24;
            v32 = v13;
            _os_log_debug_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEBUG, "favoritedContact fetched: %@", buf, 0xCu);
          }

          v16 = *(a1 + 32);
          v17 = [v13 identifier];
          [v16 addObject:v17];

          v18 = *(*(a1 + 40) + 16);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __55___PSContactSuggesterForPeopleWidget_favoritedContacts__block_invoke_47;
          v25[3] = &unk_1E7C26768;
          v26 = v13;
          v19 = v13;
          [v18 runWithLockAcquired:v25];

          v6 = v14;
        }
      }

      v7 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  v20 = [*(v6 + 1360) generalChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __55___PSContactSuggesterForPeopleWidget_favoritedContacts__block_invoke_cold_1(a1, v20);
  }

  v21 = [*(v6 + 1360) generalChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [*(a1 + 32) count];
    *buf = 134217984;
    v32 = v22;
    _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_INFO, "favoritedContacts count: %tu", buf, 0xCu);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __55___PSContactSuggesterForPeopleWidget_favoritedContacts__block_invoke_47(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v7 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 identifier];
    [v7 setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  v9 = [v3 objectAtIndexedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:v9];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 peopleWidgetScore];
  v7 = v6;
  [v5 peopleWidgetScore];
  if (v7 <= v8)
  {
    [v4 peopleWidgetScore];
    v11 = v10;
    [v5 peopleWidgetScore];
    v9 = v11 != v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke_38_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55___PSContactSuggesterForPeopleWidget_favoritedContacts__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "favoritedContacts: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end