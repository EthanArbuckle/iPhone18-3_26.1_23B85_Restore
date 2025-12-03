@interface STAttributedEntityResolver
- (STAttributedEntityResolver)init;
- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)localizations;
- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)localizations identityResolver:(id)resolver;
- (id)_localizedSystemStatusServerString:(void *)string;
- (id)beginBatchResolutionSession;
- (id)resolveEntity:(id)entity;
- (void)setDynamicAttributions:(id)attributions;
@end

@implementation STAttributedEntityResolver

- (STAttributedEntityResolver)init
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  v5 = [(STAttributedEntityResolver *)self initWithPreferredLocalizations:preferredLocalizations];

  return v5;
}

- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)localizations
{
  localizationsCopy = localizations;
  v5 = objc_alloc_init(STExecutableIdentityResolver);
  v6 = [(STAttributedEntityResolver *)self initWithPreferredLocalizations:localizationsCopy identityResolver:v5];

  return v6;
}

- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)localizations identityResolver:(id)resolver
{
  localizationsCopy = localizations;
  resolverCopy = resolver;
  v14.receiver = self;
  v14.super_class = STAttributedEntityResolver;
  v8 = [(STAttributedEntityResolver *)&v14 init];
  if (v8)
  {
    v9 = [localizationsCopy copy];
    preferredLocalizations = v8->_preferredLocalizations;
    v8->_preferredLocalizations = v9;

    objc_storeStrong(&v8->_identityResolver, resolver);
    v11 = objc_alloc_init(STReferenceCountedCache);
    cache = v8->_cache;
    v8->_cache = v11;
  }

  return v8;
}

- (void)setDynamicAttributions:(id)attributions
{
  v63 = *MEMORY[0x277D85DE8];
  attributionsCopy = attributions;
  if (STSystemStatusIsInternalLoggingEnabled())
  {
    v5 = STSystemStatusLogEntityResolving();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      dynamicAttributions = [(STAttributedEntityResolver *)self dynamicAttributions];
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = dynamicAttributions;
      *&buf[22] = 2114;
      *&buf[24] = attributionsCopy;
      _os_log_impl(&dword_26C4AD000, v5, OS_LOG_TYPE_DEFAULT, "Entity resolver: %{public}@ -- updating dynamic attributions from: %{public}@ to: %{public}@", buf, 0x20u);
    }
  }

  dynamicAttributions2 = [(STAttributedEntityResolver *)self dynamicAttributions];
  v8 = [dynamicAttributions2 isEqualToArray:attributionsCopy];

  if ((v8 & 1) == 0)
  {
    dynamicAttributions3 = [(STAttributedEntityResolver *)self dynamicAttributions];
    v10 = [dynamicAttributions3 mutableCopy];
    v11 = [attributionsCopy copy];
    dynamicAttributions = self->_dynamicAttributions;
    self->_dynamicAttributions = v11;

    if (attributionsCopy)
    {
      [v10 removeObjectsInArray:attributionsCopy];
    }

    v46 = attributionsCopy;
    v13 = [attributionsCopy mutableCopy];
    v14 = v13;
    if (dynamicAttributions3)
    {
      [v13 removeObjectsInArray:dynamicAttributions3];
    }

    v45 = dynamicAttributions3;
    v15 = [MEMORY[0x277CBEB58] set];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v56;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v56 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v55 + 1) + 8 * i);
          v22 = objc_alloc(MEMORY[0x277D6B980]);
          if (v21)
          {
            [v21 clientAuditToken];
          }

          else
          {
            memset(buf, 0, 32);
          }

          v23 = [v22 initWithAuditToken:buf];
          [v15 addObject:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v18);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v24 = v14;
    v25 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v52;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v51 + 1) + 8 * j);
          v30 = objc_alloc(MEMORY[0x277D6B980]);
          if (v29)
          {
            [v29 clientAuditToken];
          }

          else
          {
            memset(buf, 0, 32);
          }

          v31 = [v30 initWithAuditToken:buf];
          [v15 addObject:v31];
        }

        v26 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v26);
    }

    v44 = v16;
    if (self)
    {
      cache = self->_cache;
    }

    else
    {
      cache = 0;
    }

    v33 = cache;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = v15;
    v35 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        v38 = 0;
        do
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(v34);
          }

          if (self)
          {
            identityResolver = self->_identityResolver;
          }

          else
          {
            identityResolver = 0;
          }

          v40 = [(STExecutableIdentityResolver *)identityResolver resolvedIdentityForIdentity:*(*(&v47 + 1) + 8 * v38)];
          v41 = [objc_alloc(MEMORY[0x277D6B8F0]) initWithExecutableIdentity:v40];
          [(STReferenceCountedCache *)v33 clearObjectForKey:v41];

          ++v38;
        }

        while (v36 != v38);
        v42 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
        v36 = v42;
      }

      while (v42);
    }

    attributionsCopy = v46;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (id)beginBatchResolutionSession
{
  v3 = [STAttributedEntityResolutionSession alloc];
  if (self)
  {
    identityResolver = self->_identityResolver;
  }

  else
  {
    identityResolver = 0;
  }

  v5 = identityResolver;
  beginBatchResolutionSession = [(STExecutableIdentityResolver *)v5 beginBatchResolutionSession];
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v8 = [(STAttributedEntityResolutionSession *)v3 initWithEntityResolver:self identityResolver:beginBatchResolutionSession cache:cache];

  return v8;
}

- (id)resolveEntity:(id)entity
{
  v107 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v6 = [(STReferenceCountedCache *)cache cachedObjectForKey:entityCopy];
  if (!v6)
  {
    if (self)
    {
      identityResolver = self->_identityResolver;
    }

    else
    {
      identityResolver = 0;
    }

    v8 = identityResolver;
    executableIdentity = [entityCopy executableIdentity];
    v10 = [(STExecutableIdentityResolver *)v8 resolvedIdentityForIdentity:executableIdentity];

    localizedDisplayName = [entityCopy localizedDisplayName];
    localizedExecutableDisplayName = [entityCopy localizedExecutableDisplayName];
    v13 = localizedExecutableDisplayName;
    if (localizedDisplayName)
    {
      v14 = localizedExecutableDisplayName == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (!v14)
    {
      v32 = objc_alloc(MEMORY[0x277D6B8F0]);
      website = [entityCopy website];
      v34 = [v32 initWithExecutableIdentity:v10 website:website systemService:objc_msgSend(entityCopy localizedDisplayName:"isSystemService") localizedExecutableDisplayName:{localizedDisplayName, v13}];

      v35 = [objc_alloc(MEMORY[0x277D6B8E8]) initWithAttributedEntity:v34];
      v6 = 0;
      goto LABEL_102;
    }

    v89 = localizedDisplayName;
    v94 = v8;
    isSystemExecutable = [v10 isSystemExecutable];
    executablePath = [v10 executablePath];
    dynamicAttributions = [(STAttributedEntityResolver *)self dynamicAttributions];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __44__STAttributedEntityResolver_resolveEntity___block_invoke;
    v103[3] = &unk_279D34FC0;
    v102 = executablePath;
    v104 = v102;
    v18 = [dynamicAttributions bs_firstObjectPassingTest:v103];

    v92 = v10;
    v19 = v10;
    website2 = [entityCopy website];
    localizationKey = [v18 localizationKey];
    v21 = website2;
    v22 = v19;
    v91 = v15;
    v97 = v18;
    v98 = website2;
    if (!v18 || (v21 = website2, v22 = v19, localizationKey))
    {
LABEL_26:
      v101 = v21;
      bundlePath = [v19 bundlePath];
      v93 = v22;
      if ([v22 isEqual:v19])
      {
        if (bundlePath)
        {
          v37 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithPath:bundlePath];
          v90 = 0;
          v96 = bundlePath;
        }

        else
        {
          v90 = 0;
          v96 = 0;
          v37 = 0;
        }
      }

      else
      {
        executablePath2 = [v22 executablePath];

        bundlePath2 = [v22 bundlePath];

        if (bundlePath2)
        {
          v37 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithPath:bundlePath2];
        }

        else
        {
          v37 = 0;
        }

        v96 = bundlePath2;
        v90 = [objc_alloc(MEMORY[0x277D6B8F0]) initWithExecutableIdentity:v19 website:website2 systemService:objc_msgSend(entityCopy localizedDisplayName:"isSystemService") localizedExecutableDisplayName:{0, 0}];
        v102 = executablePath2;
      }

      v40 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];
      if (v37)
      {
        if (isSystemExecutable)
        {
          v41 = @"_STAttributionDisplayName";
          if (localizationKey)
          {
            v41 = localizationKey;
          }

          v42 = v41;
          infoDictionary = [v37 infoDictionary];
          v44 = [infoDictionary objectForKey:v42];
          v45 = v44;
          if (v44)
          {
            v46 = v44;
          }

          else
          {
            v46 = v40;
          }

          v47 = v46;

          cfBundle = [v37 cfBundle];
          preferredLocalizations = [(STAttributedEntityResolver *)self preferredLocalizations];
          v50 = STAttributedEntityResolverLocalizedStringFromTableInCFBundle(v42, cfBundle, v47, preferredLocalizations);

          v13 = v50;
        }

        if (!v13 || [v13 isEqualToString:v40])
        {
          infoDictionary2 = [v37 infoDictionary];
          v52 = [infoDictionary2 objectForKey:@"CFBundleDisplayName"];
          v53 = v52;
          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v40;
          }

          v55 = v54;

          cfBundle2 = [v37 cfBundle];
          preferredLocalizations2 = [(STAttributedEntityResolver *)self preferredLocalizations];
          v58 = STAttributedEntityResolverLocalizedStringFromTableInCFBundle(@"CFBundleDisplayName", cfBundle2, v55, preferredLocalizations2);

          v13 = v58;
        }

        if ([v13 isEqualToString:v40])
        {
          infoDictionary3 = [v37 infoDictionary];
          v60 = [infoDictionary3 objectForKey:@"CFBundleName"];
          v61 = v60;
          if (v60)
          {
            v62 = v60;
          }

          else
          {
            v62 = v40;
          }

          v63 = v62;

          cfBundle3 = [v37 cfBundle];
          preferredLocalizations3 = [(STAttributedEntityResolver *)self preferredLocalizations];
          v66 = STAttributedEntityResolverLocalizedStringFromTableInCFBundle(@"CFBundleName", cfBundle3, v63, preferredLocalizations3);

          v13 = v66;
        }

        website2 = v98;
      }

      if ((isSystemExecutable & 1) == 0 && (!v13 || [v13 isEqualToString:v40]))
      {
        v67 = v96 ? v96 : v102;
        if (v67)
        {
          lastPathComponent = [v67 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          v70 = STSystemStatusLogEntityResolving();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v106 = v93;
            _os_log_fault_impl(&dword_26C4AD000, v70, OS_LOG_TYPE_FAULT, "Generating name from path: failed to create bundle for executable with identity %{public}@", buf, 0xCu);
          }

          v13 = stringByDeletingPathExtension;
        }
      }

      isSystemService = [entityCopy isSystemService];
      if (isSystemService && (!v13 || [v13 isEqualToString:v40]))
      {
        v72 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];

        v13 = v72;
        if (!isSystemExecutable)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v72 = 0;
        if (!isSystemExecutable)
        {
          goto LABEL_78;
        }
      }

      if (v13 && ![v13 isEqualToString:v40])
      {
        goto LABEL_79;
      }

      v73 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];

      v74 = STSystemStatusLogEntityResolving();
      v75 = v74;
      if (v96)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v106 = v93;
          _os_log_fault_impl(&dword_26C4AD000, v75, OS_LOG_TYPE_FAULT, "Failed to create bundle for system executable with identity %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v106 = v93;
        _os_log_impl(&dword_26C4AD000, v75, OS_LOG_TYPE_DEFAULT, "Failed to create bundle for system executable with identity %{public}@", buf, 0xCu);
      }

      v13 = v73;
      website2 = v98;
LABEL_78:
      if (!v13)
      {
LABEL_80:
        v76 = v40;

        v77 = STSystemStatusLogEntityResolving();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v106 = v93;
          _os_log_fault_impl(&dword_26C4AD000, v77, OS_LOG_TYPE_FAULT, "Failed to find any name for executable with identity %{public}@", buf, 0xCu);
        }

        v13 = v76;
        website2 = v98;
LABEL_83:
        v88 = v40;
        if (isSystemService)
        {
          if (v72)
          {
            v78 = v72;
            localizedDisplayName = v72;

            goto LABEL_101;
          }

          localizedDisplayName = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];
        }

        else
        {
          localizedDisplayName = v89;
        }

        v78 = v72;
        if (!localizedDisplayName)
        {
          formattedString = [v97 formattedString];
          if (formattedString)
          {
            v80 = formattedString;
            v81 = v13;
            if (self && [v80 containsString:@"%@"])
            {
              v82 = [v80 stringByReplacingOccurrencesOfString:@"%@" withString:v81];
            }

            else
            {
              v82 = 0;
            }

            if (v82)
            {
              localizedDisplayName = v82;

              goto LABEL_101;
            }
          }

          else if (v101)
          {
            v83 = MEMORY[0x277CCACA8];
            v84 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];
            localizedDisplayName = [v83 localizedStringWithFormat:v84, v101, v13, v88];

            if (localizedDisplayName)
            {
              goto LABEL_101;
            }
          }

          localizedDisplayName = v13;
        }

LABEL_101:
        v35 = v93;
        v85 = [objc_alloc(MEMORY[0x277D6B8F0]) initWithExecutableIdentity:v93 website:v101 systemService:objc_msgSend(entityCopy localizedDisplayName:"isSystemService") localizedExecutableDisplayName:{localizedDisplayName, v13}];
        v6 = [objc_alloc(MEMORY[0x277D6B8E8]) initWithAttributedEntity:v85 activeEntity:v90];

        v8 = v94;
        v10 = v92;
        v15 = v91;
LABEL_102:

        if (!v15)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

LABEL_79:
      if (![v13 isEqualToString:v40])
      {
        goto LABEL_83;
      }

      goto LABEL_80;
    }

    website3 = [v18 website];

    bundleIdentifier = [v18 bundleIdentifier];
    maskingClientExecutablePath = [v97 maskingClientExecutablePath];
    v25 = maskingClientExecutablePath;
    if (bundleIdentifier)
    {
      v26 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];
      if (v26)
      {
        v27 = v26;
        v28 = objc_alloc(MEMORY[0x277D6B980]);
        executableURL = [v27 executableURL];
        path = [executableURL path];
        v31 = [v28 initWithExecutablePath:path];

        website2 = v98;
        v22 = [(STExecutableIdentityResolver *)v94 resolvedIdentityForIdentity:v31];
      }

      else
      {
        v31 = STSystemStatusLogEntityResolving();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v106 = bundleIdentifier;
          _os_log_fault_impl(&dword_26C4AD000, v31, OS_LOG_TYPE_FAULT, "Failed to find app record for dynamic bundle ID: %{public}@", buf, 0xCu);
        }

        v27 = 0;
        v22 = v19;
      }
    }

    else
    {
      v22 = v19;
      if (!maskingClientExecutablePath)
      {
LABEL_25:

        v21 = website3;
        goto LABEL_26;
      }

      v27 = [objc_alloc(MEMORY[0x277D6B980]) initWithExecutablePath:maskingClientExecutablePath];
      v22 = [(STExecutableIdentityResolver *)v94 resolvedIdentityForIdentity:v27];
      v31 = v19;
    }

    goto LABEL_25;
  }

LABEL_103:
  v6 = v6;
  v35 = v6;
LABEL_104:

  v86 = *MEMORY[0x277D85DE8];

  return v35;
}

uint64_t __44__STAttributedEntityResolver_resolveEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientExecutablePath];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_localizedSystemStatusServerString:(void *)string
{
  v3 = a2;
  if (string)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    localizations = [v4 localizations];
    v6 = MEMORY[0x277CCA8D8];
    preferredLocalizations = [string preferredLocalizations];
    v8 = [v6 preferredLocalizationsFromArray:localizations forPreferences:preferredLocalizations];
    firstObject = [v8 firstObject];

    if (!firstObject || ([v4 localizedStringForKey:v3 value:0 table:@"SystemStatusServer" localization:firstObject], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [v4 localizedStringForKey:v3 value:&stru_287CFDAC8 table:@"SystemStatusServer"];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end