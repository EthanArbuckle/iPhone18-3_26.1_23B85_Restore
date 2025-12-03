@interface SEFidoKeyService
+ (id)shared;
- (BOOL)deleteFidoKeyFor:(id)for usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)checkFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)checkMultipleFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)findAndAttest:(id)attest challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)signMultipleWithFidoKeysFor:(id)for challenges:(id)challenges forEndpointIdentifiers:(id)identifiers usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error;
- (id)signWithFidoKeyFor:(id)for challenge:(id)challenge forNFCKeyWithIdentifier:(id)identifier usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error;
- (id)verifyWithFidoKeyFor:(id)for signedChallenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
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

- (id)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  sessionCopy = session;
  dCopy = d;
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
    if (sessionCopy)
    {
      v23 = [SEProxy withSession:sessionCopy seid:dCopy];
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
    [v20 createFiDOKeyForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy challenge:challengeCopy usingProxy:v23 callback:v29];
    if (sessionCopy)
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

    if (error)
    {
      *error = v38[5];
    }

    v22 = v31[5];
    _Block_object_dispose(&v30, 8);
  }

  else if (error)
  {
    v21 = v38[5];
    SESEnsureError();
    *error = v22 = 0;
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

- (id)checkFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  presenceCopy = presence;
  v25[0] = presenceCopy;
  v11 = MEMORY[0x1E695DEC8];
  dCopy = d;
  sessionCopy = session;
  v14 = [v11 arrayWithObjects:v25 count:1];
  v15 = [(SEFidoKeyService *)self checkMultipleFidoKeyPresence:v14 usingSession:sessionCopy withSessionSEID:dCopy error:error];

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

  else if (error)
  {
    SESEnsureError();
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)signWithFidoKeyFor:(id)for challenge:(id)challenge forNFCKeyWithIdentifier:(id)identifier usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  challengeCopy = challenge;
  identifierCopy = identifier;
  sessionCopy = session;
  dCopy = d;
  authCopy = auth;
  v36 = forCopy;
  v40[0] = forCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v39 = challengeCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  if (identifierCopy)
  {
    v38 = identifierCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  }

  else
  {
    v23 = 0;
  }

  v37 = 0;
  v24 = [(SEFidoKeyService *)self signMultipleWithFidoKeysFor:v21 challenges:v22 forEndpointIdentifiers:v23 usingSession:sessionCopy withSessionSEID:dCopy externalizedAuth:authCopy error:&v37];
  v25 = v37;
  if (identifierCopy)
  {
  }

  if ([v24 count] == 1)
  {
    v26 = [v24 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    errorCopy2 = [v24 objectAtIndexedSubscript:0];
    if (isKindOfClass)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      errorCopy3 = error;
      if (error)
      {
        v31 = [v24 objectAtIndexedSubscript:0];
LABEL_13:
        errorCopy2 = 0;
        *errorCopy3 = v31;
        goto LABEL_17;
      }
    }

    else
    {
      errorCopy2 = error;
      if (!error)
      {
        goto LABEL_17;
      }

      v32 = SESDefaultLogObject();
      v33 = *MEMORY[0x1E69E5148];
      *error = SESCreateAndLogError();
    }
  }

  else
  {
    errorCopy3 = error;
    if (error)
    {
      v31 = SESEnsureError();
      goto LABEL_13;
    }
  }

  errorCopy2 = 0;
LABEL_17:

  v34 = *MEMORY[0x1E69E9840];

  return errorCopy2;
}

- (id)verifyWithFidoKeyFor:(id)for signedChallenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  forCopy = for;
  challengeCopy = challenge;
  sessionCopy = session;
  dCopy = d;
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
    if (sessionCopy)
    {
      v20 = [SEProxy withSession:sessionCopy seid:dCopy];
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
    [v17 verifyWithFidoKeyFor:forCopy signedChallenge:challengeCopy usingProxy:v20 callback:v26];
    if (sessionCopy)
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

    if (error)
    {
      *error = v35[5];
    }

    v19 = v28[5];
    _Block_object_dispose(&v27, 8);
  }

  else if (error)
  {
    v18 = v35[5];
    SESEnsureError();
    *error = v19 = 0;
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

- (BOOL)deleteFidoKeyFor:(id)for usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  forCopy = for;
  sessionCopy = session;
  dCopy = d;
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
    if (sessionCopy)
    {
      v17 = [SEProxy withSession:sessionCopy seid:dCopy];
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
    [v14 deleteFiDOKeyFor:forCopy usingProxy:v17 callback:v24];
    if (sessionCopy)
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

    if (error)
    {
      *error = v18[5];
      v18 = v31;
    }

    v16 = v18[5] == 0;
    _Block_object_dispose(&v25, 8);
  }

  else if (error)
  {
    v15 = v31[5];
    SESEnsureError();
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v30, 8);
  return v16;
}

- (id)checkMultipleFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  presenceCopy = presence;
  sessionCopy = session;
  dCopy = d;
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
    if (sessionCopy)
    {
      v17 = [SEProxy withSession:sessionCopy seid:dCopy];
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
    [v14 checkMultipleFidoKeyPresence:presenceCopy usingProxy:v17 callback:v26];
    if (sessionCopy)
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

  else if (error)
  {
    v15 = v35[5];
    SESEnsureError();
    *error = v16 = 0;
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

- (id)findAndAttest:(id)attest challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  attestCopy = attest;
  challengeCopy = challenge;
  sessionCopy = session;
  dCopy = d;
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
    if (error)
    {
      v18 = v39[5];
      SESEnsureError();
      *error = v19 = 0;
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
  if (sessionCopy)
  {
    v20 = [SEProxy withSession:sessionCopy seid:dCopy];
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
  [v17 findAndAttest:attestCopy challenge:challengeCopy usingProxy:v20 callback:v30];
  if (sessionCopy)
  {
  }

  v21 = v39[5];
  if (v21)
  {
    if (error)
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
    if (error)
    {
LABEL_13:
      if (v21)
      {
        *error = v21;
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

- (id)signMultipleWithFidoKeysFor:(id)for challenges:(id)challenges forEndpointIdentifiers:(id)identifiers usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error
{
  forCopy = for;
  challengesCopy = challenges;
  identifiersCopy = identifiers;
  sessionCopy = session;
  dCopy = d;
  authCopy = auth;
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
    if (sessionCopy)
    {
      v25 = [SEProxy withSession:sessionCopy seid:dCopy];
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
    [v22 signMultipleWithFidoKeysFor:forCopy challenges:challengesCopy forEndpointIdentifiers:identifiersCopy externalizedAuth:authCopy usingProxy:v25 callback:v32];
    if (sessionCopy)
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

  else if (error)
  {
    v23 = v41[5];
    SESEnsureError();
    *error = v24 = 0;
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