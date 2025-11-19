@interface SFAutoFillOneTimeCode
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresAuthentication;
- (NSDate)timestamp;
- (NSString)code;
- (NSString)detectedCode;
- (NSURL)_domainBoundEmbeddedURL;
- (SFAutoFillOneTimeCode)initWithCoder:(id)a3;
- (SFAutoFillOneTimeCode)initWithIMCoreDictionary:(id)a3;
- (SFAutoFillOneTimeCode)initWithMailOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5;
- (SFAutoFillOneTimeCode)initWithNotificationOneTimeCode:(id)a3 displayCode:(id)a4 timestamp:(id)a5 sourceAppName:(id)a6 sourceAppApplicationIdentifer:(id)a7;
- (SFAutoFillOneTimeCode)initWithTOTPGenerator:(id)a3 user:(id)a4 highLevelDomain:(id)a5 lastUsedDateOfAssociatedSavedAccount:(id)a6;
- (id)_embeddedDomainArrayFromIMCoreEmbeddedDomains:(id)a3;
- (id)_secureURLForDomain:(id)a3;
- (id)_stringForSource:(int64_t)a3;
- (id)description;
- (id)localizedSubtitleForContext:(int64_t)a3;
- (id)localizedTitleForContext:(int64_t)a3;
- (int64_t)_matchBoundDomainAndEmbeddedDomainWithFrameURLs:(id)a3;
- (int64_t)_matchBoundDomainAndEmbeddedDomainsWithFrameURLs:(id)a3;
- (int64_t)_matchURL:(id)a3 withBoundDomainURL:(id)a4 strict:(BOOL)a5;
- (int64_t)matchBoundDomainsWithFrameURLs:(id)a3;
- (int64_t)matchDomainWithURL:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAutoFillOneTimeCode

- (SFAutoFillOneTimeCode)initWithIMCoreDictionary:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = SFAutoFillOneTimeCode;
  v5 = [(SFAutoFillOneTimeCode *)&v68 init];
  v6 = v5;
  if (v5)
  {
    v5->_source = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v7 = getIMOneTimeCodeTimeStampKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeTimeStampKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeTimeStampKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeTimeStampKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v8 = IMSharedUtilitiesLibrary();
      v9 = dlsym(v8, "IMOneTimeCodeTimeStampKey");
      *(v73[1] + 24) = v9;
      getIMOneTimeCodeTimeStampKeySymbolLoc_ptr = *(v73[1] + 24);
      v7 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v7)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v10 = *v7;
    v11 = [v4 objectForKeyedSubscript:v10];
    timestamp = v6->_timestamp;
    v6->_timestamp = v11;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v13 = getIMOneTimeCodeGuidKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeGuidKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeGuidKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeGuidKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v14 = IMSharedUtilitiesLibrary();
      v15 = dlsym(v14, "IMOneTimeCodeGuidKey");
      *(v73[1] + 24) = v15;
      getIMOneTimeCodeGuidKeySymbolLoc_ptr = *(v73[1] + 24);
      v13 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v13)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v16 = *v13;
    v17 = [v4 objectForKeyedSubscript:v16];
    GUID = v6->_GUID;
    v6->_GUID = v17;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v19 = getIMOneTimeCodeKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v20 = IMSharedUtilitiesLibrary();
      v21 = dlsym(v20, "IMOneTimeCodeKey");
      *(v73[1] + 24) = v21;
      getIMOneTimeCodeKeySymbolLoc_ptr = *(v73[1] + 24);
      v19 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v19)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v22 = *v19;
    v23 = [v4 objectForKeyedSubscript:v22];
    detectedCode = v6->_detectedCode;
    v6->_detectedCode = v23;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v25 = getIMOneTimeCodeDisplayKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeDisplayKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeDisplayKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeDisplayKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v26 = IMSharedUtilitiesLibrary();
      v27 = dlsym(v26, "IMOneTimeCodeDisplayKey");
      *(v73[1] + 24) = v27;
      getIMOneTimeCodeDisplayKeySymbolLoc_ptr = *(v73[1] + 24);
      v25 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v25)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v28 = *v25;
    v29 = [v4 objectForKeyedSubscript:v28];
    displayCode = v6->_displayCode;
    v6->_displayCode = v29;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v31 = getIMOneTimeCodeHandleKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeHandleKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeHandleKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeHandleKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v32 = IMSharedUtilitiesLibrary();
      v33 = dlsym(v32, "IMOneTimeCodeHandleKey");
      *(v73[1] + 24) = v33;
      getIMOneTimeCodeHandleKeySymbolLoc_ptr = *(v73[1] + 24);
      v31 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v31)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v34 = *v31;
    v35 = [v4 objectForKeyedSubscript:v34];
    handle = v6->_handle;
    v6->_handle = v35;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v37 = getIMOneTimeCodeMachineReadableCodeKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeMachineReadableCodeKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeMachineReadableCodeKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeMachineReadableCodeKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v38 = IMSharedUtilitiesLibrary();
      v39 = dlsym(v38, "IMOneTimeCodeMachineReadableCodeKey");
      *(v73[1] + 24) = v39;
      getIMOneTimeCodeMachineReadableCodeKeySymbolLoc_ptr = *(v73[1] + 24);
      v37 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v37)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v40 = *v37;
    v41 = [v4 objectForKeyedSubscript:v40];
    machineReadableCode = v6->_machineReadableCode;
    v6->_machineReadableCode = v41;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v43 = getIMOneTimeCodeDomainKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeDomainKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeDomainKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeDomainKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v44 = IMSharedUtilitiesLibrary();
      v45 = dlsym(v44, "IMOneTimeCodeDomainKey");
      *(v73[1] + 24) = v45;
      getIMOneTimeCodeDomainKeySymbolLoc_ptr = *(v73[1] + 24);
      v43 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v43)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v46 = *v43;
    v47 = [v4 objectForKeyedSubscript:v46];
    domain = v6->_domain;
    v6->_domain = v47;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v49 = getIMOneTimeCodeEmbeddedDomainKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeEmbeddedDomainKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeEmbeddedDomainKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeEmbeddedDomainKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v50 = IMSharedUtilitiesLibrary();
      v51 = dlsym(v50, "IMOneTimeCodeEmbeddedDomainKey");
      *(v73[1] + 24) = v51;
      getIMOneTimeCodeEmbeddedDomainKeySymbolLoc_ptr = *(v73[1] + 24);
      v49 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v49)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v52 = *v49;
    v53 = [v4 objectForKeyedSubscript:v52];
    embeddedDomain = v6->_embeddedDomain;
    v6->_embeddedDomain = v53;

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v55 = getIMOneTimeCodeDomainStrictMatchKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeDomainStrictMatchKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeDomainStrictMatchKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeDomainStrictMatchKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v56 = IMSharedUtilitiesLibrary();
      v57 = dlsym(v56, "IMOneTimeCodeDomainStrictMatchKey");
      *(v73[1] + 24) = v57;
      getIMOneTimeCodeDomainStrictMatchKeySymbolLoc_ptr = *(v73[1] + 24);
      v55 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v55)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v58 = [v4 objectForKeyedSubscript:*v55];
    v6->_domainStrictMatch = [v58 BOOLValue];

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v59 = getIMOneTimeCodeEmbeddedDomainsKeySymbolLoc_ptr;
    v77 = getIMOneTimeCodeEmbeddedDomainsKeySymbolLoc_ptr;
    if (!getIMOneTimeCodeEmbeddedDomainsKeySymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getIMOneTimeCodeEmbeddedDomainsKeySymbolLoc_block_invoke;
      v72 = &unk_279B61628;
      v73 = &v74;
      v60 = IMSharedUtilitiesLibrary();
      v61 = dlsym(v60, "IMOneTimeCodeEmbeddedDomainsKey");
      *(v73[1] + 24) = v61;
      getIMOneTimeCodeEmbeddedDomainsKeySymbolLoc_ptr = *(v73[1] + 24);
      v59 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v59)
    {
      [SFAutoFillOneTimeCode initWithIMCoreDictionary:];
    }

    v62 = *v59;
    v63 = [v4 objectForKeyedSubscript:v62];
    v64 = [(SFAutoFillOneTimeCode *)v6 _embeddedDomainArrayFromIMCoreEmbeddedDomains:v63];
    embeddedDomains = v6->_embeddedDomains;
    v6->_embeddedDomains = v64;

    v66 = v6;
  }

  return v6;
}

- (SFAutoFillOneTimeCode)initWithMailOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = SFAutoFillOneTimeCode;
  v11 = [(SFAutoFillOneTimeCode *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_source = 1;
    objc_storeStrong(&v11->_detectedCode, a3);
    objc_storeStrong(&v12->_displayCode, a3);
    objc_storeStrong(&v12->_timestamp, a4);
    v12->_messageID = a5;
    GUID = v12->_GUID;
    v12->_GUID = &stru_2875FD420;

    handle = v12->_handle;
    v12->_handle = &stru_2875FD420;

    v15 = v12;
  }

  return v12;
}

- (SFAutoFillOneTimeCode)initWithNotificationOneTimeCode:(id)a3 displayCode:(id)a4 timestamp:(id)a5 sourceAppName:(id)a6 sourceAppApplicationIdentifer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = SFAutoFillOneTimeCode;
  v17 = [(SFAutoFillOneTimeCode *)&v31 init];
  v18 = v17;
  if (v17)
  {
    v17->_source = 2;
    v19 = [v12 copy];
    detectedCode = v18->_detectedCode;
    v18->_detectedCode = v19;

    v21 = [v13 copy];
    displayCode = v18->_displayCode;
    v18->_displayCode = v21;

    objc_storeStrong(&v18->_timestamp, a5);
    v23 = [v15 copy];
    sourceAppName = v18->_sourceAppName;
    v18->_sourceAppName = v23;

    v25 = [v16 copy];
    sourceApplicationIdentifier = v18->_sourceApplicationIdentifier;
    v18->_sourceApplicationIdentifier = v25;

    GUID = v18->_GUID;
    v18->_GUID = &stru_2875FD420;

    handle = v18->_handle;
    v18->_handle = &stru_2875FD420;

    v29 = v18;
  }

  return v18;
}

- (SFAutoFillOneTimeCode)initWithTOTPGenerator:(id)a3 user:(id)a4 highLevelDomain:(id)a5 lastUsedDateOfAssociatedSavedAccount:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = SFAutoFillOneTimeCode;
  v15 = [(SFAutoFillOneTimeCode *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_source = 3;
    objc_storeStrong(&v15->_totpGenerator, a3);
    v17 = [v12 copy];
    user = v16->_user;
    v16->_user = v17;

    v19 = [v13 copy];
    domain = v16->_domain;
    v16->_domain = v19;

    objc_storeStrong(&v16->_lastUseDateOfAssociatedSavedAccount, a6);
    v21 = v16;
  }

  return v16;
}

- (NSString)code
{
  source = self->_source;
  if (source >= 3)
  {
    if (source == 3)
    {
      totpGenerator = self->_totpGenerator;
      v6 = [MEMORY[0x277CBEAA8] date];
      v4 = [(WBSTOTPGenerator *)totpGenerator codeForDate:v6];
    }

    else
    {
      v4 = &stru_2875FD420;
    }
  }

  else
  {
    machineReadableCode = self->_machineReadableCode;
    if (!machineReadableCode || !self->_domain)
    {
      machineReadableCode = self->_detectedCode;
    }

    v4 = machineReadableCode;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_source != v5->_source)
      {
        goto LABEL_18;
      }

      totpGenerator = self->_totpGenerator;
      v7 = v5->_totpGenerator;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      detectedCode = self->_detectedCode;
      v9 = v5->_detectedCode;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      machineReadableCode = self->_machineReadableCode;
      v11 = v5->_machineReadableCode;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      displayCode = self->_displayCode;
      v13 = v5->_displayCode;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      GUID = self->_GUID;
      v15 = v5->_GUID;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      handle = self->_handle;
      v17 = v5->_handle;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      timestamp = self->_timestamp;
      v19 = v5->_timestamp;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      user = self->_user;
      v21 = v5->_user;
      if (!WBSIsEqual())
      {
        goto LABEL_18;
      }

      sourceApplicationIdentifier = self->_sourceApplicationIdentifier;
      v23 = v5->_sourceApplicationIdentifier;
      if (WBSIsEqual() && (sourceAppName = self->_sourceAppName, v25 = v5->_sourceAppName, WBSIsEqual()) && (domain = self->_domain, v27 = v5->_domain, WBSIsEqual()))
      {
        embeddedDomain = self->_embeddedDomain;
        v29 = v5->_embeddedDomain;
        v30 = WBSIsEqual();
      }

      else
      {
LABEL_18:
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (unint64_t)hash
{
  source = self->_source;
  v4 = [(NSString *)self->_detectedCode hash]^ source;
  v5 = [(NSString *)self->_machineReadableCode hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_displayCode hash];
  v7 = [(NSString *)self->_GUID hash];
  v8 = v7 ^ [(NSString *)self->_handle hash];
  v9 = v6 ^ v8 ^ [(NSDate *)self->_timestamp hash];
  v10 = [(NSString *)self->_user hash];
  v11 = v10 ^ [(NSString *)self->_domain hash];
  v12 = v11 ^ [(NSString *)self->_embeddedDomain hash];
  return v9 ^ v12 ^ [(WBSTOTPGenerator *)self->_totpGenerator hash];
}

- (id)description
{
  source = self->_source;
  if (source >= 3)
  {
    if (source != 3)
    {
      v15.receiver = self;
      v15.super_class = SFAutoFillOneTimeCode;
      v8 = [(SFAutoFillOneTimeCode *)&v15 description];
      goto LABEL_7;
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v6 = [(SFAutoFillOneTimeCode *)self _stringForSource:self->_source];
    totpGenerator = self->_totpGenerator;
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [(WBSTOTPGenerator *)totpGenerator codeForDate:v12];
    v8 = [v9 stringWithFormat:@"<%@: %p source=%@; code=<promised>%@; generator=%p; user=%@; domain=%@>", v10, self, v6, v13, self->_totpGenerator, self->_user, self->_domain];;
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = [(SFAutoFillOneTimeCode *)self _stringForSource:self->_source];
    domain = self->_domain;
    v8 = [v4 stringWithFormat:@"<%@: %p source=%@; code=%@; machineReadableCode=%@; displayCode=%@; guid=%@; handle=%@; timeStamp=%@; user=%@; domain=%@ embeddedDomain=%@>", v5, self, v6, self->_detectedCode, self->_machineReadableCode, self->_displayCode, self->_GUID, self->_handle, self->_timestamp, self->_user, domain, self->_embeddedDomain];;
  }

LABEL_7:

  return v8;
}

- (NSDate)timestamp
{
  source = self->_source;
  if (source >= 3)
  {
    if (source == 3)
    {
      [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      [MEMORY[0x277CBEAA8] now];
    }
    v3 = ;
  }

  else
  {
    v3 = self->_timestamp;
  }

  return v3;
}

- (NSString)detectedCode
{
  source = self->_source;
  if (source >= 3)
  {
    if (source == 3)
    {
      totpGenerator = self->_totpGenerator;
      v5 = [MEMORY[0x277CBEAA8] date];
      v3 = [(WBSTOTPGenerator *)totpGenerator codeForDate:v5];
    }

    else
    {
      v3 = &stru_2875FD420;
    }
  }

  else
  {
    v3 = self->_detectedCode;
  }

  return v3;
}

- (int64_t)matchDomainWithURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_domain)
  {
    if (v4 && self->_machineReadableCode)
    {
      v6 = [(SFAutoFillOneTimeCode *)self _domainBoundTopLevelURL];
      v7 = [(SFAutoFillOneTimeCode *)self _matchURL:v5 withBoundDomainURL:v6 strict:self->_domainStrictMatch];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (int64_t)matchBoundDomainsWithFrameURLs:(id)a3
{
  v4 = a3;
  if (!self->_domain && ![(NSArray *)self->_embeddedDomains count]&& !self->_embeddedDomain)
  {
    v7 = 2;
    goto LABEL_22;
  }

  if (!self->_machineReadableCode)
  {
    goto LABEL_21;
  }

  v5 = [v4 count];
  domain = self->_domain;
  if (v5 == 1)
  {
    if (domain && !self->_embeddedDomain && ![(NSArray *)self->_embeddedDomains count])
    {
      v8 = [v4 firstObject];
      v9 = [(SFAutoFillOneTimeCode *)self _domainBoundTopLevelURL];
      v7 = [(SFAutoFillOneTimeCode *)self _matchURL:v8 withBoundDomainURL:v9 strict:self->_domainStrictMatch];

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5)
  {
    if (domain)
    {
      if ([(NSArray *)self->_embeddedDomains count])
      {
        v10 = [(SFAutoFillOneTimeCode *)self _matchBoundDomainAndEmbeddedDomainsWithFrameURLs:v4];
LABEL_20:
        v7 = v10;
        goto LABEL_22;
      }

      if (self->_embeddedDomain)
      {
        v10 = [(SFAutoFillOneTimeCode *)self _matchBoundDomainAndEmbeddedDomainWithFrameURLs:v4];
        goto LABEL_20;
      }
    }

LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if (domain || [(NSArray *)self->_embeddedDomains count])
  {
    goto LABEL_21;
  }

  v7 = 2 * (self->_embeddedDomain == 0);
LABEL_22:

  return v7;
}

- (int64_t)_matchBoundDomainAndEmbeddedDomainWithFrameURLs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SFAutoFillOneTimeCode *)self _domainBoundTopLevelURL];
  v6 = [(SFAutoFillOneTimeCode *)self _domainBoundEmbeddedURL];
  v7 = [v4 firstObject];
  v8 = [(SFAutoFillOneTimeCode *)self _matchURL:v7 withBoundDomainURL:v6 strict:0];

  if (v8)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = v4;
      v12 = *v25;
      v13 = 2;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [(SFAutoFillOneTimeCode *)self _matchURL:v15 withBoundDomainURL:v5 strict:0];
          v17 = [(SFAutoFillOneTimeCode *)self _matchURL:v15 withBoundDomainURL:v6 strict:0];
          if (!(v16 | v17))
          {

            v13 = 0;
            v4 = v23;
            goto LABEL_21;
          }

          if (v17 != 2 && v16 != 2)
          {
            v13 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v4 = v23;
    }

    else
    {

      v13 = 2;
    }

    v19 = [v9 lastObject];
    v20 = [(SFAutoFillOneTimeCode *)self _matchURL:v19 withBoundDomainURL:v5 strict:0];

    if (v20 <= 1)
    {
      v13 = v20;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int64_t)_matchBoundDomainAndEmbeddedDomainsWithFrameURLs:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = [(SFAutoFillOneTimeCode *)self _domainBoundTopLevelURL];
  v5 = [(NSArray *)self->_embeddedDomains firstObject];
  v6 = [v5 domain];
  v7 = [(SFAutoFillOneTimeCode *)self _secureURLForDomain:v6];

  v8 = [v4 firstObject];
  v9 = -[SFAutoFillOneTimeCode _matchURL:withBoundDomainURL:strict:](self, "_matchURL:withBoundDomainURL:strict:", v8, v7, [v5 strict]);

  if (v9)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = v4;
    v33 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v33)
    {
      v28 = v7;
      v29 = v5;
      obj = v10;
      v32 = *v43;
      v9 = 2;
      v30 = v4;
      while (2)
      {
        v11 = 0;
        do
        {
          v36 = v9;
          if (*v43 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v11;
          v12 = *(*(&v42 + 1) + 8 * v11);
          v37 = [(SFAutoFillOneTimeCode *)self _matchURL:v12 withBoundDomainURL:v34 strict:self->_domainStrictMatch, v28, v29];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v13 = self->_embeddedDomains;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = 0;
            v17 = *v39;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v39 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v38 + 1) + 8 * i);
                v20 = [v19 domain];
                v21 = [(SFAutoFillOneTimeCode *)self _secureURLForDomain:v20];
                v22 = -[SFAutoFillOneTimeCode _matchURL:withBoundDomainURL:strict:](self, "_matchURL:withBoundDomainURL:strict:", v12, v21, [v19 strict]);

                if (v22 > v16)
                {
                  v16 = v22;
                }
              }

              v15 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v15);
          }

          else
          {
            v16 = 0;
          }

          if (!(v37 | v16))
          {

            v9 = 0;
            v5 = v29;
            v4 = v30;
            v7 = v28;
            goto LABEL_31;
          }

          v23 = v16 == 2 || v37 == 2;
          v9 = v36;
          if (!v23)
          {
            v9 = 1;
          }

          v11 = v35 + 1;
        }

        while (v35 + 1 != v33);
        v4 = v30;
        v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }

      v10 = obj;

      v7 = v28;
      v5 = v29;
    }

    else
    {

      v9 = 2;
    }

    v24 = [v10 lastObject];
    v25 = [(SFAutoFillOneTimeCode *)self _matchURL:v24 withBoundDomainURL:v34 strict:self->_domainStrictMatch];

    if (v25 <= 1)
    {
      v9 = v25;
    }
  }

LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)_matchURL:(id)a3 withBoundDomainURL:(id)a4 strict:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 safari_hasSameOriginAsURL:v7])
  {
    v9 = 2;
  }

  else
  {
    v9 = !a5 && ([v8 safari_hasSameSiteAsURL:v7] & 1) != 0;
  }

  return v9;
}

- (NSURL)_domainBoundEmbeddedURL
{
  if ([(NSArray *)self->_embeddedDomains count])
  {
    v3 = [(NSArray *)self->_embeddedDomains firstObject];
    v4 = [v3 domain];
    v5 = [(SFAutoFillOneTimeCode *)self _secureURLForDomain:v4];
  }

  else
  {
    v5 = [(SFAutoFillOneTimeCode *)self _secureURLForDomain:self->_embeddedDomain];
  }

  return v5;
}

- (id)_secureURLForDomain:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setScheme:@"https"];
    [v5 setHost:v4];

    v6 = [v5 URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_stringForSource:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Messages";
  }

  else
  {
    return off_279B61780[a3 - 1];
  }
}

- (id)_embeddedDomainArrayFromIMCoreEmbeddedDomains:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v10 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    if ([v3 count])
    {
      v5 = 0;
      while (1)
      {
        v6 = [v3 objectAtIndexedSubscript:v5];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v7 = v5 + 1;
        v8 = [v3 objectAtIndexedSubscript:v7];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          break;
        }

        v9 = objc_alloc_init(SFAutoFillOneTimeCodeEmbeddedDomainPair);
        [(SFAutoFillOneTimeCodeEmbeddedDomainPair *)v9 setDomain:v6];
        -[SFAutoFillOneTimeCodeEmbeddedDomainPair setStrict:](v9, "setStrict:", [v8 BOOLValue]);
        [v4 addObject:v9];

        v5 = v7 + 1;
        if (v5 >= [v3 count])
        {
          goto LABEL_7;
        }
      }

      v10 = 0;
    }

    else
    {
LABEL_7:
      v10 = v4;
    }
  }

  return v10;
}

- (id)localizedTitleForContext:(int64_t)a3
{
  source = self->_source;
  v5 = &stru_2875FD420;
  if (source <= 1)
  {
    if (source)
    {
      if (source != 1)
      {
        goto LABEL_28;
      }

      if ((a3 - 2) >= 2)
      {
        if (a3 != 1)
        {
          if (!a3)
          {
            goto LABEL_26;
          }

LABEL_10:
          v6 = +[SFCredentialProviderExtensionManager sharedManager];
          v7 = [v6 atLeastOneEnabledExtensionSupportsOneTimeCodes];

          domain = self->_domain;
          if (v7)
          {
            if (domain)
            {
              v9 = MEMORY[0x277CCACA8];
LABEL_24:
              v11 = _WBSLocalizedString();
              v5 = [v9 stringWithFormat:v11, self->_domain];

              goto LABEL_28;
            }
          }

          else if (domain)
          {
            v9 = MEMORY[0x277CCACA8];
            goto LABEL_24;
          }

LABEL_26:
          v10 = _WBSLocalizedString();
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else if ((a3 - 2) >= 2)
    {
      if (a3 != 1)
      {
        if (!a3)
        {
          goto LABEL_26;
        }

        goto LABEL_10;
      }

      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (source != 2)
  {
    if (source != 3)
    {
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if ((a3 - 2) < 2)
  {
LABEL_21:
    v10 = self->_displayCode;
    goto LABEL_27;
  }

  if (a3 == 1)
  {
LABEL_25:
    v10 = fillCodeString(self->_displayCode);
    goto LABEL_27;
  }

  if (a3)
  {
    goto LABEL_10;
  }

  v10 = fromAppNameString(self->_sourceAppName);
LABEL_27:
  v5 = v10;
LABEL_28:

  return v5;
}

- (id)localizedSubtitleForContext:(int64_t)a3
{
  source = self->_source;
  v5 = &stru_2875FD420;
  if (source > 1)
  {
    if (source == 2)
    {
      if ((a3 - 1) < 3)
      {
        v5 = fromAppNameString(self->_sourceAppName);
        goto LABEL_24;
      }

      if (!a3)
      {
        if (![(SFAutoFillOneTimeCode *)self requiresAuthentication])
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else if (source != 3)
    {
      goto LABEL_24;
    }

LABEL_8:
    user = self->_user;
    if (user)
    {
LABEL_10:
      v5 = user;
      goto LABEL_24;
    }

LABEL_9:
    user = self->_displayCode;
    goto LABEL_10;
  }

  if (source)
  {
    if (source != 1)
    {
      goto LABEL_24;
    }

    if ((a3 - 1) < 3)
    {
      goto LABEL_23;
    }

    if (!a3)
    {
      if ([(SFAutoFillOneTimeCode *)self requiresAuthentication])
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((a3 - 1) >= 3)
  {
    if (!a3)
    {
      if ([(SFAutoFillOneTimeCode *)self requiresAuthentication])
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_23:
  v5 = _WBSLocalizedString();
LABEL_24:

  return v5;
}

- (BOOL)requiresAuthentication
{
  source = self->_source;
  switch(source)
  {
    case 2:
      sourceApplicationIdentifier = self->_sourceApplicationIdentifier;
      v3 = MEMORY[0x277CEBE80];
      goto LABEL_7;
    case 1:
      v3 = MEMORY[0x277CEBE80];
      sourceApplicationIdentifier = @"com.apple.mail";
      goto LABEL_7;
    case 0:
      v3 = MEMORY[0x277CEBE80];
      sourceApplicationIdentifier = @"com.apple.MobileSMS";
LABEL_7:
      v5 = [v3 applicationWithBundleIdentifier:sourceApplicationIdentifier];
      v6 = [v5 isLocked];

      return v6;
  }

  return 1;
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  v5 = a3;
  [v5 encodeInteger:source forKey:@"source"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_GUID forKey:@"GUID"];
  [v5 encodeObject:self->_detectedCode forKey:@"detectedCode"];
  [v5 encodeObject:self->_displayCode forKey:@"displayCode"];
  [v5 encodeObject:self->_handle forKey:@"handle"];
  [v5 encodeObject:self->_machineReadableCode forKey:@"machineReadableCode"];
  [v5 encodeObject:self->_domain forKey:@"domain"];
  [v5 encodeBool:self->_domainStrictMatch forKey:@"domainStrictMatch"];
  [v5 encodeObject:self->_embeddedDomain forKey:@"embeddedDomain"];
  [v5 encodeObject:self->_embeddedDomains forKey:@"embeddedDomains"];
  [v5 encodeObject:self->_user forKey:@"user"];
  [v5 encodeObject:self->_totpGenerator forKey:@"totpGenerator"];
  [v5 encodeObject:self->_sourceAppName forKey:@"sourceAppName"];
  [v5 encodeObject:self->_sourceApplicationIdentifier forKey:@"sourceApplicationIdentifier"];
}

- (SFAutoFillOneTimeCode)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = SFAutoFillOneTimeCode;
  v5 = [(SFAutoFillOneTimeCode *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totpGenerator"];
    totpGenerator = v5->_totpGenerator;
    v5->_totpGenerator = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user"];
    user = v5->_user;
    v5->_user = v8;

    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detectedCode"];
    detectedCode = v5->_detectedCode;
    v5->_detectedCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayCode"];
    displayCode = v5->_displayCode;
    v5->_displayCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"machineReadableCode"];
    machineReadableCode = v5->_machineReadableCode;
    v5->_machineReadableCode = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v22;

    v5->_domainStrictMatch = [v4 decodeBoolForKey:@"domainStrictMatch"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"embeddedDomain"];
    embeddedDomain = v5->_embeddedDomain;
    v5->_embeddedDomain = v24;

    v26 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"embeddedDomains"];
    embeddedDomains = v5->_embeddedDomains;
    v5->_embeddedDomains = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppName"];
    sourceAppName = v5->_sourceAppName;
    v5->_sourceAppName = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationIdentifier"];
    sourceApplicationIdentifier = v5->_sourceApplicationIdentifier;
    v5->_sourceApplicationIdentifier = v30;

    v32 = v5;
  }

  return v5;
}

- (void)initWithIMCoreDictionary:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeEmbeddedDomainsKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeDomainStrictMatchKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeEmbeddedDomainKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeDomainKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.5()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeMachineReadableCodeKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.6()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeHandleKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.7()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeDisplayKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.8()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.9()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeGuidKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithIMCoreDictionary:.cold.10()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMOneTimeCodeTimeStampKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillOneTimeCode.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end