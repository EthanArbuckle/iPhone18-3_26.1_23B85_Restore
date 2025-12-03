@interface SUSettingsStatefulErrorContextProvider
- (BOOL)isError:(id)error intrinsicallyEquivalentToError:(id)toError withStatefulDescriptor:(id)descriptor;
- (BOOL)isError:(id)error intrinsicallyEquivalentToError:(id)toError withStatefulDescriptor:(id)descriptor download:(id)download;
- (BOOL)shouldEnableUpdateButtonForError:(id)error statefulDescriptor:(id)descriptor;
- (BOOL)shouldEnableUpdateButtonForError:(id)error statefulDescriptor:(id)descriptor download:(id)download;
- (BOOL)shouldEnableUpdateButtonForNetworkError:(id)error statefulDescriptor:(id)descriptor download:(id)download;
- (BOOL)shouldIgnoreUpdateError:(id)error withStatefulDescriptor:(id)descriptor;
- (BOOL)shouldIgnoreUpdateError:(id)error withStatefulDescriptor:(id)descriptor download:(id)download;
- (SUSettingsStatefulUIManager)ownerManager;
- (id)initForManager:(id)manager;
- (id)localizedDescriptionForError:(id)error statefulDescriptor:(id)descriptor;
- (id)localizedDescriptionForError:(id)error statefulDescriptor:(id)descriptor download:(id)download;
- (id)localizedDescriptionForNetworkError:(id)error statefulDescriptor:(id)descriptor download:(id)download;
- (id)localizedDescriptionForUnmetConstraintsError:(id)error statefulDescriptor:(id)descriptor download:(id)download;
- (id)localizedTitleForError:(id)error statefulDescriptor:(id)descriptor;
- (id)localizedTitleForError:(id)error statefulDescriptor:(id)descriptor download:(id)download;
- (id)localizedTitleForUnmetConstraintsError:(id)error statefulDescriptor:(id)descriptor download:(id)download;
@end

@implementation SUSettingsStatefulErrorContextProvider

- (id)initForManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = SUSettingsStatefulErrorContextProvider;
  v8 = [(SUSettingsStatefulErrorContextProvider *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    [(SUSettingsStatefulErrorContextProvider *)selfCopy setOwnerManager:location[0]];
    v4 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUSettingsStatefulErrorContextProvider"];
    log = selfCopy->_log;
    selfCopy->_log = v4;
    MEMORY[0x277D82BD8](log);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (BOOL)isError:(id)error intrinsicallyEquivalentToError:(id)toError withStatefulDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v16 = 0;
  objc_storeStrong(&v16, toError);
  v15 = 0;
  objc_storeStrong(&v15, descriptor);
  v11 = selfCopy;
  v8 = location[0];
  v9 = v16;
  v10 = v15;
  ownerManager = [(SUSettingsStatefulErrorContextProvider *)selfCopy ownerManager];
  currentDownload = [(SUSettingsStatefulUIManager *)ownerManager currentDownload];
  v14 = [(SUSettingsStatefulErrorContextProvider *)v11 isError:v8 intrinsicallyEquivalentToError:v9 withStatefulDescriptor:v10 download:?];
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](ownerManager);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v14;
}

- (BOOL)isError:(id)error intrinsicallyEquivalentToError:(id)toError withStatefulDescriptor:(id)descriptor download:(id)download
{
  selfCopy = self;
  v24 = a2;
  *(&v23 + 1) = 0;
  objc_storeStrong(&v23 + 1, error);
  *&v23 = 0;
  objc_storeStrong(&v23, toError);
  v22 = 0;
  objc_storeStrong(&v22, descriptor);
  v21 = 0;
  objc_storeStrong(&v21, download);
  if (v23 == 0)
  {
    v26 = 1;
    v20 = 1;
  }

  else
  {
    domain = [*(&v23 + 1) domain];
    domain2 = [v23 domain];
    v10 = 1;
    if ([domain isEqualToString:?])
    {
      code = [*(&v23 + 1) code];
      v10 = code != [v23 code];
    }

    MEMORY[0x277D82BD8](domain2);
    MEMORY[0x277D82BD8](domain);
    if (v10)
    {
      v26 = 0;
      v20 = 1;
    }

    else
    {
      v19 = [(SUSettingsStatefulErrorContextProvider *)selfCopy shouldEnableUpdateButtonForError:*(&v23 + 1) statefulDescriptor:v22 download:v21];
      v18 = [(SUSettingsStatefulErrorContextProvider *)selfCopy shouldEnableUpdateButtonForError:v23 statefulDescriptor:v22 download:v21];
      if (v19 == v18)
      {
        v17 = [(SUSettingsStatefulErrorContextProvider *)selfCopy localizedTitleForError:*(&v23 + 1) statefulDescriptor:v22 download:v21];
        v16 = [(SUSettingsStatefulErrorContextProvider *)selfCopy localizedTitleForError:v23 statefulDescriptor:v22 download:v21];
        if (v17 || v16)
        {
          if ([v17 isEqualToString:v16])
          {
            v15 = [(SUSettingsStatefulErrorContextProvider *)selfCopy localizedDescriptionForError:*(&v23 + 1) statefulDescriptor:v22 download:v21];
            v14 = [(SUSettingsStatefulErrorContextProvider *)selfCopy localizedDescriptionForError:v23 statefulDescriptor:v22 download:v21];
            if (v15 || v14)
            {
              v26 = ([v15 isEqualToString:v14] & 1) != 0;
              v20 = 1;
            }

            else
            {
              v26 = v22 == 0;
              v20 = 1;
            }

            objc_storeStrong(&v14, 0);
            objc_storeStrong(&v15, 0);
          }

          else
          {
            v26 = 0;
            v20 = 1;
          }
        }

        else
        {
          v26 = v22 == 0;
          v20 = 1;
        }

        objc_storeStrong(&v16, 0);
        objc_storeStrong(&v17, 0);
      }

      else
      {
        v26 = 0;
        v20 = 1;
      }
    }
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v23 + 1, 0);
  return v26;
}

- (BOOL)shouldIgnoreUpdateError:(id)error withStatefulDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = 0;
  objc_storeStrong(&v12, descriptor);
  v8 = selfCopy;
  v6 = location[0];
  v7 = v12;
  ownerManager = [(SUSettingsStatefulErrorContextProvider *)selfCopy ownerManager];
  currentDownload = [(SUSettingsStatefulUIManager *)ownerManager currentDownload];
  v11 = [(SUSettingsStatefulErrorContextProvider *)v8 shouldIgnoreUpdateError:v6 withStatefulDescriptor:v7 download:?];
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](ownerManager);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (BOOL)shouldIgnoreUpdateError:(id)error withStatefulDescriptor:(id)descriptor download:(id)download
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v26 = 0;
  objc_storeStrong(&v26, descriptor);
  v25 = 0;
  objc_storeStrong(&v25, download);
  code = [location[0] code];
  domain = [location[0] domain];
  v16 = [domain isEqualToString:*MEMORY[0x277D64910]];
  MEMORY[0x277D82BD8](domain);
  if (v16)
  {
    if (code == 3 || code == 11 || code == 13)
    {
      v28 = 1;
      v23 = 1;
      goto LABEL_41;
    }

    v21 = 0;
    v12 = 1;
    if (v26)
    {
      descriptor = [v26 descriptor];
      v21 = 1;
      v12 = descriptor == 0;
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v12)
    {
      v28 = 0;
      v23 = 1;
      goto LABEL_41;
    }

    v19 = 0;
    v11 = 1;
    if (v25)
    {
      progress = [v25 progress];
      v19 = 1;
      v11 = 1;
      if (progress)
      {
        v11 = [v26 currentState] != 2;
      }
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](progress);
    }

    if (v11)
    {
      v28 = 0;
      v23 = 1;
      goto LABEL_41;
    }

    progress2 = [v25 progress];
    phase = [progress2 phase];
    v10 = 0;
    if ([phase isEqualToString:*MEMORY[0x277D64A00]])
    {
      [progress2 percentComplete];
      v10 = v5 >= 1.0;
    }

    MEMORY[0x277D82BD8](phase);
    if (v10)
    {
      switch(code)
      {
        case 33:
        case 34:
        case 8:
        case 31:
        case 9:
        case 83:
        case 26:
          v28 = 1;
          v23 = 1;
LABEL_40:
          objc_storeStrong(&progress2, 0);
          goto LABEL_41;
        case 6:
          v28 = 1;
          v23 = 1;
          goto LABEL_40;
        case 20:
          userInfo = [location[0] userInfo];
          v7 = getkSUInstallationConstraintsUnmetKey_2();
          v17 = [userInfo objectForKey:?];
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](userInfo);
          if (v17 && [v17 unsignedIntegerValue] == 4)
          {
            v28 = 1;
            v23 = 1;
          }

          else
          {
            v23 = 0;
          }

          objc_storeStrong(&v17, 0);
          if (v23)
          {
            goto LABEL_40;
          }

          break;
      }
    }

    v28 = 0;
    v23 = 1;
    goto LABEL_40;
  }

  v28 = 0;
  v23 = 1;
LABEL_41:
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v28 & 1;
}

- (BOOL)shouldEnableUpdateButtonForError:(id)error statefulDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = 0;
  objc_storeStrong(&v12, descriptor);
  v8 = selfCopy;
  v6 = location[0];
  v7 = v12;
  ownerManager = [(SUSettingsStatefulErrorContextProvider *)selfCopy ownerManager];
  currentDownload = [(SUSettingsStatefulUIManager *)ownerManager currentDownload];
  v11 = [(SUSettingsStatefulErrorContextProvider *)v8 shouldEnableUpdateButtonForError:v6 statefulDescriptor:v7 download:?];
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](ownerManager);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (BOOL)shouldEnableUpdateButtonForError:(id)error statefulDescriptor:(id)descriptor download:(id)download
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v20 = 0;
  objc_storeStrong(&v20, descriptor);
  v19 = 0;
  objc_storeStrong(&v19, download);
  if ([(SUSettingsStatefulErrorContextProvider *)selfCopy shouldIgnoreUpdateError:location[0] withStatefulDescriptor:v20 download:v19])
  {
    v23 = 1;
    v18 = 1;
  }

  else
  {
    domain = [location[0] domain];
    v10 = getSUErrorDomain_4();
    v12 = [domain isEqualToString:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](domain);
    if (v12)
    {
      if (([location[0] code] - 33) > 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = [(SUSettingsStatefulErrorContextProvider *)selfCopy shouldEnableUpdateButtonForNetworkError:location[0] statefulDescriptor:v20 download:v19];
      }

      v18 = 1;
    }

    else
    {
      v9 = [(SUSettingsStatefulErrorContextProvider *)selfCopy log];
      oslog = [(SUCoreLog *)v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        type = v16;
        humanReadableUpdateName = [v20 humanReadableUpdateName];
        v15 = MEMORY[0x277D82BE0](humanReadableUpdateName);
        __os_log_helper_16_2_2_8_66_8_66(v24, v15, location[0]);
        _os_log_impl(&dword_26AC94000, log, type, "Receieved an unexpected non-SUS error for descriptor %{public}@. Not ignoring. Error: %{public}@", v24, 0x16u);
        MEMORY[0x277D82BD8](humanReadableUpdateName);
        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&oslog, 0);
      v23 = 0;
      v18 = 1;
    }
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v23 & 1;
}

- (id)localizedTitleForError:(id)error statefulDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = 0;
  objc_storeStrong(&v12, descriptor);
  v8 = selfCopy;
  v6 = location[0];
  v7 = v12;
  ownerManager = [(SUSettingsStatefulErrorContextProvider *)selfCopy ownerManager];
  currentDownload = [(SUSettingsStatefulUIManager *)ownerManager currentDownload];
  v11 = [(SUSettingsStatefulErrorContextProvider *)v8 localizedTitleForError:v6 statefulDescriptor:v7 download:?];
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](ownerManager);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)localizedTitleForError:(id)error statefulDescriptor:(id)descriptor download:(id)download
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v40 = 0;
  objc_storeStrong(&v40, descriptor);
  v39 = 0;
  objc_storeStrong(&v39, download);
  if ([(SUSettingsStatefulErrorContextProvider *)selfCopy shouldIgnoreUpdateError:location[0] withStatefulDescriptor:v40 download:v39])
  {
    v43 = 0;
    v38 = 1;
    goto LABEL_28;
  }

  v37 = 0;
  domain = [location[0] domain];
  v28 = getSUErrorDomain_4();
  v30 = [domain isEqualToString:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](domain);
  if (v30)
  {
    code = [location[0] code];
    if (code == 6)
    {
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v27 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSUFFICIENT_DISK_SPACE" value:&stru_287B79370 table:@"Software Update"];
      v6 = v37;
      v37 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v27);
    }

    else
    {
      if ((code - 7) > 2)
      {
        if (code == 17 || code == 19)
        {
LABEL_21:
          v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v24 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v14 = v37;
          v37 = v13;
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v24);
          goto LABEL_23;
        }

        if (code == 20)
        {
          v11 = [(SUSettingsStatefulErrorContextProvider *)selfCopy localizedTitleForUnmetConstraintsError:location[0] statefulDescriptor:v40 download:v39];
          v12 = v37;
          v37 = v11;
          MEMORY[0x277D82BD8](v12);
          goto LABEL_23;
        }

        if (code != 26)
        {
          if (code == 31)
          {
            v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v9 = [v25 localizedStringForKey:@"UPDATE_ERROR_TITLE_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
            v10 = v37;
            v37 = v9;
            MEMORY[0x277D82BD8](v10);
            MEMORY[0x277D82BD8](v25);
            goto LABEL_23;
          }

          if ((code - 33) > 1 && code != 57 && code != 83)
          {
            if (code == 104)
            {
              objc_storeStrong(&v37, @"Unable to Update");
              goto LABEL_23;
            }

            if (code != 106)
            {
              goto LABEL_23;
            }

            goto LABEL_21;
          }
        }
      }

      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v26 localizedStringForKey:@"UPDATE_ERROR_TITLE_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
      v8 = v37;
      v37 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v26);
    }
  }

LABEL_23:
  if (!v37)
  {
    v23 = [(SUSettingsStatefulErrorContextProvider *)selfCopy log];
    oslog = [(SUCoreLog *)v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v34 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      type = v34;
      humanReadableUpdateName = [v40 humanReadableUpdateName];
      v33 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      __os_log_helper_16_2_2_8_66_8_66(v44, v33, location[0]);
      _os_log_error_impl(&dword_26AC94000, log, type, "Couldn't map the error into a localizable title for %{public}@: %{public}@", v44, 0x16u);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&oslog, 0);
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v19 localizedStringForKey:@"UPDATE_ERROR_TITLE_GENERAL_ERROR" value:&stru_287B79370 table:@"Software Update"];
    v16 = v37;
    v37 = v15;
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v19);
  }

  v43 = MEMORY[0x277D82BE0](v37);
  v38 = 1;
  objc_storeStrong(&v37, 0);
LABEL_28:
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v17 = v43;

  return v17;
}

- (id)localizedDescriptionForError:(id)error statefulDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = 0;
  objc_storeStrong(&v12, descriptor);
  v8 = selfCopy;
  v6 = location[0];
  v7 = v12;
  ownerManager = [(SUSettingsStatefulErrorContextProvider *)selfCopy ownerManager];
  currentDownload = [(SUSettingsStatefulUIManager *)ownerManager currentDownload];
  v11 = [(SUSettingsStatefulErrorContextProvider *)v8 localizedDescriptionForError:v6 statefulDescriptor:v7 download:?];
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](ownerManager);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)localizedDescriptionForError:(id)error statefulDescriptor:(id)descriptor download:(id)download
{
  v132 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v127 = 0;
  objc_storeStrong(&v127, descriptor);
  v126 = 0;
  objc_storeStrong(&v126, download);
  if ([(SUSettingsStatefulErrorContextProvider *)selfCopy shouldIgnoreUpdateError:location[0] withStatefulDescriptor:v127 download:v126])
  {
    v130 = 0;
    v125 = 1;
  }

  else
  {
    v124 = 0;
    domain = [location[0] domain];
    v64 = getSUErrorDomain_4();
    v66 = [domain isEqualToString:?];
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](domain);
    if (v66)
    {
      code = [location[0] code];
      switch(code)
      {
        case 6:
          v46 = MEMORY[0x277CCA8E8];
          v45 = MEMORY[0x277D64908];
          descriptor = [v127 descriptor];
          v108 = [v46 stringFromByteCount:objc_msgSend(v45 countStyle:{"totalDiskSpaceForUpdate:"), 2}];
          MEMORY[0x277D82BD8](descriptor);
          v48 = MEMORY[0x277CCACA8];
          descriptor2 = [v127 descriptor];
          v106 = 0;
          v104 = 0;
          v102 = 0;
          v100 = 0;
          v98 = 0;
          if (descriptor2 && (v107 = [v127 descriptor], v106 = 1, (objc_msgSend(v107, "isSplatOnly") & 1) != 0))
          {
            v105 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v104 = 1;
            v103 = [v105 localizedStringForKey:@"RSR_STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
            v102 = 1;
            v44 = v103;
          }

          else
          {
            v101 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v100 = 1;
            v99 = [v101 localizedStringForKey:@"STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
            v98 = 1;
            v44 = v99;
          }

          v108 = [v48 stringWithFormat:v44, v108];
          v20 = v124;
          v124 = v108;
          MEMORY[0x277D82BD8](v20);
          if (v98)
          {
            MEMORY[0x277D82BD8](v99);
          }

          if (v100)
          {
            MEMORY[0x277D82BD8](v101);
          }

          if (v102)
          {
            MEMORY[0x277D82BD8](v103);
          }

          if (v104)
          {
            MEMORY[0x277D82BD8](v105);
          }

          if (v106)
          {
            MEMORY[0x277D82BD8](v107);
          }

          MEMORY[0x277D82BD8](descriptor2);
          v125 = 2;
          objc_storeStrong(&v108, 0);
          break;
        case 7:
        case 26:
        case 57:
          descriptor3 = [v127 descriptor];
          v121 = 0;
          v119 = 0;
          v117 = 0;
          v115 = 0;
          v113 = 0;
          if (descriptor3 && (v122 = [v127 descriptor], v121 = 1, (objc_msgSend(v122, "isSplatOnly") & 1) != 0))
          {
            v120 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v119 = 1;
            v118 = [v120 localizedStringForKey:@"RSR_ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
            v117 = 1;
            objc_storeStrong(&v124, v118);
          }

          else
          {
            v116 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v115 = 1;
            v114 = [v116 localizedStringForKey:@"ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
            v113 = 1;
            objc_storeStrong(&v124, v114);
          }

          if (v113)
          {
            MEMORY[0x277D82BD8](v114);
          }

          if (v115)
          {
            MEMORY[0x277D82BD8](v116);
          }

          if (v117)
          {
            MEMORY[0x277D82BD8](v118);
          }

          if (v119)
          {
            MEMORY[0x277D82BD8](v120);
          }

          if (v121)
          {
            MEMORY[0x277D82BD8](v122);
          }

          MEMORY[0x277D82BD8](descriptor3);
          break;
        case 8:
          goto LABEL_21;
        case 9:
        case 83:
          if ([v127 currentState] == 3)
          {
            v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v53 = SFLocalizableWAPIStringKeyForKey();
            v15 = [v54 localizedStringForKey:? value:? table:?];
            v16 = v124;
            v124 = v15;
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v53);
            MEMORY[0x277D82BD8](v54);
          }

          else
          {
            v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            descriptor4 = [v127 descriptor];
            v109 = 0;
            if (descriptor4)
            {
              descriptor5 = [v127 descriptor];
              v109 = 1;
              [descriptor5 isSplatOnly];
            }

            v50 = SFLocalizableWAPIStringKeyForKey();
            v17 = [v51 localizedStringForKey:? value:? table:?];
            v18 = v124;
            v124 = v17;
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v50);
            if (v109)
            {
              MEMORY[0x277D82BD8](descriptor5);
            }

            MEMORY[0x277D82BD8](descriptor4);
            MEMORY[0x277D82BD8](v51);
          }

          break;
        case 17:
          descriptor6 = [v127 descriptor];
          v96 = 0;
          v94 = 0;
          v92 = 0;
          v90 = 0;
          v88 = 0;
          v86 = 0;
          v84 = 0;
          if (descriptor6 && (v97 = [v127 descriptor], v96 = 1, (objc_msgSend(v97, "isSplatOnly") & 1) != 0))
          {
            v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v94 = 1;
            v93 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"RSR_VERIFICATION_FAILED"];
            v92 = 1;
            v91 = [v95 localizedStringForKey:? value:? table:?];
            v90 = 1;
            objc_storeStrong(&v124, v91);
          }

          else
          {
            v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v88 = 1;
            v87 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"VERIFICATION_FAILED"];
            v86 = 1;
            v85 = [v89 localizedStringForKey:? value:? table:?];
            v84 = 1;
            objc_storeStrong(&v124, v85);
          }

          if (v84)
          {
            MEMORY[0x277D82BD8](v85);
          }

          if (v86)
          {
            MEMORY[0x277D82BD8](v87);
          }

          if (v88)
          {
            MEMORY[0x277D82BD8](v89);
          }

          if (v90)
          {
            MEMORY[0x277D82BD8](v91);
          }

          if (v92)
          {
            MEMORY[0x277D82BD8](v93);
          }

          if (v94)
          {
            MEMORY[0x277D82BD8](v95);
          }

          if (v96)
          {
            MEMORY[0x277D82BD8](v97);
          }

          MEMORY[0x277D82BD8](descriptor6);
          break;
        case 19:
          v41 = MEMORY[0x277CCACA8];
          descriptor7 = [v127 descriptor];
          v82 = 0;
          v80 = 0;
          v78 = 0;
          v76 = 0;
          v74 = 0;
          if (descriptor7 && (v83 = [v127 descriptor], v82 = 1, (objc_msgSend(v83, "isSplatOnly") & 1) != 0))
          {
            v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v80 = 1;
            v79 = [v81 localizedStringForKey:@"RSR_PERSONALIZATION_FAILED" value:&stru_287B79370 table:@"Software Update"];
            v78 = 1;
            v40 = v79;
          }

          else
          {
            v77 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v76 = 1;
            v75 = [v77 localizedStringForKey:@"PERSONALIZATION_FAILED" value:&stru_287B79370 table:@"Software Update"];
            v74 = 1;
            v40 = v75;
          }

          humanReadableUpdateName = [v127 humanReadableUpdateName];
          v23 = [v41 stringWithFormat:v40, humanReadableUpdateName];
          v24 = v124;
          v124 = v23;
          MEMORY[0x277D82BD8](v24);
          MEMORY[0x277D82BD8](humanReadableUpdateName);
          if (v74)
          {
            MEMORY[0x277D82BD8](v75);
          }

          if (v76)
          {
            MEMORY[0x277D82BD8](v77);
          }

          if (v78)
          {
            MEMORY[0x277D82BD8](v79);
          }

          if (v80)
          {
            MEMORY[0x277D82BD8](v81);
          }

          if (v82)
          {
            MEMORY[0x277D82BD8](v83);
          }

          MEMORY[0x277D82BD8](descriptor7);
          break;
        case 20:
          v21 = [(SUSettingsStatefulErrorContextProvider *)selfCopy localizedDescriptionForUnmetConstraintsError:location[0] statefulDescriptor:v127 download:v126];
          v22 = v124;
          v124 = v21;
          MEMORY[0x277D82BD8](v22);
          break;
        case 31:
          v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v56 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPDATE_NOT_OTA_DOWNLOADABLE"];
          v11 = [v57 localizedStringForKey:? value:? table:?];
          v12 = v124;
          v124 = v11;
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v56);
          MEMORY[0x277D82BD8](v57);
          break;
        case 33:
        case 34:
          v5 = [(SUSettingsStatefulErrorContextProvider *)selfCopy localizedDescriptionForNetworkError:location[0] statefulDescriptor:v127 download:v126];
          v6 = v124;
          v124 = v5;
          MEMORY[0x277D82BD8](v6);
          if (!v124)
          {
LABEL_21:
            if ([v127 currentState] == 3)
            {
              v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v61 = SFLocalizableWAPIStringKeyForKey();
              v7 = [v62 localizedStringForKey:? value:? table:?];
              v8 = v124;
              v124 = v7;
              MEMORY[0x277D82BD8](v8);
              MEMORY[0x277D82BD8](v61);
              MEMORY[0x277D82BD8](v62);
            }

            else
            {
              v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              descriptor8 = [v127 descriptor];
              v111 = 0;
              if (descriptor8)
              {
                descriptor9 = [v127 descriptor];
                v111 = 1;
                [descriptor9 isSplatOnly];
              }

              v58 = SFLocalizableWAPIStringKeyForKey();
              v9 = [v59 localizedStringForKey:? value:? table:?];
              v10 = v124;
              v124 = v9;
              MEMORY[0x277D82BD8](v10);
              MEMORY[0x277D82BD8](v58);
              if (v111)
              {
                MEMORY[0x277D82BD8](descriptor9);
              }

              MEMORY[0x277D82BD8](descriptor8);
              MEMORY[0x277D82BD8](v59);
            }
          }

          break;
        case 104:
          objc_storeStrong(&v124, @"INTERNAL ONLY: Device needs to be rooted from snapshot to update.\nAs root user, run 'snapshottool golive 0' then 'reboot'.\nYou'll be able to update once the device boots back.");
          break;
        case 106:
          v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v55 localizedStringForKey:@"UPDATE_NOT_OTA_INSTALLABLE" value:&stru_287B79370 table:@"Software Update"];
          v14 = v124;
          v124 = v13;
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v55);
          break;
        default:
          break;
      }
    }

    else
    {
      domain2 = [location[0] domain];
      v38 = [domain2 isEqualToString:@"com.apple.preferences.softwareupdate"];
      MEMORY[0x277D82BD8](domain2);
      if ((v38 & 1) != 0 && [location[0] code] == 1)
      {
        v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v36 localizedStringForKey:@"UPDATE_REQUESTED_EXPLANATION" value:&stru_287B79370 table:@"Software Update"];
        v26 = v124;
        v124 = v25;
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](v36);
      }
    }

    if (location[0] && !v124)
    {
      v35 = [(SUSettingsStatefulErrorContextProvider *)selfCopy log];
      oslog = [(SUCoreLog *)v35 oslog];
      MEMORY[0x277D82BD8](v35);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v33 = type;
        humanReadableUpdateName2 = [v127 humanReadableUpdateName];
        v71 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
        __os_log_helper_16_2_2_8_66_8_66(v131, v71, location[0]);
        _os_log_error_impl(&dword_26AC94000, log, v33, "Couldn't map the error into a localizable title for %{public}@: %{public}@", v131, 0x16u);
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
        objc_storeStrong(&v71, 0);
      }

      objc_storeStrong(&oslog, 0);
      objc_storeStrong(&v124, &stru_287B79370);
    }

    v69 = 0;
    sf_isInternalInstall = 0;
    if (location[0])
    {
      sf_isInternalInstall = 0;
      if ([v124 isEqualToString:&stru_287B79370])
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        v69 = 1;
        sf_isInternalInstall = [currentDevice sf_isInternalInstall];
      }
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](currentDevice);
    }

    if (sf_isInternalInstall)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Internal Only] An unresolvable error has occurred, please file a radar. Error Code: %ld.", objc_msgSend(location[0], "code")];
      v28 = v124;
      v124 = v27;
      MEMORY[0x277D82BD8](v28);
    }

    v130 = MEMORY[0x277D82BE0](v124);
    v125 = 1;
    objc_storeStrong(&v124, 0);
  }

  objc_storeStrong(&v126, 0);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v29 = v130;

  return v29;
}

- (BOOL)shouldEnableUpdateButtonForNetworkError:(id)error statefulDescriptor:(id)descriptor download:(id)download
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v29 = 0;
  objc_storeStrong(&v29, descriptor);
  v28 = 0;
  objc_storeStrong(&v28, download);
  if ([v29 currentState] != 3)
  {
    goto LABEL_16;
  }

  v27 = 0;
  v12 = objc_alloc(MEMORY[0x277CC37B0]);
  v13 = dispatch_get_global_queue(33, 0);
  v26 = [v12 initWithQueue:?];
  MEMORY[0x277D82BD8](v13);
  v25 = 0;
  v23 = 0;
  v14 = [v26 getPreferredDataSubscriptionContextSync:&v23];
  objc_storeStrong(&v25, v23);
  v24 = v14;
  if (v14)
  {
    v20 = 0;
    v19 = 0;
    v9 = [v26 copyRegistrationStatus:v24 error:&v19];
    objc_storeStrong(&v20, v19);
    v5 = v27;
    v27 = v9;
    MEMORY[0x277D82BD8](v5);
    if (!v27)
    {
      v8 = [(SUSettingsStatefulErrorContextProvider *)selfCopy log];
      oslog = [(SUCoreLog *)v8 oslog];
      MEMORY[0x277D82BD8](v8);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v7 = [v20 description];
        __os_log_helper_16_2_1_8_64(v33, v7);
        _os_log_error_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_ERROR, "Failed to copyRegistrationStatus from CoreTelephony. %@", v33, 0xCu);
        MEMORY[0x277D82BD8](v7);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v11 = [(SUSettingsStatefulErrorContextProvider *)selfCopy log];
    oslog = [(SUCoreLog *)v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v10 = [v25 description];
      __os_log_helper_16_2_1_8_64(v34, v10);
      _os_log_error_impl(&dword_26AC94000, oslog, v21, "Failed to get preferred CTXPCServiceSubscriptionContext. %@", v34, 0xCu);
      MEMORY[0x277D82BD8](v10);
    }

    objc_storeStrong(&oslog, 0);
  }

  if ([v27 isEqualToString:*MEMORY[0x277CC3E70]] & 1) != 0 && (PSIsDataRoamingEnabled())
  {
    v32 = 1;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  if (!v17)
  {
LABEL_16:
    v32 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v32 & 1;
}

- (id)localizedTitleForUnmetConstraintsError:(id)error statefulDescriptor:(id)descriptor download:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v37 = 0;
  objc_storeStrong(&v37, descriptor);
  v36 = 0;
  objc_storeStrong(&v36, download);
  v33 = 0;
  v31 = 0;
  if (v37 && (v34 = [v37 descriptor], v33 = 1, v34))
  {
    descriptor = [v37 descriptor];
    v31 = 1;
    SURequiredBatteryLevelForInstallation();
    v24 = v5;
  }

  else
  {
    SUPrefsRequiredBatteryLevelForInstall_0();
    v24 = v6;
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v33)
  {
    MEMORY[0x277D82BD8](v34);
  }

  v35 = v24;
  userInfo = [location[0] userInfo];
  v18 = getkSUInstallationConstraintsUnmetKey_2();
  v17 = [userInfo objectForKey:?];
  unsignedIntegerValue = [v17 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](userInfo);
  v30 = unsignedIntegerValue;
  ownerManager = [(SUSettingsStatefulErrorContextProvider *)selfCopy ownerManager];
  options = [(SUSettingsStatefulUIManager *)ownerManager options];
  v23 = 0;
  if (![(SUSettingsStatefulUIOptions *)options clientIsBuddy])
  {
    v23 = (v30 & 4) != 0;
  }

  MEMORY[0x277D82BD8](options);
  MEMORY[0x277D82BD8](ownerManager);
  if (v23)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v16 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSUFFICIENT_DISK_SPACE" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v16);
    v29 = 1;
  }

  else if (v30)
  {
    v7 = floorf(100.0 * v35) / 100.0;
    *&v7 = v7;
    v28 = LODWORD(v7);
    v11 = MEMORY[0x277CCABB8];
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v27 = [v11 localizedStringFromNumber:? numberStyle:?];
    MEMORY[0x277D82BD8](v12);
    v13 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v15 localizedStringForKey:@"UPDATE_ERROR_TITLE_LOW_BATTERY" value:&stru_287B79370 table:@"Software Update"];
    v40 = [v13 stringWithFormat:v27];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    v29 = 1;
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v10 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v10);
    v29 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  v8 = v40;

  return v8;
}

- (id)localizedDescriptionForNetworkError:(id)error statefulDescriptor:(id)descriptor download:(id)download
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v46 = 0;
  objc_storeStrong(&v46, descriptor);
  v45 = 0;
  objc_storeStrong(&v45, download);
  code = [location[0] code];
  if ([v46 currentState] != 3)
  {
    goto LABEL_34;
  }

  v43 = 0;
  v18 = objc_alloc(MEMORY[0x277CC37B0]);
  v19 = dispatch_get_global_queue(33, 0);
  v42 = [v18 initWithQueue:?];
  MEMORY[0x277D82BD8](v19);
  v41 = 0;
  v39 = 0;
  v20 = [v42 getPreferredDataSubscriptionContextSync:&v39];
  objc_storeStrong(&v41, v39);
  v40 = v20;
  if (v20)
  {
    v36 = 0;
    v35 = 0;
    v15 = [v42 copyRegistrationStatus:v40 error:&v35];
    objc_storeStrong(&v36, v35);
    v5 = v43;
    v43 = v15;
    MEMORY[0x277D82BD8](v5);
    if (!v43)
    {
      v14 = [(SUSettingsStatefulErrorContextProvider *)selfCopy log];
      oslog = [(SUCoreLog *)v14 oslog];
      MEMORY[0x277D82BD8](v14);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v13 = [v36 description];
        __os_log_helper_16_2_1_8_66(v50, v13);
        _os_log_error_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_ERROR, "Failed to copyRegistrationStatus from CoreTelephony. Error: %{public}@", v50, 0xCu);
        MEMORY[0x277D82BD8](v13);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v36, 0);
  }

  else
  {
    v17 = [(SUSettingsStatefulErrorContextProvider *)selfCopy log];
    oslog2 = [(SUCoreLog *)v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v37 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      v16 = [v41 description];
      __os_log_helper_16_2_1_8_66(v51, v16);
      _os_log_error_impl(&dword_26AC94000, oslog2, v37, "Failed to get preferred CTXPCServiceSubscriptionContext. error: %{public}@", v51, 0xCu);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&oslog2, 0);
  }

  if ([v43 isEqualToString:*MEMORY[0x277CC3E70]])
  {
    if (PSIsDataRoamingEnabled())
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v12 localizedStringForKey:@"DOWNLOAD_RESUME_ROAMING_REQUIRED" value:&stru_287B79370 table:@"Software Update"];
      MEMORY[0x277D82BD8](v12);
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = SFLocalizableWAPIStringKeyForKey();
      v49 = [v11 localizedStringForKey:? value:? table:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }

    v33 = 1;
  }

  else if (code == 33)
  {
    descriptor = [v46 descriptor];
    v31 = 0;
    v29 = 0;
    v27 = 0;
    v25 = 0;
    v23 = 0;
    if (descriptor && (v32 = [v46 descriptor], v31 = 1, (objc_msgSend(v32, "isSplatOnly") & 1) != 0))
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = 1;
      v28 = [v30 localizedStringForKey:@"RSR_ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
      v27 = 1;
      v6 = MEMORY[0x277D82BE0](v28);
    }

    else
    {
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = 1;
      v24 = [v26 localizedStringForKey:@"ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
      v23 = 1;
      v6 = MEMORY[0x277D82BE0](v24);
    }

    v49 = v6;
    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    MEMORY[0x277D82BD8](descriptor);
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  if (!v33)
  {
LABEL_34:
    v49 = 0;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v49;

  return v7;
}

- (id)localizedDescriptionForUnmetConstraintsError:(id)error statefulDescriptor:(id)descriptor download:(id)download
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v251 = 0;
  objc_storeStrong(&v251, descriptor);
  v250 = 0;
  objc_storeStrong(&v250, download);
  descriptor = [v251 descriptor];
  SURequiredBatteryLevelForInstallation();
  v58 = v5;
  MEMORY[0x277D82BD8](descriptor);
  v6 = 100.0 * v58;
  v7 = floorf(v6) / 100.0;
  v249 = v7;
  v59 = MEMORY[0x277CCA8E8];
  descriptor2 = [v251 descriptor];
  v248 = [v59 stringFromByteCount:objc_msgSend(descriptor2 countStyle:{"installationSize"), 2}];
  MEMORY[0x277D82BD8](descriptor2);
  userInfo = [location[0] userInfo];
  v62 = getkSUInstallationConstraintsUnmetKey_2();
  v61 = [userInfo objectForKey:?];
  unsignedIntegerValue = [v61 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](userInfo);
  v247 = unsignedIntegerValue;
  if ((unsignedIntegerValue & 8) != 0)
  {
    descriptor3 = [v251 descriptor];
    v245 = 0;
    v243 = 0;
    v241 = 0;
    v239 = 0;
    v237 = 0;
    v235 = 0;
    v233 = 0;
    if (descriptor3 && (v246 = [v251 descriptor], v245 = 1, (objc_msgSend(v246, "isSplatOnly") & 1) != 0))
    {
      v244 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v243 = 1;
      v242 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"RSR_INSTALL_DELAYED_OTA_RESTORE"];
      v241 = 1;
      v240 = [v244 localizedStringForKey:? value:? table:?];
      v239 = 1;
      v9 = MEMORY[0x277D82BE0](v240);
    }

    else
    {
      v238 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v237 = 1;
      v236 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"INSTALL_DELAYED_OTA_RESTORE"];
      v235 = 1;
      v234 = [v238 localizedStringForKey:? value:? table:?];
      v233 = 1;
      v9 = MEMORY[0x277D82BE0](v234);
    }

    v248 = v9;
    if (v233)
    {
      MEMORY[0x277D82BD8](v234);
    }

    if (v235)
    {
      MEMORY[0x277D82BD8](v236);
    }

    if (v237)
    {
      MEMORY[0x277D82BD8](v238);
    }

    if (v239)
    {
      MEMORY[0x277D82BD8](v240);
    }

    if (v241)
    {
      MEMORY[0x277D82BD8](v242);
    }

    if (v243)
    {
      MEMORY[0x277D82BD8](v244);
    }

    if (v245)
    {
      MEMORY[0x277D82BD8](v246);
    }

    MEMORY[0x277D82BD8](descriptor3);
    v232 = 1;
  }

  else
  {
    v231 = 7;
    v230 = 3;
    v229 = 5;
    v228 = 6;
    v52 = MEMORY[0x277CCABB8];
    *&v8 = v249;
    v53 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v227 = [v52 localizedStringFromNumber:? numberStyle:?];
    MEMORY[0x277D82BD8](v53);
    v226 = 0;
    v225 = SUPrefsconnectedToCharger_0(&v226);
    if ((v247 & v231) == v231)
    {
      v50 = MEMORY[0x277CCACA8];
      descriptor4 = [v251 descriptor];
      v223 = 0;
      v221 = 0;
      v219 = 0;
      v217 = 0;
      v215 = 0;
      if (descriptor4 && (v224 = [v251 descriptor], v223 = 1, (objc_msgSend(v224, "isSplatOnly") & 1) != 0))
      {
        v222 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v221 = 1;
        v220 = [v222 localizedStringForKey:@"RSR_BATTERY_STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v219 = 1;
        v49 = v220;
      }

      else
      {
        v218 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v217 = 1;
        v216 = [v218 localizedStringForKey:@"BATTERY_STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v215 = 1;
        v49 = v216;
      }

      v248 = [v50 stringWithFormat:v49, v227, v248];
      if (v215)
      {
        MEMORY[0x277D82BD8](v216);
      }

      if (v217)
      {
        MEMORY[0x277D82BD8](v218);
      }

      if (v219)
      {
        MEMORY[0x277D82BD8](v220);
      }

      if (v221)
      {
        MEMORY[0x277D82BD8](v222);
      }

      if (v223)
      {
        MEMORY[0x277D82BD8](v224);
      }

      MEMORY[0x277D82BD8](descriptor4);
      v232 = 1;
    }

    else if ((v247 & v228) == v228)
    {
      v47 = MEMORY[0x277CCACA8];
      descriptor5 = [v251 descriptor];
      v213 = 0;
      v211 = 0;
      v209 = 0;
      v207 = 0;
      v205 = 0;
      if (descriptor5 && (v214 = [v251 descriptor], v213 = 1, (objc_msgSend(v214, "isSplatOnly") & 1) != 0))
      {
        v212 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v211 = 1;
        v210 = [v212 localizedStringForKey:@"RSR_STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v209 = 1;
        v46 = v210;
      }

      else
      {
        v208 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v207 = 1;
        v206 = [v208 localizedStringForKey:@"STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v205 = 1;
        v46 = v206;
      }

      v248 = [v47 stringWithFormat:v46, v248];
      if (v205)
      {
        MEMORY[0x277D82BD8](v206);
      }

      if (v207)
      {
        MEMORY[0x277D82BD8](v208);
      }

      if (v209)
      {
        MEMORY[0x277D82BD8](v210);
      }

      if (v211)
      {
        MEMORY[0x277D82BD8](v212);
      }

      if (v213)
      {
        MEMORY[0x277D82BD8](v214);
      }

      MEMORY[0x277D82BD8](descriptor5);
      v232 = 1;
    }

    else if ((v247 & v230) == v230)
    {
      v44 = MEMORY[0x277CCACA8];
      descriptor6 = [v251 descriptor];
      v203 = 0;
      v201 = 0;
      v199 = 0;
      v197 = 0;
      v195 = 0;
      if (descriptor6 && (v204 = [v251 descriptor], v203 = 1, (objc_msgSend(v204, "isSplatOnly") & 1) != 0))
      {
        v202 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v201 = 1;
        v200 = [v202 localizedStringForKey:@"RSR_BATTERY_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v199 = 1;
        v43 = v200;
      }

      else
      {
        v198 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v197 = 1;
        v196 = [v198 localizedStringForKey:@"BATTERY_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v195 = 1;
        v43 = v196;
      }

      v248 = [v44 stringWithFormat:v43, v227];
      if (v195)
      {
        MEMORY[0x277D82BD8](v196);
      }

      if (v197)
      {
        MEMORY[0x277D82BD8](v198);
      }

      if (v199)
      {
        MEMORY[0x277D82BD8](v200);
      }

      if (v201)
      {
        MEMORY[0x277D82BD8](v202);
      }

      if (v203)
      {
        MEMORY[0x277D82BD8](v204);
      }

      MEMORY[0x277D82BD8](descriptor6);
      v232 = 1;
    }

    else if ((v247 & v229) == v229)
    {
      v41 = MEMORY[0x277CCACA8];
      descriptor7 = [v251 descriptor];
      v193 = 0;
      v191 = 0;
      v189 = 0;
      v187 = 0;
      v185 = 0;
      if (descriptor7 && (v194 = [v251 descriptor], v193 = 1, (objc_msgSend(v194, "isSplatOnly") & 1) != 0))
      {
        v192 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v191 = 1;
        v190 = [v192 localizedStringForKey:@"RSR_BATTERY_AND_STORAGE_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v189 = 1;
        v40 = v190;
      }

      else
      {
        v188 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v187 = 1;
        v186 = [v188 localizedStringForKey:@"BATTERY_AND_STORAGE_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v185 = 1;
        v40 = v186;
      }

      v248 = [v41 stringWithFormat:v40, v227, v248];
      if (v185)
      {
        MEMORY[0x277D82BD8](v186);
      }

      if (v187)
      {
        MEMORY[0x277D82BD8](v188);
      }

      if (v189)
      {
        MEMORY[0x277D82BD8](v190);
      }

      if (v191)
      {
        MEMORY[0x277D82BD8](v192);
      }

      if (v193)
      {
        MEMORY[0x277D82BD8](v194);
      }

      MEMORY[0x277D82BD8](descriptor7);
      v232 = 1;
    }

    else if (v247 & 1) == 0 || (v225)
    {
      if ((v247 & 1) != 0 && (v225 & 1) != 0 && (v226 & 1) == 0)
      {
        v35 = MEMORY[0x277CCACA8];
        descriptor8 = [v251 descriptor];
        v173 = 0;
        v171 = 0;
        v169 = 0;
        v167 = 0;
        v165 = 0;
        if (descriptor8 && (v174 = [v251 descriptor], v173 = 1, (objc_msgSend(v174, "isSplatOnly") & 1) != 0))
        {
          v172 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v171 = 1;
          v170 = [v172 localizedStringForKey:@"RSR_BATTERY_WIRED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v169 = 1;
          v34 = v170;
        }

        else
        {
          v168 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v167 = 1;
          v166 = [v168 localizedStringForKey:@"BATTERY_WIRED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v165 = 1;
          v34 = v166;
        }

        v248 = [v35 stringWithFormat:v34, v227];
        if (v165)
        {
          MEMORY[0x277D82BD8](v166);
        }

        if (v167)
        {
          MEMORY[0x277D82BD8](v168);
        }

        if (v169)
        {
          MEMORY[0x277D82BD8](v170);
        }

        if (v171)
        {
          MEMORY[0x277D82BD8](v172);
        }

        if (v173)
        {
          MEMORY[0x277D82BD8](v174);
        }

        MEMORY[0x277D82BD8](descriptor8);
        v232 = 1;
      }

      else if (v247 & 1) != 0 && (v225 & 1) != 0 && (v226)
      {
        v32 = MEMORY[0x277CCACA8];
        descriptor9 = [v251 descriptor];
        v163 = 0;
        v161 = 0;
        v159 = 0;
        v157 = 0;
        v155 = 0;
        if (descriptor9 && (v164 = [v251 descriptor], v163 = 1, (objc_msgSend(v164, "isSplatOnly") & 1) != 0))
        {
          v162 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v161 = 1;
          v160 = [v162 localizedStringForKey:@"RSR_BATTERY_WIRELESS_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v159 = 1;
          v31 = v160;
        }

        else
        {
          v158 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v157 = 1;
          v156 = [v158 localizedStringForKey:@"BATTERY_WIRELESS_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v155 = 1;
          v31 = v156;
        }

        v248 = [v32 stringWithFormat:v31, v227];
        if (v155)
        {
          MEMORY[0x277D82BD8](v156);
        }

        if (v157)
        {
          MEMORY[0x277D82BD8](v158);
        }

        if (v159)
        {
          MEMORY[0x277D82BD8](v160);
        }

        if (v161)
        {
          MEMORY[0x277D82BD8](v162);
        }

        if (v163)
        {
          MEMORY[0x277D82BD8](v164);
        }

        MEMORY[0x277D82BD8](descriptor9);
        v232 = 1;
      }

      else if ((v247 & 4) != 0)
      {
        v29 = MEMORY[0x277CCACA8];
        descriptor10 = [v251 descriptor];
        v153 = 0;
        v151 = 0;
        v149 = 0;
        v147 = 0;
        v145 = 0;
        if (descriptor10 && (v154 = [v251 descriptor], v153 = 1, (objc_msgSend(v154, "isSplatOnly") & 1) != 0))
        {
          v152 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v151 = 1;
          v150 = [v152 localizedStringForKey:@"RSR_STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
          v149 = 1;
          v28 = v150;
        }

        else
        {
          v148 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v147 = 1;
          v146 = [v148 localizedStringForKey:@"STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
          v145 = 1;
          v28 = v146;
        }

        v248 = [v29 stringWithFormat:v28, v248];
        if (v145)
        {
          MEMORY[0x277D82BD8](v146);
        }

        if (v147)
        {
          MEMORY[0x277D82BD8](v148);
        }

        if (v149)
        {
          MEMORY[0x277D82BD8](v150);
        }

        if (v151)
        {
          MEMORY[0x277D82BD8](v152);
        }

        if (v153)
        {
          MEMORY[0x277D82BD8](v154);
        }

        MEMORY[0x277D82BD8](descriptor10);
        v232 = 1;
      }

      else if ((v247 & 2) != 0)
      {
        descriptor11 = [v251 descriptor];
        v143 = 0;
        v141 = 0;
        v139 = 0;
        v137 = 0;
        v135 = 0;
        if (descriptor11 && (v144 = [v251 descriptor], v143 = 1, (objc_msgSend(v144, "isSplatOnly") & 1) != 0))
        {
          v142 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v141 = 1;
          v140 = [v142 localizedStringForKey:@"RSR_NETWORK_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v139 = 1;
          v10 = MEMORY[0x277D82BE0](v140);
        }

        else
        {
          v138 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v137 = 1;
          v136 = [v138 localizedStringForKey:@"NETWORK_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v135 = 1;
          v10 = MEMORY[0x277D82BE0](v136);
        }

        v248 = v10;
        if (v135)
        {
          MEMORY[0x277D82BD8](v136);
        }

        if (v137)
        {
          MEMORY[0x277D82BD8](v138);
        }

        if (v139)
        {
          MEMORY[0x277D82BD8](v140);
        }

        if (v141)
        {
          MEMORY[0x277D82BD8](v142);
        }

        if (v143)
        {
          MEMORY[0x277D82BD8](v144);
        }

        MEMORY[0x277D82BD8](descriptor11);
        v232 = 1;
      }

      else if ((v247 & 0x80) != 0)
      {
        descriptor12 = [v251 descriptor];
        v133 = 0;
        v131 = 0;
        v129 = 0;
        v127 = 0;
        v125 = 0;
        if (descriptor12 && (v134 = [v251 descriptor], v133 = 1, (objc_msgSend(v134, "isSplatOnly") & 1) != 0))
        {
          v132 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v131 = 1;
          v130 = [v132 localizedStringForKey:@"RSR_SYNCING_DATA_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v129 = 1;
          v11 = MEMORY[0x277D82BE0](v130);
        }

        else
        {
          v128 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v127 = 1;
          v126 = [v128 localizedStringForKey:@"SYNCING_DATA_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v125 = 1;
          v11 = MEMORY[0x277D82BE0](v126);
        }

        v248 = v11;
        if (v125)
        {
          MEMORY[0x277D82BD8](v126);
        }

        if (v127)
        {
          MEMORY[0x277D82BD8](v128);
        }

        if (v129)
        {
          MEMORY[0x277D82BD8](v130);
        }

        if (v131)
        {
          MEMORY[0x277D82BD8](v132);
        }

        if (v133)
        {
          MEMORY[0x277D82BD8](v134);
        }

        MEMORY[0x277D82BD8](descriptor12);
        v232 = 1;
      }

      else if ((v247 & 0x100) != 0)
      {
        descriptor13 = [v251 descriptor];
        v123 = 0;
        v121 = 0;
        v119 = 0;
        v117 = 0;
        v115 = 0;
        if (descriptor13 && (v124 = [v251 descriptor], v123 = 1, (objc_msgSend(v124, "isSplatOnly") & 1) != 0))
        {
          v122 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v121 = 1;
          v120 = [v122 localizedStringForKey:@"RSR_PHONE_CALL_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v119 = 1;
          v12 = MEMORY[0x277D82BE0](v120);
        }

        else
        {
          v118 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v117 = 1;
          v116 = [v118 localizedStringForKey:@"PHONE_CALL_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v115 = 1;
          v12 = MEMORY[0x277D82BE0](v116);
        }

        v248 = v12;
        if (v115)
        {
          MEMORY[0x277D82BD8](v116);
        }

        if (v117)
        {
          MEMORY[0x277D82BD8](v118);
        }

        if (v119)
        {
          MEMORY[0x277D82BD8](v120);
        }

        if (v121)
        {
          MEMORY[0x277D82BD8](v122);
        }

        if (v123)
        {
          MEMORY[0x277D82BD8](v124);
        }

        MEMORY[0x277D82BD8](descriptor13);
        v232 = 1;
      }

      else if ((v247 & 0x40) != 0)
      {
        descriptor14 = [v251 descriptor];
        v113 = 0;
        v111 = 0;
        v109 = 0;
        v107 = 0;
        v105 = 0;
        if (descriptor14 && (v114 = [v251 descriptor], v113 = 1, (objc_msgSend(v114, "isSplatOnly") & 1) != 0))
        {
          v112 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v111 = 1;
          v110 = [v112 localizedStringForKey:@"RSR_RESTORING_FROM_BACKUP_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v109 = 1;
          v13 = MEMORY[0x277D82BE0](v110);
        }

        else
        {
          v108 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v107 = 1;
          v106 = [v108 localizedStringForKey:@"RESTORING_FROM_BACKUP_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v105 = 1;
          v13 = MEMORY[0x277D82BE0](v106);
        }

        v248 = v13;
        if (v105)
        {
          MEMORY[0x277D82BD8](v106);
        }

        if (v107)
        {
          MEMORY[0x277D82BD8](v108);
        }

        if (v109)
        {
          MEMORY[0x277D82BD8](v110);
        }

        if (v111)
        {
          MEMORY[0x277D82BD8](v112);
        }

        if (v113)
        {
          MEMORY[0x277D82BD8](v114);
        }

        MEMORY[0x277D82BD8](descriptor14);
        v232 = 1;
      }

      else if ((v247 & 0x200) != 0)
      {
        descriptor15 = [v251 descriptor];
        v103 = 0;
        v101 = 0;
        v99 = 0;
        v97 = 0;
        v95 = 0;
        if (descriptor15 && (v104 = [v251 descriptor], v103 = 1, (objc_msgSend(v104, "isSplatOnly") & 1) != 0))
        {
          v102 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v101 = 1;
          v100 = [v102 localizedStringForKey:@"RSR_CARPLAY_CONNECTED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v99 = 1;
          v14 = MEMORY[0x277D82BE0](v100);
        }

        else
        {
          v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v97 = 1;
          v96 = [v98 localizedStringForKey:@"CARPLAY_CONNECTED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v95 = 1;
          v14 = MEMORY[0x277D82BE0](v96);
        }

        v248 = v14;
        if (v95)
        {
          MEMORY[0x277D82BD8](v96);
        }

        if (v97)
        {
          MEMORY[0x277D82BD8](v98);
        }

        if (v99)
        {
          MEMORY[0x277D82BD8](v100);
        }

        if (v101)
        {
          MEMORY[0x277D82BD8](v102);
        }

        if (v103)
        {
          MEMORY[0x277D82BD8](v104);
        }

        MEMORY[0x277D82BD8](descriptor15);
        v232 = 1;
      }

      else if ((v247 & 0x400) != 0)
      {
        descriptor16 = [v251 descriptor];
        v93 = 0;
        v91 = 0;
        v89 = 0;
        v87 = 0;
        v85 = 0;
        if (descriptor16 && (v94 = [v251 descriptor], v93 = 1, (objc_msgSend(v94, "isSplatOnly") & 1) != 0))
        {
          v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v91 = 1;
          v90 = [v92 localizedStringForKey:@"RSR_MEDIA_PLAYING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v89 = 1;
          v15 = MEMORY[0x277D82BE0](v90);
        }

        else
        {
          v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v87 = 1;
          v86 = [v88 localizedStringForKey:@"MEDIA_PLAYING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v85 = 1;
          v15 = MEMORY[0x277D82BE0](v86);
        }

        v248 = v15;
        if (v85)
        {
          MEMORY[0x277D82BD8](v86);
        }

        if (v87)
        {
          MEMORY[0x277D82BD8](v88);
        }

        if (v89)
        {
          MEMORY[0x277D82BD8](v90);
        }

        if (v91)
        {
          MEMORY[0x277D82BD8](v92);
        }

        if (v93)
        {
          MEMORY[0x277D82BD8](v94);
        }

        MEMORY[0x277D82BD8](descriptor16);
        v232 = 1;
      }

      else if ((v247 & 0x800) != 0)
      {
        descriptor17 = [v251 descriptor];
        v83 = 0;
        v81 = 0;
        v79 = 0;
        v77 = 0;
        v75 = 0;
        if (descriptor17 && (v84 = [v251 descriptor], v83 = 1, (objc_msgSend(v84, "isSplatOnly") & 1) != 0))
        {
          v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v81 = 1;
          v80 = [v82 localizedStringForKey:@"RSR_DRIVING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v79 = 1;
          v16 = MEMORY[0x277D82BE0](v80);
        }

        else
        {
          v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v77 = 1;
          v76 = [v78 localizedStringForKey:@"DRIVING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v75 = 1;
          v16 = MEMORY[0x277D82BE0](v76);
        }

        v248 = v16;
        if (v75)
        {
          MEMORY[0x277D82BD8](v76);
        }

        if (v77)
        {
          MEMORY[0x277D82BD8](v78);
        }

        if (v79)
        {
          MEMORY[0x277D82BD8](v80);
        }

        if (v81)
        {
          MEMORY[0x277D82BD8](v82);
        }

        if (v83)
        {
          MEMORY[0x277D82BD8](v84);
        }

        MEMORY[0x277D82BD8](descriptor17);
        v232 = 1;
      }

      else if ((v247 & 0x1000) != 0)
      {
        descriptor18 = [v251 descriptor];
        v73 = 0;
        v71 = 0;
        v69 = 0;
        v67 = 0;
        v65 = 0;
        if (descriptor18 && (v74 = [v251 descriptor], v73 = 1, (objc_msgSend(v74, "isSplatOnly") & 1) != 0))
        {
          v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v71 = 1;
          v70 = [v72 localizedStringForKey:@"RSR_WOMBAT_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v69 = 1;
          v17 = MEMORY[0x277D82BE0](v70);
        }

        else
        {
          v68 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v67 = 1;
          v66 = [v68 localizedStringForKey:@"WOMBAT_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v65 = 1;
          v17 = MEMORY[0x277D82BE0](v66);
        }

        v248 = v17;
        if (v65)
        {
          MEMORY[0x277D82BD8](v66);
        }

        if (v67)
        {
          MEMORY[0x277D82BD8](v68);
        }

        if (v69)
        {
          MEMORY[0x277D82BD8](v70);
        }

        if (v71)
        {
          MEMORY[0x277D82BD8](v72);
        }

        if (v73)
        {
          MEMORY[0x277D82BD8](v74);
        }

        MEMORY[0x277D82BD8](descriptor18);
        v232 = 1;
      }

      else
      {
        v248 = 0;
        v232 = 1;
      }
    }

    else
    {
      v38 = MEMORY[0x277CCACA8];
      descriptor19 = [v251 descriptor];
      v183 = 0;
      v181 = 0;
      v179 = 0;
      v177 = 0;
      v175 = 0;
      if (descriptor19 && (v184 = [v251 descriptor], v183 = 1, (objc_msgSend(v184, "isSplatOnly") & 1) != 0))
      {
        v182 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v181 = 1;
        v180 = [v182 localizedStringForKey:@"RSR_BATTERY_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v179 = 1;
        v37 = v180;
      }

      else
      {
        v178 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v177 = 1;
        v176 = [v178 localizedStringForKey:@"BATTERY_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v175 = 1;
        v37 = v176;
      }

      v248 = [v38 stringWithFormat:v37, v227];
      if (v175)
      {
        MEMORY[0x277D82BD8](v176);
      }

      if (v177)
      {
        MEMORY[0x277D82BD8](v178);
      }

      if (v179)
      {
        MEMORY[0x277D82BD8](v180);
      }

      if (v181)
      {
        MEMORY[0x277D82BD8](v182);
      }

      if (v183)
      {
        MEMORY[0x277D82BD8](v184);
      }

      MEMORY[0x277D82BD8](descriptor19);
      v232 = 1;
    }

    objc_storeStrong(&v227, 0);
  }

  objc_storeStrong(&v248, 0);
  objc_storeStrong(&v250, 0);
  objc_storeStrong(&v251, 0);
  objc_storeStrong(location, 0);
  v18 = v248;

  return v18;
}

- (SUSettingsStatefulUIManager)ownerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerManager);

  return WeakRetained;
}

@end