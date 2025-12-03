@interface KTIDStaticKeyStore
- (BOOL)removeEntryByContact:(id)contact error:(id *)error;
- (BOOL)removeEntryByContactIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeEntryByKDID:(id)d error:(id *)error;
- (BOOL)resetCloudKit:(id *)kit;
- (BOOL)setErrorCode:(int)code forMapping:(id)mapping error:(id *)error;
- (BOOL)setupCloudSchema:(BOOL)schema error:(id *)error;
- (BOOL)triggerSync:(id *)sync;
- (BOOL)updateStaticKeyEntry:(id)entry contact:(id)contact error:(id *)error;
- (BOOL)updateStaticKeyEntry:(id)entry contactServerPath:(id)path contactIdentifier:(id)identifier mappings:(id)mappings error:(id *)error;
- (id)findByContact:(id)contact error:(id *)error;
- (id)findByContactIdentifier:(id)identifier error:(id *)error;
- (id)findByIdentifier:(id)identifier error:(id *)error;
- (id)findKeyByHandle:(id)handle error:(id *)error;
- (id)listKTID:(id *)d;
- (id)mappings:(id)mappings error:(id *)error;
- (id)validateByContact:(id)contact error:(id *)error;
- (id)validateByContactIdentifier:(id)identifier error:(id *)error;
- (id)validateByIdentifier:(id)identifier error:(id *)error;
@end

@implementation KTIDStaticKeyStore

- (BOOL)updateStaticKeyEntry:(id)entry contactServerPath:(id)path contactIdentifier:(id)identifier mappings:(id)mappings error:(id *)error
{
  entryCopy = entry;
  pathCopy = path;
  identifierCopy = identifier;
  mappingsCopy = mappings;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__6;
  v39 = __Block_byref_object_dispose__6;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__6;
  v33 = __Block_byref_object_dispose__6;
  v34 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke;
  v22[3] = &unk_1E87024D8;
  v27 = &v29;
  v15 = entryCopy;
  v23 = v15;
  v16 = identifierCopy;
  v24 = v16;
  v17 = pathCopy;
  v25 = v17;
  v18 = mappingsCopy;
  v26 = v18;
  v28 = &v35;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke_3;
  v21[3] = &unk_1E8701788;
  v21[4] = &v29;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v22 errorHandler:v21];
  v19 = v36[5];
  if (error && !v19)
  {
    *error = v30[5];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v19 != 0;
}

void __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (!a2 || v6)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a3);
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke_2;
    v12[3] = &unk_1E87024B0;
    v13 = *(a1 + 4);
    [a2 updateStaticKeyEntry:v8 contactIdentifier:v9 contactExternalIdentifier:v10 mappings:v11 error:v12];
  }
}

void __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown updateStaticKeyEntry error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __94__KTIDStaticKeyStore_updateStaticKeyEntry_contactServerPath_contactIdentifier_mappings_error___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)updateStaticKeyEntry:(id)entry contact:(id)contact error:(id *)error
{
  entryCopy = entry;
  contactCopy = contact;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__6;
  v29 = __Block_byref_object_dispose__6;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke;
  v14[3] = &unk_1E8702500;
  v17 = &v19;
  v9 = entryCopy;
  v15 = v9;
  v10 = contactCopy;
  v16 = v10;
  v18 = &v25;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke_3;
  v13[3] = &unk_1E8701788;
  v13[4] = &v19;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v14 errorHandler:v13];
  v11 = v26[5];
  if (error && !v11)
  {
    *error = v20[5];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11 != 0;
}

void __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  else
  {
    v7 = a1[4];
    v8 = a1[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke_2;
    v9[3] = &unk_1E87024B0;
    v10 = *(a1 + 3);
    [a2 updateStaticKeyEntry:v7 contact:v8 complete:v9];
  }
}

void __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown updateStaticKeyEntry error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __57__KTIDStaticKeyStore_updateStaticKeyEntry_contact_error___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)removeEntryByKDID:(id)d error:(id *)error
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v18;
  v6 = dCopy;
  v11 = v6;
  v13 = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_2_125;
  v9[3] = &unk_1E8701788;
  v9[4] = &v18;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v19[5];
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

void __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Connection removeEntryByKDID error: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_123;
    v11[3] = &unk_1E8702528;
    v12 = *(a1 + 40);
    [v5 removeEntryByKDID:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_123(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_2_125(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_2_125_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown removeEntryByKDID error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __46__KTIDStaticKeyStore_removeEntryByKDID_error___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)removeEntryByContactIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v18;
  v6 = identifierCopy;
  v11 = v6;
  v13 = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_2_131;
  v9[3] = &unk_1E8701788;
  v9[4] = &v18;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v19[5];
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

void __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Connection removeEntryByContactIdentifier error: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_130;
    v11[3] = &unk_1E8702528;
    v12 = *(a1 + 40);
    [v5 removeEntryByContactIdentifier:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_130(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_2_131(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_2_131_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown removeEntryByContactIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __59__KTIDStaticKeyStore_removeEntryByContactIdentifier_error___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)removeEntryByContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v18;
  v6 = contactCopy;
  v11 = v6;
  v13 = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_2_137;
  v9[3] = &unk_1E8701788;
  v9[4] = &v18;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v19[5];
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

void __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Connection removeEntryByContactIdentifier error: %@", buf, 0xCu);
    }

    v10 = *(*(a1 + 40) + 8);
    v11 = v7;
    v8 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    v8 = [*(a1 + 32) identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_136;
    v13[3] = &unk_1E8702528;
    v14 = *(a1 + 40);
    [v5 removeEntryByContactIdentifier:v8 complete:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_136(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_2_137(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_2_137_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown removeEntryByContactIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __49__KTIDStaticKeyStore_removeEntryByContact_error___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)findKeyByHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v14;
  v6 = handleCopy;
  v11 = v6;
  v13 = &v20;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_2_143;
  v9[3] = &unk_1E8701788;
  v9[4] = &v14;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Connection findKeyByHandle error: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_142;
    v11[3] = &unk_1E87024B0;
    v12 = *(a1 + 40);
    [v5 findStaticKeyStoreMappingByIDSURI:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_142(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_2_143(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_2_143_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown removeEntryByContactIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __44__KTIDStaticKeyStore_findKeyByHandle_error___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)findByContactIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v14;
  v6 = identifierCopy;
  v11 = v6;
  v13 = &v20;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_2_149;
  v9[3] = &unk_1E8701788;
  v9[4] = &v14;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Connection findKeyByHandle error: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_148;
    v11[3] = &unk_1E87024B0;
    v12 = *(a1 + 40);
    [v5 findStaticKeyStoreMappingByContactIdentifer:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_2_149(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_2_149_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown findByContactIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __52__KTIDStaticKeyStore_findByContactIdentifier_error___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)findByContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__KTIDStaticKeyStore_findByContact_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v14;
  v6 = contactCopy;
  v11 = v6;
  v13 = &v20;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__KTIDStaticKeyStore_findByContact_error___block_invoke_2_155;
  v9[3] = &unk_1E8701788;
  v9[4] = &v14;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __42__KTIDStaticKeyStore_findByContact_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __42__KTIDStaticKeyStore_findByContact_error___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Connection findKeyByHandle error: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__KTIDStaticKeyStore_findByContact_error___block_invoke_154;
    v11[3] = &unk_1E87024B0;
    v12 = *(a1 + 40);
    [v5 findStaticKeyStoreMappingByContact:v8 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __42__KTIDStaticKeyStore_findByContact_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __42__KTIDStaticKeyStore_findByContact_error___block_invoke_154(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __42__KTIDStaticKeyStore_findByContact_error___block_invoke_2_155(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __42__KTIDStaticKeyStore_findByContact_error___block_invoke_2_155_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown findByContactIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __42__KTIDStaticKeyStore_findByContact_error___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)findByIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v14;
  v6 = identifierCopy;
  v11 = v6;
  v13 = &v20;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke_3;
  v9[3] = &unk_1E8701788;
  v9[4] = &v14;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke_2;
    v8[3] = &unk_1E87024B0;
    v9 = *(a1 + 40);
    [a2 findStaticKeyStoreMappingByKey:v7 complete:v8];
  }
}

void __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown findByIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __45__KTIDStaticKeyStore_findByIdentifier_error___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)validateByIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v14;
  v6 = identifierCopy;
  v11 = v6;
  v13 = &v20;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke_3;
  v9[3] = &unk_1E8701788;
  v9[4] = &v14;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke_2;
    v8[3] = &unk_1E87024B0;
    v9 = *(a1 + 40);
    [a2 validateStaticKeyStoreMappingByKey:v7 complete:v8];
  }
}

void __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown validateByIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __49__KTIDStaticKeyStore_validateByIdentifier_error___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)validateByContact:(id)contact error:(id *)error
{
  identifier = [contact identifier];
  v7 = [(KTIDStaticKeyStore *)self validateByContactIdentifier:identifier error:error];

  return v7;
}

- (id)validateByContactIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke;
  v10[3] = &unk_1E8701760;
  v12 = &v14;
  v6 = identifierCopy;
  v11 = v6;
  v13 = &v20;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke_3;
  v9[3] = &unk_1E8701788;
  v9[4] = &v14;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke_2;
    v8[3] = &unk_1E87024B0;
    v9 = *(a1 + 40);
    [a2 validateStaticKeyStoreMappingByContactIdentifer:v7 complete:v8];
  }
}

void __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown validateByContactIdentifier error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __56__KTIDStaticKeyStore_validateByContactIdentifier_error___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)mappings:(id)mappings error:(id *)error
{
  v4 = [(KTIDStaticKeyStore *)self findByIdentifier:mappings error:error];
  mappings = [v4 mappings];

  return mappings;
}

- (id)listKTID:(id *)d
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__KTIDStaticKeyStore_listKTID___block_invoke;
  v7[3] = &unk_1E8701870;
  v7[4] = &v8;
  v7[5] = &v14;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__KTIDStaticKeyStore_listKTID___block_invoke_3;
  v6[3] = &unk_1E8701788;
  v6[4] = &v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v6];
  if (d)
  {
    *d = v9[5];
  }

  v4 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __31__KTIDStaticKeyStore_listKTID___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[2].i64[0] + 8) + 40), a3);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__KTIDStaticKeyStore_listKTID___block_invoke_2;
    v7[3] = &unk_1E8701908;
    v8 = vextq_s8(a1[2], a1[2], 8uLL);
    [a2 listStaticKey:v7];
  }
}

void __31__KTIDStaticKeyStore_listKTID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void __31__KTIDStaticKeyStore_listKTID___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __31__KTIDStaticKeyStore_listKTID___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown listKTID error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __31__KTIDStaticKeyStore_listKTID___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)setErrorCode:(int)code forMapping:(id)mapping error:(id *)error
{
  mappingCopy = mapping;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke;
  v12[3] = &unk_1E8702550;
  v14 = &v17;
  codeCopy = code;
  v8 = mappingCopy;
  v13 = v8;
  v15 = &v23;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke_3;
  v11[3] = &unk_1E8701788;
  v11[4] = &v17;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v12 errorHandler:v11];
  if (error)
  {
    *error = v18[5];
  }

  v9 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

void __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke_2;
    v9[3] = &unk_1E8702528;
    v10 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    [a2 setErrorCode:v7 forMapping:v8 complete:v9];
  }
}

void __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

void __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown setErrorCode error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __52__KTIDStaticKeyStore_setErrorCode_forMapping_error___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)triggerSync:(id *)sync
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__KTIDStaticKeyStore_triggerSync___block_invoke;
  v7[3] = &unk_1E8701870;
  v7[4] = &v8;
  v7[5] = &v14;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__KTIDStaticKeyStore_triggerSync___block_invoke_3;
  v6[3] = &unk_1E8701788;
  v6[4] = &v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v6];
  if (sync)
  {
    *sync = v9[5];
  }

  v4 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v4;
}

void __34__KTIDStaticKeyStore_triggerSync___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[2].i64[0] + 8) + 40), a3);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__KTIDStaticKeyStore_triggerSync___block_invoke_2;
    v7[3] = &unk_1E8702528;
    v8 = vextq_s8(a1[2], a1[2], 8uLL);
    [a2 staticKeyTriggerSync:v7];
  }
}

void __34__KTIDStaticKeyStore_triggerSync___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

void __34__KTIDStaticKeyStore_triggerSync___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __34__KTIDStaticKeyStore_triggerSync___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown triggerSync error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __34__KTIDStaticKeyStore_triggerSync___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)setupCloudSchema:(BOOL)schema error:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke;
  v8[3] = &unk_1E8702578;
  schemaCopy = schema;
  v8[4] = &v10;
  v8[5] = &v16;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke_3;
  v7[3] = &unk_1E8701788;
  v7[4] = &v10;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v8 errorHandler:v7];
  if (error)
  {
    *error = v11[5];
  }

  v5 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v5;
}

void __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[2].i64[0] + 8) + 40), a3);
  }

  else
  {
    v7 = a1[3].u8[0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke_2;
    v8[3] = &unk_1E8702528;
    v9 = vextq_s8(a1[2], a1[2], 8uLL);
    [a2 setupCloudSchema:v7 complete:v8];
  }
}

void __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

void __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown setupCloudSchema error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __45__KTIDStaticKeyStore_setupCloudSchema_error___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)resetCloudKit:(id *)kit
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__KTIDStaticKeyStore_resetCloudKit___block_invoke;
  v7[3] = &unk_1E8701870;
  v7[4] = &v8;
  v7[5] = &v14;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__KTIDStaticKeyStore_resetCloudKit___block_invoke_3;
  v6[3] = &unk_1E8701788;
  v6[4] = &v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v6];
  if (kit)
  {
    *kit = v9[5];
  }

  v4 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v4;
}

void __36__KTIDStaticKeyStore_resetCloudKit___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[2].i64[0] + 8) + 40), a3);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__KTIDStaticKeyStore_resetCloudKit___block_invoke_2;
    v7[3] = &unk_1E8702528;
    v8 = vextq_s8(a1[2], a1[2], 8uLL);
    [a2 resetCloudZone:v7];
  }
}

void __36__KTIDStaticKeyStore_resetCloudKit___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

void __36__KTIDStaticKeyStore_resetCloudKit___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __36__KTIDStaticKeyStore_resetCloudKit___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown resetCloudKit error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __36__KTIDStaticKeyStore_resetCloudKit___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end