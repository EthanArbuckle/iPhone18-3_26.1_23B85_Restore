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

  peopleIdentifiers = [(SHSheetContentDataSourceState *)self peopleIdentifiers];
  v5 = [peopleIdentifiers count];

  if (v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      peopleIdentifiers2 = [(SHSheetContentDataSourceState *)self peopleIdentifiers];
      v44 = 138412290;
      v45 = peopleIdentifiers2;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "peopleIdentifiers%@", &v44, 0xCu);
    }
  }

  shareIdentifiers = [(SHSheetContentDataSourceState *)self shareIdentifiers];
  v9 = [shareIdentifiers count];

  if (v9)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      shareIdentifiers2 = [(SHSheetContentDataSourceState *)self shareIdentifiers];
      v44 = 138412290;
      v45 = shareIdentifiers2;
      _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "shareIdentifiers:%@", &v44, 0xCu);
    }
  }

  heroActionIdentifiers = [(SHSheetContentDataSourceState *)self heroActionIdentifiers];
  v13 = [heroActionIdentifiers count];

  if (v13)
  {
    v14 = share_sheet_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      heroActionIdentifiers2 = [(SHSheetContentDataSourceState *)self heroActionIdentifiers];
      v44 = 138412290;
      v45 = heroActionIdentifiers2;
      _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "heroActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  informationalActionIdentifiers = [(SHSheetContentDataSourceState *)self informationalActionIdentifiers];
  v17 = [informationalActionIdentifiers count];

  if (v17)
  {
    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      informationalActionIdentifiers2 = [(SHSheetContentDataSourceState *)self informationalActionIdentifiers];
      v44 = 138412290;
      v45 = informationalActionIdentifiers2;
      _os_log_impl(&dword_18B359000, v18, OS_LOG_TYPE_DEFAULT, "informationalActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  favoriteActionIdentifiers = [(SHSheetContentDataSourceState *)self favoriteActionIdentifiers];
  v21 = [favoriteActionIdentifiers count];

  if (v21)
  {
    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      favoriteActionIdentifiers2 = [(SHSheetContentDataSourceState *)self favoriteActionIdentifiers];
      v44 = 138412290;
      v45 = favoriteActionIdentifiers2;
      _os_log_impl(&dword_18B359000, v22, OS_LOG_TYPE_DEFAULT, "favoriteActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  systemActionIdentifiers = [(SHSheetContentDataSourceState *)self systemActionIdentifiers];
  v25 = [systemActionIdentifiers count];

  if (v25)
  {
    v26 = share_sheet_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      systemActionIdentifiers2 = [(SHSheetContentDataSourceState *)self systemActionIdentifiers];
      v44 = 138412290;
      v45 = systemActionIdentifiers2;
      _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "systemActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  extensionActionIdentifiers = [(SHSheetContentDataSourceState *)self extensionActionIdentifiers];
  v29 = [extensionActionIdentifiers count];

  if (v29)
  {
    v30 = share_sheet_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      extensionActionIdentifiers2 = [(SHSheetContentDataSourceState *)self extensionActionIdentifiers];
      v44 = 138412290;
      v45 = extensionActionIdentifiers2;
      _os_log_impl(&dword_18B359000, v30, OS_LOG_TYPE_DEFAULT, "extensionActionIdentifiers:%@", &v44, 0xCu);
    }
  }

  customSectionIdentifiers = [(SHSheetContentDataSourceState *)self customSectionIdentifiers];
  v33 = [customSectionIdentifiers count];

  if (v33)
  {
    v34 = share_sheet_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      customSectionIdentifiers2 = [(SHSheetContentDataSourceState *)self customSectionIdentifiers];
      v44 = 138412290;
      v45 = customSectionIdentifiers2;
      _os_log_impl(&dword_18B359000, v34, OS_LOG_TYPE_DEFAULT, "customSectionIdentifiers:%@", &v44, 0xCu);
    }
  }

  activitiesByUUID = [(SHSheetContentDataSourceState *)self activitiesByUUID];
  v37 = [activitiesByUUID count];

  if (v37)
  {
    v38 = share_sheet_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      activitiesByUUID2 = [(SHSheetContentDataSourceState *)self activitiesByUUID];
      v44 = 138412290;
      v45 = activitiesByUUID2;
      _os_log_impl(&dword_18B359000, v38, OS_LOG_TYPE_DEFAULT, "activitiesByUUID:%@", &v44, 0xCu);
    }
  }

  if ([(SHSheetContentDataSourceState *)self nearbyCountSlotID])
  {
    v40 = share_sheet_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      nearbyCountSlotID = [(SHSheetContentDataSourceState *)self nearbyCountSlotID];
      v44 = 67109120;
      LODWORD(v45) = nearbyCountSlotID;
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