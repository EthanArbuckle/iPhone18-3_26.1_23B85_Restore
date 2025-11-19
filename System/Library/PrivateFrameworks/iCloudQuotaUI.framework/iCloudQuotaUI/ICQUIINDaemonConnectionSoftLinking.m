@interface ICQUIINDaemonConnectionSoftLinking
- (void)renewCredentialsWithCompletion:(id)a3;
@end

@implementation ICQUIINDaemonConnectionSoftLinking

- (void)renewCredentialsWithCompletion:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getINDaemonConnectionClass_softClass_2;
  v14 = getINDaemonConnectionClass_softClass_2;
  if (!getINDaemonConnectionClass_softClass_2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getINDaemonConnectionClass_block_invoke_2;
    v10[3] = &unk_27A65A9F8;
    v10[4] = &v11;
    __getINDaemonConnectionClass_block_invoke_2(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__ICQUIINDaemonConnectionSoftLinking_renewCredentialsWithCompletion___block_invoke;
  v8[3] = &unk_27A65B728;
  v9 = v3;
  v7 = v3;
  [v6 renewCredentialsWithCompletion:v8];
}

void __69__ICQUIINDaemonConnectionSoftLinking_renewCredentialsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Renew credential results: %lu - error: %@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end