@interface ICQMegaBackupManager
@end

@implementation ICQMegaBackupManager

void __139___ICQMegaBackupManager_requestMegaBackupForAccount_deviceBackupUUID_deviceTotalUsedSpaceInBytes_entryMethod_deepLinkURL_queue_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _quotaBackupCheckURLForAccount:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 88);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = [MEMORY[0x277CCAD30] sharedSession];
    v9 = *(a1 + 72);
    v20 = 0;
    v10 = [_ICQMegaBackupEligibilityRequest eligibilityRequestWithAccount:v3 deviceBackupUUID:v4 deviceTotalUsedSpaceInBytes:v6 entryMethod:v5 deepLinkURL:v7 requestURL:v2 URLSession:v8 queue:v9 error:&v20];
    v11 = v20;

    v12 = _ICQGetLogSystem();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v13)
      {
        v14 = [v10 bodyJSON];
        *buf = 138543362;
        v22 = v14;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Body JSON for _ICQMegaBackupEligibilityRequest: %{public}@", buf, 0xCu);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __139___ICQMegaBackupManager_requestMegaBackupForAccount_deviceBackupUUID_deviceTotalUsedSpaceInBytes_entryMethod_deepLinkURL_queue_completion___block_invoke_43;
      v18[3] = &unk_27A6518A8;
      v19 = *(a1 + 80);
      [v10 resumeWithCompletionHandler:v18];
    }

    else
    {
      if (v13)
      {
        *buf = 138543362;
        v22 = v11;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create eligibility request: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 80) + 16))();
    }
  }

  else
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "No URL in bag for quotaBackupCheckURL", buf, 2u);
    }

    v16 = *(a1 + 80);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_ICQMegaBackupErrorDomain" code:0 userInfo:0];
    (*(v16 + 16))(v16, 0, 0, v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __139___ICQMegaBackupManager_requestMegaBackupForAccount_deviceBackupUUID_deviceTotalUsedSpaceInBytes_entryMethod_deepLinkURL_queue_completion___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Calling completion for request %@ with error: %{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [v5 isBackupAllowed];
    [v5 needsTemporaryStorage];
    v8 = [v5 daysUntilExpiration];
    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __99___ICQMegaBackupManager_updateMegaBackupStatusForAccount_deviceBackupUUID_status_queue_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _updateStatusURLForAccount:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 72);
    v6 = [MEMORY[0x277CCAD30] sharedSession];
    v7 = *(a1 + 56);
    v16 = 0;
    v8 = [_ICQMegaBackupUpdateStatusRequest updateStatusRequestWithAccount:v3 deviceBackupUUID:v4 status:v5 requestURL:v2 URLSession:v6 queue:v7 error:&v16];
    v9 = v16;

    if (v8)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __99___ICQMegaBackupManager_updateMegaBackupStatusForAccount_deviceBackupUUID_status_queue_completion___block_invoke_49;
      v14[3] = &unk_27A6518F8;
      v15 = *(a1 + 64);
      [v8 resumeWithCompletionHandler:v14];
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create update status request: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "No URL in bag for updateMegaBackupStatusURL", buf, 2u);
    }

    v11 = *(a1 + 64);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_ICQMegaBackupErrorDomain" code:0 userInfo:0];
    (*(v11 + 16))(v11, 0, 0, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __99___ICQMegaBackupManager_updateMegaBackupStatusForAccount_deviceBackupUUID_status_queue_completion___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Calling completion for request %{public}@ with error: %{public}@", &v11, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [v5 expirationDate];
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Received new expiration date %{public}@", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __110___ICQMegaBackupManager_extendExpirationForAccount_deviceBackupUUID_requestedExpirationDate_queue_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _extendExpirationURLForAccount:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x277CCAD30] sharedSession];
    v7 = *(a1 + 64);
    v17 = 0;
    v8 = [_ICQMegaBackupExtendExpirationRequest extendExpirationRequestWithAccount:v3 deviceBackupUUID:v4 requestedExpirationDate:v5 requestURL:v2 URLSession:v6 queue:v7 error:&v17];
    v9 = v17;

    if (v8)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __110___ICQMegaBackupManager_extendExpirationForAccount_deviceBackupUUID_requestedExpirationDate_queue_completion___block_invoke_52;
      v14[3] = &unk_27A651948;
      v16 = *(a1 + 72);
      v15 = v8;
      [v15 resumeWithCompletionHandler:v14];
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v9;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create extend expiration date request: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "No URL in bag for extendExpirationDateURL", buf, 2u);
    }

    v11 = *(a1 + 72);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_ICQMegaBackupErrorDomain" code:0 userInfo:0];
    (*(v11 + 16))(v11, 0, 0, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __110___ICQMegaBackupManager_extendExpirationForAccount_deviceBackupUUID_requestedExpirationDate_queue_completion___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Calling completion for request %@ with error: %{public}@", &v13, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 isExtensionAllowed];
    v9 = [*(a1 + 32) updatedExpirationDate];
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Server says extended expiration date is allowed (%{public}@) and updated expiration date is %{public}@", &v13, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end