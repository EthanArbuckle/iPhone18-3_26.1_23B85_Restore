@interface TransparencyStaticKey
+ (void)sasTTR:(id)a3 toHandle:(id)a4 pushToken:(id)a5 complete:(id)a6;
- (void)deleteKTSession:(id)a3 complete:(id)a4;
- (void)getKTSessionByHandle:(id)a3 complete:(id)a4;
- (void)getKTSessionByID:(id)a3 complete:(id)a4;
- (void)listKTSessions:(id)a3;
- (void)setupKTSession:(id)a3 complete:(id)a4;
- (void)transparencyHaveContact:(id)a3 complete:(id)a4;
@end

@implementation TransparencyStaticKey

- (void)setupKTSession:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__TransparencyStaticKey_setupKTSession_complete___block_invoke;
  v11[3] = &unk_1E8702370;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__TransparencyStaticKey_setupKTSession_complete___block_invoke_2_306;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeIDSXPCWithBlock:v11 errorHandler:v9];
}

void __49__TransparencyStaticKey_setupKTSession_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
    {
      __49__TransparencyStaticKey_setupKTSession_complete___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__TransparencyStaticKey_setupKTSession_complete___block_invoke_303;
    v11[3] = &unk_1E8702348;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v5 setupKTSession:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __49__TransparencyStaticKey_setupKTSession_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __49__TransparencyStaticKey_setupKTSession_complete___block_invoke_2_306(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
  {
    __49__TransparencyStaticKey_setupKTSession_complete___block_invoke_2_306_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown setupKTSession error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __49__TransparencyStaticKey_setupKTSession_complete___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)deleteKTSession:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke;
  v11[3] = &unk_1E8702370;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke_2_314;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeIDSXPCWithBlock:v11 errorHandler:v9];
}

void __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
    {
      __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke_312;
    v11[3] = &unk_1E8702398;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v5 deleteKTSession:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke_2_314(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
  {
    __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke_2_314_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown deleteKTSession error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __50__TransparencyStaticKey_deleteKTSession_complete___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)listKTSessions:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__TransparencyStaticKey_listKTSessions___block_invoke;
  v7[3] = &unk_1E87023E8;
  v8 = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__TransparencyStaticKey_listKTSessions___block_invoke_2_321;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeIDSXPCWithBlock:v7 errorHandler:v5];
}

void __40__TransparencyStaticKey_listKTSessions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
    {
      __40__TransparencyStaticKey_listKTSessions___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__TransparencyStaticKey_listKTSessions___block_invoke_319;
    v10[3] = &unk_1E87023C0;
    v11 = *(a1 + 32);
    [v5 listKTSession:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __40__TransparencyStaticKey_listKTSessions___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __40__TransparencyStaticKey_listKTSessions___block_invoke_2_321(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
  {
    __40__TransparencyStaticKey_listKTSessions___block_invoke_2_321_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown listKTSessions error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __40__TransparencyStaticKey_listKTSessions___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getKTSessionByHandle:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke;
  v11[3] = &unk_1E8702370;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke_2_327;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeIDSXPCWithBlock:v11 errorHandler:v9];
}

void __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
    {
      __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke_326;
    v11[3] = &unk_1E87023C0;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v5 getKTSessionByHandle:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke_2_327(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
  {
    __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke_2_327_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown getKTSessionByHandle error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __55__TransparencyStaticKey_getKTSessionByHandle_complete___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getKTSessionByID:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke;
  v11[3] = &unk_1E8702370;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke_2_334;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeIDSXPCWithBlock:v11 errorHandler:v9];
}

void __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
    {
      __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke_332;
    v11[3] = &unk_1E8702410;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v5 getKTSessionByID:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke_2_334(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
  {
    __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke_2_334_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown getKTSessionByID error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __51__TransparencyStaticKey_getKTSessionByID_complete___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)sasTTR:(id)a3 toHandle:(id)a4 pushToken:(id)a5 complete:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke;
  v19[3] = &unk_1E8702438;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke_2_340;
  v17[3] = &unk_1E87013C8;
  v18 = v23;
  v13 = v23;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  [TransparencyXPCConnection invokeIDSXPCWithBlock:v19 errorHandler:v17];
}

void __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
    {
      __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke_cold_1();
    }

    v11 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1E10DB000, v11, OS_LOG_TYPE_ERROR, "Unknown sasTTR invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke_339;
    v13[3] = &unk_1E87013C8;
    v10 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v5 sasTTR:v8 toHandle:v9 pushToken:v10 complete:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke_2_340(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
  {
    __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke_2_340_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown sasTTR error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __60__TransparencyStaticKey_sasTTR_toHandle_pushToken_complete___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyHaveContact:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__TransparencyStaticKey_transparencyHaveContact_complete___block_invoke;
  v11[3] = &unk_1E8702488;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__TransparencyStaticKey_transparencyHaveContact_complete___block_invoke_3;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeIDSSupportWithBlock:v11 errorHandler:v9];
}

void __58__TransparencyStaticKey_transparencyHaveContact_complete___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__TransparencyStaticKey_transparencyHaveContact_complete___block_invoke_2;
    v8[3] = &unk_1E8702460;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    [a2 haveContact:v7 complete:v8];
  }
}

@end