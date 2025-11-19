@interface RegisterXPCActivity
@end

@implementation RegisterXPCActivity

void ___RegisterXPCActivity_block_invoke(id *a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__19;
  v58 = __Block_byref_object_dispose__19;
  v59 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__19;
  v52[4] = __Block_byref_object_dispose__19;
  v53 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__19;
  v50[4] = __Block_byref_object_dispose__19;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__19;
  v48 = __Block_byref_object_dispose__19;
  v49 = 0;
  v5 = _ScheduledActivityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___RegisterXPCActivity_block_invoke_2;
  block[3] = &unk_1E79CDED8;
  v36 = a1[4];
  v39 = &v60;
  v37 = a1[5];
  v40 = &v54;
  v41 = v52;
  v42 = v50;
  v43 = &v44;
  v38 = a1[6];
  dispatch_sync(v5, block);

  if (*(v61 + 24) == 1)
  {
    if (state == 2)
    {
      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1[4];
        v16 = a1[5];
        *buf = 138412546;
        v65 = v16;
        v66 = 2112;
        v67 = v17;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Beginning Scheduled Activity: %@ for Client: %@", buf, 0x16u);
      }

      v18 = _ScheduledActivityQueue();
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = ___RegisterXPCActivity_block_invoke_242;
      v30[3] = &unk_1E79CDF00;
      v34 = &v44;
      v31 = a1[5];
      v32 = a1[4];
      v33 = a1[6];
      dispatch_async(v18, v30);

      v19 = v55[5];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = ___RegisterXPCActivity_block_invoke_243;
      v25[3] = &unk_1E79CDF28;
      v27 = v50;
      v28 = v52;
      v26 = a1[5];
      v29 = &v44;
      dispatch_sync(v19, v25);
      if (!xpc_activity_set_state(v3, 5))
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v21 = a1[4];
          v20 = a1[5];
          *buf = 138412546;
          v65 = v20;
          v66 = 2112;
          v67 = v21;
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Failed to set Scheduled Activity: %@ for Client: %@ to DONE", buf, 0x16u);
        }
      }

      v6 = v31;
      goto LABEL_24;
    }

    if (!state)
    {
      v6 = xpc_activity_copy_criteria(v3);
      v7 = v45[5];
      if (v6)
      {
        v8 = [v7 xpcActivityCriteria];
        v9 = PDXPCDictionaryUpdateWithDictionary(v6, v8);

        if (!v9)
        {
          v10 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = a1[4];
            v11 = a1[5];
            *buf = 138412546;
            v65 = v11;
            v66 = 2112;
            v67 = v12;
            _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Preserving prior, identical XPC criteria for Scheduled Activity: %@ for Client: %@", buf, 0x16u);
          }

LABEL_24:
          goto LABEL_25;
        }
      }

      else
      {
        v6 = [v7 xpcActivityCriteria];
      }

      v22 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[4];
        v23 = a1[5];
        *buf = 138412546;
        v65 = v23;
        v66 = 2112;
        v67 = v24;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Setting XPC criteria for Scheduled Activity: %@ for Client: %@", buf, 0x16u);
      }

      xpc_activity_set_criteria(v3, v6);
      goto LABEL_24;
    }
  }

  else if (state == 2 && !xpc_activity_set_state(v3, 5))
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      v13 = a1[5];
      *buf = 138412546;
      v65 = v13;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to set Scheduled Activity: %@ for Client: %@ to DONE", buf, 0x16u);
    }

    goto LABEL_24;
  }

LABEL_25:

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
}

void ___RegisterXPCActivity_block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = _RegisteredClients();
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  v4 = [v3 activityRegistrations];
  *(*(*(a1 + 56) + 8) + 24) = [v3 isValid];
  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    goto LABEL_6;
  }

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v3 activityQueue];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v3 clientInstance];
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v5 activityContext];
  v13 = *(*(a1 + 80) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [v5 activityCriteria];
  v16 = [v15 copy];
  v17 = *(*(a1 + 88) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = *(*(*(a1 + 88) + 8) + 40);
  if (v19)
  {
    v20 = [v19 endDate];
    [v20 timeIntervalSinceNow];
    *(*(*(a1 + 56) + 8) + 24) = v21 >= 0.0;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
LABEL_6:
    v22 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v25 = 138412546;
      v26 = v23;
      v27 = 2112;
      v28 = v24;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Removing invalid/expired Scheduled Activity: %@ for Client: %@", &v25, 0x16u);
    }

    [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];
    xpc_activity_unregister([*(a1 + 48) UTF8String]);
    _ArchiveRegisteredClients();
  }
}

void ___RegisterXPCActivity_block_invoke_242(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (![*(*(*(a1 + 56) + 8) + 40) isRepeating] || (objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "endDate"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "timeIntervalSinceNow"), v4 = v3, v2, v4 < 0.0))
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Removing finished Scheduled Activity: %@ for Client: %@", &v11, 0x16u);
    }

    v8 = _RegisteredClients();
    v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];

    v10 = [v9 activityRegistrations];
    [v10 setObject:0 forKeyedSubscript:*(a1 + 32)];

    xpc_activity_unregister([*(a1 + 48) UTF8String]);
    _ArchiveRegisteredClients();
  }

  if (_TrimUnregisteredClients_onceToken != -1)
  {
    dispatch_once(&_TrimUnregisteredClients_onceToken, &__block_literal_global_248);
  }
}

uint64_t ___RegisterXPCActivity_block_invoke_243(void *a1)
{
  if (*(*(a1[5] + 8) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = *(*(a1[6] + 8) + 40);
    v3 = *(*(a1[7] + 8) + 40);
    v4 = a1[4];
    v5 = *(*(a1[5] + 8) + 40);

    return [v2 performScheduledActivityWithIdentifier:v4 activityCriteria:v3 activityContext:v5];
  }

  else
  {
    v7 = *(*(a1[6] + 8) + 40);
    v8 = a1[4];
    v9 = *(*(a1[7] + 8) + 40);

    return [v7 performScheduledActivityWithIdentifier:v8 activityCriteria:v9];
  }
}

@end