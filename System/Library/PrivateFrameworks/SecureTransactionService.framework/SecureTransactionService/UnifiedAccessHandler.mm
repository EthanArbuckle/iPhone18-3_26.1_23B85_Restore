@interface UnifiedAccessHandler
- (id)setActiveCredential:(id)credential;
- (id)setActiveCredentials:(id)credentials;
- (id)startNFSessionWithCompletion:(id)completion;
- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options;
- (id)stopTransaction;
- (void)unifiedAccessSession:(id)session didEndTransaction:(id)transaction;
- (void)unifiedAccessSession:(id)session didEnterFieldWithNotification:(id)notification;
- (void)unifiedAccessSession:(id)session didExpireTransactionForApplet:(id)applet;
- (void)unifiedAccessSession:(id)session didStartTransaction:(id)transaction;
@end

@implementation UnifiedAccessHandler

- (id)startNFSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  nfHardwareManager = [(STSHandler *)self nfHardwareManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26539EF5C;
  v9[3] = &unk_279B94228;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [nfHardwareManager startUnifiedAccessSession:v9];

  return v7;
}

- (id)setActiveCredential:(id)credential
{
  v114[2] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v98.receiver = self;
  v98.super_class = UnifiedAccessHandler;
  v6 = [(STSHandler *)&v98 setActiveCredential:credentialCopy];
  if (credentialCopy)
  {
    identifier = [credentialCopy identifier];
    if (identifier && (v8 = identifier, [credentialCopy secondaryIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      nfSession = self->_nfSession;
      identifier2 = [credentialCopy identifier];
      secondaryIdentifier = [credentialCopy secondaryIdentifier];
      v13 = [(NFUnifiedAccessSession *)nfSession appletsWithIdentifiers:identifier2 secondaryIdentifier:secondaryIdentifier];

      identifier3 = [credentialCopy identifier];
      if (v13)
      {
        v93 = v13;
        sel = a2;
        subIdentifier = [credentialCopy subIdentifier];
        sub_265398094(OS_LOG_TYPE_INFO, 0, "[UnifiedAccessHandler setActiveCredential:]", 74, self, @"primaryAid %@ and primaryKeyID %@", v16, v17, identifier3);

        secondaryIdentifier2 = [credentialCopy secondaryIdentifier];
        secondarySubIdentifier = [credentialCopy secondarySubIdentifier];
        sub_265398094(OS_LOG_TYPE_INFO, 0, "[UnifiedAccessHandler setActiveCredential:]", 76, self, @"secondaryAid %@ and secondaryKeyID %@", v19, v20, secondaryIdentifier2);

        subIdentifier2 = [credentialCopy subIdentifier];
        if (subIdentifier2 && (v24 = subIdentifier2, [credentialCopy secondarySubIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25))
        {
          identifier4 = [credentialCopy identifier];
          v113[0] = identifier4;
          subIdentifier3 = [credentialCopy subIdentifier];
          v114[0] = subIdentifier3;
          secondaryIdentifier3 = [credentialCopy secondaryIdentifier];
          v113[1] = secondaryIdentifier3;
          secondarySubIdentifier2 = [credentialCopy secondarySubIdentifier];
          v114[1] = secondarySubIdentifier2;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];

          if ([v30 count] == 2)
          {
            v33 = self->_nfSession;
            v97 = v6;
            v34 = [(NFUnifiedAccessSession *)v33 setActivePaymentApplets:v30 error:&v97];
            v35 = v97;

            if (v34)
            {
              v38 = v13;
LABEL_26:

              v6 = v35;
              goto LABEL_27;
            }

            v91 = v30;
            sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredential:]", 88, self, @"set active applet failed = %@", v36, v37, v35);
            v90 = MEMORY[0x277CCA9B8];
            v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
            v109[0] = *MEMORY[0x277CCA450];
            v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
            v110[0] = v56;
            v109[1] = *MEMORY[0x277CCA7E8];
            v6 = v35;
            if (!v35)
            {
              v80 = MEMORY[0x277CCA9B8];
              subIdentifier3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
              v6 = [v80 errorWithDomain:subIdentifier3 code:5 userInfo:0];
            }

            v110[1] = v6;
            v110[2] = &unk_2876EDC68;
            v109[2] = @"Line";
            v109[3] = @"Method";
            v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel), secondarySubIdentifier];
            v110[3] = v81;
            v109[4] = *MEMORY[0x277CCA068];
            v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel), 89];
            v110[4] = v82;
            v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:5];
            v61 = [v90 errorWithDomain:v55 code:10 userInfo:v83];

LABEL_33:
            v30 = v91;
            v38 = v93;
            if (v35)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredential:]", 85, self, @"Invalid number of aids and keys ", v31, v32, v84);
          v92 = MEMORY[0x277CCA9B8];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v111[0] = *MEMORY[0x277CCA450];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Missing Parameter"];
          v112[0] = v56;
          v112[1] = &unk_2876EDC50;
          v111[1] = @"Line";
          v111[2] = @"Method";
          subIdentifier3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel), secondarySubIdentifier];
          v112[2] = subIdentifier3;
          v111[3] = *MEMORY[0x277CCA068];
          v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel), 86];
          v112[3] = v63;
          v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:4];
          v61 = [v92 errorWithDomain:v55 code:7 userInfo:v77];
        }

        else
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredential:]", 92, self, @"keyIdentifier missing", v22, v23, v84);
          v62 = MEMORY[0x277CCA9B8];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v107[0] = *MEMORY[0x277CCA450];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Missing Parameter"];
          v108[0] = v55;
          v108[1] = &unk_2876EDC80;
          v107[1] = @"Line";
          v107[2] = @"Method";
          v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), secondarySubIdentifier];
          v108[2] = v56;
          v107[3] = *MEMORY[0x277CCA068];
          subIdentifier3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 93];
          v108[3] = subIdentifier3;
          v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:4];
          v61 = [v62 errorWithDomain:v30 code:7 userInfo:v63];
        }

        v6 = v63;
        v38 = v13;
        goto LABEL_24;
      }

      secondaryIdentifier4 = [credentialCopy secondaryIdentifier];
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredential:]", 97, self, @"applets not found for identifiers = %@ and/or %@", v64, v65, identifier3);

      v66 = MEMORY[0x277CCA9B8];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v105[0] = *MEMORY[0x277CCA450];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
      v106[0] = v30;
      v106[1] = &unk_2876EDC98;
      v105[1] = @"Line";
      v105[2] = @"Method";
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), secondaryIdentifier4];
      v106[2] = v55;
      v105[3] = *MEMORY[0x277CCA068];
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 98];
      v106[3] = v56;
      v67 = MEMORY[0x277CBEAC0];
      v68 = v106;
      v69 = v105;
    }

    else
    {
      identifier5 = [credentialCopy identifier];

      if (!identifier5)
      {
        goto LABEL_27;
      }

      v40 = self->_nfSession;
      identifier6 = [credentialCopy identifier];
      v38 = [(NFUnifiedAccessSession *)v40 appletWithIdentifier:identifier6];

      if (v38)
      {
        sela = a2;
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessHandler setActiveCredential:]", 104, self, @"applet %@", v42, v43, v38);
        identifier7 = [credentialCopy identifier];
        subIdentifier3 = [credentialCopy subIdentifier];
        v87 = subIdentifier3;
        sub_265398094(OS_LOG_TYPE_INFO, 0, "[UnifiedAccessHandler setActiveCredential:]", 106, self, @"aid %@ and keyID %@", v45, v46, identifier7);

        subIdentifier4 = [credentialCopy subIdentifier];

        if (subIdentifier4)
        {
          v50 = MEMORY[0x277CBEB98];
          subIdentifier5 = [credentialCopy subIdentifier];
          v30 = [v50 setWithObject:subIdentifier5];

          v52 = self->_nfSession;
          v96 = v6;
          LOBYTE(subIdentifier5) = [(NFUnifiedAccessSession *)v52 setActivePaymentApplet:v38 keys:v30 error:&v96];
          v35 = v96;

          if (subIdentifier5)
          {
            goto LABEL_26;
          }

          v91 = v30;
          v93 = v38;
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredential:]", 111, self, @"set active applet failed = %@", v53, v54, v35);
          v89 = MEMORY[0x277CCA9B8];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v103[0] = *MEMORY[0x277CCA450];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
          v104[0] = v56;
          v103[1] = *MEMORY[0x277CCA7E8];
          v6 = v35;
          if (!v35)
          {
            v57 = MEMORY[0x277CCA9B8];
            subIdentifier3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
            v6 = [v57 errorWithDomain:subIdentifier3 code:5 userInfo:0];
          }

          v104[1] = v6;
          v104[2] = &unk_2876EDCB0;
          v103[2] = @"Line";
          v103[3] = @"Method";
          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sela), v87];
          v104[3] = v58;
          v103[4] = *MEMORY[0x277CCA068];
          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sela), 112];
          v104[4] = v59;
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:5];
          v61 = [v89 errorWithDomain:v55 code:10 userInfo:v60];

          goto LABEL_33;
        }

        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredential:]", 115, self, @"keyIdentifier missing", v48, v49, v85);
        v74 = MEMORY[0x277CCA9B8];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v101[0] = *MEMORY[0x277CCA450];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Missing Parameter"];
        v102[0] = v55;
        v102[1] = &unk_2876EDCC8;
        v101[1] = @"Line";
        v101[2] = @"Method";
        v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sela), subIdentifier3];
        v102[2] = v56;
        v101[3] = *MEMORY[0x277CCA068];
        v30 = v75;
        subIdentifier3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sela), 116];
        v102[3] = subIdentifier3;
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:4];
        v61 = [v74 errorWithDomain:v75 code:7 userInfo:v76];

        v6 = v76;
LABEL_24:

LABEL_25:
        v35 = v61;
        goto LABEL_26;
      }

      identifier8 = [credentialCopy identifier];
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredential:]", 119, self, @"applet not found for identifier = %@", v71, v72, identifier8);

      v66 = MEMORY[0x277CCA9B8];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v99[0] = *MEMORY[0x277CCA450];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
      v100[0] = v73;
      v100[1] = &unk_2876EDCE0;
      v99[1] = @"Line";
      v99[2] = @"Method";
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v100[2] = v55;
      v99[3] = *MEMORY[0x277CCA068];
      v30 = v73;
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 120];
      v100[3] = v56;
      v67 = MEMORY[0x277CBEAC0];
      v68 = v100;
      v69 = v99;
    }

    subIdentifier3 = [v67 dictionaryWithObjects:v68 forKeys:v69 count:4];
    v61 = [v66 errorWithDomain:v38 code:8 userInfo:subIdentifier3];
    goto LABEL_24;
  }

LABEL_27:

  v78 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)setActiveCredentials:(id)credentials
{
  v139[4] = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v7 = credentialsCopy;
  if (!credentialsCopy)
  {
    goto LABEL_27;
  }

  v8 = credentialsCopy;
  v9 = v8;
  if (!self)
  {

    goto LABEL_27;
  }

  if ([v8 count] < 3)
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v18 = v9;
    v21 = [v18 countByEnumeratingWithState:&v118 objects:v137 count:16];
    if (!v21)
    {
      v3 = 0;
      goto LABEL_22;
    }

    v22 = v21;
    selfCopy = self;
    v107 = v9;
    v108 = a2;
    v109 = v7;
    v23 = *v119;
    v111 = v18;
LABEL_7:
    v24 = 0;
    while (1)
    {
      if (*v119 != v23)
      {
        objc_enumerationMutation(v18);
      }

      v25 = *(*(&v118 + 1) + 8 * v24);
      if ([v25 type] != 3)
      {
        self = selfCopy;
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler validateCredentials:]", 139, selfCopy, @"Invalid credential types.", v26, v27, Name);
        v32 = MEMORY[0x277CCA9B8];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v135[0] = *MEMORY[0x277CCA450];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
        v136[0] = v16;
        v136[1] = &unk_2876EDD10;
        v135[1] = @"Line";
        v135[2] = @"Method";
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_validateCredentials_)];
        v136[2] = v19;
        v135[3] = *MEMORY[0x277CCA068];
        v33 = MEMORY[0x277CCACA8];
        Name = sel_getName(sel_validateCredentials_);
        v20 = [v33 stringWithFormat:@"%s:%d"];
        v136[3] = v20;
        v34 = MEMORY[0x277CBEAC0];
        v35 = v136;
        v36 = v135;
LABEL_20:
        v37 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:4];
        v3 = [v32 errorWithDomain:v15 code:8 userInfo:v37];

        v9 = v107;
        v18 = v111;
        goto LABEL_21;
      }

      identifier = [v25 identifier];
      if ([identifier hasPrefix:0x2876E4FF0])
      {
        goto LABEL_14;
      }

      identifier2 = [v25 identifier];
      if ([identifier2 hasPrefix:0x2876E5010])
      {
        break;
      }

      identifier3 = [v25 identifier];
      v31 = [identifier3 hasPrefix:0x2876E5070];

      v18 = v111;
      if ((v31 & 1) == 0)
      {
        identifier4 = [v25 identifier];
        self = selfCopy;
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler validateCredentials:]", 146, selfCopy, @"Not a valid UA or Aliro aid - %@", v47, v48, identifier4);

        v32 = MEMORY[0x277CCA9B8];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v133[0] = *MEMORY[0x277CCA450];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
        v134[0] = v16;
        v134[1] = &unk_2876EDD28;
        v133[1] = @"Line";
        v133[2] = @"Method";
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_validateCredentials_)];
        v134[2] = v19;
        v133[3] = *MEMORY[0x277CCA068];
        v49 = MEMORY[0x277CCACA8];
        Name = sel_getName(sel_validateCredentials_);
        v20 = [v49 stringWithFormat:@"%s:%d"];
        v134[3] = v20;
        v34 = MEMORY[0x277CBEAC0];
        v35 = v134;
        v36 = v133;
        goto LABEL_20;
      }

LABEL_16:
      if (v22 == ++v24)
      {
        v22 = [v18 countByEnumeratingWithState:&v118 objects:v137 count:16];
        if (v22)
        {
          goto LABEL_7;
        }

        v3 = 0;
        a2 = v108;
        self = selfCopy;
        v9 = v107;
        goto LABEL_22;
      }
    }

LABEL_14:
    goto LABEL_16;
  }

  v108 = a2;
  v109 = v7;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessHandler validateCredentials:]", 133, self, @"Currently we support a max of two credentials. One Aliro and one UA", v10, v11, Name);
  v12 = v9;
  v13 = MEMORY[0x277CCA9B8];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v138[0] = *MEMORY[0x277CCA450];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
  v139[0] = v15;
  v139[1] = &unk_2876EDCF8;
  v138[1] = @"Line";
  v138[2] = @"Method";
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_validateCredentials_)];
  v139[2] = v16;
  v138[3] = *MEMORY[0x277CCA068];
  v17 = MEMORY[0x277CCACA8];
  v18 = v14;
  Name = sel_getName(sel_validateCredentials_);
  v19 = [v17 stringWithFormat:@"%s:%d"];
  v139[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:4];
  v9 = v12;
  v3 = [v13 errorWithDomain:v14 code:8 userInfo:v20];
LABEL_21:

  a2 = v108;
  v7 = v109;
LABEL_22:

  if (v3)
  {
    v38 = MEMORY[0x277CCA9B8];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v131[0] = *MEMORY[0x277CCA450];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v41 = *MEMORY[0x277CCA7E8];
    v132[0] = v40;
    v132[1] = v3;
    v131[1] = v41;
    v131[2] = @"Line";
    v132[2] = &unk_2876EDD40;
    v131[3] = @"Method";
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v132[3] = v42;
    v131[4] = *MEMORY[0x277CCA068];
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 166];
    v132[4] = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:5];
    v45 = [v38 errorWithDomain:v39 code:8 userInfo:v44];

LABEL_29:
    v60 = v45;
    goto LABEL_53;
  }

LABEL_27:
  v117.receiver = self;
  v117.super_class = UnifiedAccessHandler;
  v50 = [(STSHandler *)&v117 setActiveCredentials:v7];
  if (v50)
  {
    v53 = v50;
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredentials:]", 173, self, @"Failed to set active credentials", v51, v52, Name);
    v54 = MEMORY[0x277CCA9B8];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v129[0] = *MEMORY[0x277CCA450];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v56 = *MEMORY[0x277CCA7E8];
    v130[0] = v55;
    v130[1] = v53;
    v129[1] = v56;
    v129[2] = @"Line";
    v130[2] = &unk_2876EDD58;
    v129[3] = @"Method";
    v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v130[3] = v57;
    v129[4] = *MEMORY[0x277CCA068];
    v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 174];
    v130[4] = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:5];
    v45 = [v54 errorWithDomain:v39 code:8 userInfo:v59];

    goto LABEL_29;
  }

  v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v63)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredentials:]", 180, self, @"No resource available", v61, v62, Name);
  }

  selfCopy2 = self;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v65 = v7;
  v66 = [v65 countByEnumeratingWithState:&v113 objects:v128 count:16];
  if (v66)
  {
    v67 = v66;
    v3 = *v114;
    while (2)
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v114 != v3)
        {
          objc_enumerationMutation(v65);
        }

        v69 = *(*(&v113 + 1) + 8 * i);
        subIdentifier = [v69 subIdentifier];

        if (!subIdentifier)
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredentials:]", 186, selfCopy2, @"Invalid credential provided %@", v71, v72, v69);
          v94 = MEMORY[0x277CCA9B8];
          v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v126[0] = *MEMORY[0x277CCA450];
          v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
          v127[0] = v96;
          v127[1] = &unk_2876EDD70;
          v126[1] = @"Line";
          v126[2] = @"Method";
          v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
          v127[2] = v97;
          v126[3] = *MEMORY[0x277CCA068];
          v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 187];
          v127[3] = v98;
          v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:4];
          v100 = [v94 errorWithDomain:v95 code:8 userInfo:v99];

          v60 = v100;
          goto LABEL_52;
        }

        subIdentifier2 = [v69 subIdentifier];
        identifier5 = [v69 identifier];
        [v63 setObject:subIdentifier2 forKey:identifier5];
      }

      v67 = [v65 countByEnumeratingWithState:&v113 objects:v128 count:16];
      if (v67)
      {
        continue;
      }

      break;
    }
  }

  if (v7 && ![v63 count])
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredentials:]", 194, selfCopy2, @"Invalid credentials provided %@", v75, v76, v65);
    v101 = MEMORY[0x277CCA9B8];
    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v124[0] = *MEMORY[0x277CCA450];
    v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v125[0] = v85;
    v125[1] = &unk_2876EDD88;
    v124[1] = @"Line";
    v124[2] = @"Method";
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v125[2] = v3;
    v124[3] = *MEMORY[0x277CCA068];
    v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 195];
    v125[3] = v86;
    v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:4];
    v93 = [v101 errorWithDomain:v84 code:8 userInfo:v102];

LABEL_49:
    goto LABEL_50;
  }

  nfSession = selfCopy2->_nfSession;
  v112 = 0;
  v78 = [(NFUnifiedAccessSession *)nfSession setActivePaymentApplets:v63 error:&v112];
  v79 = v112;
  v82 = v79;
  if (v78)
  {
    goto LABEL_51;
  }

  v110 = v7;
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler setActiveCredentials:]", 197, selfCopy2, @"set active applet failed = %@", v80, v81, v79);
  v83 = MEMORY[0x277CCA9B8];
  v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v122[0] = *MEMORY[0x277CCA450];
  v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
  v123[0] = v85;
  v122[1] = *MEMORY[0x277CCA7E8];
  v86 = v82;
  if (!v82)
  {
    v87 = MEMORY[0x277CCA9B8];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v86 = [v87 errorWithDomain:v3 code:5 userInfo:0];
  }

  v123[1] = v86;
  v123[2] = &unk_2876EDDA0;
  v122[2] = @"Line";
  v122[3] = @"Method";
  v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v89 = a2;
  v90 = v88;
  v123[3] = v88;
  v122[4] = *MEMORY[0x277CCA068];
  v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(v89), 198];
  v123[4] = v91;
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:5];
  v93 = [v83 errorWithDomain:v84 code:10 userInfo:v92];

  v7 = v110;
  if (!v82)
  {
    goto LABEL_49;
  }

LABEL_50:

  v82 = v93;
LABEL_51:
  v60 = v82;
LABEL_52:

LABEL_53:
  v103 = *MEMORY[0x277D85DE8];

  return v60;
}

- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options
{
  v44[4] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v10 = authorizationCopy;
  if (self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessHandler startTransactionWithAuthorization:options:]", 218, self, @"auth: %@  deferred:%d", v8, v9, authorizationCopy);
    nfSession = self->_nfSession;
    if (options)
    {
      v40 = 0;
      v12 = [(NFUnifiedAccessSession *)nfSession startDeferredCardEmulationWithAuthorization:v10 error:&v40];
      v13 = v40;
    }

    else
    {
      v39 = 0;
      v12 = [(NFUnifiedAccessSession *)nfSession startCardEmulationWithAuthorization:v10 error:&v39];
      v13 = v39;
    }

    v21 = v13;
    v20 = v21;
    if ((v12 & 1) == 0)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler startTransactionWithAuthorization:options:]", 227, self, @"start transaction failed = %@", v22, v23, v21);
      v36 = MEMORY[0x277CCA9B8];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v41[0] = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v42[0] = v24;
      v41[1] = *MEMORY[0x277CCA7E8];
      v25 = v20;
      if (!v20)
      {
        v26 = MEMORY[0x277CCA9B8];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v25 = [v26 errorWithDomain:? code:? userInfo:?];
      }

      v42[1] = v25;
      v42[2] = &unk_2876EDDD0;
      v41[2] = @"Line";
      v41[3] = @"Method";
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2), options & 1];
      v42[3] = v27;
      v41[4] = *MEMORY[0x277CCA068];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 228];
      v42[4] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];
      v30 = [v36 errorWithDomain:v37 code:10 userInfo:v29];

      if (!v20)
      {
      }

      v20 = v30;
    }

    if (!v20)
    {
      v38.receiver = self;
      v38.super_class = UnifiedAccessHandler;
      v31 = [(STSTransactionHandler *)&v38 startTransactionWithAuthorization:v10 options:options];
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler startTransactionWithAuthorization:options:]", 212, self, @"NF session does not exist!", v8, v9, v34);
    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v43[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v44[0] = v16;
    v44[1] = &unk_2876EDDB8;
    v43[1] = @"Line";
    v43[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v44[2] = v17;
    v43[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 213];
    v44[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
    v20 = [v14 errorWithDomain:v15 code:9 userInfo:v19];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)stopTransaction
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = UnifiedAccessHandler;
  stopTransaction = [(STSTransactionHandler *)&v20 stopTransaction];
  if (self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[UnifiedAccessHandler stopTransaction]", 249, self, &stru_2876E3E50, v4, v5, v18);
    nfSession = self->_nfSession;
    v19 = stopTransaction;
    [(NFUnifiedAccessSession *)nfSession stopCardEmulation:&v19];
    v8 = v19;

    v9 = v8;
    stopTransaction = v9;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler stopTransaction]", 245, self, @"NF session does not exist!", v4, v5, v18);
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v21[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v22[0] = v12;
    v22[1] = &unk_2876EDDE8;
    v21[1] = @"Line";
    v21[2] = @"Method";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v22[2] = v13;
    v21[3] = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 246];
    v22[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v9 = [v10 errorWithDomain:v11 code:9 userInfo:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)unifiedAccessSession:(id)session didEnterFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessHandler unifiedAccessSession:didEnterFieldWithNotification:]", 280, self, @"%@", v6, v7, notificationCopy);
  v9 = sub_265399348(notificationCopy);

  parent = [(STSTransactionHandler *)self parent];
  [parent fireFieldNotificationEvent:v9];
}

- (void)unifiedAccessSession:(id)session didExpireTransactionForApplet:(id)applet
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessHandler unifiedAccessSession:didExpireTransactionForApplet:]", 297, self, @"EXPIRED: %@", v4, v5, applet);
  parent = [(STSTransactionHandler *)self parent];
  [parent fireDidExpireTransaction:1];
}

- (void)unifiedAccessSession:(id)session didStartTransaction:(id)transaction
{
  transactionCopy = transaction;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessHandler unifiedAccessSession:didStartTransaction:]", 303, self, @"START: %@", v6, v7, transactionCopy);
  appletIdentifier = [transactionCopy appletIdentifier];
  v11 = sub_2653A13E0(self, appletIdentifier);

  v9 = [[STSTransactionStartEvent alloc] initWithCredential:v11 andNearFieldStartEvent:transactionCopy];
  parent = [(STSTransactionHandler *)self parent];
  [parent fireTransactionStartEvent:v9];
}

- (void)unifiedAccessSession:(id)session didEndTransaction:(id)transaction
{
  transactionCopy = transaction;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessHandler unifiedAccessSession:didEndTransaction:]", 314, self, @"END: %@", v6, v7, transactionCopy);
  appletIdentifier = [transactionCopy appletIdentifier];
  v11 = sub_2653A13E0(self, appletIdentifier);

  v9 = [[STSTransactionEndEvent alloc] initWithCredential:v11 andNearFieldEndEvent:transactionCopy];
  parent = [(STSTransactionHandler *)self parent];
  [parent fireTransactionEndEvent:v9];
}

@end