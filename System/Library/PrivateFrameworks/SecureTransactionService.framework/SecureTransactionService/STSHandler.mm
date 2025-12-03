@interface STSHandler
- (NFSession)activeChildSession;
- (id)activateWithHandoffToken:(id)token;
- (id)consumeHandoffToken;
- (id)createHandoffTokenFromSession:(id)session outError:(id *)error;
- (id)nfHardwareManager;
- (id)setActiveCredential:(id)credential;
- (id)setActiveCredentials:(id)credentials;
- (id)startNFSessionWithCompletion:(id)completion;
- (void)retainUnusedHandoffToken:(id)token;
- (void)tearDownWithCompletion:(id)completion;
@end

@implementation STSHandler

- (id)nfHardwareManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nfHwManager = [(STSHandler *)selfCopy nfHwManager];

  if (!nfHwManager)
  {
    v4 = objc_opt_new();
    [(STSHandler *)selfCopy setNfHwManager:v4];
  }

  nfHwManager2 = [(STSHandler *)selfCopy nfHwManager];
  manager = [nfHwManager2 manager];

  objc_sync_exit(selfCopy);

  return manager;
}

- (void)retainUnusedHandoffToken:(id)token
{
  tokenCopy = token;
  unusedHandoffToken = self->_unusedHandoffToken;
  if (unusedHandoffToken)
  {
    v6 = [(NSData *)unusedHandoffToken debugDescription];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler retainUnusedHandoffToken:]", 37, self, @"Overwriting previous unused token %{public}@", v7, v8, v6);

    unusedHandoffToken = self->_unusedHandoffToken;
  }

  self->_unusedHandoffToken = tokenCopy;
}

- (id)consumeHandoffToken
{
  unusedHandoffToken = self->_unusedHandoffToken;
  v4 = unusedHandoffToken;
  v5 = self->_unusedHandoffToken;
  self->_unusedHandoffToken = 0;

  return unusedHandoffToken;
}

- (id)setActiveCredential:(id)credential
{
  v23[4] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler setActiveCredential:]", 50, self, @"credential=%@", v7, v8, credentialCopy);
  if (credentialCopy && (v9 = [credentialCopy type], v9 != -[STSHandler supportedCredentialType](self, "supportedCredentialType")))
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSHandler setActiveCredential:]", 52, self, @"Invalid credential type", v10, v11, v21);
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v22[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v23[0] = v15;
    v23[1] = &unk_2876ED4E8;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v23[2] = v16;
    v22[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 53];
    v23[3] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
    v12 = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  else
  {
    objc_storeStrong(&self->_activeSTSCredential, credential);
    v12 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createHandoffTokenFromSession:(id)session outError:(id *)error
{
  v27[4] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler createHandoffTokenFromSession:outError:]", 62, self, @"Create token from %@", v8, v9, sessionCopy);
  v25 = 0;
  v10 = [sessionCopy createSessionHandoffToken:&v25];

  v11 = v25;
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
    }
  }

  else if ([v10 length])
  {
    [(STSHandler *)self retainUnusedHandoffToken:v10];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler createHandoffTokenFromSession:outError:]", 70, self, @"Invalid token", v14, v15, v24);
    if (error)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v26[0] = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v27[0] = v18;
      v27[1] = &unk_2876ED500;
      v26[1] = @"Line";
      v26[2] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v27[2] = v19;
      v26[3] = *MEMORY[0x277CCA068];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 71];
      v27[3] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
      *error = [v16 errorWithDomain:v17 code:9 userInfo:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)setActiveCredentials:(id)credentials
{
  v25[4] = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler setActiveCredentials:]", 81, self, @"credentials=%@", v7, v8, credentialsCopy);
  firstObject = [credentialsCopy firstObject];
  v10 = firstObject;
  if (firstObject && (v11 = [firstObject type], v11 != -[STSHandler supportedCredentialType](self, "supportedCredentialType")))
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSHandler setActiveCredentials:]", 85, self, @"Invalid credential type", v12, v13, v23);
    v15 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v24[0] = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v25[0] = v17;
    v25[1] = &unk_2876ED518;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v25[2] = v18;
    v24[3] = *MEMORY[0x277CCA068];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 86];
    v25[3] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
    v14 = [v15 errorWithDomain:v16 code:8 userInfo:v20];
  }

  else
  {
    objc_storeStrong(&self->_activeSTSCredential, v10);
    objc_storeStrong(&self->_activeSTSCredentials, credentials);
    v14 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)tearDownWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler tearDownWithCompletion:]", 96, self, &stru_2876E3E50, v5, v6, v8);
  [(STSHandler *)self _tearDown];
  startedNFSession = self->_startedNFSession;
  if (startedNFSession)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_26538B4A4;
    v9[3] = &unk_279B93938;
    v10 = completionCopy;
    [startedNFSession endSessionWithCompletion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)activateWithHandoffToken:(id)token
{
  v54[4] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSHandler activateWithHandoffToken:]", 110, self, @"Creating session with token: %@", v7, v8, tokenCopy);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_26538BC90;
  v45 = sub_26538BCA0;
  v46 = 0;
  v9 = dispatch_semaphore_create(0);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_26538BCA8;
  v38[3] = &unk_279B93CE0;
  v38[4] = self;
  v40 = &v41;
  v10 = v9;
  v39 = v10;
  v13 = [(STSHandler *)self startNFSessionWithCompletion:v38];
  if (!v13)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler activateWithHandoffToken:]", 124, self, @"Failed to start session.", v11, v12, v34);
    v24 = MEMORY[0x277CCA9B8];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v53[0] = *MEMORY[0x277CCA450];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
    v54[0] = v37;
    v54[1] = &unk_2876ED530;
    v53[1] = @"Line";
    v53[2] = @"Method";
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v54[2] = v19;
    v53[3] = *MEMORY[0x277CCA068];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 125];
    v54[3] = v3;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:4];
    v23 = [v24 errorWithDomain:v17 code:5 userInfo:v21];
    goto LABEL_6;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[STSHandler activateWithHandoffToken:]", 128, self, @"Activating session with token: %@", v11, v12, tokenCopy);
  v14 = [v13 activateWithToken:tokenCopy];
  v17 = v14;
  if (v14)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler activateWithHandoffToken:]", 131, self, @"Session switching error=%@", v15, v16, v14);
    [v13 endSession];
    v18 = MEMORY[0x277CCA9B8];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v20 = *MEMORY[0x277CCA7E8];
    v52[0] = v19;
    v52[1] = v17;
    v51[1] = v20;
    v51[2] = @"Line";
    v52[2] = &unk_2876ED548;
    v51[3] = @"Method";
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[3] = v3;
    v51[4] = *MEMORY[0x277CCA068];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 133];
    v52[4] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:5];
    v23 = [v18 errorWithDomain:v37 code:10 userInfo:v22];
LABEL_4:

LABEL_6:
LABEL_7:

    goto LABEL_8;
  }

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

  if (v42[5])
  {
    [v13 endSession];
    code = [v42[5] code];
    v35 = MEMORY[0x277CCA9B8];
    if (code != 50)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v47[0] = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v48[0] = v19;
      v47[1] = *MEMORY[0x277CCA7E8];
      v29 = v42[5];
      if (v29)
      {
        v21 = v42[5];
      }

      else
      {
        v30 = MEMORY[0x277CCA9B8];
        v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v21 = [v30 errorWithDomain:v3 code:5 userInfo:0];
      }

      v48[1] = v21;
      v48[2] = &unk_2876ED578;
      v47[2] = @"Line";
      v47[3] = @"Method";
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v48[3] = v31;
      v47[4] = *MEMORY[0x277CCA068];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 146];
      v48[4] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:5];
      v23 = [v35 errorWithDomain:v37 code:10 userInfo:v33];
      v36 = v29 == 0;

      v17 = 0;
      v10 = 0;
      if (!v36)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v49[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC radio disabled"];
    v50[0] = v19;
    v50[1] = &unk_2876ED560;
    v49[1] = @"Line";
    v49[2] = @"Method";
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v50[2] = v3;
    v49[3] = *MEMORY[0x277CCA068];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 144];
    v50[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
    v23 = [v35 errorWithDomain:v37 code:18 userInfo:v22];
    v17 = 0;
    v10 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&self->_startedNFSession, v13);
  objc_storeWeak(&self->_activeChildSession, v13);
  consumeHandoffToken = [(STSHandler *)self consumeHandoffToken];
  v17 = 0;
  v10 = 0;
  v23 = 0;
LABEL_8:

  _Block_object_dispose(&v41, 8);
  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)startNFSessionWithCompletion:(id)completion
{
  v17[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  completionCopy = completion;
  v8 = [v6 stringWithUTF8String:"STS.fwk"];
  v16[0] = *MEMORY[0x277CCA450];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
  v17[0] = v9;
  v17[1] = &unk_2876ED590;
  v16[1] = @"Line";
  v16[2] = @"Method";
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v17[2] = v10;
  v16[3] = *MEMORY[0x277CCA068];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 169];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v13 = [v5 errorWithDomain:v8 code:10 userInfo:v12];
  (*(completion + 2))(completionCopy, v13);

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

- (NFSession)activeChildSession
{
  WeakRetained = objc_loadWeakRetained(&self->_activeChildSession);

  return WeakRetained;
}

@end