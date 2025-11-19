@interface SHSheetContentDataSourceState
- (void)logDiagnosticProperties;
@end

@implementation SHSheetContentDataSourceState

- (void)logDiagnosticProperties
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v44 = 138412290;
    v45 = objc_opt_class();
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "<START %@>", &v44, 0xCu);
  }

  v4 = [(SHSheetContentDataSourceState *)self peopleIdentifiers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SHSheetContentDataSourceState *)self peopleIdentifiers];
      v44 = 138412290;
      v45 = v7;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "peopleIdentifiers%@", &v44, 0xCu);
    }
  }

  v8 = [(SHSheetContentDataSourceState *)self shareIdentifiers];
  v9 = [v8 count];

  if (v9)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SHSheetContentDataSourceState *)self shareIdentifiers];
      v44 = 138412290;
      v45 = v11;
      _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "shareIdentifiers:%@", &v44, 0xCu);
    }
  }

  v12 = [(SHSheetContentDataSourceState *)self heroActionIdentifiers];
  v13 = [v12 count];

  if (v13)
  {
    v14 = share_sheet_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(SHSheetContentDataSourceState *)self heroActionIdentifiers];
      v44 = 138412290;
      v45 = v15;
      _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "heroActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  v16 = [(SHSheetContentDataSourceState *)self informationalActionIdentifiers];
  v17 = [v16 count];

  if (v17)
  {
    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(SHSheetContentDataSourceState *)self informationalActionIdentifiers];
      v44 = 138412290;
      v45 = v19;
      _os_log_impl(&dword_18B359000, v18, OS_LOG_TYPE_DEFAULT, "informationalActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  v20 = [(SHSheetContentDataSourceState *)self favoriteActionIdentifiers];
  v21 = [v20 count];

  if (v21)
  {
    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(SHSheetContentDataSourceState *)self favoriteActionIdentifiers];
      v44 = 138412290;
      v45 = v23;
      _os_log_impl(&dword_18B359000, v22, OS_LOG_TYPE_DEFAULT, "favoriteActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  v24 = [(SHSheetContentDataSourceState *)self systemActionIdentifiers];
  v25 = [v24 count];

  if (v25)
  {
    v26 = share_sheet_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(SHSheetContentDataSourceState *)self systemActionIdentifiers];
      v44 = 138412290;
      v45 = v27;
      _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "systemActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  v28 = [(SHSheetContentDataSourceState *)self extensionActionIdentifiers];
  v29 = [v28 count];

  if (v29)
  {
    v30 = share_sheet_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(SHSheetContentDataSourceState *)self extensionActionIdentifiers];
      v44 = 138412290;
      v45 = v31;
      _os_log_impl(&dword_18B359000, v30, OS_LOG_TYPE_DEFAULT, "extensionActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  v32 = [(SHSheetContentDataSourceState *)self customSectionIdentifiers];
  v33 = [v32 count];

  if (v33)
  {
    v34 = share_sheet_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(SHSheetContentDataSourceState *)self customSectionIdentifiers];
      v44 = 138412290;
      v45 = v35;
      _os_log_impl(&dword_18B359000, v34, OS_LOG_TYPE_DEFAULT, "customSectionIdentifiers:%@", &v44, 0xCu);
    }
  }

  v36 = [(SHSheetContentDataSourceState *)self activitiesByUUID];
  v37 = [v36 count];

  if (v37)
  {
    v38 = share_sheet_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(SHSheetContentDataSourceState *)self activitiesByUUID];
      v44 = 138412290;
      v45 = v39;
      _os_log_impl(&dword_18B359000, v38, OS_LOG_TYPE_DEFAULT, "activitiesByUUID:%@", &v44, 0xCu);
    }
  }

  if ([(SHSheetContentDataSourceState *)self nearbyCountSlotID])
  {
    v40 = share_sheet_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [(SHSheetContentDataSourceState *)self nearbyCountSlotID];
      v44 = 67109120;
      LODWORD(v45) = v41;
      _os_log_impl(&dword_18B359000, v40, OS_LOG_TYPE_DEFAULT, "nearbyCountSlotID:%u", &v44, 8u);
    }
  }

  v42 = share_sheet_log();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_opt_class();
    v44 = 138412290;
    v45 = v43;
    _os_log_impl(&dword_18B359000, v42, OS_LOG_TYPE_DEFAULT, "<END %@>", &v44, 0xCu);
  }
}

@end