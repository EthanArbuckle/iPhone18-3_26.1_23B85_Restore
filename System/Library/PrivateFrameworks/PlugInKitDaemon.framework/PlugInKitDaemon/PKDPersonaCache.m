@interface PKDPersonaCache
- (BOOL)_lock_resyncFromUserPersonaAttributes:(id)a3;
- (NSDictionary)lock_bundleToPersonasMap;
- (NSNumber)personalPersonaID;
- (NSNumber)systemPersonaID;
- (PKDPersona)lock_personalPersona;
- (PKDPersona)lock_systemPersona;
- (PKDPersonaCache)initWithExternalProviders:(id)a3;
- (id)_lock_personasForBundleIdentifier:(id)a3;
- (id)personasForBundleIdentifier:(id)a3 error:(id *)a4;
- (void)_lock_flush;
- (void)_lock_refreshFromUserManagementIfNecessary;
- (void)_lock_resync;
@end

@implementation PKDPersonaCache

- (void)_lock_refreshFromUserManagementIfNecessary
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (+[PKDPersona personasAreSupported])
  {
    v3 = [(PKDPersonaCache *)self external];
    v4 = [v3 um];
    v11 = 0;
    v5 = [v4 personaGenerationIdentifierWithError:&v11];
    v6 = v11;

    if (v5)
    {
      v7 = _lock_refreshFromUserManagementIfNecessary_savedGenerationID;
      v8 = pklog_handle_for_category();
      v9 = v8;
      if (v5 == v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v13 = v5;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "using saved generation ID: %qu", buf, 0xCu);
        }

        goto LABEL_14;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = v5;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "got new generation ID: %qu, flushing cache", buf, 0xCu);
      }

      _lock_refreshFromUserManagementIfNecessary_savedGenerationID = v5;
    }

    else
    {
      v10 = pklog_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PKDPersonaCache _lock_refreshFromUserManagementIfNecessary];
      }
    }

    [(PKDPersonaCache *)self _lock_flush];
LABEL_14:
  }
}

- (NSDictionary)lock_bundleToPersonasMap
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_bundleToPersonasMap)
  {
    [(PKDPersonaCache *)self _lock_resync];
  }

  lock_bundleToPersonasMap = self->_lock_bundleToPersonasMap;

  return lock_bundleToPersonasMap;
}

- (PKDPersona)lock_personalPersona
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_personalPersona)
  {
    [(PKDPersonaCache *)self _lock_resync];
  }

  lock_personalPersona = self->_lock_personalPersona;

  return lock_personalPersona;
}

- (PKDPersonaCache)initWithExternalProviders:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKDPersonaCache;
  v6 = [(PKDPersonaCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_external, a3);
    lock_bundleToPersonasMap = v7->_lock_bundleToPersonasMap;
    v7->_lock_bundleToPersonasMap = 0;

    lock_personalPersona = v7->_lock_personalPersona;
    v7->_lock_personalPersona = 0;

    lock_systemPersona = v7->_lock_systemPersona;
    v7->_lock_systemPersona = 0;

    v7->_lock_isSyncedSuccessfully = 0;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (NSNumber)personalPersonaID
{
  os_unfair_lock_lock(&self->_lock);
  [(PKDPersonaCache *)self _lock_refreshFromUserManagementIfNecessary];
  v3 = [(PKDPersonaCache *)self lock_personalPersona];
  v4 = [v3 personaID];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSNumber)systemPersonaID
{
  os_unfair_lock_lock(&self->_lock);
  [(PKDPersonaCache *)self _lock_refreshFromUserManagementIfNecessary];
  v3 = [(PKDPersonaCache *)self lock_systemPersona];
  v4 = [v3 personaID];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)personasForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PKDPersonaCache *)self _lock_refreshFromUserManagementIfNecessary];
  v7 = [(PKDPersonaCache *)self _lock_personasForBundleIdentifier:v6];

  if (a4)
  {
    lock_isSyncedSuccessfully = self->_lock_isSyncedSuccessfully;
    if (lock_isSyncedSuccessfully)
    {
      v9 = 0;
    }

    else
    {
      v9 = pkError();
    }

    objc_storeStrong(a4, v9);
    if (!lock_isSyncedSuccessfully)
    {
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)_lock_flush
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_bundleToPersonasMap = self->_lock_bundleToPersonasMap;
  self->_lock_bundleToPersonasMap = 0;

  lock_personalPersona = self->_lock_personalPersona;
  self->_lock_personalPersona = 0;

  lock_systemPersona = self->_lock_systemPersona;
  self->_lock_systemPersona = 0;

  self->_lock_isSyncedSuccessfully = 0;
}

- (PKDPersona)lock_systemPersona
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_systemPersona)
  {
    [(PKDPersonaCache *)self _lock_resync];
  }

  lock_systemPersona = self->_lock_systemPersona;

  return lock_systemPersona;
}

- (id)_lock_personasForBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(PKDPersonaCache *)self lock_bundleToPersonasMap];
  v6 = [v5 objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = v6;
    v8 = pklog_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Mapped bundleID %{public}@ to personas: %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v9 = [(PKDPersonaCache *)self lock_personalPersona];
    v8 = v9;
    if (v9)
    {
      v10 = [v9 personaID];
      v11 = v10 != 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v7 = [NSSet setWithObject:v8];
      v12 = pklog_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = v4;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Mapped bundleID %{public}@ to personal: %{public}@", &v14, 0x16u);
      }
    }

    else
    {
      v12 = pklog_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v4;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Mapped bundleID %{public}@ to nothing", &v14, 0xCu);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (void)_lock_resync
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unexpected error from listAllPersonaAttributesWithError: %{public}@", &v2, 0xCu);
}

- (BOOL)_lock_resyncFromUserPersonaAttributes:(id)a3
{
  v4 = a3;
  v40 = self;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = +[NSMutableDictionary dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v6)
  {
    v43 = 0;
    v7 = 0;
    v8 = *v56;
LABEL_3:
    v9 = 0;
    if (v6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    while (1)
    {
      if (*v56 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v55 + 1) + 8 * v9);
      if ([v11 isPersonalPersona])
      {
        v12 = [PKDPersona personaWithUserPersonaAttributes:v11];

        v13 = pklog_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v12;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Created personal persona: %@", buf, 0xCu);
        }

        v7 = v12;
      }

      if ([v11 isSystemPersona])
      {
        v14 = [PKDPersona personaWithUserPersonaAttributes:v11];

        v15 = pklog_handle_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v14;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Created system persona: %@", buf, 0xCu);
        }

        v43 = v14;
      }

      if (v7 && v43)
      {
        break;
      }

      if (v10 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v43 = 0;
    v7 = 0;
  }

  if (!v7)
  {
    p_super = pklog_handle_for_category();
    v16 = v43;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      [PKDPersonaCache _lock_resyncFromUserPersonaAttributes:];
    }

    goto LABEL_66;
  }

  v16 = v43;
  if (!v43)
  {
    p_super = pklog_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      [PKDPersonaCache _lock_resyncFromUserPersonaAttributes:];
    }

LABEL_66:
    v37 = 0;
    goto LABEL_67;
  }

  v39 = v7;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = obj;
  v18 = [v17 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v18)
  {
    v45 = *v52;
    v42 = v17;
    do
    {
      v19 = 0;
      if (v18 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18;
      }

      v46 = v20;
      do
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v51 + 1) + 8 * v19);
        if ([v22 isEnterprisePersona])
        {
          v23 = [PKDPersona personaWithUserPersonaAttributes:v22];
          v24 = pklog_handle_for_category();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v61 = v23;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Created enterprise persona: %@", buf, 0xCu);
          }
        }

        else
        {
          v23 = 0;
        }

        if (([v22 isUniversalPersona] & 1) != 0 || objc_msgSend(v22, "isSystemPersona"))
        {
          v25 = v16;

          v23 = v25;
        }

        if (v23)
        {
          v21 = [v22 userPersonaBundleIDList];
          v26 = pklog_handle_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v22 userPersonaUniqueString];
            *buf = 138543618;
            v61 = v27;
            v62 = 2114;
            v63 = v21;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Fetched bundle ID list for <%{public}@>: %{public}@", buf, 0x16u);
          }

          if (v21 && [v21 count])
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v44 = v21;
            v28 = v21;
            v29 = [v28 countByEnumeratingWithState:&v47 objects:v59 count:16];
            if (v29)
            {
              v30 = *v48;
              do
              {
                v31 = 0;
                if (v29 <= 1)
                {
                  v32 = 1;
                }

                else
                {
                  v32 = v29;
                }

                do
                {
                  if (*v48 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v47 + 1) + 8 * v31);
                  v34 = [v5 objectForKeyedSubscript:v33];
                  if (!v34)
                  {
                    v34 = +[NSMutableSet set];
                    [v5 setObject:v34 forKeyedSubscript:v33];
                  }

                  [v34 addObject:v23];

                  ++v31;
                }

                while (v32 != v31);
                v29 = [v28 countByEnumeratingWithState:&v47 objects:v59 count:16];
              }

              while (v29);
            }

            v17 = v42;
            v16 = v43;
            v21 = v44;
          }
        }

        ++v19;
      }

      while (v19 != v46);
      v18 = [v17 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v18);
  }

  v7 = v39;
  objc_storeStrong(&v40->_lock_personalPersona, v39);
  objc_storeStrong(&v40->_lock_systemPersona, v16);
  v35 = [v5 copy];
  p_super = &v40->_lock_bundleToPersonasMap->super;
  v40->_lock_bundleToPersonasMap = v35;
  v37 = 1;
LABEL_67:

  return v37;
}

@end