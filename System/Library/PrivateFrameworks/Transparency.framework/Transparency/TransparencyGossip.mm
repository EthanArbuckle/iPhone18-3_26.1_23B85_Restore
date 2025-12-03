@interface TransparencyGossip
+ (id)retrieveCurrentVerifiedTLTSTH:(id *)h;
+ (void)sthsReceivedFromPeers:(id)peers error:(id *)error;
@end

@implementation TransparencyGossip

+ (id)retrieveCurrentVerifiedTLTSTH:(id *)h
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke;
  v8[3] = &unk_1E8701870;
  v8[4] = &v9;
  v8[5] = &v15;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_2_9;
  v7[3] = &unk_1E8701788;
  v7[4] = &v9;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v8 errorHandler:v7];
  if (h)
  {
    v4 = v10[5];
    if (v4)
    {
      *h = v4;
    }
  }

  v5 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_cold_2();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    }
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending synchronous retrieveCurrentVerifiedTLTSTH", buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_6;
    v11[3] = &unk_1E8702320;
    v12 = *(a1 + 32);
    [v5 retrieveCurrentVerifiedTLTSTH:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_2_9(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_12 != -1)
  {
    __52__TransparencyGossip_retrieveCurrentVerifiedTLTSTH___block_invoke_2_9_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown retrieveCurrentVerifiedTLTSTH error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)sthsReceivedFromPeers:(id)peers error:(id *)error
{
  peersCopy = peers;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke;
  v9[3] = &unk_1E87018C0;
  v11 = &v12;
  v6 = peersCopy;
  v10 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_2_19;
  v8[3] = &unk_1E8701788;
  v8[4] = &v12;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v9 errorHandler:v8];
  if (error)
  {
    v7 = v13[5];
    if (v7)
    {
      *error = v7;
    }
  }

  _Block_object_dispose(&v12, 8);
}

void __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_cold_2();
    }

    v10 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    }
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending synchronous sthsReceivedFromPeers", buf, 2u);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_18;
    v12[3] = &unk_1E8701788;
    v9 = *(a1 + 32);
    v12[4] = *(a1 + 40);
    [v5 sthsReceivedFromPeers:v9 completionBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_15()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_2_19(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_12 != -1)
  {
    __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_2_19_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown sthsReceivedFromPeers error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __50__TransparencyGossip_sthsReceivedFromPeers_error___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end