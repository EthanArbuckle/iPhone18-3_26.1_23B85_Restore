@interface SUSettingsUpdateParam
- (SUSettingsUpdateParam)initWithDescriptor:(id)descriptor andUpdateOptions:(id)options forUnattendedInstall:(BOOL)install;
- (id)description;
@end

@implementation SUSettingsUpdateParam

- (SUSettingsUpdateParam)initWithDescriptor:(id)descriptor andUpdateOptions:(id)options forUnattendedInstall:(BOOL)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v13 = 0;
  objc_storeStrong(&v13, options);
  installCopy = install;
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = SUSettingsUpdateParam;
  v10 = [(SUSettingsUpdateParam *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    [(SUSettingsUpdateParam *)selfCopy setDescriptor:location[0]];
    [(SUSettingsUpdateParam *)selfCopy setOptions:v13];
    [(SUSettingsUpdateParam *)selfCopy setUnattendedInstall:installCopy];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = MEMORY[0x277D82BE0](@"(null)");
  currentDownload = [(SUSettingsUpdateParam *)selfCopy currentDownload];
  v61 = 0;
  v59 = 0;
  v54 = 0;
  if (currentDownload)
  {
    currentDownload2 = [(SUSettingsUpdateParam *)selfCopy currentDownload];
    v52 = 1;
    v61 = 1;
    descriptor = [(SUDownload *)currentDownload2 descriptor];
    v59 = 1;
    v54 = descriptor != 0;
  }

  v51 = v54;
  if (v59)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v61)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v51)
  {
    v44 = MEMORY[0x277CCACA8];
    currentDownload3 = [(SUSettingsUpdateParam *)selfCopy currentDownload];
    descriptor2 = [(SUDownload *)currentDownload3 descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
    currentDownload4 = [(SUSettingsUpdateParam *)selfCopy currentDownload];
    currentDownload5 = [(SUSettingsUpdateParam *)selfCopy currentDownload];
    progress = [(SUDownload *)currentDownload5 progress];
    v2 = [v44 stringWithFormat:@"%@ (%p) (progress: %@)", humanReadableUpdateName, currentDownload4, progress];
    v3 = location[0];
    location[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v40 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v41 = NSStringFromClass(v4);
  v42 = selfCopy;
  descriptor3 = [(SUSettingsUpdateParam *)selfCopy descriptor];
  v57 = 0;
  v55 = 0;
  if (descriptor3)
  {
    descriptor4 = [(SUSettingsUpdateParam *)selfCopy descriptor];
    v38 = 1;
    v57 = 1;
    humanReadableUpdateName2 = [(SUDescriptor *)descriptor4 humanReadableUpdateName];
    v55 = 1;
    v39 = humanReadableUpdateName2;
  }

  else
  {
    v39 = @"(null)";
  }

  v22 = v39;
  descriptor5 = [(SUSettingsUpdateParam *)selfCopy descriptor];
  operationError = [(SUSettingsUpdateParam *)selfCopy operationError];
  options = [(SUSettingsUpdateParam *)selfCopy options];
  v23 = location[0];
  isUnattendedInstall = [(SUSettingsUpdateParam *)selfCopy isUnattendedInstall];
  v20 = "NO";
  v6 = "YES";
  v21 = "YES";
  if (!isUnattendedInstall)
  {
    v6 = "NO";
  }

  v24 = v6;
  bypassTermsAndConditions = [(SUSettingsUpdateParam *)selfCopy bypassTermsAndConditions];
  v8 = v21;
  if (!bypassTermsAndConditions)
  {
    v8 = v20;
  }

  v25 = v8;
  createdKeybag = [(SUSettingsUpdateParam *)selfCopy createdKeybag];
  v10 = v21;
  if (!createdKeybag)
  {
    v10 = v20;
  }

  v26 = v10;
  cellularAgreementStatus = [(SUSettingsUpdateParam *)selfCopy cellularAgreementStatus];
  downloadStartedSuccessfully = [(SUSettingsUpdateParam *)selfCopy downloadStartedSuccessfully];
  v12 = v21;
  if (!downloadStartedSuccessfully)
  {
    v12 = v20;
  }

  v28 = v12;
  updateScheduledSuccessfully = [(SUSettingsUpdateParam *)selfCopy updateScheduledSuccessfully];
  v14 = v21;
  if (!updateScheduledSuccessfully)
  {
    v14 = v20;
  }

  v29 = v14;
  installInitiatedSuccessfully = [(SUSettingsUpdateParam *)selfCopy installInitiatedSuccessfully];
  v16 = v21;
  if (!installInitiatedSuccessfully)
  {
    v16 = v20;
  }

  v30 = v16;
  autoInstallOperation = [(SUSettingsUpdateParam *)selfCopy autoInstallOperation];
  autoInstallOperation2 = [(SUSettingsUpdateParam *)selfCopy autoInstallOperation];
  scheduleError = [(SUSettingsUpdateParam *)selfCopy scheduleError];
  v31 = &v19;
  v65 = [v40 stringWithFormat:@"<%@: %p, \n\tdescriptor: %@ (%p), \n\toperationError: %@, \n\toptions: %@, \n\tcurrentDownload: %@, \n\tunattendedInstall: %s, \n\tbypassTermsAndConditions: %s, \n\tcreatedKeybag: %s, \n\tcellularAgreementStatus: %ld, \n\tdownloadStartSuccessfully: %s, \n\tupdateScheduledSuccessfully: %s, \n\tinstallInitiatedSuccessfully: %s, \n\tautoInstallOperation: %@ (%p), \n\tscheduleError: %@>", v41, v42, v22, descriptor5, operationError, options, v23, v24, v25, v26, cellularAgreementStatus, v28, v29, v30, autoInstallOperation, autoInstallOperation2, scheduleError];
  MEMORY[0x277D82BD8](scheduleError);
  MEMORY[0x277D82BD8](autoInstallOperation2);
  MEMORY[0x277D82BD8](autoInstallOperation);
  MEMORY[0x277D82BD8](options);
  MEMORY[0x277D82BD8](operationError);
  MEMORY[0x277D82BD8](descriptor5);
  if (v55)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](descriptor4);
  }

  MEMORY[0x277D82BD8](descriptor3);
  MEMORY[0x277D82BD8](v41);
  objc_storeStrong(location, 0);
  v17 = v65;

  return v17;
}

@end