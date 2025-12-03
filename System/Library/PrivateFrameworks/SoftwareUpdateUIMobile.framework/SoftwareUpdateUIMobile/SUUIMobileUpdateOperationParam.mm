@interface SUUIMobileUpdateOperationParam
- (SUUIMobileUpdateOperationParam)initWithDescriptor:(id)descriptor forUnattendedPurge:(BOOL)purge andForUnattendedInstall:(BOOL)install usingAgreementStatusRegistry:(id)registry;
- (id)description;
@end

@implementation SUUIMobileUpdateOperationParam

- (SUUIMobileUpdateOperationParam)initWithDescriptor:(id)descriptor forUnattendedPurge:(BOOL)purge andForUnattendedInstall:(BOOL)install usingAgreementStatusRegistry:(id)registry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  purgeCopy = purge;
  installCopy = install;
  v14 = 0;
  objc_storeStrong(&v14, registry);
  v6 = selfCopy;
  selfCopy = 0;
  v13.receiver = v6;
  v13.super_class = SUUIMobileUpdateOperationParam;
  v12 = [(SUUIMobileUpdateOperationParam *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_descriptor, location[0]);
    selfCopy->_unattendedPurge = purgeCopy;
    selfCopy->_unattendedInstall = installCopy;
    objc_storeStrong(&selfCopy->_agreementStatusRegistry, v14);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (id)description
{
  v113[13] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  obj[1] = a2;
  obj[0] = 0;
  currentDownload = [(SUUIMobileUpdateOperationParam *)self currentDownload];
  v80 = 0;
  v78 = 0;
  v73 = 0;
  if (currentDownload)
  {
    currentDownload2 = [(SUUIMobileUpdateOperationParam *)selfCopy currentDownload];
    v80 = 1;
    descriptor = [(SUUIMobileDownload *)currentDownload2 descriptor];
    v78 = 1;
    v73 = descriptor != 0;
  }

  if (v78)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v80)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v73)
  {
    v65 = MEMORY[0x277CCACA8];
    currentDownload3 = [(SUUIMobileUpdateOperationParam *)selfCopy currentDownload];
    descriptor2 = [(SUUIMobileDownload *)currentDownload3 descriptor];
    updateName = [(SUUIDescriptor *)descriptor2 updateName];
    currentDownload4 = [(SUUIMobileUpdateOperationParam *)selfCopy currentDownload];
    currentDownload5 = [(SUUIMobileUpdateOperationParam *)selfCopy currentDownload];
    progress = [(SUUIMobileDownload *)currentDownload5 progress];
    v2 = [v65 stringWithFormat:@"%@ (%p) (progess: %@)", updateName, currentDownload4, progress];
    v3 = obj[0];
    obj[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](updateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v62 = MEMORY[0x277D64B68];
  v112[0] = @"descriptor";
  v63 = MEMORY[0x277CCACA8];
  descriptor3 = [(SUUIMobileUpdateOperationParam *)selfCopy descriptor];
  v76 = 0;
  v74 = 0;
  if (descriptor3)
  {
    descriptor4 = [(SUUIMobileUpdateOperationParam *)selfCopy descriptor];
    v76 = 1;
    updateName2 = [(SUUIMobileDescriptor *)descriptor4 updateName];
    v74 = 1;
    v61 = updateName2;
  }

  else
  {
    v61 = @"(null)";
  }

  descriptor5 = [(SUUIMobileUpdateOperationParam *)selfCopy descriptor];
  v59 = [v63 stringWithFormat:@"%@ (%p)", v61, descriptor5];
  v113[0] = v59;
  v112[1] = @"operationError";
  operationError = [(SUUIMobileUpdateOperationParam *)selfCopy operationError];
  location = 0;
  objc_storeStrong(&location, operationError);
  v101 = 0;
  if (location)
  {
    v4 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v101 = 1;
    v4 = MEMORY[0x277D82BE0](null);
  }

  v104 = v4;
  if (v101)
  {
    MEMORY[0x277D82BD8](null);
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
    null2 = [MEMORY[0x277CBEB68] null];
    v97 = 1;
    v6 = MEMORY[0x277D82BE0](null2);
  }

  v100 = v6;
  if (v97)
  {
    MEMORY[0x277D82BD8](null2);
  }

  objc_storeStrong(&v99, 0);
  v46 = v100;
  v7 = v100;
  v47 = v46;
  v113[2] = v47;
  v112[3] = @"unattendedPurge";
  if ([(SUUIMobileUpdateOperationParam *)selfCopy isUnattendedPurge])
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
  if ([(SUUIMobileUpdateOperationParam *)selfCopy isUnattendedInstall])
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
  if ([(SUUIMobileUpdateOperationParam *)selfCopy bypassTermsAndConditions])
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
  if ([(SUUIMobileUpdateOperationParam *)selfCopy createdKeybag])
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
  agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
  v95 = 0;
  objc_storeStrong(&v95, agreementStatusRegistry);
  v93 = 0;
  if (v95)
  {
    v17 = MEMORY[0x277D82BE0](v95);
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
    v93 = 1;
    v17 = MEMORY[0x277D82BE0](null3);
  }

  v96 = v17;
  if (v93)
  {
    MEMORY[0x277D82BD8](null3);
  }

  objc_storeStrong(&v95, 0);
  v37 = v96;
  v18 = v96;
  v38 = v37;
  v113[7] = v38;
  v112[8] = @"downloadStartSuccessfully";
  if ([(SUUIMobileUpdateOperationParam *)selfCopy downloadStartedSuccessfully])
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
  if ([(SUUIMobileUpdateOperationParam *)selfCopy updateScheduledSuccessfully])
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
  if ([(SUUIMobileUpdateOperationParam *)selfCopy installInitiatedSuccessfully])
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
  autoInstallOperation = [(SUUIMobileUpdateOperationParam *)selfCopy autoInstallOperation];
  v91 = 0;
  objc_storeStrong(&v91, autoInstallOperation);
  v89 = 0;
  if (v91)
  {
    v25 = MEMORY[0x277D82BE0](v91);
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
    v89 = 1;
    v25 = MEMORY[0x277D82BE0](null4);
  }

  v92 = v25;
  if (v89)
  {
    MEMORY[0x277D82BD8](null4);
  }

  objc_storeStrong(&v91, 0);
  v34 = v92;
  v26 = v92;
  v35 = v34;
  v113[11] = v35;
  v112[12] = @"scheduleError";
  scheduleError = [(SUUIMobileUpdateOperationParam *)selfCopy scheduleError];
  v87 = 0;
  objc_storeStrong(&v87, scheduleError);
  v85 = 0;
  if (v87)
  {
    v27 = MEMORY[0x277D82BE0](v87);
  }

  else
  {
    null5 = [MEMORY[0x277CBEB68] null];
    v85 = 1;
    v27 = MEMORY[0x277D82BE0](null5);
  }

  v88 = v27;
  if (v85)
  {
    MEMORY[0x277D82BD8](null5);
  }

  objc_storeStrong(&v87, 0);
  v31 = v88;
  v28 = v88;
  v33 = v31;
  v113[12] = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:13];
  v84 = [v62 descriptionForObject:selfCopy properties:? options:?];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](scheduleError);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](autoInstallOperation);
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
  MEMORY[0x277D82BD8](operationError);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](descriptor5);
  if (v74)
  {
    MEMORY[0x277D82BD8](updateName2);
  }

  if (v76)
  {
    MEMORY[0x277D82BD8](descriptor4);
  }

  MEMORY[0x277D82BD8](descriptor3);
  objc_storeStrong(obj, 0);
  *MEMORY[0x277D85DE8];
  v29 = v84;

  return v29;
}

@end