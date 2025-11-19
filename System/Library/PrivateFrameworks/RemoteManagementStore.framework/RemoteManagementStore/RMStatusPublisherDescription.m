@interface RMStatusPublisherDescription
+ (id)descriptionWithEventsDictionary:(id)a3;
+ (id)descriptionWithServiceDictionary:(id)a3;
- (BOOL)_validateStatusEvents:(id)a3;
- (BOOL)_validateStatusKeysByNotification:(id)a3;
- (BOOL)_validateStatusKeysWithoutNotification:(id)a3;
- (RMStatusPublisherDescription)initWithDictionary:(id)a3;
- (void)_loadDescription:(id)a3;
- (void)_loadDescriptionFromStatusEvents:(id)a3 statusKeysByNotification:(id)a4 statusKeysWithoutNotification:(id)a5;
- (void)_loadManagedSettingsDescription;
@end

@implementation RMStatusPublisherDescription

+ (id)descriptionWithEventsDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"StatusPublisher"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [RMStatusPublisherDescription alloc];
  if (isKindOfClass)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = [(RMStatusPublisherDescription *)v5 initWithDictionary:v6];

  return v7;
}

+ (id)descriptionWithServiceDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"StatusPublisher"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [RMStatusPublisherDescription alloc];
  if (isKindOfClass)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = [(RMStatusPublisherDescription *)v5 initWithDictionary:v6];

  return v7;
}

- (RMStatusPublisherDescription)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RMStatusPublisherDescription;
  v5 = [(RMStatusPublisherDescription *)&v10 init];
  v6 = v5;
  if (v5)
  {
    statusKeysByXPCEvent = v5->_statusKeysByXPCEvent;
    v5->_statusKeysByXPCEvent = 0;

    statusKeys = v6->_statusKeys;
    v6->_statusKeys = 0;

    [(RMStatusPublisherDescription *)v6 _loadDescription:v4];
  }

  return v6;
}

- (void)_loadDescription:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"ManagedSettings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 BOOLValue])
  {
    [(RMStatusPublisherDescription *)self _loadManagedSettingsDescription];
  }

  else
  {
    v5 = [v8 objectForKeyedSubscript:@"StatusEvents"];
    v6 = [v8 objectForKeyedSubscript:@"StatusKeysByNotification"];
    v7 = [v8 objectForKeyedSubscript:@"StatusKeysWithoutNotification"];
    if ([(RMStatusPublisherDescription *)self _validateStatusEvents:v5]&& [(RMStatusPublisherDescription *)self _validateStatusKeysByNotification:v6]&& [(RMStatusPublisherDescription *)self _validateStatusKeysWithoutNotification:v7])
    {
      [(RMStatusPublisherDescription *)self _loadDescriptionFromStatusEvents:v5 statusKeysByNotification:v6 statusKeysWithoutNotification:v7];
    }
  }
}

- (void)_loadManagedSettingsDescription
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [MEMORY[0x277D46050] managedSettingsSchemas];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v27 + 1) + 8 * v8) managedSetting];
        v10 = [v9 managedSettingKey];
        v11 = [v10 componentsSeparatedByString:@"."];
        v12 = [v11 objectAtIndexedSubscript:0];

        [v2 addObject:v12];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x277D45F88];
  v33 = @"SettingsGroups";
  v14 = [v2 allObjects];
  v34 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v16 = [v13 newXPCEventForStream:@"com.apple.ManagedSettings.effective-settings.changed" notificationName:@"com.apple.remotemanagement.effective-settings.changed" descriptor:v15];

  v17 = MEMORY[0x277CBEB98];
  v18 = [MEMORY[0x277D46050] managedSettingsSchemas];
  v19 = [v18 allKeys];
  v20 = [v17 setWithArray:v19];
  statusKeys = self->_statusKeys;
  self->_statusKeys = v20;

  v22 = self->_statusKeys;
  v31 = v16;
  v32 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  statusKeysByXPCEvent = self->_statusKeysByXPCEvent;
  self->_statusKeysByXPCEvent = v23;

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_loadDescriptionFromStatusEvents:(id)a3 statusKeysByNotification:(id)a4 statusKeysWithoutNotification:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  if (v8)
  {
    v28 = v10;
    v29 = self;
    v30 = v9;
    v31 = v8;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v8;
    v13 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:@"XPCEvents"];
          v19 = MEMORY[0x277CBEB98];
          v20 = [v17 objectForKeyedSubscript:@"StatusItems"];
          v21 = [v19 setWithArray:v20];

          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke;
          v36[3] = &unk_279B05E70;
          v37 = v11;
          v38 = v21;
          v22 = v21;
          [v18 enumerateKeysAndObjectsUsingBlock:v36];
          [v12 unionSet:v22];
        }

        v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v14);
    }

    v9 = v30;
    v8 = v31;
    v10 = v28;
    self = v29;
  }

  if (v9)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_3;
    v33[3] = &unk_279B05A38;
    v34 = v11;
    v35 = v12;
    [v9 enumerateKeysAndObjectsUsingBlock:v33];
  }

  if (v10)
  {
    [v12 addObjectsFromArray:v10];
  }

  if ([v11 count])
  {
    v23 = [v11 copy];
    statusKeysByXPCEvent = self->_statusKeysByXPCEvent;
    self->_statusKeysByXPCEvent = v23;
  }

  if ([v12 count])
  {
    v25 = [v12 copy];
    statusKeys = self->_statusKeys;
    self->_statusKeys = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_2;
  v7[3] = &unk_279B05E48;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x277D45F88] newXPCEventForStream:*(a1 + 32) notificationName:a2 descriptor:a3];
  [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v4];
}

void __120__RMStatusPublisherDescription__loadDescriptionFromStatusEvents_statusKeysByNotification_statusKeysWithoutNotification___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D45F88];
  v6 = a3;
  v8 = [v5 newXPCEventForDarwinNotification:a2];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];

  [*(a1 + 40) addObjectsFromArray:v6];
}

- (BOOL)_validateStatusEvents:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (v5)
      {
        v6 = *v56;
        v42 = v4;
        v37 = *v56;
        while (2)
        {
          v7 = 0;
          v38 = v5;
          do
          {
            if (*v56 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v55 + 1) + 8 * v7);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v9 = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

              goto LABEL_50;
            }

            v9 = [v8 objectForKeyedSubscript:@"XPCEvents"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v10 = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

LABEL_45:

              goto LABEL_50;
            }

            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v10 = [v9 allValues];
            v11 = [v10 countByEnumeratingWithState:&v51 objects:v61 count:16];
            v39 = v7;
            if (v11)
            {
              v12 = v11;
              v13 = *v52;
              v40 = v9;
              v41 = v10;
              v36 = *v52;
              while (2)
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v52 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v51 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v16 = [MEMORY[0x277D45F58] statusPublisherDescription];
                    v4 = v42;
                    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                    {
                      [RMStatusPublisherDescription _validateStatusEvents:];
                    }

                    v9 = v40;
LABEL_44:

                    goto LABEL_45;
                  }

                  v49 = 0u;
                  v50 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v16 = [v15 allValues];
                  v17 = [v16 countByEnumeratingWithState:&v47 objects:v60 count:16];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = *v48;
                    while (2)
                    {
                      for (j = 0; j != v18; ++j)
                      {
                        if (*v48 != v19)
                        {
                          objc_enumerationMutation(v16);
                        }

                        v21 = *(*(&v47 + 1) + 8 * j);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v31 = [MEMORY[0x277D45F58] statusPublisherDescription];
                          v4 = v42;
                          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                          {
                            [RMStatusPublisherDescription _validateStatusEvents:];
                          }

                          v9 = v40;
                          v10 = v41;
                          goto LABEL_44;
                        }
                      }

                      v18 = [v16 countByEnumeratingWithState:&v47 objects:v60 count:16];
                      if (v18)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v10 = v41;
                  v13 = v36;
                }

                v12 = [v41 countByEnumeratingWithState:&v51 objects:v61 count:16];
                v9 = v40;
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            v22 = [v8 objectForKeyedSubscript:@"StatusItems"];
            objc_opt_class();
            v4 = v42;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v35 = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

LABEL_50:
              goto LABEL_51;
            }

            v23 = v9;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v24 = v22;
            v25 = [v24 countByEnumeratingWithState:&v43 objects:v59 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v44;
              while (2)
              {
                for (k = 0; k != v26; ++k)
                {
                  if (*v44 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v43 + 1) + 8 * k);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v32 = [MEMORY[0x277D45F58] statusPublisherDescription];
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      [RMStatusPublisherDescription _validateStatusEvents:];
                    }

                    v9 = v23;
                    goto LABEL_50;
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v43 objects:v59 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }
            }

            v7 = v39 + 1;
            v6 = v37;
          }

          while (v39 + 1 != v38);
          v5 = [v42 countByEnumeratingWithState:&v55 objects:v62 count:16];
          v30 = 1;
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v4 = [MEMORY[0x277D45F58] statusPublisherDescription];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [RMStatusPublisherDescription _validateStatusEvents:];
      }

LABEL_51:
      v30 = 0;
    }
  }

  else
  {
    v30 = 1;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)_validateStatusKeysByNotification:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v4 = [v3 allValues];
      v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v28;
        v8 = 0x277CBE000uLL;
        v22 = *v28;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v28 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v27 + 1) + 8 * i);
            v11 = *(v8 + 2656);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v12 = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

LABEL_26:

              goto LABEL_27;
            }

            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = v10;
            v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v24;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v24 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v23 + 1) + 8 * j);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v19 = [MEMORY[0x277D45F58] statusPublisherDescription];
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                    {
                      [RMStatusPublisherDescription _validateStatusEvents:];
                    }

                    goto LABEL_26;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v7 = v22;
            v8 = 0x277CBE000;
          }

          v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
          v18 = 1;
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v4 = [MEMORY[0x277D45F58] statusPublisherDescription];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [RMStatusPublisherDescription _validateStatusEvents:];
      }

LABEL_27:
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_validateStatusKeysWithoutNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v11 = [MEMORY[0x277D45F58] statusPublisherDescription];
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                [RMStatusPublisherDescription _validateStatusEvents:];
              }

              goto LABEL_18;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          v10 = 1;
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v4 = [MEMORY[0x277D45F58] statusPublisherDescription];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [RMStatusPublisherDescription _validateStatusEvents:];
      }

LABEL_18:
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_validateStatusEvents:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Invalid status publisher description: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_validateStatusEvents:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Invalid status publisher XPCEvents description: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_validateStatusEvents:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Invalid status publisher XPCEvent item description: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_validateStatusEvents:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Invalid status publisher XPCEvent notification description: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_validateStatusEvents:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Invalid status publisher Items description: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end