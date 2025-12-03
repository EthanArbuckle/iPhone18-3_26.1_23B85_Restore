@interface SUUIStatefulDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescriptor:(id)descriptor;
- (BOOL)isEqualToDescriptor:(id)descriptor includeDocumentationComparison:(BOOL)comparison;
- (SUUIStatefulUIManager)ownerManager;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (id)initForDescriptor:(unint64_t)descriptor fromScanResults:(id)results managedBy:(id)by;
- (id)updateName;
- (unint64_t)hash;
- (unint64_t)maskedDescriptorRole;
- (void)assignState:(int64_t)state;
- (void)assignState:(int64_t)state fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error error:(id)a7;
- (void)assignState:(int64_t)state fromScanResults:(id)results withConcreteError:(id)error;
- (void)resolveInstallationError:(id)error fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)downloadError error:(id)a7;
- (void)updateStateFromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error isUpdateReadyForInstallation:(BOOL)installation updateInstallationError:(id)installationError error:(id)a8;
- (void)updateStateFromProgressedDownload:(id)download;
- (void)updateStateWithScanResults:(id)results andWithConcreteError:(id)error;
@end

@implementation SUUIStatefulDescriptor

- (id)initForDescriptor:(unint64_t)descriptor fromScanResults:(id)results managedBy:(id)by
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v43 = a2;
  descriptorCopy = descriptor;
  location = 0;
  objc_storeStrong(&location, results);
  v40 = 0;
  objc_storeStrong(&v40, by);
  v5 = selfCopy;
  selfCopy = 0;
  v39.receiver = v5;
  v39.super_class = SUUIStatefulDescriptor;
  v32 = [(SUUIStatefulDescriptor *)&v39 init];
  selfCopy = v32;
  objc_storeStrong(&selfCopy, v32);
  if (!v32)
  {
    goto LABEL_14;
  }

  *(selfCopy + 3) = 0;
  *(selfCopy + 4) = descriptorCopy;
  objc_storeWeak(selfCopy + 7, v40);
  if (!descriptorCopy)
  {
    preferredDescriptor = [location preferredDescriptor];
    v7 = *(selfCopy + 5);
    *(selfCopy + 5) = preferredDescriptor;
    MEMORY[0x277D82BD8](v7);
    isPreferredUpdateDownloadable = [location isPreferredUpdateDownloadable];
    *(selfCopy + 16) = isPreferredUpdateDownloadable;
    preferredUpdateDownloadError = [location preferredUpdateDownloadError];
    v10 = *(selfCopy + 6);
    *(selfCopy + 6) = preferredUpdateDownloadError;
    MEMORY[0x277D82BD8](v10);
LABEL_9:
    if (!*(selfCopy + 5))
    {
      v24 = +[SUUILoggingContext statefulUILogger];
      oslog = [v24 oslog];
      MEMORY[0x277D82BD8](v24);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v46, "[SUUIStatefulDescriptor initForDescriptor:fromScanResults:managedBy:]");
        _os_log_error_impl(&dword_26ADE5000, oslog, OS_LOG_TYPE_ERROR, "%s: Could not instantiate a stateful descriptor for nil SUUIDescriptor.", v46, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v45 = 0;
      v34 = 1;
      goto LABEL_15;
    }

    v21 = MEMORY[0x277CCACA8];
    productBuildVersion = [*(selfCopy + 5) productBuildVersion];
    v22 = [v21 stringWithFormat:@"%@.stateful-ui.descriptor.%@.work-queue", @"com.apple.SoftwareUpdateUI", productBuildVersion];
    v17 = v22;
    v18 = dispatch_queue_create([v22 UTF8String], 0);
    v19 = *(selfCopy + 1);
    *(selfCopy + 1) = v18;
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](productBuildVersion);
    [selfCopy updateStateWithScanResults:location andWithConcreteError:0];
LABEL_14:
    v45 = MEMORY[0x277D82BE0](selfCopy);
    v34 = 1;
    goto LABEL_15;
  }

  if (descriptorCopy == 1)
  {
    alternateDescriptor = [location alternateDescriptor];
    v12 = *(selfCopy + 5);
    *(selfCopy + 5) = alternateDescriptor;
    MEMORY[0x277D82BD8](v12);
    isAlternateUpdateDownloadable = [location isAlternateUpdateDownloadable];
    *(selfCopy + 16) = isAlternateUpdateDownloadable;
    alternateUpdateDownloadError = [location alternateUpdateDownloadError];
    v15 = *(selfCopy + 6);
    *(selfCopy + 6) = alternateUpdateDownloadError;
    MEMORY[0x277D82BD8](v15);
    goto LABEL_9;
  }

  v30 = +[SUUILoggingContext statefulUILogger];
  oslog2 = [v30 oslog];
  MEMORY[0x277D82BD8](v30);
  v37 = 16;
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
  {
    log = oslog2;
    type = v37;
    v29 = SUUIStatefulDescriptorRoleToString(descriptorCopy);
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

  objc_storeStrong(&oslog2, 0);
  v45 = MEMORY[0x277D82BE0](selfCopy);
  v34 = 1;
LABEL_15:
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v45;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v15 = a2;
  zoneCopy = zone;
  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  currentState = [(SUUIStatefulDescriptor *)selfCopy currentState];
  [v13 setCurrentState:currentState];
  role = [(SUUIStatefulDescriptor *)selfCopy role];
  [v13 setRole:role];
  ownerManager = [(SUUIStatefulDescriptor *)selfCopy ownerManager];
  [v13 setOwnerManager:?];
  MEMORY[0x277D82BD8](ownerManager);
  descriptor = [(SUUIStatefulDescriptor *)selfCopy descriptor];
  v8 = [(SUUIDescriptor *)descriptor copyWithZone:zoneCopy];
  [v13 setDescriptor:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](descriptor);
  isDownloadable = [(SUUIStatefulDescriptor *)selfCopy isDownloadable];
  [v13 setUpdateDownloadable:isDownloadable];
  updateDownloadError = [(SUUIStatefulDescriptor *)selfCopy updateDownloadError];
  v10 = [(SUUIStatefulError *)updateDownloadError copyWithZone:zoneCopy];
  [v13 setUpdateDownloadError:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](updateDownloadError);
  v12 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v12;
}

- (id)updateName
{
  descriptor = [(SUUIStatefulDescriptor *)self descriptor];
  updateName = [(SUUIDescriptor *)descriptor updateName];
  MEMORY[0x277D82BD8](descriptor);

  return updateName;
}

- (BOOL)isEqualToDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v4 = [(SUUIStatefulDescriptor *)selfCopy isEqualToDescriptor:location[0] includeDocumentationComparison:0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)isEqualToDescriptor:(id)descriptor includeDocumentationComparison:(BOOL)comparison
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  comparisonCopy = comparison;
  descriptor = [(SUUIStatefulDescriptor *)selfCopy descriptor];
  if (comparison)
  {
    if ([descriptor isEqual:location[0]])
    {
      documentation = [descriptor documentation];
      documentation2 = [location[0] documentation];
      if (documentation || documentation2)
      {
        if (documentation && documentation2)
        {
          updateIcon = [documentation updateIcon];
          v36 = 0;
          v34 = 0;
          v32 = 0;
          if (updateIcon || (v37 = [documentation2 updateIcon], v36 = 1, v11 = 1, v37))
          {
            updateIcon2 = [documentation updateIcon];
            v34 = 1;
            updateIcon3 = [documentation2 updateIcon];
            v32 = 1;
            v11 = [updateIcon2 isEqual:?];
          }

          if (v32)
          {
            MEMORY[0x277D82BD8](updateIcon3);
          }

          if (v34)
          {
            MEMORY[0x277D82BD8](updateIcon2);
          }

          if (v36)
          {
            MEMORY[0x277D82BD8](v37);
          }

          MEMORY[0x277D82BD8](updateIcon);
          releaseNotesSummary = [documentation releaseNotesSummary];
          v30 = 0;
          v28 = 0;
          v26 = 0;
          if (releaseNotesSummary || (v31 = [documentation2 releaseNotesSummary], v30 = 1, v9 = 1, v31))
          {
            releaseNotesSummary2 = [documentation releaseNotesSummary];
            v28 = 1;
            releaseNotesSummary3 = [documentation2 releaseNotesSummary];
            v26 = 1;
            v9 = [releaseNotesSummary2 isEqual:?];
          }

          if (v26)
          {
            MEMORY[0x277D82BD8](releaseNotesSummary3);
          }

          if (v28)
          {
            MEMORY[0x277D82BD8](releaseNotesSummary2);
          }

          if (v30)
          {
            MEMORY[0x277D82BD8](v31);
          }

          MEMORY[0x277D82BD8](releaseNotesSummary);
          releaseNotes = [documentation releaseNotes];
          v24 = 0;
          v22 = 0;
          v20 = 0;
          if (releaseNotes || (v25 = [documentation2 releaseNotes], v24 = 1, v7 = 1, v25))
          {
            releaseNotes2 = [documentation releaseNotes];
            v22 = 1;
            releaseNotes3 = [documentation2 releaseNotes];
            v20 = 1;
            v7 = [releaseNotes2 isEqual:?];
          }

          if (v20)
          {
            MEMORY[0x277D82BD8](releaseNotes3);
          }

          if (v22)
          {
            MEMORY[0x277D82BD8](releaseNotes2);
          }

          if (v24)
          {
            MEMORY[0x277D82BD8](v25);
          }

          MEMORY[0x277D82BD8](releaseNotes);
          licenseAgreement = [documentation licenseAgreement];
          v18 = 0;
          v16 = 0;
          v14 = 0;
          if (licenseAgreement || (v19 = [documentation2 licenseAgreement], v18 = 1, v5 = 1, v19))
          {
            licenseAgreement2 = [documentation licenseAgreement];
            v16 = 1;
            licenseAgreement3 = [documentation2 licenseAgreement];
            v14 = 1;
            v5 = [licenseAgreement2 isEqual:?];
          }

          if (v14)
          {
            MEMORY[0x277D82BD8](licenseAgreement3);
          }

          if (v16)
          {
            MEMORY[0x277D82BD8](licenseAgreement2);
          }

          if (v18)
          {
            MEMORY[0x277D82BD8](v19);
          }

          MEMORY[0x277D82BD8](licenseAgreement);
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

      objc_storeStrong(&documentation2, 0);
      objc_storeStrong(&documentation, 0);
    }

    else
    {
      v45 = 0;
      v40 = 1;
    }
  }

  else
  {
    v45 = [descriptor isEqual:location[0]] & 1;
    v40 = 1;
  }

  objc_storeStrong(&descriptor, 0);
  objc_storeStrong(location, 0);
  return v45 & 1;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (location[0])
  {
    if (selfCopy == location[0])
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
        descriptor = [(SUUIStatefulDescriptor *)selfCopy descriptor];
        descriptor2 = [v23 descriptor];
        v21 = 0;
        v19 = 0;
        v17 = 0;
        v15 = 0;
        v13 = 0;
        v11 = 0;
        v10 = 0;
        if (([(SUUIDescriptor *)descriptor isEqual:?]& 1) != 0)
        {
          currentState = [(SUUIStatefulDescriptor *)selfCopy currentState];
          v10 = 0;
          if (currentState == [v23 currentState])
          {
            isDownloadable = [(SUUIStatefulDescriptor *)selfCopy isDownloadable];
            v10 = 0;
            if (isDownloadable == [v23 isDownloadable])
            {
              updateDownloadError = [(SUUIStatefulDescriptor *)selfCopy updateDownloadError];
              v21 = 1;
              if (updateDownloadError || (v20 = [v23 updateDownloadError], v19 = 1, v5 = 1, v20))
              {
                updateDownloadError2 = [(SUUIStatefulDescriptor *)selfCopy updateDownloadError];
                v17 = 1;
                updateDownloadError3 = [v23 updateDownloadError];
                v15 = 1;
                v4 = selfCopy;
                ownerManager = [(SUUIStatefulDescriptor *)selfCopy ownerManager];
                v13 = 1;
                currentDownload = [(SUUIStatefulUIManager *)ownerManager currentDownload];
                v11 = 1;
                v5 = [(SUUIStatefulError *)updateDownloadError2 isIntrinsicallyEquivalentToError:updateDownloadError3 withStatefulDescriptor:v4 download:?];
              }

              v10 = v5;
            }
          }
        }

        v27 = v10 & 1;
        if (v11)
        {
          MEMORY[0x277D82BD8](currentDownload);
        }

        if (v13)
        {
          MEMORY[0x277D82BD8](ownerManager);
        }

        if (v15)
        {
          MEMORY[0x277D82BD8](updateDownloadError3);
        }

        if (v17)
        {
          MEMORY[0x277D82BD8](updateDownloadError2);
        }

        if (v19)
        {
          MEMORY[0x277D82BD8](v20);
        }

        if (v21)
        {
          MEMORY[0x277D82BD8](updateDownloadError);
        }

        MEMORY[0x277D82BD8](descriptor2);
        MEMORY[0x277D82BD8](descriptor);
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
  descriptor = [(SUUIStatefulDescriptor *)self descriptor];
  v3 = [(SUUIDescriptor *)descriptor hash];
  v4 = v3 ^ [(SUUIStatefulDescriptor *)self role];
  v6 = v4 ^ [(SUUIStatefulDescriptor *)self currentState];
  MEMORY[0x277D82BD8](descriptor);
  return v6;
}

- (id)descriptionDictionary
{
  v75[8] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v60[1] = a2;
  v60[0] = MEMORY[0x277D82BE0](&stru_287B87CD0);
  descriptor = [(SUUIStatefulDescriptor *)selfCopy descriptor];
  documentation = [(SUUIDescriptor *)descriptor documentation];
  MEMORY[0x277D82BD8](descriptor);
  ownerManager = [(SUUIStatefulDescriptor *)selfCopy ownerManager];
  if (ownerManager && (([ownerManager hidingPreferredDescriptor] & 1) != 0 || (objc_msgSend(ownerManager, "hidingAlternateDescriptor") & 1) != 0))
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy maskedDescriptorRole]);
    v2 = [v37 stringWithFormat:@"maskedRole = %@, ", v38];
    v3 = v60[0];
    v60[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v38);
  }

  v74[0] = @"role";
  v26 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy role]);
  v75[0] = v26;
  v74[1] = @"maskedDescriptorRole";
  v75[1] = v60[0];
  v74[2] = @"currentState";
  v28 = MEMORY[0x277CCACA8];
  v27 = SUUIStatefulDescriptorStateToString([(SUUIStatefulDescriptor *)selfCopy currentState]);
  v29 = [v28 stringWithFormat:@"%@ (%lu)", v27, -[SUUIStatefulDescriptor currentState](selfCopy, "currentState")];
  v75[2] = v29;
  v74[3] = @"descriptor";
  v31 = MEMORY[0x277CCACA8];
  descriptor2 = [(SUUIStatefulDescriptor *)selfCopy descriptor];
  descriptor3 = [(SUUIStatefulDescriptor *)selfCopy descriptor];
  v33 = [v31 stringWithFormat:@"%@ (%p)", descriptor2, descriptor3];
  v75[3] = v33;
  v74[4] = @"updateDownloadable";
  if ([(SUUIStatefulDescriptor *)selfCopy isDownloadable])
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
  updateDownloadError = [(SUUIStatefulDescriptor *)selfCopy updateDownloadError];
  location = 0;
  objc_storeStrong(&location, updateDownloadError);
  v68 = 0;
  if (location)
  {
    v6 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v68 = 1;
    v6 = MEMORY[0x277D82BE0](null);
  }

  v71 = v6;
  if (v68)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v23 = v71;
  v7 = v71;
  v24 = v23;
  v75[5] = v24;
  v74[6] = @"ownerManager";
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", ownerManager];
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
  if (documentation)
  {
    v72[0] = @"hasUpdateIcon";
    updateIcon = [documentation updateIcon];
    v56 = 1;
    v66 = updateIcon != 0;
    if (updateIcon)
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
    releaseNotes = [documentation releaseNotes];
    v52 = 1;
    v65 = releaseNotes != 0;
    if (releaseNotes)
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
    releaseNotesSummary = [documentation releaseNotesSummary];
    v48 = 1;
    v64 = releaseNotesSummary != 0;
    if (releaseNotesSummary)
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
    licenseAgreement = [documentation licenseAgreement];
    v44 = 1;
    v63 = licenseAgreement != 0;
    if (licenseAgreement)
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
    MEMORY[0x277D82BD8](licenseAgreement);
  }

  if (v46)
  {
    MEMORY[0x277D82BD8](v47);
  }

  if (v48)
  {
    MEMORY[0x277D82BD8](releaseNotesSummary);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](releaseNotes);
  }

  if (v54)
  {
    MEMORY[0x277D82BD8](v55);
  }

  if (v56)
  {
    MEMORY[0x277D82BD8](updateIcon);
  }

  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](updateDownloadError);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](descriptor3);
  MEMORY[0x277D82BD8](descriptor2);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v26);
  objc_storeStrong(&ownerManager, 0);
  objc_storeStrong(&documentation, 0);
  objc_storeStrong(v60, 0);
  *MEMORY[0x277D85DE8];
  v16 = v62;

  return v16;
}

- (void)updateStateWithScanResults:(id)results andWithConcreteError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v16 = 0;
  objc_storeStrong(&v16, error);
  maskedDescriptorRole = [(SUUIStatefulDescriptor *)selfCopy maskedDescriptorRole];
  v9 = selfCopy;
  currentDownload = [location[0] currentDownload];
  if (maskedDescriptorRole)
  {
    isAlternateUpdateDownloadable = [location[0] isAlternateUpdateDownloadable];
  }

  else
  {
    isAlternateUpdateDownloadable = [location[0] isPreferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (maskedDescriptorRole)
  {
    alternateUpdateDownloadError = [location[0] alternateUpdateDownloadError];
    v11 = 1;
    v6 = alternateUpdateDownloadError;
  }

  else
  {
    preferredUpdateDownloadError = [location[0] preferredUpdateDownloadError];
    v13 = 1;
    v6 = preferredUpdateDownloadError;
  }

  isUpdateReadyForInstallation = [location[0] isUpdateReadyForInstallation];
  updateInstallationError = [location[0] updateInstallationError];
  [SUUIStatefulDescriptor updateStateFromConcreteDownload:v9 downloadable:"updateStateFromConcreteDownload:downloadable:downloadError:isUpdateReadyForInstallation:updateInstallationError:error:" downloadError:currentDownload isUpdateReadyForInstallation:isAlternateUpdateDownloadable != 0 updateInstallationError:v6 error:isUpdateReadyForInstallation];
  MEMORY[0x277D82BD8](updateInstallationError);
  if (v11)
  {
    MEMORY[0x277D82BD8](alternateUpdateDownloadError);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  }

  MEMORY[0x277D82BD8](currentDownload);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)updateStateFromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error isUpdateReadyForInstallation:(BOOL)installation updateInstallationError:(id)installationError error:(id)a8
{
  selfCopy = self;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, download);
  downloadableCopy = downloadable;
  v30 = 0;
  objc_storeStrong(&v30, error);
  installationCopy = installation;
  v28 = 0;
  objc_storeStrong(&v28, installationError);
  v27 = 0;
  objc_storeStrong(&v27, a8);
  objc_initWeak(&v26, selfCopy);
  queue = selfCopy->_workQueue;
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __144__SUUIStatefulDescriptor_updateStateFromConcreteDownload_downloadable_downloadError_isUpdateReadyForInstallation_updateInstallationError_error___block_invoke;
  v18 = &unk_279CC6DF0;
  objc_copyWeak(v23, &v26);
  v23[1] = v33;
  v19 = MEMORY[0x277D82BE0](location);
  v24 = downloadableCopy;
  v20 = MEMORY[0x277D82BE0](v30);
  v21 = MEMORY[0x277D82BE0](v27);
  v25 = installationCopy;
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

- (void)updateStateFromProgressedDownload:(id)download
{
  selfCopy = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, download);
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_workQueue;
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
  selfCopy = self;
  v15[1] = a2;
  v15[0] = [(SUUIStatefulDescriptor *)self ownerManager];
  role = [(SUUIStatefulDescriptor *)selfCopy role];
  if (v15[0])
  {
    if ([v15[0] hidingPreferredDescriptor])
    {
      v17 = role != 1;
    }

    else
    {
      v17 = role;
    }
  }

  else
  {
    v9 = +[SUUILoggingContext statefulUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v12 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      type = v12;
      v8 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy role]);
      v3 = MEMORY[0x277D82BE0](v8);
      v11 = v3;
      descriptor = [(SUUIStatefulDescriptor *)selfCopy descriptor];
      updateName = [(SUUIDescriptor *)descriptor updateName];
      v10 = MEMORY[0x277D82BE0](updateName);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v18, "[SUUIStatefulDescriptor maskedDescriptorRole]", v3, v10, selfCopy);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s [%{public}@, %{public}@, %p]: Could not get the masked descriptor type because the ownerManager is nil. This is likely a bug.", v18, 0x2Au);
      MEMORY[0x277D82BD8](updateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&oslog, 0);
    v17 = role;
  }

  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];
  return v17;
}

- (void)assignState:(int64_t)state fromScanResults:(id)results withConcreteError:(id)error
{
  selfCopy = self;
  v19 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, results);
  v16 = 0;
  objc_storeStrong(&v16, error);
  maskedDescriptorRole = [(SUUIStatefulDescriptor *)selfCopy maskedDescriptorRole];
  v8 = selfCopy;
  v9 = stateCopy;
  currentDownload = [location currentDownload];
  if (maskedDescriptorRole)
  {
    isAlternateUpdateDownloadable = [location isAlternateUpdateDownloadable];
  }

  else
  {
    isAlternateUpdateDownloadable = [location isPreferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (maskedDescriptorRole)
  {
    alternateUpdateDownloadError = [location alternateUpdateDownloadError];
    v11 = 1;
    v5 = alternateUpdateDownloadError;
  }

  else
  {
    preferredUpdateDownloadError = [location preferredUpdateDownloadError];
    v13 = 1;
    v5 = preferredUpdateDownloadError;
  }

  [(SUUIStatefulDescriptor *)v8 assignState:v9 fromConcreteDownload:currentDownload downloadable:isAlternateUpdateDownloadable != 0 downloadError:v5 error:v16];
  if (v11)
  {
    MEMORY[0x277D82BD8](alternateUpdateDownloadError);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  }

  MEMORY[0x277D82BD8](currentDownload);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

- (void)assignState:(int64_t)state fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error error:(id)a7
{
  v65 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v61 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, download);
  downloadableCopy = downloadable;
  v57 = 0;
  objc_storeStrong(&v57, error);
  v56 = 0;
  objc_storeStrong(&v56, a7);
  progress = [location progress];
  isDone = [progress isDone];
  MEMORY[0x277D82BD8](progress);
  if (isDone)
  {
    descriptor = [selfCopy descriptor];
    descriptor2 = [location descriptor];
    v33 = [descriptor isEqual:?];
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](descriptor);
    if (v33)
    {
      objc_storeStrong(&v57, 0);
    }
  }

  updateDownloadError = [selfCopy updateDownloadError];
  v55 = [updateDownloadError copy];
  MEMORY[0x277D82BD8](updateDownloadError);
  [selfCopy setUpdateDownloadable:downloadableCopy];
  if (v56)
  {
    v29 = v56;
  }

  else
  {
    v29 = v57;
  }

  [selfCopy setUpdateDownloadError:v29];
  v54 = 0;
  if (v57)
  {
    v54 = ([v57 shouldEnableUpdateOptionsWithStatefulDescriptor:selfCopy download:location] ^ 1) & 1;
  }

  [selfCopy setDownloadErrorPreventingUpdate:v54 & 1];
  currentState = [selfCopy currentState];
  if (currentState != stateCopy)
  {
    goto LABEL_24;
  }

  v52 = 0;
  v50 = 0;
  if (v55 || (v53 = [selfCopy updateDownloadError], v52 = 1, v28 = 1, v53))
  {
    updateDownloadError2 = [selfCopy updateDownloadError];
    v50 = 1;
    v28 = [v55 isIntrinsicallyEquivalentToError:? withStatefulDescriptor:? download:?];
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](updateDownloadError2);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](v53);
  }

  if ((v28 & 1) == 0)
  {
    v17 = +[SUUILoggingContext statefulUILogger];
    oslog = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v42;
      v16 = SUUIStatefulDescriptorRoleToString([selfCopy role]);
      v8 = MEMORY[0x277D82BE0](v16);
      v41 = v8;
      descriptor3 = [selfCopy descriptor];
      updateName = [descriptor3 updateName];
      v9 = MEMORY[0x277D82BE0](updateName);
      v40 = v9;
      v10 = selfCopy;
      v13 = SUUIStatefulDescriptorStateToString(stateCopy);
      v39 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v63, "[SUUIStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v8, v9, v10, v39, stateCopy, v55, selfCopy[6]);
      _os_log_impl(&dword_26ADE5000, v11, v12, "%s [%{public}@, %{public}@, %p]: Allowing to re-assign the state %{public}@ (%ld) because the old error is not intrinsically equivalent to the new error.\n\tPrevious Error: %{public}@\n\tNew Error: %{public}@", v63, 0x52u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](updateName);
      MEMORY[0x277D82BD8](descriptor3);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&oslog, 0);
LABEL_24:
    [selfCopy assignState:stateCopy];
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
    v26 = SUUIStatefulDescriptorRoleToString([selfCopy role]);
    v18 = MEMORY[0x277D82BE0](v26);
    v47 = v18;
    descriptor4 = [selfCopy descriptor];
    updateName2 = [descriptor4 updateName];
    v19 = MEMORY[0x277D82BE0](updateName2);
    v46 = v19;
    v20 = selfCopy;
    v23 = SUUIStatefulDescriptorStateToString(stateCopy);
    v45 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_66_8_0(v64, "[SUUIStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v18, v19, v20, v45, stateCopy);
    _os_log_impl(&dword_26ADE5000, log, v22, "%s [%{public}@, %{public}@, %p]: Skipping on state assignment as it matches the current state: %{public}@ (%ld)", v64, 0x3Eu);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](descriptor4);
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

- (void)assignState:(int64_t)state
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v44 = a2;
  stateCopy = state;
  currentState = [(SUUIStatefulDescriptor *)self currentState];
  if (currentState == stateCopy)
  {
    v18 = +[SUUILoggingContext statefulUILogger];
    oslog = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy role]);
      v39 = MEMORY[0x277D82BE0](v17);
      descriptor = [(SUUIStatefulDescriptor *)selfCopy descriptor];
      updateName = [(SUUIDescriptor *)descriptor updateName];
      v38 = MEMORY[0x277D82BE0](updateName);
      v14 = SUUIStatefulDescriptorStateToString(currentState);
      location = MEMORY[0x277D82BE0](v14);
      __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_64_8_0(v47, "[SUUIStatefulDescriptor assignState:]", v39, v38, selfCopy, location, currentState);
      _os_log_impl(&dword_26ADE5000, oslog, v40, "%s [%{public}@, %{public}@, %p]: Skipping on Descriptor State Assignment request: currentState == currentState (%@ (%ld))", v47, 0x3Eu);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](updateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v13 = +[SUUILoggingContext statefulUILogger];
    oslog = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy role]);
      v34 = MEMORY[0x277D82BE0](v12);
      descriptor2 = [(SUUIStatefulDescriptor *)selfCopy descriptor];
      updateName2 = [(SUUIDescriptor *)descriptor2 updateName];
      v33 = MEMORY[0x277D82BE0](updateName2);
      v9 = SUUIStatefulDescriptorStateToString(currentState);
      v32 = MEMORY[0x277D82BE0](v9);
      v8 = SUUIStatefulDescriptorStateToString(stateCopy);
      v31 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_0(v46, "[SUUIStatefulDescriptor assignState:]", v34, v33, selfCopy, v32, currentState, v31, stateCopy);
      _os_log_impl(&dword_26ADE5000, oslog, v35, "%s [%{public}@, %{public}@, %p]: Assigning Descriptor state: %{public}@ (%ld) -> %{public}@ (%ld)", v46, 0x52u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&oslog, 0);
    ownerManager = [(SUUIStatefulDescriptor *)selfCopy ownerManager];
    v29 = currentState;
    [(SUUIStatefulDescriptor *)selfCopy setCurrentState:stateCopy];
    delegate = [ownerManager delegate];
    v27 = 0;
    v7 = 0;
    if (delegate)
    {
      delegate2 = [ownerManager delegate];
      v27 = 1;
      v7 = objc_opt_respondsToSelector();
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    if (v7)
    {
      objc_initWeak(&from, selfCopy);
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      delegateCallbackQueue = [ownerManager delegateCallbackQueue];
      queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:?];
      v19 = MEMORY[0x277D85DD0];
      v20 = -1073741824;
      v21 = 0;
      v22 = __38__SUUIStatefulDescriptor_assignState___block_invoke;
      v23 = &unk_279CC6E18;
      objc_copyWeak(v25, &from);
      v25[1] = v44;
      v24 = MEMORY[0x277D82BE0](ownerManager);
      v25[2] = v29;
      v25[3] = stateCopy;
      dispatch_async(queue, &v19);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](delegateCallbackQueue);
      MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
      objc_storeStrong(&v24, 0);
      objc_destroyWeak(v25);
      objc_destroyWeak(&from);
    }

    objc_storeStrong(&ownerManager, 0);
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

- (void)resolveInstallationError:(id)error fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)downloadError error:(id)a7
{
  v57 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v51 = 0;
  objc_storeStrong(&v51, download);
  downloadableCopy = downloadable;
  v49 = 0;
  objc_storeStrong(&v49, downloadError);
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
    v27 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy role]);
    v22 = MEMORY[0x277D82BE0](v27);
    v45 = v22;
    descriptor = [(SUUIStatefulDescriptor *)selfCopy descriptor];
    updateName = [(SUUIDescriptor *)descriptor updateName];
    v44 = MEMORY[0x277D82BE0](updateName);
    __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v56, "[SUUIStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v22, v44, selfCopy, location[0]);
    _os_log_impl(&dword_26ADE5000, log, v24, "%s [%{public}@, %{public}@, %p]: Resolving installation error: %{public}@", v56, 0x34u);
    MEMORY[0x277D82BD8](updateName);
    MEMORY[0x277D82BD8](descriptor);
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

  traits = [location[0] traits];
  if ([traits installationInProgress])
  {
    v43 = 5;
    objc_storeStrong(&v48, 0);
  }

  else if ([traits installationInvalidState])
  {
    v21 = +[SUUILoggingContext statefulUILogger];
    oslog = [v21 oslog];
    MEMORY[0x277D82BD8](v21);
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = oslog;
      v17 = v39;
      v20 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy role]);
      v15 = MEMORY[0x277D82BE0](v20);
      v38 = v15;
      descriptor2 = [(SUUIStatefulDescriptor *)selfCopy descriptor];
      updateName2 = [(SUUIDescriptor *)descriptor2 updateName];
      v37 = MEMORY[0x277D82BE0](updateName2);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v55, "[SUUIStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v15, v37, selfCopy, v48);
      _os_log_impl(&dword_26ADE5000, v16, v17, "%s [%{public}@, %{public}@, %p]: Starting a new scan due to installation error: %{public}@", v55, 0x34u);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&oslog, 0);
    v42 = 0;
    ownerManager = [(SUUIStatefulDescriptor *)selfCopy ownerManager];
    [(SUUIStatefulUIManager *)ownerManager checkForAvailableUpdates:1];
    MEMORY[0x277D82BD8](ownerManager);
  }

  else if ([traits installationRequiresKeybagOrPasswordUnlock])
  {
    objc_storeStrong(&v48, 0);
  }

  else
  {
    v13 = +[SUUILoggingContext statefulUILogger];
    oslog2 = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = oslog2;
      v9 = v35;
      v12 = SUUIStatefulDescriptorRoleToString([(SUUIStatefulDescriptor *)selfCopy role]);
      v7 = MEMORY[0x277D82BE0](v12);
      v34 = v7;
      descriptor3 = [(SUUIStatefulDescriptor *)selfCopy descriptor];
      updateName3 = [(SUUIDescriptor *)descriptor3 updateName];
      v33 = MEMORY[0x277D82BE0](updateName3);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v54, "[SUUIStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v7, v33, selfCopy, v48);
      _os_log_impl(&dword_26ADE5000, v8, v9, "%s [%{public}@, %{public}@, %p]: Couldn't resolve the installation error: %{public}@", v54, 0x34u);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](descriptor3);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&oslog2, 0);
  }

  if (v42)
  {
    [(SUUIStatefulDescriptor *)selfCopy assignState:v43 fromConcreteDownload:v51 downloadable:downloadableCopy downloadError:v49 error:v48];
  }

  objc_storeStrong(&traits, 0);
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