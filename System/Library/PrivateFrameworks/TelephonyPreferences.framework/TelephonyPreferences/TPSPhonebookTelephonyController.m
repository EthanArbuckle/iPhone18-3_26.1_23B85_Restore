@interface TPSPhonebookTelephonyController
- (CTPhoneNumberInfo)phoneNumberInfo;
- (TPSPhonebookTelephonyController)init;
- (TPSPhonebookTelephonyController)initWithSubscriptionContext:(id)a3;
- (id)getPhoneNumberInfo;
- (id)getPhoneNumberInfoWithError:(id *)a3;
- (void)fetchPhoneNumberInfo;
- (void)fetchPhoneNumberInfoWithCompletion:(id)a3;
- (void)phoneBookSelected:(id)a3;
- (void)phoneNumberChanged:(id)a3;
- (void)setPhoneNumberInfo:(id)a3;
- (void)updatePhoneNumberInfo:(id)a3 label:(id)a4 number:(id)a5 completion:(id)a6;
@end

@implementation TPSPhonebookTelephonyController

- (TPSPhonebookTelephonyController)init
{
  [(TPSPhonebookTelephonyController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSPhonebookTelephonyController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSPhonebookTelephonyController;
  v6 = [(TPSTelephonyController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    [(TPSPhonebookTelephonyController *)v7 fetchPhoneNumberInfo];
  }

  return v7;
}

- (CTPhoneNumberInfo)phoneNumberInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__TPSPhonebookTelephonyController_phoneNumberInfo__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__TPSPhonebookTelephonyController_phoneNumberInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (!v3)
  {
    v4 = [v2 getPhoneNumberInfo];
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    v3 = *(*(a1 + 32) + 72);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (void)setPhoneNumberInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v4 + 72) != v3)
  {
    v9 = v1;
    v10 = v2;
    objc_storeStrong((v4 + 72), v3);
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke_2;
    v7[3] = &unk_2782E39D0;
    v7[4] = v6;
    v8 = *(a1 + 40);
    [v6 performAtomicDelegateBlock:v7];
  }
}

void __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke_3;
          block[3] = &unk_2782E3888;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v14 = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)getPhoneNumberInfo
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D07DB0] sharedInstance];
  if ([v4 isGreenTea] && objc_msgSend(v4, "deviceType") == 4)
  {
    v5 = TPSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Skipping phone number lookup on GreenTea iPad", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v13 = 0;
    v6 = [(TPSPhonebookTelephonyController *)self getPhoneNumberInfoWithError:&v13];
    v5 = v13;
    if (v5)
    {
      v7 = TPSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getPhoneNumberInfoWithError:(id *)a3
{
  v5 = [(TPSTelephonyController *)self telephonyClient];
  v6 = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  v7 = [v5 getPhoneNumber:v6 error:a3];

  return v7;
}

- (void)fetchPhoneNumberInfo
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__TPSPhonebookTelephonyController_fetchPhoneNumberInfo__block_invoke;
  v2[3] = &unk_2782E4160;
  v2[4] = self;
  v2[5] = a2;
  [(TPSPhonebookTelephonyController *)self fetchPhoneNumberInfoWithCompletion:v2];
}

void __55__TPSPhonebookTelephonyController_fetchPhoneNumberInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setPhoneNumberInfo:a2];
  if (v5)
  {
    v6 = TPSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = NSStringFromSelector(v10);
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v13, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchPhoneNumberInfoWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(TPSTelephonyController *)self telephonyClient];
  v5 = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  [v6 getPhoneNumberWithCompletion:v5 completion:v4];
}

void __91__TPSPhonebookTelephonyController_savePhoneBookEntryAtIndex_withContactName_contactNumber___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = TPSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __91__TPSPhonebookTelephonyController_savePhoneBookEntryAtIndex_withContactName_contactNumber___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)updatePhoneNumberInfo:(id)a3 label:(id)a4 number:(id)a5 completion:(id)a6
{
  v8 = a6;
  [(TPSPhonebookTelephonyController *)self setUpdatePhoneNumber:a5];
  [(TPSPhonebookTelephonyController *)self setUpdatePhoneNumberInfoCompletion:v8];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__TPSPhonebookTelephonyController_updatePhoneNumberInfo_label_number_completion___block_invoke;
  v9[3] = &unk_2782E3A48;
  v9[4] = self;
  [(TPSPhonebookTelephonyController *)self selectPhoneBookWithName:2 password:0 completion:v9];
}

uint64_t __81__TPSPhonebookTelephonyController_updatePhoneNumberInfo_label_number_completion___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = a2;
    [v3 setUpdatePhoneNumber:0];
    v5 = [*(v2 + 32) updatePhoneNumberInfoCompletion];
    (v5)[2](v5, v4);

    v6 = *(v2 + 32);

    return [v6 setUpdatePhoneNumberInfoCompletion:0];
  }

  return result;
}

- (void)phoneNumberChanged:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "[%@ %@] for subscription context %@.", &v14, 0x20u);
    }

    v12 = [(TPSPhonebookTelephonyController *)self getPhoneNumberInfo];
    [(TPSPhonebookTelephonyController *)self setPhoneNumberInfo:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)phoneBookSelected:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(TPSPhonebookTelephonyController *)self updatePhoneNumber];

    if (v8)
    {
      v9 = TPSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v28 = v10;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "[%@ %@] for subscription context %@.", buf, 0x20u);
      }

      v13 = [(TPSPhonebookTelephonyController *)self updatePhoneNumber];
      v14 = [MEMORY[0x277CCACA8] tps_stringWithCTPhoneBookName:2];
      v15 = TPSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v28 = v6;
        v29 = 2112;
        v30 = @"My Number";
        v31 = 2112;
        v32 = v13;
        v33 = 2112;
        v34 = v14;
        v35 = 1024;
        v36 = 1;
        _os_log_impl(&dword_21B8E9000, v15, OS_LOG_TYPE_DEFAULT, "Updating phone number (subscriptionContext: %@, label: %@, number: %@, selectedPhoneBookName: %@, index: %u).", buf, 0x30u);
      }

      v16 = [(TPSTelephonyController *)self telephonyClient];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__TPSPhonebookTelephonyController_phoneBookSelected___block_invoke;
      v20[3] = &unk_2782E4188;
      v21 = v6;
      v22 = @"My Number";
      v23 = v13;
      v24 = v14;
      v26 = 1;
      v25 = self;
      v17 = v14;
      v18 = v13;
      [v16 savePhonebookEntry:v21 atIndex:1 withContactName:@"My Number" contactNumber:v18 completion:v20];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __53__TPSPhonebookTelephonyController_phoneBookSelected___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 72);
    v12 = 138413570;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Received response for update phone number (subscriptionContext: %@, label: %@, number: %@, selectedPhoneBookName: %@, index: %u, error: %@).", &v12, 0x3Au);
  }

  [*(a1 + 64) setUpdatePhoneNumber:0];
  v10 = [*(a1 + 64) updatePhoneNumberInfoCompletion];
  (v10)[2](v10, v3);

  [*(a1 + 64) setUpdatePhoneNumberInfoCompletion:0];
  v11 = *MEMORY[0x277D85DE8];
}

void __91__TPSPhonebookTelephonyController_savePhoneBookEntryAtIndex_withContactName_contactNumber___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = NSStringFromSelector(v8);
  v12 = 138412802;
  v13 = v7;
  v14 = 2112;
  v15 = v10;
  v16 = 2112;
  v17 = a2;
  _os_log_error_impl(&dword_21B8E9000, a3, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end