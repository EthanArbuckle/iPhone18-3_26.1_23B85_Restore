@interface BRCBGSystemTask
- (BOOL)expireTask;
- (BRCBGSystemTask)initWithBGSystemTask:(id)a3;
@end

@implementation BRCBGSystemTask

- (BRCBGSystemTask)initWithBGSystemTask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCBGSystemTask;
  v6 = [(BRCBGSystemTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
  }

  return v7;
}

- (BOOL)expireTask
{
  v18 = *MEMORY[0x277D85DE8];
  task = self->_task;
  v11 = 0;
  v4 = [(BGSystemTask *)task setTaskExpiredWithRetryAfter:&v11 error:0.0];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v10 = [(BGSystemTask *)self->_task identifier];
      *buf = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] Error setting task expired %@ : %@%@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

@end