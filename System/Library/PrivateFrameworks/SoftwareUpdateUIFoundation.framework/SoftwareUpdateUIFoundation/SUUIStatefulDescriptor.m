@interface SUUIStatefulDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescriptor:(id)a3;
- (BOOL)isEqualToDescriptor:(id)a3 includeDocumentationComparison:(BOOL)a4;
- (SUUIStatefulUIManager)ownerManager;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (id)initForDescriptor:(unint64_t)a3 fromScanResults:(id)a4 managedBy:(id)a5;
- (id)updateName;
- (unint64_t)hash;
- (unint64_t)maskedDescriptorRole;
- (void)assignState:(int64_t)a3;
- (void)assignState:(int64_t)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7;
- (void)assignState:(int64_t)a3 fromScanResults:(id)a4 withConcreteError:(id)a5;
- (void)resolveInstallationError:(id)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7;
- (void)updateStateFromConcreteDownload:(id)a3 downloadable:(BOOL)a4 downloadError:(id)a5 isUpdateReadyForInstallation:(BOOL)a6 updateInstallationError:(id)a7 error:(id)a8;
- (void)updateStateFromProgressedDownload:(id)a3;
- (void)updateStateWithScanResults:(id)a3 andWithConcreteError:(id)a4;
@end

@implementation SUUIStatefulDescriptor

- (id)initForDescriptor:(unint64_t)a3 fromScanResults:(id)a4 managedBy:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v44 = self;
  v43 = a2;
  v42 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v5 = v44;
  v44 = 0;
  v39.receiver = v5;
  v39.super_class = SUUIStatefulDescriptor;
  v32 = [(SUUIStatefulDescriptor *)&v39 init];
  v44 = v32;
  objc_storeStrong(&v44, v32);
  if (!v32)
  {
    goto LABEL_14;
  }

  *(v44 + 3) = 0;
  *(v44 + 4) = v42;
  objc_storeWeak(v44 + 7, v40);
  if (!v42)
  {
    v6 = [location preferredDescriptor];
    v7 = *(v44 + 5);
    *(v44 + 5) = v6;
    MEMORY[0x277D82BD8](v7);
    v8 = [location isPreferredUpdateDownloadable];
    *(v44 + 16) = v8;
    v9 = [location preferredUpdateDownloadError];
    v10 = *(v44 + 6);
    *(v44 + 6) = v9;
    MEMORY[0x277D82BD8](v10);
LABEL_9:
    if (!*(v44 + 5))
    {
      v24 = +[SUUILoggingContext statefulUILogger];
      v33 = [v24 oslog];
      MEMORY[0x277D82BD8](v24);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v46, "[SUUIStatefulDescriptor initForDescriptor:fromScanResults:managedBy:]");
        _os_log_error_impl(&dword_26ADE5000, v33, OS_LOG_TYPE_ERROR, "%s: Could not instantiate a stateful descriptor for nil SUUIDescriptor.", v46, 0xCu);
      }

      objc_storeStrong(&v33, 0);
      v45 = 0;
      v34 = 1;
      goto LABEL_15;
    }

    v21 = MEMORY[0x277CCACA8];
    v23 = [*(v44 + 5) productBuildVersion];
    v22 = [v21 stringWithFormat:@"%@.stateful-ui.descriptor.%@.work-queue", @"com.apple.SoftwareUpdateUI", v23];
    v17 = v22;
    v18 = dispatch_queue_create([v22 UTF8String], 0);
    v19 = *(v44 + 1);
    *(v44 + 1) = v18;
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    [v44 updateStateWithScanResults:location andWithConcreteError:0];
LABEL_14:
    v45 = MEMORY[0x277D82BE0](v44);
    v34 = 1;
    goto LABEL_15;
  }

  if (v42 == 1)
  {
    v11 = [location alternateDescriptor];
    v12 = *(v44 + 5);
    *(v44 + 5) = v11;
    MEMORY[0x277D82BD8](v12);
    v13 = [location isAlternateUpdateDownloadable];
    *(v44 + 16) = v13;
    v14 = [location alternateUpdateDownloadError];
    v15 = *(v44 + 6);
    *(v44 + 6) = v14;
    MEMORY[0x277D82BD8](v15);
    goto LABEL_9;
  }

  v30 = +[SUUILoggingContext statefulUILogger];
  v38 = [v30 oslog];
  MEMORY[0x277D82BD8](v30);
  v37 = 16;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    log = v38;
    type = v37;
    v29 = SUUIStatefulDescriptorRoleToString(v42);
    v25 = MEMORY[0x277D82BE0](v29);
    v36 = v25;
    v16 = objc_opt_class();
    v28 = NSStringFromClass(v16);
    v35 = MEMORY[0x277D82BE0](v28);
    __os_log_helper_16_2_3_8_32_8_66_8_66(v47, "[SUUIStatefulDescriptor initForDescriptor:fromScanResults:managedBy:]", v25, v35);
    _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Could not use descriptor of type %{public}@ for %{public}@ instantiation.", v47, 0x20u);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  v45 = MEMORY[0x277D82BE0](v44);
  v34 = 1;
LABEL_15:
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v44, 0);
  *MEMORY[0x277D85DE8];
  return v45;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(SUUIStatefulDescriptor *)v16 currentState];
  [v13 setCurrentState:v3];
  v4 = [(SUUIStatefulDescriptor *)v16 role];
  [v13 setRole:v4];
  v7 = [(SUUIStatefulDescriptor *)v16 ownerManager];
  [v13 setOwnerManager:?];
  MEMORY[0x277D82BD8](v7);
  v9 = [(SUUIStatefulDescriptor *)v16 descriptor];
  v8 = [(SUUIDescriptor *)v9 copyWithZone:v14];
  [v13 setDescriptor:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v5 = [(SUUIStatefulDescriptor *)v16 isDownloadable];
  [v13 setUpdateDownloadable:v5];
  v11 = [(SUUIStatefulDescriptor *)v16 updateDownloadError];
  v10 = [(SUUIStatefulError *)v11 copyWithZone:v14];
  [v13 setUpdateDownloadError:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v12;
}

- (id)updateName
{
  v3 = [(SUUIStatefulDescriptor *)self descriptor];
  v4 = [(SUUIDescriptor *)v3 updateName];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (BOOL)isEqualToDescriptor:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(SUUIStatefulDescriptor *)v6 isEqualToDescriptor:location[0] includeDocumentationComparison:0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)isEqualToDescriptor:(id)a3 includeDocumentationComparison:(BOOL)a4
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = a4;
  v41 = [(SUUIStatefulDescriptor *)v44 descriptor];
  if (a4)
  {
    if ([v41 isEqual:location[0]])
    {
      v39 = [v41 documentation];
      v38 = [location[0] documentation];
      if (v39 || v38)
      {
        if (v39 && v38)
        {
          v12 = [v39 updateIcon];
          v36 = 0;
          v34 = 0;
          v32 = 0;
          if (v12 || (v37 = [v38 updateIcon], v36 = 1, v11 = 1, v37))
          {
            v35 = [v39 updateIcon];
            v34 = 1;
            v33 = [v38 updateIcon];
            v32 = 1;
            v11 = [v35 isEqual:?];
          }

          if (v32)
          {
            MEMORY[0x277D82BD8](v33);
          }

          if (v34)
          {
            MEMORY[0x277D82BD8](v35);
          }

          if (v36)
          {
            MEMORY[0x277D82BD8](v37);
          }

          MEMORY[0x277D82BD8](v12);
          v10 = [v39 releaseNotesSummary];
          v30 = 0;
          v28 = 0;
          v26 = 0;
          if (v10 || (v31 = [v38 releaseNotesSummary], v30 = 1, v9 = 1, v31))
          {
            v29 = [v39 releaseNotesSummary];
            v28 = 1;
            v27 = [v38 releaseNotesSummary];
            v26 = 1;
            v9 = [v29 isEqual:?];
          }

          if (v26)
          {
            MEMORY[0x277D82BD8](v27);
          }

          if (v28)
          {
            MEMORY[0x277D82BD8](v29);
          }

          if (v30)
          {
            MEMORY[0x277D82BD8](v31);
          }

          MEMORY[0x277D82BD8](v10);
          v8 = [v39 releaseNotes];
          v24 = 0;
          v22 = 0;
          v20 = 0;
          if (v8 || (v25 = [v38 releaseNotes], v24 = 1, v7 = 1, v25))
          {
            v23 = [v39 releaseNotes];
            v22 = 1;
            v21 = [v38 releaseNotes];
            v20 = 1;
            v7 = [v23 isEqual:?];
          }

          if (v20)
          {
            MEMORY[0x277D82BD8](v21);
          }

          if (v22)
          {
            MEMORY[0x277D82BD8](v23);
          }

          if (v24)
          {
            MEMORY[0x277D82BD8](v25);
          }

          MEMORY[0x277D82BD8](v8);
          v6 = [v39 licenseAgreement];
          v18 = 0;
          v16 = 0;
          v14 = 0;
          if (v6 || (v19 = [v38 licenseAgreement], v18 = 1, v5 = 1, v19))
          {
            v17 = [v39 licenseAgreement];
            v16 = 1;
            v15 = [v38 licenseAgreement];
            v14 = 1;
            v5 = [v17 isEqual:?];
          }

          if (v14)
          {
            MEMORY[0x277D82BD8](v15);
          }

          if (v16)
          {
            MEMORY[0x277D82BD8](v17);
          }

          if (v18)
          {
            MEMORY[0x277D82BD8](v19);
          }

          MEMORY[0x277D82BD8](v6);
          v45 = (((((((v11 & 1) != 0) & v9 & 1) != 0) & v7 & 1) != 0) & v5 & 1) != 0;
          v40 = 1;
        }

        else
        {
          v45 = 0;
          v40 = 1;
        }
      }

      else
      {
        v45 = 1;
        v40 = 1;
      }

      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
    }

    else
    {
      v45 = 0;
      v40 = 1;
    }
  }

  else
  {
    v45 = [v41 isEqual:location[0]] & 1;
    v40 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  return v45 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if (v26 == location[0])
    {
      v27 = 1;
      v24 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = MEMORY[0x277D82BE0](location[0]);
        v8 = [(SUUIStatefulDescriptor *)v26 descriptor];
        v9 = [v23 descriptor];
        v21 = 0;
        v19 = 0;
        v17 = 0;
        v15 = 0;
        v13 = 0;
        v11 = 0;
        v10 = 0;
        if (([(SUUIDescriptor *)v8 isEqual:?]& 1) != 0)
        {
          v7 = [(SUUIStatefulDescriptor *)v26 currentState];
          v10 = 0;
          if (v7 == [v23 currentState])
          {
            v6 = [(SUUIStatefulDescriptor *)v26 isDownloadable];
            v10 = 0;
            if (v6 == [v23 isDownloadable])
            {
              v22 = [(SUUIStatefulDescriptor *)v26 updateDownloadError];
              v21 = 1;
              if (v22 || (v20 = [v23 updateDownloadError], v19 = 1, v5 = 1, v20))
              {
                v18 = [(SUUIStatefulDescriptor *)v26 updateDownloadError];
                v17 = 1;
                v16 = [v23 updateDownloadError];
                v15 = 1;
                v4 = v26;
                v14 = [(SUUIStatefulDescriptor *)v26 ownerManager];
                v13 = 1;
                v12 = [(SUUIStatefulUIManager *)v14 currentDownload];
                v11 = 1;
                v5 = [(SUUIStatefulError *)v18 isIntrinsicallyEquivalentToError:v16 withStatefulDescriptor:v4 download:?];
              }

              v10 = v5;
            }
          }
        }

        v27 = v10 & 1;
        if (v11)
        {
          MEMORY[0x277D82BD8](v12);
        }

        if (v13)
        {
          MEMORY[0x277D82BD8](v14);
        }

        if (v15)
        {
          MEMORY[0x277D82BD8](v16);
        }

        if (v17)
        {
          MEMORY[0x277D82BD8](v18);
        }

        if (v19)
        {
          MEMORY[0x277D82BD8](v20);
        }

        if (v21)
        {
          MEMORY[0x277D82BD8](v22);
        }

        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v8);
        v24 = 1;
        objc_storeStrong(&v23, 0);
      }

      else
      {
        v27 = 0;
        v24 = 1;
      }
    }
  }

  else
  {
    v27 = 0;
    v24 = 1;
  }

  objc_storeStrong(location, 0);
  return v27 & 1;
}

- (unint64_t)hash
{
  v5 = [(SUUIStatefulDescriptor *)self descriptor];
  v3 = [(SUUIDescriptor *)v5 hash];
  v4 = v3 ^ [(SUUIStatefulDescriptor *)self role];
  v6 = v4 ^ [(SUUIStatefulDescriptor *)self currentState];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

- (id)descriptionDictionary
{
  v75[8] = *MEMORY[0x277D85DE8];
  v61 = self;
  v60[1] = a2;
  v60[0] = MEMORY[0x277D82BE0](&stru_287B87CD0);
  v39 = [(SUUIStatefulDescriptor *)v61 descriptor];
  v59 = [(SUUIDescriptor *)v39 documentation];
  MEMORY[0x277D82BD8](v39);
  v58 = [(SUUIStatefulDescriptor *)v61 ownerManager];
  if (v58 && (([v58 hidingPreferredDescriptor] & 1) != 0 || (objc_msgSend(v58, "hidingAlternateDescriptor") & 1) != 0))
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v61 maskedDescriptorRole]);
    v2 = [v37 stringWithFormat:@"maskedRole = %@, ", v38];
    v3 = v60[0];
    v60[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v38);
  }

  v74[0] = @"role";
  v26 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v61 role]);
  v75[0] = v26;
  v74[1] = @"maskedDescriptorRole";
  v75[1] = v60[0];
  v74[2] = @"currentState";
  v28 = MEMORY[0x277CCACA8];
  v27 = SUUIStatefulDescriptorStateToString([(SUUIStatefulDescriptor *)v61 currentState]);
  v29 = [v28 stringWithFormat:@"%@ (%lu)", v27, -[SUUIStatefulDescriptor currentState](v61, "currentState")];
  v75[2] = v29;
  v74[3] = @"descriptor";
  v31 = MEMORY[0x277CCACA8];
  v30 = [(SUUIStatefulDescriptor *)v61 descriptor];
  v32 = [(SUUIStatefulDescriptor *)v61 descriptor];
  v33 = [v31 stringWithFormat:@"%@ (%p)", v30, v32];
  v75[3] = v33;
  v74[4] = @"updateDownloadable";
  if ([(SUUIStatefulDescriptor *)v61 isDownloadable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v34 = v4;
  v5 = v4;
  v35 = v34;
  v75[4] = v35;
  v74[5] = @"updateDownloadError";
  v36 = [(SUUIStatefulDescriptor *)v61 updateDownloadError];
  location = 0;
  objc_storeStrong(&location, v36);
  v68 = 0;
  if (location)
  {
    v6 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v69 = [MEMORY[0x277CBEB68] null];
    v68 = 1;
    v6 = MEMORY[0x277D82BE0](v69);
  }

  v71 = v6;
  if (v68)
  {
    MEMORY[0x277D82BD8](v69);
  }

  objc_storeStrong(&location, 0);
  v23 = v71;
  v7 = v71;
  v24 = v23;
  v75[5] = v24;
  v74[6] = @"ownerManager";
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v58];
  v75[6] = v25;
  v74[7] = @"documentation";
  v56 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  v48 = 0;
  v46 = 0;
  v44 = 0;
  v42 = 0;
  v40 = 0;
  if (v59)
  {
    v72[0] = @"hasUpdateIcon";
    v57 = [v59 updateIcon];
    v56 = 1;
    v66 = v57 != 0;
    if (v57)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v18 = v8;
    v9 = v8;
    v55 = v18;
    v54 = 1;
    v73[0] = v55;
    v72[1] = @"hasReleaseNotes";
    v53 = [v59 releaseNotes];
    v52 = 1;
    v65 = v53 != 0;
    if (v53)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v19 = v10;
    v11 = v10;
    v51 = v19;
    v50 = 1;
    v73[1] = v51;
    v72[2] = @"hasReleaseNotesSummary";
    v49 = [v59 releaseNotesSummary];
    v48 = 1;
    v64 = v49 != 0;
    if (v49)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v20 = v12;
    v13 = v12;
    v47 = v20;
    v46 = 1;
    v73[2] = v47;
    v72[3] = @"hasLicenseAgreement";
    v45 = [v59 licenseAgreement];
    v44 = 1;
    v63 = v45 != 0;
    if (v45)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v21 = v14;
    v15 = v14;
    v43 = v21;
    v42 = 1;
    v73[3] = v43;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:4];
    v40 = 1;
    v22 = v41;
  }

  else
  {
    v22 = MEMORY[0x277CBEC10];
  }

  v75[7] = v22;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:8];
  if (v40)
  {
    MEMORY[0x277D82BD8](v41);
  }

  if (v42)
  {
    MEMORY[0x277D82BD8](v43);
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](v45);
  }

  if (v46)
  {
    MEMORY[0x277D82BD8](v47);
  }

  if (v48)
  {
    MEMORY[0x277D82BD8](v49);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](v53);
  }

  if (v54)
  {
    MEMORY[0x277D82BD8](v55);
  }

  if (v56)
  {
    MEMORY[0x277D82BD8](v57);
  }

  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v26);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(v60, 0);
  *MEMORY[0x277D85DE8];
  v16 = v62;

  return v16;
}

- (void)updateStateWithScanResults:(id)a3 andWithConcreteError:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = [(SUUIStatefulDescriptor *)v18 maskedDescriptorRole];
  v9 = v18;
  v10 = [location[0] currentDownload];
  if (v15)
  {
    v7 = [location[0] isAlternateUpdateDownloadable];
  }

  else
  {
    v7 = [location[0] isPreferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (v15)
  {
    v12 = [location[0] alternateUpdateDownloadError];
    v11 = 1;
    v6 = v12;
  }

  else
  {
    v14 = [location[0] preferredUpdateDownloadError];
    v13 = 1;
    v6 = v14;
  }

  v4 = [location[0] isUpdateReadyForInstallation];
  v5 = [location[0] updateInstallationError];
  [SUUIStatefulDescriptor updateStateFromConcreteDownload:v9 downloadable:"updateStateFromConcreteDownload:downloadable:downloadError:isUpdateReadyForInstallation:updateInstallationError:error:" downloadError:v10 isUpdateReadyForInstallation:v7 != 0 updateInstallationError:v6 error:v4];
  MEMORY[0x277D82BD8](v5);
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)updateStateFromConcreteDownload:(id)a3 downloadable:(BOOL)a4 downloadError:(id)a5 isUpdateReadyForInstallation:(BOOL)a6 updateInstallationError:(id)a7 error:(id)a8
{
  v34 = self;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v31 = a4;
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = a6;
  v28 = 0;
  objc_storeStrong(&v28, a7);
  v27 = 0;
  objc_storeStrong(&v27, a8);
  objc_initWeak(&v26, v34);
  queue = v34->_workQueue;
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __144__SUUIStatefulDescriptor_updateStateFromConcreteDownload_downloadable_downloadError_isUpdateReadyForInstallation_updateInstallationError_error___block_invoke;
  v18 = &unk_279CC6DF0;
  objc_copyWeak(v23, &v26);
  v23[1] = v33;
  v19 = MEMORY[0x277D82BE0](location);
  v24 = v31;
  v20 = MEMORY[0x277D82BE0](v30);
  v21 = MEMORY[0x277D82BE0](v27);
  v25 = v29;
  v22 = MEMORY[0x277D82BE0](v28);
  dispatch_async(queue, &v14);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v23);
  objc_destroyWeak(&v26);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&location, 0);
}

void __144__SUUIStatefulDescriptor_updateStateFromConcreteDownload_downloadable_downloadError_isUpdateReadyForInstallation_updateInstallationError_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v20[2] = a1;
  v20[1] = a1;
  v20[0] = objc_loadWeakRetained((a1 + 64));
  v9 = 0;
  if (!v20[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v19 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      v7 = NSStringFromSelector(*(a1 + 72));
      v17 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIStatefulDescriptor updateStateFromConcreteDownload:downloadable:downloadError:isUpdateReadyForInstallation:updateInstallationError:error:]_block_invoke", v17);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v21, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
    v16 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v14 = [v20[0] descriptor];
    if (v14)
    {
      v1 = *(a1 + 32);
      v12 = 0;
      LOBYTE(v4) = 1;
      if (v1)
      {
        v13 = [*(a1 + 32) descriptor];
        v12 = 1;
        v4 = [v14 isEqual:?] ^ 1;
      }

      if (v12)
      {
        MEMORY[0x277D82BD8](v13);
      }

      if (v4)
      {
        [v20[0] assignState:1 fromConcreteDownload:*(a1 + 32) downloadable:*(a1 + 80) & 1 downloadError:*(a1 + 40) error:*(a1 + 48)];
        v15 = 1;
      }

      else
      {
        v11 = [*(a1 + 32) progress];
        if ([v11 isDone])
        {
          if (*(a1 + 81))
          {
            [v20[0] assignState:4 fromConcreteDownload:*(a1 + 32) downloadable:*(a1 + 80) & 1 downloadError:*(a1 + 40) error:*(a1 + 48)];
            v15 = 1;
          }

          else
          {
            [v20[0] resolveInstallationError:*(a1 + 56) fromConcreteDownload:*(a1 + 32) downloadable:*(a1 + 80) & 1 downloadError:*(a1 + 40) error:*(a1 + 48)];
            v15 = 0;
          }
        }

        else
        {
          v3 = v20[0];
          if ([v11 isStalled])
          {
            v2 = 3;
          }

          else
          {
            v2 = 2;
          }

          [v3 assignState:v2 fromConcreteDownload:*(a1 + 32) downloadable:*(a1 + 80) & 1 downloadError:*(a1 + 40) error:*(a1 + 48)];
          v15 = 1;
        }

        objc_storeStrong(&v11, 0);
      }
    }

    else
    {
      [v20[0] assignState:0];
      v15 = 1;
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v20, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateStateFromProgressedDownload:(id)a3
{
  v14 = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  objc_initWeak(&v11, v14);
  queue = v14->_workQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __60__SUUIStatefulDescriptor_updateStateFromProgressedDownload___block_invoke;
  v8 = &unk_279CC6368;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __60__SUUIStatefulDescriptor_updateStateFromProgressedDownload___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v16[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v15 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v15;
      type = v14;
      v6 = NSStringFromSelector(*(a1 + 48));
      v13 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v17, "[SUUIStatefulDescriptor updateStateFromProgressedDownload:]_block_invoke", v13);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v17, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    v12 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v11 = 1;
  }

  else if (*(a1 + 32))
  {
    v2 = [v16[0] descriptor];
    v1 = [*(a1 + 32) descriptor];
    v3 = [v2 isEqual:?];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    if (v3)
    {
      v10 = [*(a1 + 32) progress];
      if (([v10 isDone] & 1) == 0)
      {
        if (([v10 isStalled] & 1) == 0 || objc_msgSend(v16[0], "currentState") == 3)
        {
          if ([v16[0] currentState] != 2)
          {
            [v16[0] assignState:2];
          }
        }

        else
        {
          [v16[0] assignState:3];
        }
      }

      objc_storeStrong(&v10, 0);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    [v16[0] assignState:1];
    v11 = 1;
  }

  objc_storeStrong(v16, 0);
  *MEMORY[0x277D85DE8];
}

- (unint64_t)maskedDescriptorRole
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15[1] = a2;
  v15[0] = [(SUUIStatefulDescriptor *)self ownerManager];
  v14 = [(SUUIStatefulDescriptor *)v16 role];
  if (v15[0])
  {
    if ([v15[0] hidingPreferredDescriptor])
    {
      v17 = v14 != 1;
    }

    else
    {
      v17 = v14;
    }
  }

  else
  {
    v9 = +[SUUILoggingContext statefulUILogger];
    v13 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v8 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v16 role]);
      v3 = MEMORY[0x277D82BE0](v8);
      v11 = v3;
      v7 = [(SUUIStatefulDescriptor *)v16 descriptor];
      v6 = [(SUUIDescriptor *)v7 updateName];
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v18, "[SUUIStatefulDescriptor maskedDescriptorRole]", v3, v10, v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s [%{public}@, %{public}@, %p]: Could not get the masked descriptor type because the ownerManager is nil. This is likely a bug.", v18, 0x2Au);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v17 = v14;
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
  return v17;
}

- (void)assignState:(int64_t)a3 fromScanResults:(id)a4 withConcreteError:(id)a5
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = [(SUUIStatefulDescriptor *)v20 maskedDescriptorRole];
  v8 = v20;
  v9 = v18;
  v10 = [location currentDownload];
  if (v15)
  {
    v6 = [location isAlternateUpdateDownloadable];
  }

  else
  {
    v6 = [location isPreferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (v15)
  {
    v12 = [location alternateUpdateDownloadError];
    v11 = 1;
    v5 = v12;
  }

  else
  {
    v14 = [location preferredUpdateDownloadError];
    v13 = 1;
    v5 = v14;
  }

  [(SUUIStatefulDescriptor *)v8 assignState:v9 fromConcreteDownload:v10 downloadable:v6 != 0 downloadError:v5 error:v16];
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

- (void)assignState:(int64_t)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7
{
  v65 = *MEMORY[0x277D85DE8];
  v62 = self;
  v61 = a2;
  v60 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v58 = a5;
  v57 = 0;
  objc_storeStrong(&v57, a6);
  v56 = 0;
  objc_storeStrong(&v56, a7);
  v37 = [location progress];
  v38 = [v37 isDone];
  MEMORY[0x277D82BD8](v37);
  if (v38)
  {
    v32 = [v62 descriptor];
    v31 = [location descriptor];
    v33 = [v32 isEqual:?];
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    if (v33)
    {
      objc_storeStrong(&v57, 0);
    }
  }

  v30 = [v62 updateDownloadError];
  v55 = [v30 copy];
  MEMORY[0x277D82BD8](v30);
  [v62 setUpdateDownloadable:v58];
  if (v56)
  {
    v29 = v56;
  }

  else
  {
    v29 = v57;
  }

  [v62 setUpdateDownloadError:v29];
  v54 = 0;
  if (v57)
  {
    v54 = ([v57 shouldEnableUpdateOptionsWithStatefulDescriptor:v62 download:location] ^ 1) & 1;
  }

  [v62 setDownloadErrorPreventingUpdate:v54 & 1];
  v7 = [v62 currentState];
  if (v7 != v60)
  {
    goto LABEL_24;
  }

  v52 = 0;
  v50 = 0;
  if (v55 || (v53 = [v62 updateDownloadError], v52 = 1, v28 = 1, v53))
  {
    v51 = [v62 updateDownloadError];
    v50 = 1;
    v28 = [v55 isIntrinsicallyEquivalentToError:? withStatefulDescriptor:? download:?];
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](v53);
  }

  if ((v28 & 1) == 0)
  {
    v17 = +[SUUILoggingContext statefulUILogger];
    v43 = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v43;
      v12 = v42;
      v16 = SUUIStatefulDescriptorRoleToString([v62 role]);
      v8 = MEMORY[0x277D82BE0](v16);
      v41 = v8;
      v15 = [v62 descriptor];
      v14 = [v15 updateName];
      v9 = MEMORY[0x277D82BE0](v14);
      v40 = v9;
      v10 = v62;
      v13 = SUUIStatefulDescriptorStateToString(v60);
      v39 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v63, "[SUUIStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v8, v9, v10, v39, v60, v55, v62[6]);
      _os_log_impl(&dword_26ADE5000, v11, v12, "%s [%{public}@, %{public}@, %p]: Allowing to re-assign the state %{public}@ (%ld) because the old error is not intrinsically equivalent to the new error.\n\tPrevious Error: %{public}@\n\tNew Error: %{public}@", v63, 0x52u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v43, 0);
LABEL_24:
    [v62 assignState:v60];
    v44 = 0;
    goto LABEL_25;
  }

  v27 = +[SUUILoggingContext statefulUILogger];
  oslog = [v27 oslog];
  MEMORY[0x277D82BD8](v27);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v22 = type;
    v26 = SUUIStatefulDescriptorRoleToString([v62 role]);
    v18 = MEMORY[0x277D82BE0](v26);
    v47 = v18;
    v25 = [v62 descriptor];
    v24 = [v25 updateName];
    v19 = MEMORY[0x277D82BE0](v24);
    v46 = v19;
    v20 = v62;
    v23 = SUUIStatefulDescriptorStateToString(v60);
    v45 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_66_8_0(v64, "[SUUIStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v18, v19, v20, v45, v60);
    _os_log_impl(&dword_26ADE5000, log, v22, "%s [%{public}@, %{public}@, %p]: Skipping on state assignment as it matches the current state: %{public}@ (%ld)", v64, 0x3Eu);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(&oslog, 0);
  v44 = 1;
LABEL_25:
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)assignState:(int64_t)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v45 = self;
  v44 = a2;
  v43 = a3;
  v42 = [(SUUIStatefulDescriptor *)self currentState];
  if (v42 == v43)
  {
    v18 = +[SUUILoggingContext statefulUILogger];
    v41 = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v17 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v45 role]);
      v39 = MEMORY[0x277D82BE0](v17);
      v16 = [(SUUIStatefulDescriptor *)v45 descriptor];
      v15 = [(SUUIDescriptor *)v16 updateName];
      v38 = MEMORY[0x277D82BE0](v15);
      v14 = SUUIStatefulDescriptorStateToString(v42);
      location = MEMORY[0x277D82BE0](v14);
      __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_64_8_0(v47, "[SUUIStatefulDescriptor assignState:]", v39, v38, v45, location, v42);
      _os_log_impl(&dword_26ADE5000, v41, v40, "%s [%{public}@, %{public}@, %p]: Skipping on Descriptor State Assignment request: currentState == currentState (%@ (%ld))", v47, 0x3Eu);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
    }

    objc_storeStrong(&v41, 0);
  }

  else
  {
    v13 = +[SUUILoggingContext statefulUILogger];
    oslog = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v45 role]);
      v34 = MEMORY[0x277D82BE0](v12);
      v11 = [(SUUIStatefulDescriptor *)v45 descriptor];
      v10 = [(SUUIDescriptor *)v11 updateName];
      v33 = MEMORY[0x277D82BE0](v10);
      v9 = SUUIStatefulDescriptorStateToString(v42);
      v32 = MEMORY[0x277D82BE0](v9);
      v8 = SUUIStatefulDescriptorStateToString(v43);
      v31 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_0(v46, "[SUUIStatefulDescriptor assignState:]", v34, v33, v45, v32, v42, v31, v43);
      _os_log_impl(&dword_26ADE5000, oslog, v35, "%s [%{public}@, %{public}@, %p]: Assigning Descriptor state: %{public}@ (%ld) -> %{public}@ (%ld)", v46, 0x52u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&oslog, 0);
    v30 = [(SUUIStatefulDescriptor *)v45 ownerManager];
    v29 = v42;
    [(SUUIStatefulDescriptor *)v45 setCurrentState:v43];
    v6 = [v30 delegate];
    v27 = 0;
    v7 = 0;
    if (v6)
    {
      v28 = [v30 delegate];
      v27 = 1;
      v7 = objc_opt_respondsToSelector();
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      objc_initWeak(&from, v45);
      v5 = [MEMORY[0x277D643F8] sharedCore];
      v4 = [v30 delegateCallbackQueue];
      queue = [v5 selectDelegateCallbackQueue:?];
      v19 = MEMORY[0x277D85DD0];
      v20 = -1073741824;
      v21 = 0;
      v22 = __38__SUUIStatefulDescriptor_assignState___block_invoke;
      v23 = &unk_279CC6E18;
      objc_copyWeak(v25, &from);
      v25[1] = v44;
      v24 = MEMORY[0x277D82BE0](v30);
      v25[2] = v29;
      v25[3] = v43;
      dispatch_async(queue, &v19);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v24, 0);
      objc_destroyWeak(v25);
      objc_destroyWeak(&from);
    }

    objc_storeStrong(&v30, 0);
  }

  *MEMORY[0x277D85DE8];
}

void __38__SUUIStatefulDescriptor_assignState___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  if (!v14[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v13 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v7 = NSStringFromSelector(*(a1 + 48));
      v11 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUIStatefulDescriptor assignState:]_block_invoke", v11);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v4 = [*(a1 + 32) delegate];
    v3 = [v14[0] ownerManager];
    v1 = *(a1 + 56);
    v2 = *(a1 + 64);
    [v4 statefulUIManager:? descriptor:? didTransitionFromDescriptorState:? toState:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

- (void)resolveInstallationError:(id)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = 0;
  objc_storeStrong(&v51, a4);
  v50 = a5;
  v49 = 0;
  objc_storeStrong(&v49, a6);
  v48 = 0;
  objc_storeStrong(&v48, a7);
  v28 = +[SUUILoggingContext statefulUILogger];
  oslog = [v28 oslog];
  MEMORY[0x277D82BD8](v28);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v24 = type;
    v27 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v53 role]);
    v22 = MEMORY[0x277D82BE0](v27);
    v45 = v22;
    v26 = [(SUUIStatefulDescriptor *)v53 descriptor];
    v25 = [(SUUIDescriptor *)v26 updateName];
    v44 = MEMORY[0x277D82BE0](v25);
    __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v56, "[SUUIStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v22, v44, v53, location[0]);
    _os_log_impl(&dword_26ADE5000, log, v24, "%s [%{public}@, %{public}@, %p]: Resolving installation error: %{public}@", v56, 0x34u);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
  }

  objc_storeStrong(&oslog, 0);
  v43 = 4;
  v42 = 1;
  if (v48)
  {
    objc_storeStrong(&v48, v48);
  }

  else
  {
    objc_storeStrong(&v48, location[0]);
  }

  v41 = [location[0] traits];
  if ([v41 installationInProgress])
  {
    v43 = 5;
    objc_storeStrong(&v48, 0);
  }

  else if ([v41 installationInvalidState])
  {
    v21 = +[SUUILoggingContext statefulUILogger];
    v40 = [v21 oslog];
    MEMORY[0x277D82BD8](v21);
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v40;
      v17 = v39;
      v20 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v53 role]);
      v15 = MEMORY[0x277D82BE0](v20);
      v38 = v15;
      v19 = [(SUUIStatefulDescriptor *)v53 descriptor];
      v18 = [(SUUIDescriptor *)v19 updateName];
      v37 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v55, "[SUUIStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v15, v37, v53, v48);
      _os_log_impl(&dword_26ADE5000, v16, v17, "%s [%{public}@, %{public}@, %p]: Starting a new scan due to installation error: %{public}@", v55, 0x34u);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&v40, 0);
    v42 = 0;
    v14 = [(SUUIStatefulDescriptor *)v53 ownerManager];
    [(SUUIStatefulUIManager *)v14 checkForAvailableUpdates:1];
    MEMORY[0x277D82BD8](v14);
  }

  else if ([v41 installationRequiresKeybagOrPasswordUnlock])
  {
    objc_storeStrong(&v48, 0);
  }

  else
  {
    v13 = +[SUUILoggingContext statefulUILogger];
    v36 = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v36;
      v9 = v35;
      v12 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)v53 role]);
      v7 = MEMORY[0x277D82BE0](v12);
      v34 = v7;
      v11 = [(SUUIStatefulDescriptor *)v53 descriptor];
      v10 = [(SUUIDescriptor *)v11 updateName];
      v33 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v54, "[SUUIStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v7, v33, v53, v48);
      _os_log_impl(&dword_26ADE5000, v8, v9, "%s [%{public}@, %{public}@, %p]: Couldn't resolve the installation error: %{public}@", v54, 0x34u);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&v36, 0);
  }

  if (v42)
  {
    [(SUUIStatefulDescriptor *)v53 assignState:v43 fromConcreteDownload:v51 downloadable:v50 downloadError:v49 error:v48];
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (SUUIStatefulUIManager)ownerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerManager);

  return WeakRetained;
}

@end