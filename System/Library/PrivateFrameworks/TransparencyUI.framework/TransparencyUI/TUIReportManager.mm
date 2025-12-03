@interface TUIReportManager
- (TUIReportManager)initWithStaticIdentityManager:(id)manager;
- (id)reportDetails;
- (void)fetchDataWithUUID:(id)d;
- (void)sendReport:(id)report;
@end

@implementation TUIReportManager

- (TUIReportManager)initWithStaticIdentityManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = TUIReportManager;
  v6 = [(TUIReportManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_staticIdentityManager, manager);
    v8 = [objc_alloc(MEMORY[0x277D73590]) initWithAuditorId:0];
    auditor = v7->_auditor;
    v7->_auditor = v8;
  }

  return v7;
}

- (void)sendReport:(id)report
{
  v17 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v5 = reportCopy;
  reportData = self->_reportData;
  if (reportData)
  {
    p_additionalDetails = &self->_additionalDetails;
    additionalDetails = self->_additionalDetails;
    v8 = p_additionalDetails[1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __31__TUIReportManager_sendReport___block_invoke_3;
    v13[3] = &unk_279DDAEF0;
    v14 = reportCopy;
    [(NSString *)v8 makeReport:reportData additionalData:additionalDetails completionBlock:v13];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_9 != -1)
    {
      [TUIReportManager sendReport:];
    }

    v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      reportDataError = self->_reportDataError;
      *buf = 138412290;
      v16 = reportDataError;
      _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_ERROR, "No report data, error = %@", buf, 0xCu);
    }

    if (v5)
    {
      (v5)[2](v5, self->_reportDataError);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __31__TUIReportManager_sendReport___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __31__TUIReportManager_sendReport___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_9 != -1)
    {
      __31__TUIReportManager_sendReport___block_invoke_3_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "Failed to send report, error = %@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __31__TUIReportManager_sendReport___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)fetchDataWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    auditor = self->_auditor;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__TUIReportManager_fetchDataWithUUID___block_invoke_11;
    v10[3] = &unk_279DDAF18;
    v11 = dCopy;
    selfCopy = self;
    [(TransparencyAuditorReport *)auditor getReportForUUID:v11 completionBlock:v10];
    reportDataError = v11;
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_9 != -1)
    {
      [TUIReportManager fetchDataWithUUID:];
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch report data, no UUID provided", buf, 2u);
    }

    v9 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-1 description:{@"Failed to fetch report data, no UUID provided"}];
    reportDataError = self->_reportDataError;
    self->_reportDataError = v9;
  }
}

uint64_t __38__TUIReportManager_fetchDataWithUUID___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __38__TUIReportManager_fetchDataWithUUID___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v9 = *(a1 + 40);
    v8 = (a1 + 40);
    v10 = *(v9 + 8);
    *(v9 + 8) = 0;

    v11 = 24;
    a3 = a2;
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_9 != -1)
    {
      __38__TUIReportManager_fetchDataWithUUID___block_invoke_11_cold_1();
    }

    v12 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_26F50B000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch report data for UUID (%@), error = %@", &v15, 0x16u);
    }

    v8 = (a1 + 40);
    v11 = 8;
  }

  objc_storeStrong((*v8 + v11), a3);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __38__TUIReportManager_fetchDataWithUUID___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_9 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)reportDetails
{
  selfAccountKeyDisplayString = [(TUIStaticIdentityManager *)self->_staticIdentityManager selfAccountKeyDisplayString];
  v4 = [selfAccountKeyDisplayString length];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REPORTING_ACCOUNT_KEY" value:&stru_287F92480 table:@"Localizable"];
    selfAccountKeyDisplayString2 = [(TUIStaticIdentityManager *)self->_staticIdentityManager selfAccountKeyDisplayString];
    v9 = [v5 stringWithFormat:@"%@\n%@", v7, selfAccountKeyDisplayString2];
  }

  else
  {
    v9 = &stru_287F92480;
  }

  peerAccountKeyDisplayString = [(TUIStaticIdentityManager *)self->_staticIdentityManager peerAccountKeyDisplayString];
  v11 = [peerAccountKeyDisplayString length];

  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CONTACT_ACCOUNT_KEY" value:&stru_287F92480 table:@"Localizable"];
    peerAccountKeyDisplayString2 = [(TUIStaticIdentityManager *)self->_staticIdentityManager peerAccountKeyDisplayString];
    v16 = [v12 stringWithFormat:@"%@\n\n%@\n%@", v9, v14, peerAccountKeyDisplayString2];

    v9 = v16;
  }

  if ([(NSString *)self->_additionalDetails length])
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ADDITIONAL_DETAILS" value:&stru_287F92480 table:@"Localizable"];
    v20 = [v17 stringWithFormat:@"%@\n\n%@\n%@", v9, v19, self->_additionalDetails];

    v9 = v20;
  }

  if ([(NSDictionary *)self->_reportData count])
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"COMMUNICATION_LOG" value:&stru_287F92480 table:@"Localizable"];
    v24 = [v21 stringWithFormat:@"%@\n\n%@ (ids.apple.com)\n%@", v9, v23, self->_reportData];

    v9 = v24;
  }

  return v9;
}

@end