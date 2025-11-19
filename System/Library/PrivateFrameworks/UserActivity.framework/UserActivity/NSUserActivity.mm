@interface NSUserActivity
@end

@implementation NSUserActivity

void __89__NSUserActivity_NSUserActivityPayloadServicesSupport___payloadUpdateBlockForIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = *(a1 + 32);
  v10 = a4;
  v11 = a3;
  v12 = [v9 _internalUserActivity];
  v13 = [v12 payloadUpdateBlockForIdentifier:v10];

  v14 = [*(a1 + 32) _internalUserActivity];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__NSUserActivity_NSUserActivityPayloadServicesSupport___payloadUpdateBlockForIdentifier___block_invoke_2;
  v17[3] = &unk_2785C3EE8;
  v18 = v8;
  v15 = v13[2];
  v16 = v8;
  v15(v13, v14, v11, v10, v17);
}

void __95__NSUserActivity_NSUserActivityPayloadServicesSupport___setPayloadIdentifier_object_withBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = *(a1 + 40);
  v10 = a3;
  v11 = [a2 parentUserActivity];
  v12 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__NSUserActivity_NSUserActivityPayloadServicesSupport___setPayloadIdentifier_object_withBlock___block_invoke_2;
  v15[3] = &unk_2785C3F38;
  v16 = v8;
  v13 = *(v9 + 16);
  v14 = v8;
  v13(v9, v11, v10, v12, v15);
}

void __117__NSUserActivity_NSUserActivityInternalDelegateCalls__doSaveUserActivityWithTimeout_isCurrent_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v5 _internalUserActivity];
    v9 = [v8 uniqueIdentifier];
    v10 = [v9 UUIDString];
    v11 = *(a1 + 32);
    *buf = 138543874;
    v30 = v10;
    if (v11 == v5)
    {
      v12 = "";
    }

    else
    {
      v12 = "(new-allocation)";
    }

    v31 = 2082;
    v32 = v12;
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "userActivity=%{public}@ (%{public}s, error=%{public}@", buf, 0x20u);
  }

  if (!v5 || v6)
  {
    v19 = *(a1 + 56);
    if (v6)
    {
      (*(v19 + 16))(v19, 0, v6);
      goto LABEL_21;
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    (*(v19 + 16))(v19, 0, v20);
LABEL_19:

    goto LABEL_21;
  }

  if (!*(a1 + 40))
  {
LABEL_20:
    (*(*(a1 + 56) + 16))();
    goto LABEL_21;
  }

  v13 = objc_opt_respondsToSelector();
  v14 = *(a1 + 40);
  if ((v13 & 1) == 0)
  {
    if (v14)
    {
      v21 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 40) userActivityWillSave:v5];
        v22 = objc_alloc(MEMORY[0x277CCAE58]);
        v23 = [v5 _internalUserActivity];
        v24 = [v23 copyWithNewUUID:0];
        v20 = [v22 initWithInternalUserActivity:v24];

        v25 = *(a1 + 40);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 40) didSynchronizeActivity];
        }

        (*(*(a1 + 56) + 16))();
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

  v15 = *(a1 + 72);
  v16 = *(a1 + 64);
  [*(a1 + 48) timeIntervalSinceNow];
  v18 = v16 - v17;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __117__NSUserActivity_NSUserActivityInternalDelegateCalls__doSaveUserActivityWithTimeout_isCurrent_withCompletionHandler___block_invoke_56;
  v27[3] = &unk_2785C4650;
  v28 = *(a1 + 56);
  [v14 _userActivityWillSave:v5 isCurrent:v15 timeout:v27 withCompletionHandler:v18];

LABEL_21:
  v26 = *MEMORY[0x277D85DE8];
}

void __117__NSUserActivity_NSUserActivityInternalDelegateCalls__doSaveUserActivityWithTimeout_isCurrent_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _internalUserActivity];
  v3 = [v2 isInvalidated];

  if (v3)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) _internalUserActivity];
      v6 = [v5 uniqueIdentifier];
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "userActivity=%{public}@ was invalidated before we could get its information.", buf, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [*(a1 + 32) willSynchronizeActivity];
    v8 = objc_alloc(MEMORY[0x277CCAE58]);
    v9 = [*(a1 + 32) _internalUserActivity];
    v10 = [v9 copyWithNewUUID:0];
    v12 = [v8 initWithInternalUserActivity:v10];

    [*(a1 + 32) didSynchronizeActivity];
    (*(*(a1 + 40) + 16))();
    v11 = *MEMORY[0x277D85DE8];
  }
}

@end