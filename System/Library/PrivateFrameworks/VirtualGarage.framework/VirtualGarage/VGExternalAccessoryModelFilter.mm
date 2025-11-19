@interface VGExternalAccessoryModelFilter
- (BOOL)allowsVehicleWithModelId:(id)a3 firmwareId:(id)a4 year:(id)a5 model:(id)a6;
- (NSArray)denylist;
- (NSArray)modelIdAllowlist;
- (VGExternalAccessoryModelFilter)init;
- (void)_initializeAllowAndDenylists;
- (void)dealloc;
- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5;
@end

@implementation VGExternalAccessoryModelFilter

- (VGExternalAccessoryModelFilter)init
{
  v5.receiver = self;
  v5.super_class = VGExternalAccessoryModelFilter;
  v2 = [(VGExternalAccessoryModelFilter *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D0ECD0] modernManager];
    [v3 addTileGroupObserver:v2 queue:MEMORY[0x277D85CD0]];

    [(VGExternalAccessoryModelFilter *)v2 _initializeAllowAndDenylists];
  }

  return v2;
}

- (void)_initializeAllowAndDenylists
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = VGAllowlistPayload();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = GEOConfigGetString();
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = 0x277CBE000uLL;
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v60 = self;
      v62 = v4;
      v9 = objc_opt_new();
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v71 objects:&v81 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v72;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v72 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v71 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 addObject:v15];
            }

            else
            {
              v16 = VGGetExternalAccessoryModelFilterLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v5;
                _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_FAULT, "Encountered a non-number in payload: %@", &buf, 0xCu);
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v71 objects:&v81 count:16];
        }

        while (v12);
      }

      v17 = [v9 copy];
      self = v60;
      v4 = v62;
      v8 = 0x277CBE000;
    }

    else
    {
      v9 = VGGetExternalAccessoryModelFilterLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v81 = 138412290;
        v82 = v7;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_FAULT, "Parsing of allowlist failed. allowlistedModelIds were in an unexpected format: %@", &v81, 0xCu);
      }

      v17 = 0;
    }

    modelIdAllowlist = self->_modelIdAllowlist;
    self->_modelIdAllowlist = v17;

    v19 = v5;
    v20 = GEOConfigGetString();
    v68 = v19;
    v21 = [(VGDenylistEntry *)v19 objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = *(v8 + 2656);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = self;
        v63 = v4;
        v64 = objc_opt_new();
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v59 = v21;
        obj = v21;
        v23 = [obj countByEnumeratingWithState:&v71 objects:&v81 count:16];
        if (!v23)
        {
          goto LABEL_54;
        }

        v24 = v23;
        v25 = *v72;
        v65 = *v72;
        while (1)
        {
          v26 = 0;
          v66 = v24;
          do
          {
            if (*v72 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v71 + 1) + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *&buf = MEMORY[0x277D85DD0];
              *(&buf + 1) = 3221225472;
              v76 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_34;
              v77 = &unk_279E26998;
              v78 = v68;
              v28 = MEMORY[0x2743B8310](&buf);
              v29 = 1;
              v70 = 1;
              v30 = GEOConfigGetString();
              v31 = objc_opt_class();
              v69 = (v28)[2](v28, v30, v31, v27, &v70);

              v32 = GEOConfigGetString();
              v33 = *(v8 + 2656);
              v34 = objc_opt_class();
              v35 = (v28)[2](v28, v32, v34, v27, &v70);

              if (v35)
              {
                v29 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(v35);
              }

              v70 &= v29;
              v36 = GEOConfigGetString();
              v37 = v8;
              v38 = *(v8 + 2656);
              v39 = objc_opt_class();
              v40 = (v28)[2](v28, v36, v39, v27, &v70);

              if (v40)
              {
                v41 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(v40);
              }

              else
              {
                v41 = 1;
              }

              v70 &= v41;
              v43 = GEOConfigGetString();
              v44 = *(v37 + 2656);
              v45 = objc_opt_class();
              v46 = (v28)[2](v28, v43, v45, v27, &v70);

              if (v46)
              {
                v47 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(v46);
              }

              else
              {
                v47 = 1;
              }

              v48 = (v47 & v70) == 0;
              v70 &= v47;
              v25 = v65;
              if (v48)
              {
                v49 = VGGetExternalAccessoryModelFilterLog();
                if (os_log_type_enabled(&v49->super, OS_LOG_TYPE_ERROR))
                {
                  *v79 = 138412290;
                  v80 = v27;
                  p_super = &v49->super;
                  v51 = OS_LOG_TYPE_ERROR;
                  v52 = "Encountered malformed configuration: %@. Will skip it.";
LABEL_47:
                  _os_log_impl(&dword_270EC1000, p_super, v51, v52, v79, 0xCu);
                }
              }

              else if (v69 || v35 || v40 || v46)
              {
                v49 = [[VGDenylistEntry alloc] initWithModelId:v69 firmwareIds:v35 years:v40 models:v46];
                v53 = VGGetExternalAccessoryModelFilterLog();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                {
                  *v79 = 138412290;
                  v80 = v49;
                  _os_log_impl(&dword_270EC1000, v53, OS_LOG_TYPE_INFO, "Adding new entry to iAP2 denylist: %@", v79, 0xCu);
                }

                [v64 addObject:v49];
              }

              else
              {
                v49 = VGGetExternalAccessoryModelFilterLog();
                if (os_log_type_enabled(&v49->super, OS_LOG_TYPE_FAULT))
                {
                  *v79 = 138412290;
                  v80 = v27;
                  p_super = &v49->super;
                  v51 = OS_LOG_TYPE_FAULT;
                  v52 = "Encountered a configuration without any parameters: %@. Will skip it.";
                  goto LABEL_47;
                }
              }

              v42 = v78;
              v8 = v37;
              v24 = v66;
              goto LABEL_52;
            }

            v42 = VGGetExternalAccessoryModelFilterLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
            {
              *v79 = 138412290;
              v80 = v68;
              _os_log_impl(&dword_270EC1000, v42, OS_LOG_TYPE_FAULT, "Encountered a non-dictionary in payload: %@", v79, 0xCu);
            }

LABEL_52:

            ++v26;
          }

          while (v24 != v26);
          v24 = [obj countByEnumeratingWithState:&v71 objects:&v81 count:16];
          if (!v24)
          {
LABEL_54:

            v54 = v64;
            v55 = [v64 copy];
            self = v61;
            v4 = v63;
            v21 = v59;
            goto LABEL_58;
          }
        }
      }
    }

    v54 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      v81 = 138412290;
      v82 = v21;
      _os_log_impl(&dword_270EC1000, v54, OS_LOG_TYPE_FAULT, "Parsing of denylist failed. denylistedConfigurations were in an unexpected format: %@", &v81, 0xCu);
    }

    v55 = 0;
LABEL_58:

    denylist = self->_denylist;
    self->_denylist = v55;
  }

  else
  {
    v57 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v81) = 0;
      _os_log_impl(&dword_270EC1000, v57, OS_LOG_TYPE_ERROR, "Parsing of allowlist failed. Payload was nil.", &v81, 2u);
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = VGGetExternalAccessoryModelFilterLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Geo active tile group changed from %@ to %@; rebuilding allow and deny lists", &v11, 0x16u);
  }

  [(VGExternalAccessoryModelFilter *)self _initializeAllowAndDenylists];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowsVehicleWithModelId:(id)a3 firmwareId:(id)a4 year:(id)a5 model:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v11 = [(VGExternalAccessoryModelFilter *)self modelIdAllowlist];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke;
  v46[3] = &unk_279E269C0;
  v39 = v10;
  v47 = v39;
  v48 = &v49;
  [v11 enumerateObjectsUsingBlock:v46];

  if (v50[3])
  {
    v12 = [VGDenylistEntry alloc];
    if (v40)
    {
      v59 = v40;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    if (v41)
    {
      v58 = v41;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    }

    else
    {
      v27 = MEMORY[0x277CBEBF8];
    }

    if (v42)
    {
      v57 = v42;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
    }

    v29 = [(VGDenylistEntry *)v12 initWithModelId:v39 firmwareIds:v13 years:v27 models:v28];
    if (v42)
    {
    }

    if (v41)
    {
    }

    if (v40)
    {
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v30 = [(VGExternalAccessoryModelFilter *)self denylist];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke_41;
    v43[3] = &unk_279E269E8;
    v38 = v29;
    v44 = v38;
    v45 = &v64;
    [v30 enumerateObjectsUsingBlock:v43];

    v31 = *(v65 + 24);
    v32 = v31 ^ 1;
    _Block_object_dispose(&v64, 8);
  }

  else
  {
    v38 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_modelIdAllowlist;
      v37 = v14;
      if (v14)
      {
        if ([(NSArray *)v14 count])
        {
          v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v37, "count")}];
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v16 = v37;
          v17 = [(NSArray *)v16 countByEnumeratingWithState:&v53 objects:&v64 count:16];
          if (v17)
          {
            v18 = *v54;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v54 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v53 + 1) + 8 * i);
                if (v20)
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v20];
                }

                else
                {
                  v21 = @"<nil>";
                }

                [v15 addObject:v21];
              }

              v17 = [(NSArray *)v16 countByEnumeratingWithState:&v53 objects:&v64 count:16];
            }

            while (v17);
          }

          v22 = [(NSArray *)v16 componentsJoinedByString:@", "];
          v23 = MEMORY[0x277CCACA8];
          v24 = v16;
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

          v26 = [v23 stringWithFormat:@"%@ [%@]", v25, v22];
        }

        else
        {
          v33 = MEMORY[0x277CCACA8];
          v34 = v37;
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v34];

          v26 = [v33 stringWithFormat:@"%@ (empty)", v15];
        }
      }

      else
      {
        v26 = @"<nil>";
      }

      *buf = 138412546;
      v61 = v39;
      v62 = 2112;
      v63 = v26;
      _os_log_impl(&dword_270EC1000, v38, OS_LOG_TYPE_ERROR, "allowsVehicleWithModelId: denied modelId: %@ as it is not in the allowlist: %@", buf, 0x16u);
    }

    v32 = 0;
  }

  _Block_object_dispose(&v49, 8);
  v35 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

uint64_t __81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke_41(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 isSupersetOfEntry:*(a1 + 32)])
  {
    v7 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "allowsVehicleWithModelId: denied entry: %@ as it matches entry from denylist: %@", &v10, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_34(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:v8];
  if (v10 && (v11 = v10, [v9 objectForKeyedSubscript:v8], v12 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) == 0))
  {
    v15 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 32);
      v19 = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_FAULT, "Encountered an invalid value under key: %@ in payload: %@", &v19, 0x16u);
    }

    v14 = 0;
    *a5 = 0;
  }

  else
  {
    v14 = [v9 objectForKeyedSubscript:v8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 0;
            goto LABEL_13;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_13:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSArray)denylist
{
  denylist = self->_denylist;
  if (!denylist)
  {
    [(VGExternalAccessoryModelFilter *)self _initializeAllowAndDenylists];
    denylist = self->_denylist;
  }

  return denylist;
}

- (NSArray)modelIdAllowlist
{
  modelIdAllowlist = self->_modelIdAllowlist;
  if (!modelIdAllowlist)
  {
    [(VGExternalAccessoryModelFilter *)self _initializeAllowAndDenylists];
    modelIdAllowlist = self->_modelIdAllowlist;
  }

  return modelIdAllowlist;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D0ECD0] modernManager];
  [v3 removeTileGroupObserver:self];

  v4.receiver = self;
  v4.super_class = VGExternalAccessoryModelFilter;
  [(VGExternalAccessoryModelFilter *)&v4 dealloc];
}

@end