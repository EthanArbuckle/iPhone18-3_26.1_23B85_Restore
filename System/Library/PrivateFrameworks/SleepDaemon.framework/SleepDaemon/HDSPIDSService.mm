@interface HDSPIDSService
+ (id)cloudServiceWithScheduler:(id)scheduler;
+ (id)localServiceWithScheduler:(id)scheduler;
@end

@implementation HDSPIDSService

+ (id)localServiceWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v4 = [[_HDSPIDSService alloc] initWithIsCloudService:0 scheduler:schedulerCopy];

  return v4;
}

+ (id)cloudServiceWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v4 = [[_HDSPIDSService alloc] initWithIsCloudService:1 scheduler:schedulerCopy];

  return v4;
}

void __64___HDSPIDSService__sendSerializedMessage_identifier_completion___block_invoke(uint64_t a1)
{
  v33[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[24])
  {
    [v2 _cloudDestinations];
  }

  else
  {
    [v2 _localDestinations];
  }
  v3 = ;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) _loggingDescription];
    *buf = 138543618;
    v27 = v5;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] destinations: %{public}@", buf, 0x16u);
  }

  v6 = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277D185C0];
  v32[0] = *MEMORY[0x277D185A0];
  v32[1] = v7;
  v33[0] = MEMORY[0x277CBEC38];
  v33[1] = MEMORY[0x277CBEC38];
  v32[2] = *MEMORY[0x277D185D0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a1 + 32) + 24) ^ 1u];
  v9 = *MEMORY[0x277D18570];
  v33[2] = v8;
  v33[3] = v6;
  v10 = *MEMORY[0x277D18630];
  v32[3] = v9;
  v32[4] = v10;
  v33[4] = *(a1 + 40);
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:5];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) _loggingDescription];
    v14 = *(a1 + 48);
    *buf = 138543874;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueuing message %{public}@ with options %{public}@", buf, 0x20u);
  }

  v15 = *(*(a1 + 32) + 8);
  v16 = *(a1 + 48);
  v24 = 0;
  v25 = 0;
  v17 = [v15 sendMessage:v16 toDestinations:v3 priority:300 options:v11 identifier:&v25 error:&v24];
  v18 = v25;
  v19 = v24;
  v20 = HKSPLogForCategory();
  v21 = v20;
  if (!v17)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v22 = [*(a1 + 32) _loggingDescription];
    *buf = 138543874;
    v27 = v22;
    v28 = 2114;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    _os_log_error_impl(&dword_269B11000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] failed to enqueue message %{public}@ with error %{public}@", buf, 0x20u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 32) _loggingDescription];
    *buf = 138543618;
    v27 = v22;
    v28 = 2114;
    v29 = v18;
    _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully enqueued message %{public}@", buf, 0x16u);
LABEL_11:
  }

LABEL_13:

  (*(*(a1 + 56) + 16))();
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __37___HDSPIDSService__cloudDestinations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isActive])
  {
    v3 = [v2 isDefaultPairedDevice] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

id __37___HDSPIDSService__cloudDestinations__block_invoke_2()
{
  v0 = IDSCopyIDForDevice();

  return v0;
}

@end