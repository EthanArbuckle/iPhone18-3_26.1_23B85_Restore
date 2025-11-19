@interface WFSaveLogsOperation
- (WFSaveLogsOperation)initWithComments:(id)a3;
- (void)start;
@end

@implementation WFSaveLogsOperation

- (WFSaveLogsOperation)initWithComments:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WFSaveLogsOperation;
  v6 = [(WFSaveLogsOperation *)&v9 init];
  objc_storeStrong(&v6->_comments, a3);
  if (![(NSString *)v6->_comments length])
  {
    comments = v6->_comments;
    v6->_comments = @"WiFi Settings";
  }

  return v6;
}

- (void)start
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(WFSaveLogsOperation *)self comments];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v4 = getW5ClientClass_softClass;
  v25 = getW5ClientClass_softClass;
  if (!getW5ClientClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v30 = __getW5ClientClass_block_invoke;
    v31 = &unk_279EBCD88;
    v32 = &v22;
    __getW5ClientClass_block_invoke(&buf);
    v4 = v23[3];
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  v6 = objc_alloc_init(v4);
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v10 = WFCurrentLogLevel() > 2 && v7 != 0;
  if (v6)
  {
    if (v10 && os_log_type_enabled(v7, v8))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_273ECD000, v7, v8, "WiFi Diagnostics log collection started (comment='%@')", &buf, 0xCu);
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v11 = getW5LogItemRequestClass_softClass;
    v25 = getW5LogItemRequestClass_softClass;
    if (!getW5LogItemRequestClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v30 = __getW5LogItemRequestClass_block_invoke;
      v31 = &unk_279EBCD88;
      v32 = &v22;
      __getW5LogItemRequestClass_block_invoke(&buf);
      v11 = v23[3];
    }

    v12 = v11;
    _Block_object_dispose(&v22, 8);
    v13 = [v11 requestWithItemID:55 configuration:0];
    v27[0] = @"Reason";
    v27[1] = @"Compress";
    v28[0] = v3;
    v28[1] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v26 = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __28__WFSaveLogsOperation_start__block_invoke;
    v19[3] = &unk_279EBCD60;
    v20 = v3;
    v21 = self;
    v16 = [v6 collectLogs:v15 configuration:v14 update:0 reply:v19];
  }

  else
  {
    if (v10 && os_log_type_enabled(v7, v8))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_273ECD000, v7, v8, "WiFiVelocity not available", &buf, 2u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wififkit" code:-1 userInfo:0];
    [(WFOperation *)self setError:v17];

    [(WFOperation *)self finish];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __28__WFSaveLogsOperation_start__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v11 = *(a1 + 32);
      v12 = [v6 code];
      v13 = [v7 path];
      v15 = 138412802;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_273ECD000, v10, v9, "WiFi Diagnostics log collection completed (comment='%@', error=%ld, url=%@)", &v15, 0x20u);
    }
  }

  [*(a1 + 40) setError:v6];
  [*(a1 + 40) finish];

  v14 = *MEMORY[0x277D85DE8];
}

@end