@interface PBFPosterDataStoreEventBuilder
+ (id)activeChargerIdentifierDidUpdate:(id)a3 from:(id)a4;
+ (id)descriptorsUpdatedForProvider:(id)a3 role:(id)a4 from:(id)a5 to:(id)a6;
+ (id)extensionsUpdatedFrom:(id)a3 to:(id)a4 supportedRoles:(id)a5;
+ (id)posterActivated:(id)a3 previous:(id)a4;
+ (id)posterAdded:(id)a3;
+ (id)posterDeleted:(id)a3;
+ (id)posterSelected:(id)a3 previous:(id)a4;
+ (id)posterUpdatedFrom:(id)a3 to:(id)a4;
+ (id)postersReorderedFrom:(id)a3 to:(id)a4;
+ (id)resetRole:(id)a3;
+ (id)staticDescriptorsUpdatedForProvider:(id)a3 role:(id)a4 from:(id)a5 to:(id)a6;
- (id)buildWithError:(id *)a3;
- (void)relatePoster:(id)a3;
- (void)relateProvider:(id)a3;
- (void)reset;
- (void)setEventType:(id)a3;
@end

@implementation PBFPosterDataStoreEventBuilder

+ (id)extensionsUpdatedFrom:(id)a3 to:(id)a4 supportedRoles:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 count];
  if (![v10 count])
  {
    [PBFPosterDataStoreEventBuilder extensionsUpdatedFrom:a2 to:? supportedRoles:?];
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__PBFPosterDataStoreEventBuilder_extensionsUpdatedFrom_to_supportedRoles___block_invoke;
  v39[3] = &unk_2782C5EC0;
  v11 = v10;
  v40 = v11;
  v12 = [v8 bs_filter:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __74__PBFPosterDataStoreEventBuilder_extensionsUpdatedFrom_to_supportedRoles___block_invoke_2;
  v37[3] = &unk_2782C5EC0;
  v13 = v11;
  v38 = v13;
  v14 = [v9 bs_filter:v37];
  v15 = objc_opt_new();
  [v15 setEventType:@"PBFPosterDataStoreEventTypeExtensionsUpdated"];
  [v15 setFromValue:v12];
  [v15 setToValue:v14];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v33 + 1) + 8 * i) posterExtensionBundleIdentifier];
        [v15 relateProvider:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v18);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = v9;
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v29 + 1) + 8 * j) posterExtensionBundleIdentifier];
        [v15 relateProvider:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v24);
  }

  return v15;
}

uint64_t __74__PBFPosterDataStoreEventBuilder_extensionsUpdatedFrom_to_supportedRoles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 supportedRoles];
  v4 = [v2 intersectsSet:v3];

  return v4;
}

uint64_t __74__PBFPosterDataStoreEventBuilder_extensionsUpdatedFrom_to_supportedRoles___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 supportedRoles];
  v4 = [v2 intersectsSet:v3];

  return v4;
}

+ (id)descriptorsUpdatedForProvider:(id)a3 role:(id)a4 from:(id)a5 to:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v10 length])
  {
    [PBFPosterDataStoreEventBuilder descriptorsUpdatedForProvider:a2 role:? from:? to:?];
  }

  v24 = v11;
  v14 = objc_opt_new();
  [v14 setEventType:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"];
  [v14 setFromValue:v12];
  [v14 setToValue:v13];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v25 + 1) + 8 * i) _path];
        v21 = [v20 serverIdentity];
        v22 = [v21 provider];
        [v14 relateProvider:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  [v14 relateProvider:v10];

  return v14;
}

+ (id)staticDescriptorsUpdatedForProvider:(id)a3 role:(id)a4 from:(id)a5 to:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v10 length])
  {
    [PBFPosterDataStoreEventBuilder staticDescriptorsUpdatedForProvider:a2 role:? from:? to:?];
  }

  v24 = v11;
  v14 = objc_opt_new();
  [v14 setEventType:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"];
  [v14 setFromValue:v12];
  [v14 setToValue:v13];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v25 + 1) + 8 * i) _path];
        v21 = [v20 serverIdentity];
        v22 = [v21 provider];
        [v14 relateProvider:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  [v14 relateProvider:v10];

  return v14;
}

+ (id)posterUpdatedFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 role];
  v9 = [v7 role];
  v10 = BSEqualObjects();

  if ((v10 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  v11 = [v6 _path];
  v12 = [v11 isServerPosterPath];

  if ((v12 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  v13 = [v7 _path];
  v14 = [v13 isServerPosterPath];

  if ((v14 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  v15 = [v6 _path];
  v16 = [v15 serverIdentity];
  v17 = [v16 posterUUID];
  v18 = [v7 _path];
  v19 = [v18 serverIdentity];
  v20 = [v19 posterUUID];
  v21 = BSEqualObjects();

  if ((v21 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  v22 = objc_opt_new();
  [v22 setEventType:@"PBFPosterDataStoreEventTypePosterUpdated"];
  [v22 setFromValue:v6];
  [v22 setToValue:v7];
  v23 = [v7 _path];
  v24 = [v23 serverIdentity];
  v25 = [v24 posterUUID];
  [v22 relatePoster:v25];

  v26 = [v7 _path];
  v27 = [v26 serverIdentity];
  v28 = [v27 provider];
  [v22 relateProvider:v28];

  v29 = [v6 _path];
  v30 = [v29 serverIdentity];
  v31 = [v30 posterUUID];
  [v22 relatePoster:v31];

  v32 = [v6 _path];
  v33 = [v32 serverIdentity];
  v34 = [v33 provider];
  [v22 relateProvider:v34];

  return v22;
}

+ (id)posterSelected:(id)a3 previous:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _path];
  v9 = [v8 isServerPosterPath];

  if ((v9 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterSelected:a2 previous:?];
  }

  v10 = objc_opt_new();
  [v10 setEventType:@"PBFPosterDataStoreEventTypePosterSelected"];
  [v10 setFromValue:v7];
  [v10 setToValue:v6];
  v11 = [v6 _path];
  v12 = [v11 serverIdentity];
  v13 = [v12 posterUUID];
  [v10 relatePoster:v13];

  v14 = [v6 _path];
  v15 = [v14 serverIdentity];
  v16 = [v15 provider];
  [v10 relateProvider:v16];

  v17 = [v7 _path];
  LODWORD(v15) = [v17 isServerPosterPath];

  if (v15)
  {
    v18 = [v7 _path];
    v19 = [v18 serverIdentity];
    v20 = [v19 posterUUID];
    [v10 relatePoster:v20];

    v21 = [v7 _path];
    v22 = [v21 serverIdentity];
    v23 = [v22 provider];
    [v10 relateProvider:v23];
  }

  return v10;
}

+ (id)posterActivated:(id)a3 previous:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _path];
    v10 = [v9 isServerPosterPath];

    if ((v10 & 1) == 0)
    {
      [PBFPosterDataStoreEventBuilder posterActivated:a2 previous:?];
    }
  }

  v11 = [v6 _path];
  v12 = [v11 isServerPosterPath];

  if ((v12 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterActivated:a2 previous:?];
  }

  v13 = objc_opt_new();
  [v13 setEventType:@"PBFPosterDataStoreEventTypePosterActivated"];
  [v13 setFromValue:v8];
  [v13 setToValue:v6];
  v14 = [v6 _path];
  v15 = [v14 serverIdentity];
  v16 = [v15 posterUUID];
  [v13 relatePoster:v16];

  v17 = [v6 _path];
  v18 = [v17 serverIdentity];
  v19 = [v18 provider];
  [v13 relateProvider:v19];

  if (v8)
  {
    v20 = [v8 _path];
    v21 = [v20 serverIdentity];
    v22 = [v21 posterUUID];
    [v13 relatePoster:v22];

    v23 = [v8 _path];
    v24 = [v23 serverIdentity];
    v25 = [v24 provider];
    [v13 relateProvider:v25];
  }

  return v13;
}

+ (id)posterDeleted:(id)a3
{
  v4 = a3;
  v5 = [v4 _path];
  v6 = [v5 isServerPosterPath];

  if ((v6 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterDeleted:a2];
  }

  v7 = objc_opt_new();
  [v7 setEventType:@"PBFPosterDataStoreEventTypePosterDeleted"];
  [v7 setFromValue:v4];
  [v7 setToValue:0];
  v8 = [v4 _path];
  v9 = [v8 serverIdentity];
  v10 = [v9 posterUUID];
  [v7 relatePoster:v10];

  v11 = [v4 _path];
  v12 = [v11 serverIdentity];
  v13 = [v12 provider];
  [v7 relateProvider:v13];

  return v7;
}

+ (id)posterAdded:(id)a3
{
  v4 = a3;
  v5 = [v4 _path];
  v6 = [v5 isServerPosterPath];

  if ((v6 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterAdded:a2];
  }

  v7 = objc_opt_new();
  [v7 setEventType:@"PBFPosterDataStoreEventTypePosterAdded"];
  [v7 setFromValue:0];
  [v7 setToValue:v4];
  v8 = [v4 _path];
  v9 = [v8 serverIdentity];
  v10 = [v9 posterUUID];
  [v7 relatePoster:v10];

  v11 = [v4 _path];
  v12 = [v11 serverIdentity];
  v13 = [v12 provider];
  [v7 relateProvider:v13];

  return v7;
}

+ (id)postersReorderedFrom:(id)a3 to:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setEventType:@"PBFPosterDataStoreEventTypePostersReordered"];
  [v7 setFromValue:v5];
  [v7 setToValue:v6];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [v13 _path];
        v15 = [v14 serverIdentity];
        v16 = [v15 posterUUID];
        [v7 relatePoster:v16];

        v17 = [v13 _path];
        v18 = [v17 serverIdentity];
        v19 = [v18 provider];
        [v7 relateProvider:v19];
      }

      v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v10);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * j);
        v26 = [v25 _path];
        v27 = [v26 serverIdentity];
        v28 = [v27 posterUUID];
        [v7 relatePoster:v28];

        v29 = [v25 _path];
        v30 = [v29 serverIdentity];
        v31 = [v30 provider];
        [v7 relateProvider:v31];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }

  return v7;
}

+ (id)activeChargerIdentifierDidUpdate:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (BSEqualStrings())
  {
    [PBFPosterDataStoreEventBuilder activeChargerIdentifierDidUpdate:a2 from:?];
  }

  v8 = objc_opt_new();
  [v8 setEventType:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"];
  [v8 setFromValue:v7];
  [v8 setToValue:v6];

  return v8;
}

+ (id)resetRole:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setEventType:@"PBFPosterDataStoreEventTypeRoleCoordinatorReset"];
  [v4 setFromValue:v3];
  [v4 setToValue:v3];

  return v4;
}

- (void)setEventType:(id)a3
{
  v4 = a3;
  v5 = @"PBFPosterDataStoreEventTypeUnknown";
  if (v4)
  {
    v5 = v4;
  }

  eventType = self->_eventType;
  self->_eventType = &v5->isa;
}

- (void)relateProvider:(id)a3
{
  v4 = a3;
  if (v4)
  {
    relatedProviders = self->_relatedProviders;
    v8 = v4;
    if (!relatedProviders)
    {
      v6 = objc_opt_new();
      v7 = self->_relatedProviders;
      self->_relatedProviders = v6;

      relatedProviders = self->_relatedProviders;
    }

    [(NSMutableSet *)relatedProviders addObject:v8];
    v4 = v8;
  }
}

- (void)relatePoster:(id)a3
{
  v4 = a3;
  if (v4)
  {
    relatedPosters = self->_relatedPosters;
    v8 = v4;
    if (!relatedPosters)
    {
      v6 = objc_opt_new();
      v7 = self->_relatedPosters;
      self->_relatedPosters = v6;

      relatedPosters = self->_relatedPosters;
    }

    [(NSMutableSet *)relatedPosters addObject:v8];
    v4 = v8;
  }
}

- (void)reset
{
  relatedProviders = self->_relatedProviders;
  self->_relatedProviders = 0;

  relatedPosters = self->_relatedPosters;
  self->_relatedPosters = 0;

  toValue = self->_toValue;
  self->_toValue = 0;

  fromValue = self->_fromValue;
  self->_fromValue = 0;

  [(PBFPosterDataStoreEventBuilder *)self setEventType:0];
}

- (id)buildWithError:(id *)a3
{
  v5 = [[PBFPosterDataStoreEvent alloc] initWithType:self->_eventType];
  [(PBFPosterDataStoreEvent *)v5 setRelatedProviders:self->_relatedProviders];
  [(PBFPosterDataStoreEvent *)v5 setRelatedPosters:self->_relatedPosters];
  [(PBFPosterDataStoreEvent *)v5 setUserInfo:self->_userInfo];
  [(PBFPosterDataStoreEvent *)v5 setToValue:self->_toValue];
  [(PBFPosterDataStoreEvent *)v5 setFromValue:self->_fromValue];
  if ([(PBFPosterDataStoreEvent *)v5 isValidWithError:a3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)extensionsUpdatedFrom:(char *)a1 to:supportedRoles:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[supportedRoles count] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)descriptorsUpdatedForProvider:(char *)a1 role:from:to:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[provider length] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)staticDescriptorsUpdatedForProvider:(char *)a1 role:from:to:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[provider length] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatedFrom:(char *)a1 to:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSEqualObjects([from role], [to role])", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatedFrom:(char *)a1 to:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[from _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatedFrom:(char *)a1 to:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[to _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatedFrom:(char *)a1 to:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSEqualObjects([[[from _path] serverIdentity] posterUUID], [[[to _path] serverIdentity] posterUUID])", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterSelected:(char *)a1 previous:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[to _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterActivated:(char *)a1 previous:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[from _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterActivated:(char *)a1 previous:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[to _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterDeleted:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[poster _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterAdded:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[poster _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)activeChargerIdentifierDidUpdate:(char *)a1 from:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSEqualStrings(activeChargerIdentifier, previousChargerIdentifier) == NO", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end