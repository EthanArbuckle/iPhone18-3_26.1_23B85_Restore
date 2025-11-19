@interface SVXInstanceInfoSupplier
- (SVXInstanceInfoSupplier)initWithRemoteDelegateSupplier:(id)a3 performer:(id)a4;
- (void)_updateInstanceInfo:(id)a3;
- (void)getInstanceInfoWithConnection:(id)a3 completion:(id)a4;
@end

@implementation SVXInstanceInfoSupplier

- (void)_updateInstanceInfo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  cacheInstanceInfo = self->_cacheInstanceInfo;
  if (cacheInstanceInfo != v4 && ([(AFInstanceInfo *)cacheInstanceInfo isEqual:v4]& 1) == 0)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v7 = self->_cacheInstanceInfo;
      v11 = 136315650;
      v12 = "[SVXInstanceInfoSupplier _updateInstanceInfo:]";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s instanceInfo: %@ -> %@", &v11, 0x20u);
    }

    v8 = [(AFInstanceInfo *)v4 copy];
    v9 = self->_cacheInstanceInfo;
    self->_cacheInstanceInfo = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getInstanceInfoWithConnection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke;
  v11[3] = &unk_279C68EA8;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(SVXPerforming *)performer performBlock:v11];
}

void __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    if (v4)
    {
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v15 = "[SVXInstanceInfoSupplier getInstanceInfoWithConnection:completion:]_block_invoke";
        v16 = 2112;
        v17 = v4;
        _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
        v1 = *(a1 + 48);
        v4 = *(*(a1 + 32) + 24);
      }

      v1[2](v1, v4);
    }

    else
    {
      v6 = *(v3 + 16);
      v7 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_1;
      v12[3] = &unk_279C68310;
      v12[4] = v3;
      v13 = v1;
      v8 = [v6 remoteServiceDelegateWithConnection:v7 errorHandler:v12];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_3;
      v10[3] = &unk_279C66718;
      v10[4] = *(a1 + 32);
      v11 = *(a1 + 48);
      [v8 getInstanceInfoWithCompletion:v10];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_2;
  v6[3] = &unk_279C68EF8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 performBlock:v6];
}

void __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_2_4;
  v11[3] = &unk_279C69038;
  v12 = v6;
  v8 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  [v7 performBlock:v11];
}

uint64_t __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_2_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SVXInstanceInfoSupplier getInstanceInfoWithConnection:completion:]_block_invoke_2";
      v12 = 2112;
      v13 = v2;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v10, 0x16u);
    }

    v4 = *(*(a1 + 56) + 16);
  }

  else
  {
    [*(a1 + 40) _updateInstanceInfo:*(a1 + 48)];
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 48);
      v10 = 136315394;
      v11 = "[SVXInstanceInfoSupplier getInstanceInfoWithConnection:completion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v10, 0x16u);
    }

    v6 = *(a1 + 48);
    v4 = *(*(a1 + 56) + 16);
  }

  result = v4();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __68__SVXInstanceInfoSupplier_getInstanceInfoWithConnection_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SVXInstanceInfoSupplier getInstanceInfoWithConnection:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_2695B9000, v2, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (SVXInstanceInfoSupplier)initWithRemoteDelegateSupplier:(id)a3 performer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SVXInstanceInfoSupplier;
  v9 = [(SVXInstanceInfoSupplier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteDelegateSupplier, a3);
    objc_storeStrong(&v10->_performer, a4);
  }

  return v10;
}

@end