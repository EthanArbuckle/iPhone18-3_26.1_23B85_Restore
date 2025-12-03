@interface SESPrivacyKeyManager
+ (id)sharedManager;
- (BOOL)deletePrivacyKey:(id)key outError:(id *)error;
- (id)createPrivacyKeyForGroupIdentifier:(id)identifier withOptions:(id)options outError:(id *)error;
- (id)decryptPayload:(id)payload withGroupIdentifier:(id)identifier outError:(id *)error;
- (id)encryptData:(id)data scheme:(id)scheme recipientPublicKey:(id)key outError:(id *)error;
- (id)privacyKeysForGroupIdentifier:(id)identifier privacyKeyIdentifier:(id)keyIdentifier outError:(id *)error;
@end

@implementation SESPrivacyKeyManager

+ (id)sharedManager
{
  if (sharedManager_onceToken[0] != -1)
  {
    +[SESPrivacyKeyManager sharedManager];
  }

  v3 = sharedManager_shared;

  return v3;
}

uint64_t __37__SESPrivacyKeyManager_sharedManager__block_invoke()
{
  sharedManager_shared = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)privacyKeysForGroupIdentifier:(id)identifier privacyKeyIdentifier:(id)keyIdentifier outError:(id *)error
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v9 = +[SESClient sharedClient];
  v10 = (v22 + 5);
  obj = v22[5];
  v11 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v10, obj);

  if (v11 && !v22[5])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__SESPrivacyKeyManager_privacyKeysForGroupIdentifier_privacyKeyIdentifier_outError___block_invoke;
    v19[3] = &unk_1E82D0C38;
    v19[4] = &v27;
    v19[5] = &v21;
    [v11 privacyKeysForGroupIdentifier:identifierCopy keyIdentifier:keyIdentifierCopy completion:v19];
    if (!v28[5] && !v22[5])
    {
      v14 = SESDefaultLogObject();
      v15 = *MEMORY[0x1E69E5148];
      v16 = SESCreateAndLogError();
      v17 = v22[5];
      v22[5] = v16;
    }

    if (error)
    {
      *error = v22[5];
    }

    v13 = v28[5];
  }

  else if (error)
  {
    v12 = v22[5];
    SESEnsureError();
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

void __84__SESPrivacyKeyManager_privacyKeysForGroupIdentifier_privacyKeyIdentifier_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)createPrivacyKeyForGroupIdentifier:(id)identifier withOptions:(id)options outError:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v9 = +[SESClient sharedClient];
  v10 = (v22 + 5);
  obj = v22[5];
  v11 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v10, obj);

  if (v11 && !v22[5])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__SESPrivacyKeyManager_createPrivacyKeyForGroupIdentifier_withOptions_outError___block_invoke;
    v19[3] = &unk_1E82D1710;
    v19[4] = &v27;
    v19[5] = &v21;
    [v11 createPrivacyKeyForGroupIdentifier:identifierCopy withOptions:optionsCopy completion:v19];
    if (!v28[5] && !v22[5])
    {
      v14 = SESDefaultLogObject();
      v15 = *MEMORY[0x1E69E5148];
      v16 = SESCreateAndLogError();
      v17 = v22[5];
      v22[5] = v16;
    }

    if (error)
    {
      *error = v22[5];
    }

    v13 = v28[5];
  }

  else if (error)
  {
    v12 = v22[5];
    SESEnsureError();
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

void __80__SESPrivacyKeyManager_createPrivacyKeyForGroupIdentifier_withOptions_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)deletePrivacyKey:(id)key outError:(id *)error
{
  keyCopy = key;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  v6 = +[SESClient sharedClient];
  v7 = (v24 + 5);
  obj = v24[5];
  v8 = [(SESClient *)v6 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v7, obj);

  if (v8 && !v24[5])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__SESPrivacyKeyManager_deletePrivacyKey_outError___block_invoke;
    v17[3] = &unk_1E82D0DF0;
    v17[4] = &v18;
    v17[5] = &v23;
    [v8 deletePrivacyKey:keyCopy completion:v17];
    v11 = v24;
    if ((v19[3] & 1) == 0 && !v24[5])
    {
      v12 = SESDefaultLogObject();
      v13 = *MEMORY[0x1E69E5148];
      v14 = SESCreateAndLogError();
      v15 = v24[5];
      v24[5] = v14;

      v11 = v24;
    }

    if (error)
    {
      *error = v11[5];
      v11 = v24;
    }

    v10 = v11[5] == 0;
    _Block_object_dispose(&v18, 8);
  }

  else if (error)
  {
    v9 = v24[5];
    SESEnsureError();
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v10;
}

- (id)decryptPayload:(id)payload withGroupIdentifier:(id)identifier outError:(id *)error
{
  payloadCopy = payload;
  identifierCopy = identifier;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v9 = +[SESClient sharedClient];
  v10 = (v22 + 5);
  obj = v22[5];
  v11 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v10, obj);

  if (v11 && !v22[5])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__SESPrivacyKeyManager_decryptPayload_withGroupIdentifier_outError___block_invoke;
    v19[3] = &unk_1E82D0E40;
    v19[4] = &v27;
    v19[5] = &v21;
    [v11 decryptPayload:payloadCopy withGroupIdentifier:identifierCopy completion:v19];
    if (!v28[5] && !v22[5])
    {
      v14 = SESDefaultLogObject();
      v15 = *MEMORY[0x1E69E5148];
      v16 = SESCreateAndLogError();
      v17 = v22[5];
      v22[5] = v16;
    }

    if (error)
    {
      *error = v22[5];
    }

    v13 = v28[5];
  }

  else if (error)
  {
    v12 = v22[5];
    SESEnsureError();
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

void __68__SESPrivacyKeyManager_decryptPayload_withGroupIdentifier_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)encryptData:(id)data scheme:(id)scheme recipientPublicKey:(id)key outError:(id *)error
{
  dataCopy = data;
  schemeCopy = scheme;
  keyCopy = key;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__9;
  v34 = __Block_byref_object_dispose__9;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__9;
  v28 = __Block_byref_object_dispose__9;
  v29 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v25 + 5);
  obj = v25[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  if (v14 && !v25[5])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__SESPrivacyKeyManager_encryptData_scheme_recipientPublicKey_outError___block_invoke;
    v22[3] = &unk_1E82D1198;
    v22[4] = &v30;
    v22[5] = &v24;
    [v14 encryptPayload:dataCopy encryptionScheme:schemeCopy recipientPublicKey:keyCopy completion:v22];
    if (!v31[5] && !v25[5])
    {
      v17 = SESDefaultLogObject();
      v18 = *MEMORY[0x1E69E5148];
      v19 = SESCreateAndLogError();
      v20 = v25[5];
      v25[5] = v19;
    }

    if (error)
    {
      *error = v25[5];
    }

    v16 = v31[5];
  }

  else if (error)
  {
    v15 = v25[5];
    SESEnsureError();
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

void __71__SESPrivacyKeyManager_encryptData_scheme_recipientPublicKey_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end