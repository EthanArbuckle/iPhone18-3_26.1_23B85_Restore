@interface SUUIScanOperationFullScanResults
- (SUUIScanOperationFullScanResults)initWithIdentifier:(id)identifier preferredUpdateDownloadable:(BOOL)downloadable alternateUpdateDownloadable:(BOOL)updateDownloadable preferredUpdateDownloadError:(id)error alternateUpdateDownloadError:(id)downloadError clearingSpaceForDownload:(BOOL)download currentDownload:(id)currentDownload autoUpdateScheduled:(BOOL)self0 updateReadyForInstallation:(BOOL)self1 updateInstallationError:(id)self2 preferredDescriptor:(id)self3 alternateDescriptor:(id)self4 scanError:(id)self5 emptyScanResults:(BOOL)self6 mdmPathRestrictions:(unint64_t)self7 delayingUpdate:(BOOL)self8 rollingBack:(BOOL)self9 currentSeedingDevice:(id)device betaPrograms:(id)programs enrolledBetaProgram:(id)program ddmDeclaration:(id)declaration;
- (id)descriptionDictionary;
@end

@implementation SUUIScanOperationFullScanResults

- (SUUIScanOperationFullScanResults)initWithIdentifier:(id)identifier preferredUpdateDownloadable:(BOOL)downloadable alternateUpdateDownloadable:(BOOL)updateDownloadable preferredUpdateDownloadError:(id)error alternateUpdateDownloadError:(id)downloadError clearingSpaceForDownload:(BOOL)download currentDownload:(id)currentDownload autoUpdateScheduled:(BOOL)self0 updateReadyForInstallation:(BOOL)self1 updateInstallationError:(id)self2 preferredDescriptor:(id)self3 alternateDescriptor:(id)self4 scanError:(id)self5 emptyScanResults:(BOOL)self6 mdmPathRestrictions:(unint64_t)self7 delayingUpdate:(BOOL)self8 rollingBack:(BOOL)self9 currentSeedingDevice:(id)device betaPrograms:(id)programs enrolledBetaProgram:(id)program ddmDeclaration:(id)declaration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  downloadableCopy = downloadable;
  updateDownloadableCopy = updateDownloadable;
  v53 = 0;
  objc_storeStrong(&v53, error);
  v52 = 0;
  objc_storeStrong(&v52, downloadError);
  downloadCopy = download;
  v50 = 0;
  objc_storeStrong(&v50, currentDownload);
  scheduledCopy = scheduled;
  installationCopy = installation;
  v47 = 0;
  objc_storeStrong(&v47, installationError);
  v46 = 0;
  objc_storeStrong(&v46, descriptor);
  v45 = 0;
  objc_storeStrong(&v45, alternateDescriptor);
  v44 = 0;
  objc_storeStrong(&v44, scanError);
  resultsCopy = results;
  restrictionsCopy = restrictions;
  updateCopy = update;
  backCopy = back;
  v39 = 0;
  objc_storeStrong(&v39, device);
  v38 = 0;
  objc_storeStrong(&v38, programs);
  v37 = 0;
  objc_storeStrong(&v37, program);
  v36 = 0;
  objc_storeStrong(&v36, declaration);
  v23 = selfCopy;
  selfCopy = 0;
  v35.receiver = v23;
  v35.super_class = SUUIScanOperationFullScanResults;
  LOBYTE(v27) = scheduledCopy;
  HIBYTE(v27) = installationCopy;
  v34 = [(SUUIScanOperationScanResults *)&v35 initWithIdentifier:location[0] preferredUpdateDownloadable:downloadableCopy alternateUpdateDownloadable:updateDownloadableCopy preferredUpdateDownloadError:v53 alternateUpdateDownloadError:v52 clearingSpaceForDownload:downloadCopy currentDownload:v50 autoUpdateScheduled:v27 updateReadyForInstallation:v47 updateInstallationError:?];
  selfCopy = v34;
  objc_storeStrong(&selfCopy, v34);
  if (v34)
  {
    objc_storeStrong(&selfCopy->_preferredDescriptor, v46);
    objc_storeStrong(&selfCopy->_alternateDescriptor, v45);
    objc_storeStrong(&selfCopy->_scanError, v44);
    selfCopy->_emptyScanResults = resultsCopy;
    selfCopy->_mdmPathRestrictions = restrictionsCopy;
    selfCopy->_delayingUpdate = updateCopy;
    selfCopy->_rollingBackSplatUpdate = backCopy;
    objc_storeStrong(&selfCopy->_currentSeedingDevice, v39);
    v24 = [v38 copy];
    betaPrograms = selfCopy->_betaPrograms;
    selfCopy->_betaPrograms = v24;
    MEMORY[0x277D82BD8](betaPrograms);
    objc_storeStrong(&selfCopy->_enrolledBetaProgram, v37);
    objc_storeStrong(&selfCopy->_ddmDeclaration, v36);
  }

  v28 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v28;
}

- (id)descriptionDictionary
{
  v77[11] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v55[1] = a2;
  v54.receiver = self;
  v54.super_class = SUUIScanOperationFullScanResults;
  descriptionDictionary = [(SUUIScanOperationScanResults *)&v54 descriptionDictionary];
  v55[0] = [descriptionDictionary mutableCopy];
  MEMORY[0x277D82BD8](descriptionDictionary);
  v50 = v55[0];
  v76[0] = @"preferredDescriptor";
  preferredDescriptor = [(SUUIScanOperationFullScanResults *)selfCopy preferredDescriptor];
  location = 0;
  objc_storeStrong(&location, preferredDescriptor);
  v69 = 0;
  if (location)
  {
    v2 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v69 = 1;
    v2 = MEMORY[0x277D82BE0](null);
  }

  v72 = v2;
  if (v69)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v46 = v72;
  v3 = v72;
  v47 = v46;
  v77[0] = v47;
  v76[1] = @"alternateDescriptor";
  alternateDescriptor = [(SUUIScanOperationFullScanResults *)selfCopy alternateDescriptor];
  v67 = 0;
  objc_storeStrong(&v67, alternateDescriptor);
  v65 = 0;
  if (v67)
  {
    v4 = MEMORY[0x277D82BE0](v67);
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    v65 = 1;
    v4 = MEMORY[0x277D82BE0](null2);
  }

  v68 = v4;
  if (v65)
  {
    MEMORY[0x277D82BD8](null2);
  }

  objc_storeStrong(&v67, 0);
  v43 = v68;
  v5 = v68;
  v44 = v43;
  v77[1] = v44;
  v76[2] = @"scanError";
  scanError = [(SUUIScanOperationFullScanResults *)selfCopy scanError];
  v63 = 0;
  objc_storeStrong(&v63, scanError);
  v61 = 0;
  if (v63)
  {
    v6 = MEMORY[0x277D82BE0](v63);
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
    v61 = 1;
    v6 = MEMORY[0x277D82BE0](null3);
  }

  v64 = v6;
  if (v61)
  {
    MEMORY[0x277D82BD8](null3);
  }

  objc_storeStrong(&v63, 0);
  v25 = v64;
  v7 = v64;
  v26 = v25;
  v77[2] = v26;
  v76[3] = @"emptyScanResults";
  if ([(SUUIScanOperationFullScanResults *)selfCopy isEmptyScanResults])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v27 = v8;
  v9 = v8;
  v28 = v27;
  v77[3] = v28;
  v76[4] = @"mdmPathRestrictions";
  v29 = [SUUIMDMSoftwareUpdatePathUtilities description:[(SUUIScanOperationFullScanResults *)selfCopy mdmPathRestrictions]];
  v77[4] = v29;
  v76[5] = @"delayingUpdate";
  if ([(SUUIScanOperationFullScanResults *)selfCopy isDelayingUpdate])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v30 = v10;
  v11 = v10;
  v31 = v30;
  v77[5] = v31;
  v76[6] = @"rollingBack";
  if ([(SUUIScanOperationFullScanResults *)selfCopy isRollingBackSplatUpdate])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v32 = v12;
  v13 = v12;
  v33 = v32;
  v77[6] = v33;
  v76[7] = @"currentSeedingDevice";
  v34 = MEMORY[0x277CCACA8];
  currentSeedingDevice = [(SUUIScanOperationFullScanResults *)selfCopy currentSeedingDevice];
  v36 = [v34 stringWithFormat:@"%p", currentSeedingDevice];
  v77[7] = v36;
  v76[8] = @"betaPrograms";
  v39 = MEMORY[0x277CCACA8];
  betaPrograms = [(SUUIScanOperationFullScanResults *)selfCopy betaPrograms];
  betaPrograms2 = [(SUUIScanOperationFullScanResults *)selfCopy betaPrograms];
  v40 = [v39 stringWithFormat:@"%p (count: %lu)", betaPrograms, -[NSArray count](betaPrograms2, "count")];
  v77[8] = v40;
  v76[9] = @"enrolledBetaProgram";
  v41 = MEMORY[0x277CCACA8];
  enrolledBetaProgram = [(SUUIScanOperationFullScanResults *)selfCopy enrolledBetaProgram];
  v52 = 0;
  if (enrolledBetaProgram)
  {
    enrolledBetaProgram2 = [(SUUIScanOperationFullScanResults *)selfCopy enrolledBetaProgram];
    v52 = 1;
    programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
  }

  else
  {
    programID = 0;
  }

  enrolledBetaProgram3 = [(SUUIScanOperationFullScanResults *)selfCopy enrolledBetaProgram];
  v22 = [v41 stringWithFormat:@"%lu (%p)", programID, enrolledBetaProgram3];
  v77[9] = v22;
  v76[10] = @"ddmDeclaration";
  ddmDeclaration = [(SUUIScanOperationFullScanResults *)selfCopy ddmDeclaration];
  v59 = 0;
  objc_storeStrong(&v59, ddmDeclaration);
  v57 = 0;
  if (v59)
  {
    v14 = MEMORY[0x277D82BE0](v59);
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
    v57 = 1;
    v14 = MEMORY[0x277D82BE0](null4);
  }

  v60 = v14;
  if (v57)
  {
    MEMORY[0x277D82BD8](null4);
  }

  objc_storeStrong(&v59, 0);
  v18 = v60;
  v15 = v60;
  v20 = v18;
  v77[10] = v20;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:11];
  [v50 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](ddmDeclaration);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](enrolledBetaProgram3);
  if (v52)
  {
    MEMORY[0x277D82BD8](enrolledBetaProgram2);
  }

  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](betaPrograms2);
  MEMORY[0x277D82BD8](betaPrograms);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](scanError);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](alternateDescriptor);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](preferredDescriptor);
  v17 = MEMORY[0x277D82BE0](v55[0]);
  objc_storeStrong(v55, 0);
  *MEMORY[0x277D85DE8];

  return v17;
}

@end