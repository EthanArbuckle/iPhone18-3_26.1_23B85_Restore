@interface PSUVIPManager
- (void)emailVIPAddressesWithCompletion:(id)a3;
@end

@implementation PSUVIPManager

- (void)emailVIPAddressesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [v6 vipManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__PSUVIPManager_emailVIPAddressesWithCompletion___block_invoke;
  v10[3] = &unk_278947528;
  v8 = v4;
  v11 = v7;
  v12 = v8;
  v10[4] = self;
  v9 = v7;
  [v9 getAllVIPsWithCompletion:v10];

  objc_autoreleasePoolPop(v5);
}

void __49__PSUVIPManager_emailVIPAddressesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 48);
  if (v5)
  {
    v9 = [*(a1 + 40) allVIPEmailAddresses];
    v10 = [v9 copy];
    if (v10)
    {
      (*(v8 + 16))(v8, v10, 0);
    }

    else
    {
      v11 = objc_opt_new();
      (*(v8 + 16))(v8, v11, 0);
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v9 = NSStringFromClass(v15);
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Error getting Mail VIPs";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v17 = [v13 errorWithDomain:v9 code:0 userInfo:v16];
    (*(v8 + 16))(v8, 0, v17);

LABEL_8:
    goto LABEL_9;
  }

  (*(v8 + 16))(*(a1 + 48), 0, v6);
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

@end