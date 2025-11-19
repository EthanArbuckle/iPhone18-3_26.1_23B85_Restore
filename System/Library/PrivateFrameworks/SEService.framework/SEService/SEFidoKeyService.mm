@interface SEFidoKeyService
+ (id)shared;
- (BOOL)deleteFidoKeyFor:(id)a3 usingSession:(id)a4 withSessionSEID:(id)a5 error:(id *)a6;
- (id)checkFidoKeyPresence:(id)a3 usingSession:(id)a4 withSessionSEID:(id)a5 error:(id *)a6;
- (id)checkMultipleFidoKeyPresence:(id)a3 usingSession:(id)a4 withSessionSEID:(id)a5 error:(id *)a6;
- (id)createFidoKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 challenge:(id)a5 usingSession:(id)a6 withSessionSEID:(id)a7 error:(id *)a8;
- (id)findAndAttest:(id)a3 challenge:(id)a4 usingSession:(id)a5 withSessionSEID:(id)a6 error:(id *)a7;
- (id)signMultipleWithFidoKeysFor:(id)a3 challenges:(id)a4 forEndpointIdentifiers:(id)a5 usingSession:(id)a6 withSessionSEID:(id)a7 externalizedAuth:(id)a8 error:(id *)a9;
- (id)signWithFidoKeyFor:(id)a3 challenge:(id)a4 forNFCKeyWithIdentifier:(id)a5 usingSession:(id)a6 withSessionSEID:(id)a7 externalizedAuth:(id)a8 error:(id *)a9;
- (id)verifyWithFidoKeyFor:(id)a3 signedChallenge:(id)a4 usingSession:(id)a5 withSessionSEID:(id)a6 error:(id *)a7;
@end

@implementation SEFidoKeyService

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[SEFidoKeyService shared];
  }

  v3 = shared_singleton;

  return v3;
}

uint64_t __26__SEFidoKeyService_shared__block_invoke()
{
  shared_singleton = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)createFidoKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 challenge:(id)a5 usingSession:(id)a6 withSessionSEID:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = 0;
  v18 = +[SESClient sharedClient];
  v19 = (v38 + 5);
  obj = v38[5];
  v20 = [(SESClient *)v18 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v19, obj);

  if (v20 && !v38[5])
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2;
    v34 = __Block_byref_object_dispose__2;
    v35 = 0;
    if (v16)
    {
      v23 = [SEProxy withSession:v16 seid:v17];
    }

    else
    {
      v23 = 0;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __118__SEFidoKeyService_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_usingSession_withSessionSEID_error___block_invoke;
    v29[3] = &unk_1E82D1040;
    v29[4] = &v30;
    v29[5] = &v37;
    [v20 createFiDOKeyForRelyingParty:v13 relyingPartyAccountHash:v14 challenge:v15 usingProxy:v23 callback:v29];
    if (v16)
    {
    }

    if (!v31[5] && !v38[5])
    {
      v24 = SESDefaultLogObject();
      v25 = *MEMORY[0x1E69E5148];
      v26 = SESCreateAndLogError();
      v27 = v38[5];
      v38[5] = v26;
    }

    if (a8)
    {
      *a8 = v38[5];
    }

    v22 = v31[5];
    _Block_object_dispose(&v30, 8);
  }

  else if (a8)
  {
    v21 = v38[5];
    SESEnsureError();
    *a8 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v37, 8);

  return v22;
}

void __118__SEFidoKeyService_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)checkFidoKeyPresence:(id)a3 usingSession:(id)a4 withSessionSEID:(id)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v25[0] = v10;
  v11 = MEMORY[0x1E695DEC8];
  v12 = a5;
  v13 = a4;
  v14 = [v11 arrayWithObjects:v25 count:1];
  v15 = [(SEFidoKeyService *)self checkMultipleFidoKeyPresence:v14 usingSession:v13 withSessionSEID:v12 error:a6];

  if ([v15 count] == 1 && (objc_msgSend(v15, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass & 1) != 0))
  {
    v18 = SESDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v15 objectAtIndexedSubscript:0];
      v23 = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_INFO, "Single Check Presence %@", &v23, 0xCu);
    }

    v20 = [v15 objectAtIndexedSubscript:0];
  }

  else if (a6)
  {
    SESEnsureError();
    *a6 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)signWithFidoKeyFor:(id)a3 challenge:(id)a4 forNFCKeyWithIdentifier:(id)a5 usingSession:(id)a6 withSessionSEID:(id)a7 externalizedAuth:(id)a8 error:(id *)a9
{
  v40[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v36 = v15;
  v40[0] = v15;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v39 = v16;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  if (v17)
  {
    v38 = v17;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  }

  else
  {
    v23 = 0;
  }

  v37 = 0;
  v24 = [(SEFidoKeyService *)self signMultipleWithFidoKeysFor:v21 challenges:v22 forEndpointIdentifiers:v23 usingSession:v18 withSessionSEID:v19 externalizedAuth:v20 error:&v37];
  v25 = v37;
  if (v17)
  {
  }

  if ([v24 count] == 1)
  {
    v26 = [v24 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v28 = [v24 objectAtIndexedSubscript:0];
    if (isKindOfClass)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      v30 = a9;
      if (a9)
      {
        v31 = [v24 objectAtIndexedSubscript:0];
LABEL_13:
        v28 = 0;
        *v30 = v31;
        goto LABEL_17;
      }
    }

    else
    {
      v28 = a9;
      if (!a9)
      {
        goto LABEL_17;
      }

      v32 = SESDefaultLogObject();
      v33 = *MEMORY[0x1E69E5148];
      *a9 = SESCreateAndLogError();
    }
  }

  else
  {
    v30 = a9;
    if (a9)
    {
      v31 = SESEnsureError();
      goto LABEL_13;
    }
  }

  v28 = 0;
LABEL_17:

  v34 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)verifyWithFidoKeyFor:(id)a3 signedChallenge:(id)a4 usingSession:(id)a5 withSessionSEID:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  v15 = +[SESClient sharedClient];
  v16 = (v35 + 5);
  obj = v35[5];
  v17 = [(SESClient *)v15 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v16, obj);

  if (v17 && !v35[5])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = 0;
    if (v13)
    {
      v20 = [SEProxy withSession:v13 seid:v14];
    }

    else
    {
      v20 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __92__SEFidoKeyService_verifyWithFidoKeyFor_signedChallenge_usingSession_withSessionSEID_error___block_invoke;
    v26[3] = &unk_1E82D1068;
    v26[4] = &v27;
    v26[5] = &v34;
    [v17 verifyWithFidoKeyFor:v11 signedChallenge:v12 usingProxy:v20 callback:v26];
    if (v13)
    {
    }

    if (!v28[5] && !v35[5])
    {
      v21 = SESDefaultLogObject();
      v22 = *MEMORY[0x1E69E5148];
      v23 = SESCreateAndLogError();
      v24 = v35[5];
      v35[5] = v23;
    }

    if (a7)
    {
      *a7 = v35[5];
    }

    v19 = v28[5];
    _Block_object_dispose(&v27, 8);
  }

  else if (a7)
  {
    v18 = v35[5];
    SESEnsureError();
    *a7 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v34, 8);

  return v19;
}

void __92__SEFidoKeyService_verifyWithFidoKeyFor_signedChallenge_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)deleteFidoKeyFor:(id)a3 usingSession:(id)a4 withSessionSEID:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v31 + 5);
  obj = v31[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  if (v14 && !v31[5])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    if (v10)
    {
      v17 = [SEProxy withSession:v10 seid:v11];
    }

    else
    {
      v17 = 0;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__SEFidoKeyService_deleteFidoKeyFor_usingSession_withSessionSEID_error___block_invoke;
    v24[3] = &unk_1E82D0DF0;
    v24[4] = &v25;
    v24[5] = &v30;
    [v14 deleteFiDOKeyFor:v9 usingProxy:v17 callback:v24];
    if (v10)
    {
    }

    v18 = v31;
    if ((v26[3] & 1) == 0 && !v31[5])
    {
      v19 = SESDefaultLogObject();
      v20 = *MEMORY[0x1E69E5148];
      v21 = SESCreateAndLogError();
      v22 = v31[5];
      v31[5] = v21;

      v18 = v31;
    }

    if (a6)
    {
      *a6 = v18[5];
      v18 = v31;
    }

    v16 = v18[5] == 0;
    _Block_object_dispose(&v25, 8);
  }

  else if (a6)
  {
    v15 = v31[5];
    SESEnsureError();
    *a6 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v30, 8);
  return v16;
}

- (id)checkMultipleFidoKeyPresence:(id)a3 usingSession:(id)a4 withSessionSEID:(id)a5 error:(id *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v35 + 5);
  obj = v35[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  if (v14 && !v35[5])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = 0;
    if (v10)
    {
      v17 = [SEProxy withSession:v10 seid:v11];
    }

    else
    {
      v17 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__SEFidoKeyService_checkMultipleFidoKeyPresence_usingSession_withSessionSEID_error___block_invoke;
    v26[3] = &unk_1E82D0C38;
    v26[4] = &v27;
    v26[5] = &v34;
    [v14 checkMultipleFidoKeyPresence:v9 usingProxy:v17 callback:v26];
    if (v10)
    {
    }

    if (!v28[5] && !v35[5])
    {
      v18 = SESDefaultLogObject();
      v19 = *MEMORY[0x1E69E5148];
      v20 = SESCreateAndLogError();
      v21 = v35[5];
      v35[5] = v20;
    }

    v22 = SESDefaultLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v28[5];
      *buf = 138412290;
      v41 = v23;
      _os_log_impl(&dword_1C7B9A000, v22, OS_LOG_TYPE_INFO, "Multiple Check Presence %@", buf, 0xCu);
    }

    v16 = v28[5];
    _Block_object_dispose(&v27, 8);
  }

  else if (a6)
  {
    v15 = v35[5];
    SESEnsureError();
    *a6 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v34, 8);
  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

void __84__SEFidoKeyService_checkMultipleFidoKeyPresence_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)findAndAttest:(id)a3 challenge:(id)a4 usingSession:(id)a5 withSessionSEID:(id)a6 error:(id *)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2;
  v42 = __Block_byref_object_dispose__2;
  v43 = 0;
  v15 = +[SESClient sharedClient];
  v16 = (v39 + 5);
  obj = v39[5];
  v17 = [(SESClient *)v15 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v16, obj);

  if (!v17 || v39[5])
  {
    if (a7)
    {
      v18 = v39[5];
      SESEnsureError();
      *a7 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_19;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  if (v13)
  {
    v20 = [SEProxy withSession:v13 seid:v14];
  }

  else
  {
    v20 = 0;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __79__SEFidoKeyService_findAndAttest_challenge_usingSession_withSessionSEID_error___block_invoke;
  v30[3] = &unk_1E82D1040;
  v30[4] = &v31;
  v30[5] = &v38;
  [v17 findAndAttest:v11 challenge:v12 usingProxy:v20 callback:v30];
  if (v13)
  {
  }

  v21 = v39[5];
  if (v21)
  {
    if (a7)
    {
      goto LABEL_13;
    }
  }

  else if (!v32[5])
  {
    v26 = SESDefaultLogObject();
    v27 = *MEMORY[0x1E69E5148];
    v28 = SESCreateAndLogError();
    v29 = v39[5];
    v39[5] = v28;

    v21 = v39[5];
    if (a7)
    {
LABEL_13:
      if (v21)
      {
        *a7 = v21;
      }
    }
  }

  v22 = SESDefaultLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = v32[5];
    *buf = 138412290;
    v45 = v23;
    _os_log_impl(&dword_1C7B9A000, v22, OS_LOG_TYPE_INFO, "Find FiDO key %@", buf, 0xCu);
  }

  v19 = v32[5];
  _Block_object_dispose(&v31, 8);

LABEL_19:
  _Block_object_dispose(&v38, 8);

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

void __79__SEFidoKeyService_findAndAttest_challenge_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)signMultipleWithFidoKeysFor:(id)a3 challenges:(id)a4 forEndpointIdentifiers:(id)a5 usingSession:(id)a6 withSessionSEID:(id)a7 externalizedAuth:(id)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__2;
  v44 = __Block_byref_object_dispose__2;
  v45 = 0;
  v20 = +[SESClient sharedClient];
  v21 = (v41 + 5);
  obj = v41[5];
  v22 = [(SESClient *)v20 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v21, obj);

  if (v22 && !v41[5])
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    v38 = 0;
    if (v17)
    {
      v25 = [SEProxy withSession:v17 seid:v18];
    }

    else
    {
      v25 = 0;
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __134__SEFidoKeyService_signMultipleWithFidoKeysFor_challenges_forEndpointIdentifiers_usingSession_withSessionSEID_externalizedAuth_error___block_invoke;
    v32[3] = &unk_1E82D0C38;
    v32[4] = &v33;
    v32[5] = &v40;
    [v22 signMultipleWithFidoKeysFor:v14 challenges:v15 forEndpointIdentifiers:v16 externalizedAuth:v19 usingProxy:v25 callback:v32];
    if (v17)
    {
    }

    v26 = v34[5];
    if (!v26)
    {
      if (v41[5])
      {
        v26 = 0;
      }

      else
      {
        v27 = SESDefaultLogObject();
        v28 = *MEMORY[0x1E69E5148];
        v29 = SESCreateAndLogError();
        v30 = v41[5];
        v41[5] = v29;

        v26 = v34[5];
      }
    }

    v24 = v26;
    _Block_object_dispose(&v33, 8);
  }

  else if (a9)
  {
    v23 = v41[5];
    SESEnsureError();
    *a9 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v40, 8);

  return v24;
}

void __134__SEFidoKeyService_signMultipleWithFidoKeysFor_challenges_forEndpointIdentifiers_usingSession_withSessionSEID_externalizedAuth_error___block_invoke(uint64_t a1, void *a2, void *a3)
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