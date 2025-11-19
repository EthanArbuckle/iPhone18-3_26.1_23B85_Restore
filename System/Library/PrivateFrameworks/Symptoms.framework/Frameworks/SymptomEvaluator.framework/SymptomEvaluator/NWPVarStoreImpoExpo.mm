@interface NWPVarStoreImpoExpo
- (NWPVarStoreImpoExpo)initWithQueue:(id)a3;
- (id)_initWithImpoExpo:(id)a3;
- (id)fetchItemUnderName:(id)a3 verificationBlock:(id)a4;
@end

@implementation NWPVarStoreImpoExpo

- (NWPVarStoreImpoExpo)initWithQueue:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NWPVarStoreImpoExpo;
  v5 = [(NWPVarStoreImpoExpo *)&v18 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = MEMORY[0x277D6B500];
  v7 = +[SystemSettingsRelay defaultRelay];
  v8 = [v7 symptomEvaluatorDatabaseContainerPath];
  v9 = [v6 workspaceWithName:@"netusage" atPath:v8 objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v10 = [v9 copy];
  if (!v10)
  {
    v14 = nwPVarLogHandle;
    if (os_log_type_enabled(nwPVarLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = v5;
      v15 = "(%p) failed to allocate a workspace";
LABEL_10:
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

  v11 = [ImpoExpoService impoExpoServiceInWorkspace:v10 andQueue:v4];
  ieservice = v5->ieservice;
  v5->ieservice = v11;

  if (!v5->ieservice)
  {
    v14 = nwPVarLogHandle;
    if (os_log_type_enabled(nwPVarLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = v5;
      v15 = "(%p) failed to allocate an impoexpo handle";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_5:
  v13 = v5;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)fetchItemUnderName:(id)a3 verificationBlock:(id)a4
{
  ieservice = self->ieservice;
  v7 = 0;
  v5 = [(ImpoExpoService *)ieservice exportAndUnarchiveItemUnderName:a3 lastUpdated:&v7 verificationBlock:a4];

  return v5;
}

- (id)_initWithImpoExpo:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NWPVarStoreImpoExpo;
  v6 = [(NWPVarStoreImpoExpo *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    objc_storeStrong(&v6->ieservice, a3);
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = nwPVarLogHandle;
  if (os_log_type_enabled(nwPVarLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v14 = v7;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "(%p) failed to allocate an impoexpo handle", buf, 0xCu);
  }

  v8 = 0;
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end