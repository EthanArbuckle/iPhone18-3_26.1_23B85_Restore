@interface SUUIMobileUpdateOperationParam
- (SUUIMobileUpdateOperationParam)initWithDescriptor:(id)a3 forUnattendedPurge:(BOOL)a4 andForUnattendedInstall:(BOOL)a5 usingAgreementStatusRegistry:(id)a6;
- (id)description;
@end

@implementation SUUIMobileUpdateOperationParam

- (SUUIMobileUpdateOperationParam)initWithDescriptor:(id)a3 forUnattendedPurge:(BOOL)a4 andForUnattendedInstall:(BOOL)a5 usingAgreementStatusRegistry:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = a5;
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v6 = v18;
  v18 = 0;
  v13.receiver = v6;
  v13.super_class = SUUIMobileUpdateOperationParam;
  v12 = [(SUUIMobileUpdateOperationParam *)&v13 init];
  v18 = v12;
  objc_storeStrong(&v18, v12);
  if (v12)
  {
    objc_storeStrong(&v18->_descriptor, location[0]);
    v18->_unattendedPurge = v16;
    v18->_unattendedInstall = v15;
    objc_storeStrong(&v18->_agreementStatusRegistry, v14);
  }

  v8 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v8;
}

- (id)description
{
  v113[13] = *MEMORY[0x277D85DE8];
  v83 = self;
  obj[1] = a2;
  obj[0] = 0;
  v72 = [(SUUIMobileUpdateOperationParam *)self currentDownload];
  v80 = 0;
  v78 = 0;
  v73 = 0;
  if (v72)
  {
    v81 = [(SUUIMobileUpdateOperationParam *)v83 currentDownload];
    v80 = 1;
    v79 = [(SUUIMobileDownload *)v81 descriptor];
    v78 = 1;
    v73 = v79 != 0;
  }

  if (v78)
  {
    MEMORY[0x277D82BD8](v79);
  }

  if (v80)
  {
    MEMORY[0x277D82BD8](v81);
  }

  MEMORY[0x277D82BD8](v72);
  if (v73)
  {
    v65 = MEMORY[0x277CCACA8];
    v71 = [(SUUIMobileUpdateOperationParam *)v83 currentDownload];
    v70 = [(SUUIMobileDownload *)v71 descriptor];
    v69 = [(SUUIDescriptor *)v70 updateName];
    v68 = [(SUUIMobileUpdateOperationParam *)v83 currentDownload];
    v67 = [(SUUIMobileUpdateOperationParam *)v83 currentDownload];
    v66 = [(SUUIMobileDownload *)v67 progress];
    v2 = [v65 stringWithFormat:@"%@ (%p) (progess: %@)", v69, v68, v66];
    v3 = obj[0];
    obj[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
  }

  v62 = MEMORY[0x277D64B68];
  v112[0] = @"descriptor";
  v63 = MEMORY[0x277CCACA8];
  v64 = [(SUUIMobileUpdateOperationParam *)v83 descriptor];
  v76 = 0;
  v74 = 0;
  if (v64)
  {
    v77 = [(SUUIMobileUpdateOperationParam *)v83 descriptor];
    v76 = 1;
    v75 = [(SUUIMobileDescriptor *)v77 updateName];
    v74 = 1;
    v61 = v75;
  }

  else
  {
    v61 = @"(null)";
  }

  v58 = [(SUUIMobileUpdateOperationParam *)v83 descriptor];
  v59 = [v63 stringWithFormat:@"%@ (%p)", v61, v58];
  v113[0] = v59;
  v112[1] = @"operationError";
  v60 = [(SUUIMobileUpdateOperationParam *)v83 operationError];
  location = 0;
  objc_storeStrong(&location, v60);
  v101 = 0;
  if (location)
  {
    v4 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v102 = [MEMORY[0x277CBEB68] null];
    v101 = 1;
    v4 = MEMORY[0x277D82BE0](v102);
  }

  v104 = v4;
  if (v101)
  {
    MEMORY[0x277D82BD8](v102);
  }

  objc_storeStrong(&location, 0);
  v56 = v104;
  v5 = v104;
  v57 = v56;
  v113[1] = v57;
  v112[2] = @"currentDownload";
  v99 = 0;
  objc_storeStrong(&v99, obj[0]);
  v97 = 0;
  if (v99)
  {
    v6 = MEMORY[0x277D82BE0](v99);
  }

  else
  {
    v98 = [MEMORY[0x277CBEB68] null];
    v97 = 1;
    v6 = MEMORY[0x277D82BE0](v98);
  }

  v100 = v6;
  if (v97)
  {
    MEMORY[0x277D82BD8](v98);
  }

  objc_storeStrong(&v99, 0);
  v46 = v100;
  v7 = v100;
  v47 = v46;
  v113[2] = v47;
  v112[3] = @"unattendedPurge";
  if ([(SUUIMobileUpdateOperationParam *)v83 isUnattendedPurge])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v48 = v8;
  v9 = v8;
  v49 = v48;
  v113[3] = v49;
  v112[4] = @"unattendedInstall";
  if ([(SUUIMobileUpdateOperationParam *)v83 isUnattendedInstall])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v50 = v10;
  v11 = v10;
  v51 = v50;
  v113[4] = v51;
  v112[5] = @"bypassTermsAndConditions";
  if ([(SUUIMobileUpdateOperationParam *)v83 bypassTermsAndConditions])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v52 = v12;
  v13 = v12;
  v53 = v52;
  v113[5] = v53;
  v112[6] = @"createdKeybag";
  if ([(SUUIMobileUpdateOperationParam *)v83 createdKeybag])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v54 = v14;
  v15 = v14;
  v55 = v54;
  v113[6] = v55;
  v112[7] = @"agreementStatusRegistry";
  agreementStatusRegistry = v83->_agreementStatusRegistry;
  v95 = 0;
  objc_storeStrong(&v95, agreementStatusRegistry);
  v93 = 0;
  if (v95)
  {
    v17 = MEMORY[0x277D82BE0](v95);
  }

  else
  {
    v94 = [MEMORY[0x277CBEB68] null];
    v93 = 1;
    v17 = MEMORY[0x277D82BE0](v94);
  }

  v96 = v17;
  if (v93)
  {
    MEMORY[0x277D82BD8](v94);
  }

  objc_storeStrong(&v95, 0);
  v37 = v96;
  v18 = v96;
  v38 = v37;
  v113[7] = v38;
  v112[8] = @"downloadStartSuccessfully";
  if ([(SUUIMobileUpdateOperationParam *)v83 downloadStartedSuccessfully])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v39 = v19;
  v20 = v19;
  v40 = v39;
  v113[8] = v40;
  v112[9] = @"updateScheduledSuccessfully";
  if ([(SUUIMobileUpdateOperationParam *)v83 updateScheduledSuccessfully])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v41 = v21;
  v22 = v21;
  v42 = v41;
  v113[9] = v42;
  v112[10] = @"installInitiatedSuccessfully";
  if ([(SUUIMobileUpdateOperationParam *)v83 installInitiatedSuccessfully])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v43 = v23;
  v24 = v23;
  v44 = v43;
  v113[10] = v44;
  v112[11] = @"autoInstallOperation";
  v45 = [(SUUIMobileUpdateOperationParam *)v83 autoInstallOperation];
  v91 = 0;
  objc_storeStrong(&v91, v45);
  v89 = 0;
  if (v91)
  {
    v25 = MEMORY[0x277D82BE0](v91);
  }

  else
  {
    v90 = [MEMORY[0x277CBEB68] null];
    v89 = 1;
    v25 = MEMORY[0x277D82BE0](v90);
  }

  v92 = v25;
  if (v89)
  {
    MEMORY[0x277D82BD8](v90);
  }

  objc_storeStrong(&v91, 0);
  v34 = v92;
  v26 = v92;
  v35 = v34;
  v113[11] = v35;
  v112[12] = @"scheduleError";
  v36 = [(SUUIMobileUpdateOperationParam *)v83 scheduleError];
  v87 = 0;
  objc_storeStrong(&v87, v36);
  v85 = 0;
  if (v87)
  {
    v27 = MEMORY[0x277D82BE0](v87);
  }

  else
  {
    v86 = [MEMORY[0x277CBEB68] null];
    v85 = 1;
    v27 = MEMORY[0x277D82BE0](v86);
  }

  v88 = v27;
  if (v85)
  {
    MEMORY[0x277D82BD8](v86);
  }

  objc_storeStrong(&v87, 0);
  v31 = v88;
  v28 = v88;
  v33 = v31;
  v113[12] = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:13];
  v84 = [v62 descriptionForObject:v83 properties:? options:?];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v58);
  if (v74)
  {
    MEMORY[0x277D82BD8](v75);
  }

  if (v76)
  {
    MEMORY[0x277D82BD8](v77);
  }

  MEMORY[0x277D82BD8](v64);
  objc_storeStrong(obj, 0);
  *MEMORY[0x277D85DE8];
  v29 = v84;

  return v29;
}

@end