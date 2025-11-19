@interface SUSettingsUpdateParam
- (SUSettingsUpdateParam)initWithDescriptor:(id)a3 andUpdateOptions:(id)a4 forUnattendedInstall:(BOOL)a5;
- (id)description;
@end

@implementation SUSettingsUpdateParam

- (SUSettingsUpdateParam)initWithDescriptor:(id)a3 andUpdateOptions:(id)a4 forUnattendedInstall:(BOOL)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = SUSettingsUpdateParam;
  v10 = [(SUSettingsUpdateParam *)&v11 init];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    [(SUSettingsUpdateParam *)v15 setDescriptor:location[0]];
    [(SUSettingsUpdateParam *)v15 setOptions:v13];
    [(SUSettingsUpdateParam *)v15 setUnattendedInstall:v12];
  }

  v7 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (id)description
{
  v64 = self;
  location[1] = a2;
  location[0] = MEMORY[0x277D82BE0](@"(null)");
  v53 = [(SUSettingsUpdateParam *)v64 currentDownload];
  v61 = 0;
  v59 = 0;
  v54 = 0;
  if (v53)
  {
    v62 = [(SUSettingsUpdateParam *)v64 currentDownload];
    v52 = 1;
    v61 = 1;
    v60 = [(SUDownload *)v62 descriptor];
    v59 = 1;
    v54 = v60 != 0;
  }

  v51 = v54;
  if (v59)
  {
    MEMORY[0x277D82BD8](v60);
  }

  if (v61)
  {
    MEMORY[0x277D82BD8](v62);
  }

  MEMORY[0x277D82BD8](v53);
  if (v51)
  {
    v44 = MEMORY[0x277CCACA8];
    v50 = [(SUSettingsUpdateParam *)v64 currentDownload];
    v49 = [(SUDownload *)v50 descriptor];
    v48 = [(SUDescriptor *)v49 humanReadableUpdateName];
    v47 = [(SUSettingsUpdateParam *)v64 currentDownload];
    v46 = [(SUSettingsUpdateParam *)v64 currentDownload];
    v45 = [(SUDownload *)v46 progress];
    v2 = [v44 stringWithFormat:@"%@ (%p) (progress: %@)", v48, v47, v45];
    v3 = location[0];
    location[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
  }

  v40 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v41 = NSStringFromClass(v4);
  v42 = v64;
  v43 = [(SUSettingsUpdateParam *)v64 descriptor];
  v57 = 0;
  v55 = 0;
  if (v43)
  {
    v58 = [(SUSettingsUpdateParam *)v64 descriptor];
    v38 = 1;
    v57 = 1;
    v56 = [(SUDescriptor *)v58 humanReadableUpdateName];
    v55 = 1;
    v39 = v56;
  }

  else
  {
    v39 = @"(null)";
  }

  v22 = v39;
  v37 = [(SUSettingsUpdateParam *)v64 descriptor];
  v36 = [(SUSettingsUpdateParam *)v64 operationError];
  v35 = [(SUSettingsUpdateParam *)v64 options];
  v23 = location[0];
  v5 = [(SUSettingsUpdateParam *)v64 isUnattendedInstall];
  v20 = "NO";
  v6 = "YES";
  v21 = "YES";
  if (!v5)
  {
    v6 = "NO";
  }

  v24 = v6;
  v7 = [(SUSettingsUpdateParam *)v64 bypassTermsAndConditions];
  v8 = v21;
  if (!v7)
  {
    v8 = v20;
  }

  v25 = v8;
  v9 = [(SUSettingsUpdateParam *)v64 createdKeybag];
  v10 = v21;
  if (!v9)
  {
    v10 = v20;
  }

  v26 = v10;
  v27 = [(SUSettingsUpdateParam *)v64 cellularAgreementStatus];
  v11 = [(SUSettingsUpdateParam *)v64 downloadStartedSuccessfully];
  v12 = v21;
  if (!v11)
  {
    v12 = v20;
  }

  v28 = v12;
  v13 = [(SUSettingsUpdateParam *)v64 updateScheduledSuccessfully];
  v14 = v21;
  if (!v13)
  {
    v14 = v20;
  }

  v29 = v14;
  v15 = [(SUSettingsUpdateParam *)v64 installInitiatedSuccessfully];
  v16 = v21;
  if (!v15)
  {
    v16 = v20;
  }

  v30 = v16;
  v34 = [(SUSettingsUpdateParam *)v64 autoInstallOperation];
  v33 = [(SUSettingsUpdateParam *)v64 autoInstallOperation];
  v32 = [(SUSettingsUpdateParam *)v64 scheduleError];
  v31 = &v19;
  v65 = [v40 stringWithFormat:@"<%@: %p, \n\tdescriptor: %@ (%p), \n\toperationError: %@, \n\toptions: %@, \n\tcurrentDownload: %@, \n\tunattendedInstall: %s, \n\tbypassTermsAndConditions: %s, \n\tcreatedKeybag: %s, \n\tcellularAgreementStatus: %ld, \n\tdownloadStartSuccessfully: %s, \n\tupdateScheduledSuccessfully: %s, \n\tinstallInitiatedSuccessfully: %s, \n\tautoInstallOperation: %@ (%p), \n\tscheduleError: %@>", v41, v42, v22, v37, v36, v35, v23, v24, v25, v26, v27, v28, v29, v30, v34, v33, v32];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  if (v55)
  {
    MEMORY[0x277D82BD8](v56);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](v58);
  }

  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v41);
  objc_storeStrong(location, 0);
  v17 = v65;

  return v17;
}

@end