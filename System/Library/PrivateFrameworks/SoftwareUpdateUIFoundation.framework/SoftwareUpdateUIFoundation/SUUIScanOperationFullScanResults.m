@interface SUUIScanOperationFullScanResults
- (SUUIScanOperationFullScanResults)initWithIdentifier:(id)a3 preferredUpdateDownloadable:(BOOL)a4 alternateUpdateDownloadable:(BOOL)a5 preferredUpdateDownloadError:(id)a6 alternateUpdateDownloadError:(id)a7 clearingSpaceForDownload:(BOOL)a8 currentDownload:(id)a9 autoUpdateScheduled:(BOOL)a10 updateReadyForInstallation:(BOOL)a11 updateInstallationError:(id)a12 preferredDescriptor:(id)a13 alternateDescriptor:(id)a14 scanError:(id)a15 emptyScanResults:(BOOL)a16 mdmPathRestrictions:(unint64_t)a17 delayingUpdate:(BOOL)a18 rollingBack:(BOOL)a19 currentSeedingDevice:(id)a20 betaPrograms:(id)a21 enrolledBetaProgram:(id)a22 ddmDeclaration:(id)a23;
- (id)descriptionDictionary;
@end

@implementation SUUIScanOperationFullScanResults

- (SUUIScanOperationFullScanResults)initWithIdentifier:(id)a3 preferredUpdateDownloadable:(BOOL)a4 alternateUpdateDownloadable:(BOOL)a5 preferredUpdateDownloadError:(id)a6 alternateUpdateDownloadError:(id)a7 clearingSpaceForDownload:(BOOL)a8 currentDownload:(id)a9 autoUpdateScheduled:(BOOL)a10 updateReadyForInstallation:(BOOL)a11 updateInstallationError:(id)a12 preferredDescriptor:(id)a13 alternateDescriptor:(id)a14 scanError:(id)a15 emptyScanResults:(BOOL)a16 mdmPathRestrictions:(unint64_t)a17 delayingUpdate:(BOOL)a18 rollingBack:(BOOL)a19 currentSeedingDevice:(id)a20 betaPrograms:(id)a21 enrolledBetaProgram:(id)a22 ddmDeclaration:(id)a23
{
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = a4;
  v54 = a5;
  v53 = 0;
  objc_storeStrong(&v53, a6);
  v52 = 0;
  objc_storeStrong(&v52, a7);
  v51 = a8;
  v50 = 0;
  objc_storeStrong(&v50, a9);
  v49 = a10;
  v48 = a11;
  v47 = 0;
  objc_storeStrong(&v47, a12);
  v46 = 0;
  objc_storeStrong(&v46, a13);
  v45 = 0;
  objc_storeStrong(&v45, a14);
  v44 = 0;
  objc_storeStrong(&v44, a15);
  v43 = a16;
  v42 = a17;
  v41 = a18;
  v40 = a19;
  v39 = 0;
  objc_storeStrong(&v39, a20);
  v38 = 0;
  objc_storeStrong(&v38, a21);
  v37 = 0;
  objc_storeStrong(&v37, a22);
  v36 = 0;
  objc_storeStrong(&v36, a23);
  v23 = v57;
  v57 = 0;
  v35.receiver = v23;
  v35.super_class = SUUIScanOperationFullScanResults;
  LOBYTE(v27) = v49;
  HIBYTE(v27) = v48;
  v34 = [(SUUIScanOperationScanResults *)&v35 initWithIdentifier:location[0] preferredUpdateDownloadable:v55 alternateUpdateDownloadable:v54 preferredUpdateDownloadError:v53 alternateUpdateDownloadError:v52 clearingSpaceForDownload:v51 currentDownload:v50 autoUpdateScheduled:v27 updateReadyForInstallation:v47 updateInstallationError:?];
  v57 = v34;
  objc_storeStrong(&v57, v34);
  if (v34)
  {
    objc_storeStrong(&v57->_preferredDescriptor, v46);
    objc_storeStrong(&v57->_alternateDescriptor, v45);
    objc_storeStrong(&v57->_scanError, v44);
    v57->_emptyScanResults = v43;
    v57->_mdmPathRestrictions = v42;
    v57->_delayingUpdate = v41;
    v57->_rollingBackSplatUpdate = v40;
    objc_storeStrong(&v57->_currentSeedingDevice, v39);
    v24 = [v38 copy];
    betaPrograms = v57->_betaPrograms;
    v57->_betaPrograms = v24;
    MEMORY[0x277D82BD8](betaPrograms);
    objc_storeStrong(&v57->_enrolledBetaProgram, v37);
    objc_storeStrong(&v57->_ddmDeclaration, v36);
  }

  v28 = MEMORY[0x277D82BE0](v57);
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
  objc_storeStrong(&v57, 0);
  return v28;
}

- (id)descriptionDictionary
{
  v77[11] = *MEMORY[0x277D85DE8];
  v56 = self;
  v55[1] = a2;
  v54.receiver = self;
  v54.super_class = SUUIScanOperationFullScanResults;
  v49 = [(SUUIScanOperationScanResults *)&v54 descriptionDictionary];
  v55[0] = [v49 mutableCopy];
  MEMORY[0x277D82BD8](v49);
  v50 = v55[0];
  v76[0] = @"preferredDescriptor";
  v51 = [(SUUIScanOperationFullScanResults *)v56 preferredDescriptor];
  location = 0;
  objc_storeStrong(&location, v51);
  v69 = 0;
  if (location)
  {
    v2 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v70 = [MEMORY[0x277CBEB68] null];
    v69 = 1;
    v2 = MEMORY[0x277D82BE0](v70);
  }

  v72 = v2;
  if (v69)
  {
    MEMORY[0x277D82BD8](v70);
  }

  objc_storeStrong(&location, 0);
  v46 = v72;
  v3 = v72;
  v47 = v46;
  v77[0] = v47;
  v76[1] = @"alternateDescriptor";
  v48 = [(SUUIScanOperationFullScanResults *)v56 alternateDescriptor];
  v67 = 0;
  objc_storeStrong(&v67, v48);
  v65 = 0;
  if (v67)
  {
    v4 = MEMORY[0x277D82BE0](v67);
  }

  else
  {
    v66 = [MEMORY[0x277CBEB68] null];
    v65 = 1;
    v4 = MEMORY[0x277D82BE0](v66);
  }

  v68 = v4;
  if (v65)
  {
    MEMORY[0x277D82BD8](v66);
  }

  objc_storeStrong(&v67, 0);
  v43 = v68;
  v5 = v68;
  v44 = v43;
  v77[1] = v44;
  v76[2] = @"scanError";
  v45 = [(SUUIScanOperationFullScanResults *)v56 scanError];
  v63 = 0;
  objc_storeStrong(&v63, v45);
  v61 = 0;
  if (v63)
  {
    v6 = MEMORY[0x277D82BE0](v63);
  }

  else
  {
    v62 = [MEMORY[0x277CBEB68] null];
    v61 = 1;
    v6 = MEMORY[0x277D82BE0](v62);
  }

  v64 = v6;
  if (v61)
  {
    MEMORY[0x277D82BD8](v62);
  }

  objc_storeStrong(&v63, 0);
  v25 = v64;
  v7 = v64;
  v26 = v25;
  v77[2] = v26;
  v76[3] = @"emptyScanResults";
  if ([(SUUIScanOperationFullScanResults *)v56 isEmptyScanResults])
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
  v29 = [SUUIMDMSoftwareUpdatePathUtilities description:[(SUUIScanOperationFullScanResults *)v56 mdmPathRestrictions]];
  v77[4] = v29;
  v76[5] = @"delayingUpdate";
  if ([(SUUIScanOperationFullScanResults *)v56 isDelayingUpdate])
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
  if ([(SUUIScanOperationFullScanResults *)v56 isRollingBackSplatUpdate])
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
  v35 = [(SUUIScanOperationFullScanResults *)v56 currentSeedingDevice];
  v36 = [v34 stringWithFormat:@"%p", v35];
  v77[7] = v36;
  v76[8] = @"betaPrograms";
  v39 = MEMORY[0x277CCACA8];
  v38 = [(SUUIScanOperationFullScanResults *)v56 betaPrograms];
  v37 = [(SUUIScanOperationFullScanResults *)v56 betaPrograms];
  v40 = [v39 stringWithFormat:@"%p (count: %lu)", v38, -[NSArray count](v37, "count")];
  v77[8] = v40;
  v76[9] = @"enrolledBetaProgram";
  v41 = MEMORY[0x277CCACA8];
  v42 = [(SUUIScanOperationFullScanResults *)v56 enrolledBetaProgram];
  v52 = 0;
  if (v42)
  {
    v53 = [(SUUIScanOperationFullScanResults *)v56 enrolledBetaProgram];
    v52 = 1;
    v24 = [(SDBetaProgram *)v53 programID];
  }

  else
  {
    v24 = 0;
  }

  v21 = [(SUUIScanOperationFullScanResults *)v56 enrolledBetaProgram];
  v22 = [v41 stringWithFormat:@"%lu (%p)", v24, v21];
  v77[9] = v22;
  v76[10] = @"ddmDeclaration";
  v23 = [(SUUIScanOperationFullScanResults *)v56 ddmDeclaration];
  v59 = 0;
  objc_storeStrong(&v59, v23);
  v57 = 0;
  if (v59)
  {
    v14 = MEMORY[0x277D82BE0](v59);
  }

  else
  {
    v58 = [MEMORY[0x277CBEB68] null];
    v57 = 1;
    v14 = MEMORY[0x277D82BE0](v58);
  }

  v60 = v14;
  if (v57)
  {
    MEMORY[0x277D82BD8](v58);
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
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v21);
  if (v52)
  {
    MEMORY[0x277D82BD8](v53);
  }

  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v51);
  v17 = MEMORY[0x277D82BE0](v55[0]);
  objc_storeStrong(v55, 0);
  *MEMORY[0x277D85DE8];

  return v17;
}

@end