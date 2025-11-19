@interface STAttributedEntityResolver
- (STAttributedEntityResolver)init;
- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)a3;
- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)a3 identityResolver:(id)a4;
- (id)_localizedSystemStatusServerString:(void *)a1;
- (id)beginBatchResolutionSession;
- (id)resolveEntity:(id)a3;
- (void)setDynamicAttributions:(id)a3;
@end

@implementation STAttributedEntityResolver

- (STAttributedEntityResolver)init
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 preferredLocalizations];
  v5 = [(STAttributedEntityResolver *)self initWithPreferredLocalizations:v4];

  return v5;
}

- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(STExecutableIdentityResolver);
  v6 = [(STAttributedEntityResolver *)self initWithPreferredLocalizations:v4 identityResolver:v5];

  return v6;
}

- (STAttributedEntityResolver)initWithPreferredLocalizations:(id)a3 identityResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = STAttributedEntityResolver;
  v8 = [(STAttributedEntityResolver *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    preferredLocalizations = v8->_preferredLocalizations;
    v8->_preferredLocalizations = v9;

    objc_storeStrong(&v8->_identityResolver, a4);
    v11 = objc_alloc_init(STReferenceCountedCache);
    cache = v8->_cache;
    v8->_cache = v11;
  }

  return v8;
}

- (void)setDynamicAttributions:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (STSystemStatusIsInternalLoggingEnabled())
  {
    v5 = STSystemStatusLogEntityResolving();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(STAttributedEntityResolver *)self dynamicAttributions];
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      *&buf[24] = v4;
      _os_log_impl(&dword_26C4AD000, v5, OS_LOG_TYPE_DEFAULT, "Entity resolver: %{public}@ -- updating dynamic attributions from: %{public}@ to: %{public}@", buf, 0x20u);
    }
  }

  v7 = [(STAttributedEntityResolver *)self dynamicAttributions];
  v8 = [v7 isEqualToArray:v4];

  if ((v8 & 1) == 0)
  {
    v9 = [(STAttributedEntityResolver *)self dynamicAttributions];
    v10 = [v9 mutableCopy];
    v11 = [v4 copy];
    dynamicAttributions = self->_dynamicAttributions;
    self->_dynamicAttributions = v11;

    if (v4)
    {
      [v10 removeObjectsInArray:v4];
    }

    v46 = v4;
    v13 = [v4 mutableCopy];
    v14 = v13;
    if (v9)
    {
      [v13 removeObjectsInArray:v9];
    }

    v45 = v9;
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

    v4 = v46;
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
  v6 = [(STExecutableIdentityResolver *)v5 beginBatchResolutionSession];
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v8 = [(STAttributedEntityResolutionSession *)v3 initWithEntityResolver:self identityResolver:v6 cache:cache];

  return v8;
}

- (id)resolveEntity:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v6 = [(STReferenceCountedCache *)cache cachedObjectForKey:v4];
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
    v9 = [v4 executableIdentity];
    v10 = [(STExecutableIdentityResolver *)v8 resolvedIdentityForIdentity:v9];

    v11 = [v4 localizedDisplayName];
    v12 = [v4 localizedExecutableDisplayName];
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (!v14)
    {
      v32 = objc_alloc(MEMORY[0x277D6B8F0]);
      v33 = [v4 website];
      v34 = [v32 initWithExecutableIdentity:v10 website:v33 systemService:objc_msgSend(v4 localizedDisplayName:"isSystemService") localizedExecutableDisplayName:{v11, v13}];

      v35 = [objc_alloc(MEMORY[0x277D6B8E8]) initWithAttributedEntity:v34];
      v6 = 0;
      goto LABEL_102;
    }

    v89 = v11;
    v94 = v8;
    v95 = [v10 isSystemExecutable];
    v16 = [v10 executablePath];
    v17 = [(STAttributedEntityResolver *)self dynamicAttributions];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __44__STAttributedEntityResolver_resolveEntity___block_invoke;
    v103[3] = &unk_279D34FC0;
    v102 = v16;
    v104 = v102;
    v18 = [v17 bs_firstObjectPassingTest:v103];

    v92 = v10;
    v19 = v10;
    v20 = [v4 website];
    v99 = [v18 localizationKey];
    v21 = v20;
    v22 = v19;
    v91 = v15;
    v97 = v18;
    v98 = v20;
    if (!v18 || (v21 = v20, v22 = v19, v99))
    {
LABEL_26:
      v101 = v21;
      v36 = [v19 bundlePath];
      v93 = v22;
      if ([v22 isEqual:v19])
      {
        if (v36)
        {
          v37 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithPath:v36];
          v90 = 0;
          v96 = v36;
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
        v38 = [v22 executablePath];

        v39 = [v22 bundlePath];

        if (v39)
        {
          v37 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithPath:v39];
        }

        else
        {
          v37 = 0;
        }

        v96 = v39;
        v90 = [objc_alloc(MEMORY[0x277D6B8F0]) initWithExecutableIdentity:v19 website:v20 systemService:objc_msgSend(v4 localizedDisplayName:"isSystemService") localizedExecutableDisplayName:{0, 0}];
        v102 = v38;
      }

      v40 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];
      if (v37)
      {
        if (v95)
        {
          v41 = @"_STAttributionDisplayName";
          if (v99)
          {
            v41 = v99;
          }

          v42 = v41;
          v43 = [v37 infoDictionary];
          v44 = [v43 objectForKey:v42];
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

          v48 = [v37 cfBundle];
          v49 = [(STAttributedEntityResolver *)self preferredLocalizations];
          v50 = STAttributedEntityResolverLocalizedStringFromTableInCFBundle(v42, v48, v47, v49);

          v13 = v50;
        }

        if (!v13 || [v13 isEqualToString:v40])
        {
          v51 = [v37 infoDictionary];
          v52 = [v51 objectForKey:@"CFBundleDisplayName"];
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

          v56 = [v37 cfBundle];
          v57 = [(STAttributedEntityResolver *)self preferredLocalizations];
          v58 = STAttributedEntityResolverLocalizedStringFromTableInCFBundle(@"CFBundleDisplayName", v56, v55, v57);

          v13 = v58;
        }

        if ([v13 isEqualToString:v40])
        {
          v59 = [v37 infoDictionary];
          v60 = [v59 objectForKey:@"CFBundleName"];
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

          v64 = [v37 cfBundle];
          v65 = [(STAttributedEntityResolver *)self preferredLocalizations];
          v66 = STAttributedEntityResolverLocalizedStringFromTableInCFBundle(@"CFBundleName", v64, v63, v65);

          v13 = v66;
        }

        v20 = v98;
      }

      if ((v95 & 1) == 0 && (!v13 || [v13 isEqualToString:v40]))
      {
        v67 = v96 ? v96 : v102;
        if (v67)
        {
          v68 = [v67 lastPathComponent];
          v69 = [v68 stringByDeletingPathExtension];

          v70 = STSystemStatusLogEntityResolving();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v106 = v93;
            _os_log_fault_impl(&dword_26C4AD000, v70, OS_LOG_TYPE_FAULT, "Generating name from path: failed to create bundle for executable with identity %{public}@", buf, 0xCu);
          }

          v13 = v69;
        }
      }

      v71 = [v4 isSystemService];
      if (v71 && (!v13 || [v13 isEqualToString:v40]))
      {
        v72 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];

        v13 = v72;
        if (!v95)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v72 = 0;
        if (!v95)
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
      v20 = v98;
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
        v20 = v98;
LABEL_83:
        v88 = v40;
        if (v71)
        {
          if (v72)
          {
            v78 = v72;
            v11 = v72;

            goto LABEL_101;
          }

          v11 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];
        }

        else
        {
          v11 = v89;
        }

        v78 = v72;
        if (!v11)
        {
          v79 = [v97 formattedString];
          if (v79)
          {
            v80 = v79;
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
              v11 = v82;

              goto LABEL_101;
            }
          }

          else if (v101)
          {
            v83 = MEMORY[0x277CCACA8];
            v84 = [(STAttributedEntityResolver *)self _localizedSystemStatusServerString:?];
            v11 = [v83 localizedStringWithFormat:v84, v101, v13, v88];

            if (v11)
            {
              goto LABEL_101;
            }
          }

          v11 = v13;
        }

LABEL_101:
        v35 = v93;
        v85 = [objc_alloc(MEMORY[0x277D6B8F0]) initWithExecutableIdentity:v93 website:v101 systemService:objc_msgSend(v4 localizedDisplayName:"isSystemService") localizedExecutableDisplayName:{v11, v13}];
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

    v100 = [v18 website];

    v23 = [v18 bundleIdentifier];
    v24 = [v97 maskingClientExecutablePath];
    v25 = v24;
    if (v23)
    {
      v26 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v23 allowPlaceholder:0 error:0];
      if (v26)
      {
        v27 = v26;
        v28 = objc_alloc(MEMORY[0x277D6B980]);
        v29 = [v27 executableURL];
        v30 = [v29 path];
        v31 = [v28 initWithExecutablePath:v30];

        v20 = v98;
        v22 = [(STExecutableIdentityResolver *)v94 resolvedIdentityForIdentity:v31];
      }

      else
      {
        v31 = STSystemStatusLogEntityResolving();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v106 = v23;
          _os_log_fault_impl(&dword_26C4AD000, v31, OS_LOG_TYPE_FAULT, "Failed to find app record for dynamic bundle ID: %{public}@", buf, 0xCu);
        }

        v27 = 0;
        v22 = v19;
      }
    }

    else
    {
      v22 = v19;
      if (!v24)
      {
LABEL_25:

        v21 = v100;
        goto LABEL_26;
      }

      v27 = [objc_alloc(MEMORY[0x277D6B980]) initWithExecutablePath:v24];
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

- (id)_localizedSystemStatusServerString:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizations];
    v6 = MEMORY[0x277CCA8D8];
    v7 = [a1 preferredLocalizations];
    v8 = [v6 preferredLocalizationsFromArray:v5 forPreferences:v7];
    v9 = [v8 firstObject];

    if (!v9 || ([v4 localizedStringForKey:v3 value:0 table:@"SystemStatusServer" localization:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
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