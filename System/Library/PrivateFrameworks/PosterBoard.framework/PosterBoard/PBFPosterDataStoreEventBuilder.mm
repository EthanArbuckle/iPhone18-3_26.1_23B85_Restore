@interface PBFPosterDataStoreEventBuilder
+ (id)activeChargerIdentifierDidUpdate:(id)update from:(id)from;
+ (id)descriptorsUpdatedForProvider:(id)provider role:(id)role from:(id)from to:(id)to;
+ (id)extensionsUpdatedFrom:(id)from to:(id)to supportedRoles:(id)roles;
+ (id)posterActivated:(id)activated previous:(id)previous;
+ (id)posterAdded:(id)added;
+ (id)posterDeleted:(id)deleted;
+ (id)posterSelected:(id)selected previous:(id)previous;
+ (id)posterUpdatedFrom:(id)from to:(id)to;
+ (id)postersReorderedFrom:(id)from to:(id)to;
+ (id)resetRole:(id)role;
+ (id)staticDescriptorsUpdatedForProvider:(id)provider role:(id)role from:(id)from to:(id)to;
- (id)buildWithError:(id *)error;
- (void)relatePoster:(id)poster;
- (void)relateProvider:(id)provider;
- (void)reset;
- (void)setEventType:(id)type;
@end

@implementation PBFPosterDataStoreEventBuilder

+ (id)extensionsUpdatedFrom:(id)from to:(id)to supportedRoles:(id)roles
{
  v43 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  rolesCopy = roles;
  [fromCopy count];
  if (![rolesCopy count])
  {
    [PBFPosterDataStoreEventBuilder extensionsUpdatedFrom:a2 to:? supportedRoles:?];
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__PBFPosterDataStoreEventBuilder_extensionsUpdatedFrom_to_supportedRoles___block_invoke;
  v39[3] = &unk_2782C5EC0;
  v11 = rolesCopy;
  v40 = v11;
  v12 = [fromCopy bs_filter:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __74__PBFPosterDataStoreEventBuilder_extensionsUpdatedFrom_to_supportedRoles___block_invoke_2;
  v37[3] = &unk_2782C5EC0;
  v13 = v11;
  v38 = v13;
  v14 = [toCopy bs_filter:v37];
  v15 = objc_opt_new();
  [v15 setEventType:@"PBFPosterDataStoreEventTypeExtensionsUpdated"];
  [v15 setFromValue:v12];
  [v15 setToValue:v14];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = fromCopy;
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

        posterExtensionBundleIdentifier = [*(*(&v33 + 1) + 8 * i) posterExtensionBundleIdentifier];
        [v15 relateProvider:posterExtensionBundleIdentifier];
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v18);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = toCopy;
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

        posterExtensionBundleIdentifier2 = [*(*(&v29 + 1) + 8 * j) posterExtensionBundleIdentifier];
        [v15 relateProvider:posterExtensionBundleIdentifier2];
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

+ (id)descriptorsUpdatedForProvider:(id)provider role:(id)role from:(id)from to:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  roleCopy = role;
  fromCopy = from;
  toCopy = to;
  if (![providerCopy length])
  {
    [PBFPosterDataStoreEventBuilder descriptorsUpdatedForProvider:a2 role:? from:? to:?];
  }

  v24 = roleCopy;
  v14 = objc_opt_new();
  [v14 setEventType:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"];
  [v14 setFromValue:fromCopy];
  [v14 setToValue:toCopy];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = fromCopy;
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

        _path = [*(*(&v25 + 1) + 8 * i) _path];
        serverIdentity = [_path serverIdentity];
        provider = [serverIdentity provider];
        [v14 relateProvider:provider];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  [v14 relateProvider:providerCopy];

  return v14;
}

+ (id)staticDescriptorsUpdatedForProvider:(id)provider role:(id)role from:(id)from to:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  roleCopy = role;
  fromCopy = from;
  toCopy = to;
  if (![providerCopy length])
  {
    [PBFPosterDataStoreEventBuilder staticDescriptorsUpdatedForProvider:a2 role:? from:? to:?];
  }

  v24 = roleCopy;
  v14 = objc_opt_new();
  [v14 setEventType:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"];
  [v14 setFromValue:fromCopy];
  [v14 setToValue:toCopy];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = fromCopy;
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

        _path = [*(*(&v25 + 1) + 8 * i) _path];
        serverIdentity = [_path serverIdentity];
        provider = [serverIdentity provider];
        [v14 relateProvider:provider];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  [v14 relateProvider:providerCopy];

  return v14;
}

+ (id)posterUpdatedFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  role = [fromCopy role];
  role2 = [toCopy role];
  v10 = BSEqualObjects();

  if ((v10 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  _path = [fromCopy _path];
  isServerPosterPath = [_path isServerPosterPath];

  if ((isServerPosterPath & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  _path2 = [toCopy _path];
  isServerPosterPath2 = [_path2 isServerPosterPath];

  if ((isServerPosterPath2 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  _path3 = [fromCopy _path];
  serverIdentity = [_path3 serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  _path4 = [toCopy _path];
  serverIdentity2 = [_path4 serverIdentity];
  posterUUID2 = [serverIdentity2 posterUUID];
  v21 = BSEqualObjects();

  if ((v21 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterUpdatedFrom:a2 to:?];
  }

  v22 = objc_opt_new();
  [v22 setEventType:@"PBFPosterDataStoreEventTypePosterUpdated"];
  [v22 setFromValue:fromCopy];
  [v22 setToValue:toCopy];
  _path5 = [toCopy _path];
  serverIdentity3 = [_path5 serverIdentity];
  posterUUID3 = [serverIdentity3 posterUUID];
  [v22 relatePoster:posterUUID3];

  _path6 = [toCopy _path];
  serverIdentity4 = [_path6 serverIdentity];
  provider = [serverIdentity4 provider];
  [v22 relateProvider:provider];

  _path7 = [fromCopy _path];
  serverIdentity5 = [_path7 serverIdentity];
  posterUUID4 = [serverIdentity5 posterUUID];
  [v22 relatePoster:posterUUID4];

  _path8 = [fromCopy _path];
  serverIdentity6 = [_path8 serverIdentity];
  provider2 = [serverIdentity6 provider];
  [v22 relateProvider:provider2];

  return v22;
}

+ (id)posterSelected:(id)selected previous:(id)previous
{
  selectedCopy = selected;
  previousCopy = previous;
  _path = [selectedCopy _path];
  isServerPosterPath = [_path isServerPosterPath];

  if ((isServerPosterPath & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterSelected:a2 previous:?];
  }

  v10 = objc_opt_new();
  [v10 setEventType:@"PBFPosterDataStoreEventTypePosterSelected"];
  [v10 setFromValue:previousCopy];
  [v10 setToValue:selectedCopy];
  _path2 = [selectedCopy _path];
  serverIdentity = [_path2 serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  [v10 relatePoster:posterUUID];

  _path3 = [selectedCopy _path];
  serverIdentity2 = [_path3 serverIdentity];
  provider = [serverIdentity2 provider];
  [v10 relateProvider:provider];

  _path4 = [previousCopy _path];
  LODWORD(serverIdentity2) = [_path4 isServerPosterPath];

  if (serverIdentity2)
  {
    _path5 = [previousCopy _path];
    serverIdentity3 = [_path5 serverIdentity];
    posterUUID2 = [serverIdentity3 posterUUID];
    [v10 relatePoster:posterUUID2];

    _path6 = [previousCopy _path];
    serverIdentity4 = [_path6 serverIdentity];
    provider2 = [serverIdentity4 provider];
    [v10 relateProvider:provider2];
  }

  return v10;
}

+ (id)posterActivated:(id)activated previous:(id)previous
{
  activatedCopy = activated;
  previousCopy = previous;
  v8 = previousCopy;
  if (previousCopy)
  {
    _path = [previousCopy _path];
    isServerPosterPath = [_path isServerPosterPath];

    if ((isServerPosterPath & 1) == 0)
    {
      [PBFPosterDataStoreEventBuilder posterActivated:a2 previous:?];
    }
  }

  _path2 = [activatedCopy _path];
  isServerPosterPath2 = [_path2 isServerPosterPath];

  if ((isServerPosterPath2 & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterActivated:a2 previous:?];
  }

  v13 = objc_opt_new();
  [v13 setEventType:@"PBFPosterDataStoreEventTypePosterActivated"];
  [v13 setFromValue:v8];
  [v13 setToValue:activatedCopy];
  _path3 = [activatedCopy _path];
  serverIdentity = [_path3 serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  [v13 relatePoster:posterUUID];

  _path4 = [activatedCopy _path];
  serverIdentity2 = [_path4 serverIdentity];
  provider = [serverIdentity2 provider];
  [v13 relateProvider:provider];

  if (v8)
  {
    _path5 = [v8 _path];
    serverIdentity3 = [_path5 serverIdentity];
    posterUUID2 = [serverIdentity3 posterUUID];
    [v13 relatePoster:posterUUID2];

    _path6 = [v8 _path];
    serverIdentity4 = [_path6 serverIdentity];
    provider2 = [serverIdentity4 provider];
    [v13 relateProvider:provider2];
  }

  return v13;
}

+ (id)posterDeleted:(id)deleted
{
  deletedCopy = deleted;
  _path = [deletedCopy _path];
  isServerPosterPath = [_path isServerPosterPath];

  if ((isServerPosterPath & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterDeleted:a2];
  }

  v7 = objc_opt_new();
  [v7 setEventType:@"PBFPosterDataStoreEventTypePosterDeleted"];
  [v7 setFromValue:deletedCopy];
  [v7 setToValue:0];
  _path2 = [deletedCopy _path];
  serverIdentity = [_path2 serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  [v7 relatePoster:posterUUID];

  _path3 = [deletedCopy _path];
  serverIdentity2 = [_path3 serverIdentity];
  provider = [serverIdentity2 provider];
  [v7 relateProvider:provider];

  return v7;
}

+ (id)posterAdded:(id)added
{
  addedCopy = added;
  _path = [addedCopy _path];
  isServerPosterPath = [_path isServerPosterPath];

  if ((isServerPosterPath & 1) == 0)
  {
    [PBFPosterDataStoreEventBuilder posterAdded:a2];
  }

  v7 = objc_opt_new();
  [v7 setEventType:@"PBFPosterDataStoreEventTypePosterAdded"];
  [v7 setFromValue:0];
  [v7 setToValue:addedCopy];
  _path2 = [addedCopy _path];
  serverIdentity = [_path2 serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  [v7 relatePoster:posterUUID];

  _path3 = [addedCopy _path];
  serverIdentity2 = [_path3 serverIdentity];
  provider = [serverIdentity2 provider];
  [v7 relateProvider:provider];

  return v7;
}

+ (id)postersReorderedFrom:(id)from to:(id)to
{
  v43 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v7 = objc_opt_new();
  [v7 setEventType:@"PBFPosterDataStoreEventTypePostersReordered"];
  [v7 setFromValue:fromCopy];
  [v7 setToValue:toCopy];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = fromCopy;
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
        _path = [v13 _path];
        serverIdentity = [_path serverIdentity];
        posterUUID = [serverIdentity posterUUID];
        [v7 relatePoster:posterUUID];

        _path2 = [v13 _path];
        serverIdentity2 = [_path2 serverIdentity];
        provider = [serverIdentity2 provider];
        [v7 relateProvider:provider];
      }

      v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v10);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = toCopy;
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
        _path3 = [v25 _path];
        serverIdentity3 = [_path3 serverIdentity];
        posterUUID2 = [serverIdentity3 posterUUID];
        [v7 relatePoster:posterUUID2];

        _path4 = [v25 _path];
        serverIdentity4 = [_path4 serverIdentity];
        provider2 = [serverIdentity4 provider];
        [v7 relateProvider:provider2];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }

  return v7;
}

+ (id)activeChargerIdentifierDidUpdate:(id)update from:(id)from
{
  updateCopy = update;
  fromCopy = from;
  if (BSEqualStrings())
  {
    [PBFPosterDataStoreEventBuilder activeChargerIdentifierDidUpdate:a2 from:?];
  }

  v8 = objc_opt_new();
  [v8 setEventType:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"];
  [v8 setFromValue:fromCopy];
  [v8 setToValue:updateCopy];

  return v8;
}

+ (id)resetRole:(id)role
{
  roleCopy = role;
  v4 = objc_opt_new();
  [v4 setEventType:@"PBFPosterDataStoreEventTypeRoleCoordinatorReset"];
  [v4 setFromValue:roleCopy];
  [v4 setToValue:roleCopy];

  return v4;
}

- (void)setEventType:(id)type
{
  typeCopy = type;
  v5 = @"PBFPosterDataStoreEventTypeUnknown";
  if (typeCopy)
  {
    v5 = typeCopy;
  }

  eventType = self->_eventType;
  self->_eventType = &v5->isa;
}

- (void)relateProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    relatedProviders = self->_relatedProviders;
    v8 = providerCopy;
    if (!relatedProviders)
    {
      v6 = objc_opt_new();
      v7 = self->_relatedProviders;
      self->_relatedProviders = v6;

      relatedProviders = self->_relatedProviders;
    }

    [(NSMutableSet *)relatedProviders addObject:v8];
    providerCopy = v8;
  }
}

- (void)relatePoster:(id)poster
{
  posterCopy = poster;
  if (posterCopy)
  {
    relatedPosters = self->_relatedPosters;
    v8 = posterCopy;
    if (!relatedPosters)
    {
      v6 = objc_opt_new();
      v7 = self->_relatedPosters;
      self->_relatedPosters = v6;

      relatedPosters = self->_relatedPosters;
    }

    [(NSMutableSet *)relatedPosters addObject:v8];
    posterCopy = v8;
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

- (id)buildWithError:(id *)error
{
  v5 = [[PBFPosterDataStoreEvent alloc] initWithType:self->_eventType];
  [(PBFPosterDataStoreEvent *)v5 setRelatedProviders:self->_relatedProviders];
  [(PBFPosterDataStoreEvent *)v5 setRelatedPosters:self->_relatedPosters];
  [(PBFPosterDataStoreEvent *)v5 setUserInfo:self->_userInfo];
  [(PBFPosterDataStoreEvent *)v5 setToValue:self->_toValue];
  [(PBFPosterDataStoreEvent *)v5 setFromValue:self->_fromValue];
  if ([(PBFPosterDataStoreEvent *)v5 isValidWithError:error])
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