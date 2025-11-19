@interface SUDownloadOptions
- (BOOL)_clientIsLivabilityd;
- (BOOL)allowCellular;
- (BOOL)allowExpensiveNetwork;
- (BOOL)allowsUnrestrictedCellularDownload;
- (BOOL)isAppOffloadEnabled;
- (BOOL)isCacheDeleteSpecialCaseEnabled;
- (BOOL)isEnabledForCellularRoaming;
- (BOOL)isEnabledForWifi;
- (BOOL)isEnabledOnBatteryPower;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMASuspensionEnabled;
- (SUDescriptor)descriptor;
- (SUDownloadOptions)initWithCoder:(id)a3;
- (SUDownloadOptions)initWithDescriptor:(id)a3;
- (SUDownloadOptions)initWithMetadata:(id)a3 andDescriptor:(id)a4;
- (SUDownloadPolicy)activeDownloadPolicy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)activeDownloadPolicyType;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveDownloadPolicy:(id)a3;
- (void)setActiveDownloadPolicyType:(int)a3;
- (void)setAllowUnrestrictedCellularDownload:(BOOL)a3;
- (void)setDescriptor:(id)a3;
- (void)setDownloadFeeAgreementStatus:(int)a3;
@end

@implementation SUDownloadOptions

- (SUDownloadOptions)initWithDescriptor:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SUDownloadOptions;
  v6 = [(SUOptionsBase *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
    v7->_downloadOnly = 0;
    v7->_autoDownload = 0;
    v7->_userUpdateTonight = 0;
    v7->_allowUnrestrictedCellularDownload = 0;
    v7->_downloadFeeAgreementStatus = 0;
    v7->_termsAndConditionsAgreementStatus = 0;
    v7->_activeDownloadPolicyType = 3;
    v8 = [(SUOptionsBase *)v7 defaultClientName];
    clientName = v7->_clientName;
    v7->_clientName = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.softwareupdateservicesd.downloadoptionsqueue", v10);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v11;
  }

  return v7;
}

- (SUDownloadOptions)initWithMetadata:(id)a3 andDescriptor:(id)a4
{
  v6 = a3;
  v7 = [(SUDownloadOptions *)self initWithDescriptor:a4];
  v8 = v7;
  if (v6 && v7)
  {
    v7->_downloadOnly = [v6 isDownloadOnly];
    v8->_autoDownload = [v6 isAutoDownload];
    v8->_userUpdateTonight = 0;
    v8->_allowUnrestrictedCellularDownload = 0;
    v8->_downloadFeeAgreementStatus = [v6 downloadFeeAgreementStatus];
    v8->_termsAndConditionsAgreementStatus = [v6 termsAndConditionsAgreementStatus];
    v8->_activeDownloadPolicyType = [v6 activeDownloadPolicyType];
  }

  return v8;
}

- (void)setActiveDownloadPolicyType:(int)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SUDownloadOptions_setActiveDownloadPolicyType___block_invoke;
  v4[3] = &unk_279CAACD8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(stateQueue, v4);
}

void __49__SUDownloadOptions_setActiveDownloadPolicyType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 32) != v3)
  {
    *(v2 + 32) = v3;
    v11 = SUStringFromDownloadPolicyType(*(*(a1 + 32) + 32));
    SULogInfo(@"Settings downloadPolicy to: %@", v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (int)activeDownloadPolicyType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SUDownloadOptions_activeDownloadPolicyType__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDownloadFeeAgreementStatus:(int)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SUDownloadOptions_setDownloadFeeAgreementStatus___block_invoke;
  v4[3] = &unk_279CAACD8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(stateQueue, v4);
}

uint64_t __51__SUDownloadOptions_setDownloadFeeAgreementStatus___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 12) != v2)
  {
    *(v1 + 12) = v2;
  }

  return result;
}

- (SUDownloadPolicy)activeDownloadPolicy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SUDownloadOptions_activeDownloadPolicy__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__SUDownloadOptions_activeDownloadPolicy__block_invoke(uint64_t a1)
{
  v2 = [SUDownloadPolicyFactory downloadPolicyForType:*(*(a1 + 32) + 32) forDescriptor:*(*(a1 + 32) + 24)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = *(*(a1 + 32) + 12);

  return [v5 setCellularFeeAgreementStatus:v6];
}

- (void)setActiveDownloadPolicy:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloadOptions *)self activeDownloadPolicy];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUDownloadOptions_setActiveDownloadPolicy___block_invoke;
  block[3] = &unk_279CAA798;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  dispatch_sync(stateQueue, block);
}

void __45__SUDownloadOptions_setActiveDownloadPolicy___block_invoke(uint64_t a1)
{
  v2 = [SUDownloadPolicyFactory downloadPolicyTypeForClass:*(a1 + 32)];
  v3 = [SUDownloadPolicyFactory downloadPolicyTypeForClass:*(a1 + 40)];
  if (v2 != v3 || (v4 = [*(a1 + 32) cellularFeeAgreementStatus], v4 != objc_msgSend(*(a1 + 40), "cellularFeeAgreementStatus")))
  {
    *(*(a1 + 48) + 32) = v3;
    *(*(a1 + 48) + 12) = [*(a1 + 40) cellularFeeAgreementStatus];
    v12 = SUStringFromDownloadPolicyType(*(*(a1 + 48) + 32));
    SULogInfo(@"Settings downloadPolicy to: %@", v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)setAllowUnrestrictedCellularDownload:(BOOL)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SUDownloadOptions_setAllowUnrestrictedCellularDownload___block_invoke;
  v4[3] = &unk_279CAAD00;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(stateQueue, v4);
}

uint64_t __58__SUDownloadOptions_setAllowUnrestrictedCellularDownload___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 11) != v2)
  {
    *(v1 + 11) = v2;
  }

  return result;
}

- (BOOL)allowsUnrestrictedCellularDownload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SUDownloadOptions_allowsUnrestrictedCellularDownload__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDescriptor:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUDownloadOptions_setDescriptor___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (SUDescriptor)descriptor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SUDownloadOptions_descriptor__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)allowCellular
{
  v3 = [(SUDownloadOptions *)self activeDownloadPolicy];
  v4 = [v3 isDownloadAllowableForCellular];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SUDownloadOptions *)self downloadFeeAgreementStatus];
  if (v5 == 1)
  {
    return 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = [(SUDownloadOptions *)self activeDownloadPolicy];
  if ([v6 isDownloadFreeForCellular])
  {
    v7 = 1;
  }

  else
  {
    v9 = [(SUDownloadOptions *)self activeDownloadPolicy];
    v7 = [v9 is5GDownloadAllowed];
  }

  return v7;
}

- (BOOL)allowExpensiveNetwork
{
  v3 = [(SUDownloadOptions *)self activeDownloadPolicy];
  v4 = [v3 allowExpensiveNetwork];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(SUDownloadOptions *)self downloadFeeAgreementStatus];
  if (v5 != 1)
  {
    if (!v5)
    {
      v6 = [(SUDownloadOptions *)self activeDownloadPolicy];
      v7 = [v6 isDownloadFreeForCellular];

      LOBYTE(v5) = v7;
      return v5;
    }

LABEL_5:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEnabledForCellularRoaming
{
  v3 = [(SUDownloadOptions *)self allowCellular];
  if (v3)
  {
    v4 = [(SUDownloadOptions *)self activeDownloadPolicy];
    v5 = [v4 isDownloadAllowableForCellularRoaming];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isEnabledForWifi
{
  v2 = [(SUDownloadOptions *)self activeDownloadPolicy];
  v3 = [v2 isDownloadAllowableForWiFi];

  return v3;
}

- (BOOL)isEnabledOnBatteryPower
{
  v2 = [(SUDownloadOptions *)self activeDownloadPolicy];
  v3 = [v2 isPowerRequired];

  return v3 ^ 1;
}

- (BOOL)isCacheDeleteSpecialCaseEnabled
{
  v2 = [(SUDownloadOptions *)self descriptor];
  v3 = [v2 cdLevel4Disabled];

  return v3 ^ 1;
}

- (BOOL)_clientIsLivabilityd
{
  v2 = [(SUDownloadOptions *)self clientName];
  v3 = [v2 containsString:@"com.apple.livabilityd"];

  return v3;
}

- (BOOL)isAppOffloadEnabled
{
  v3 = [(SUDownloadOptions *)self descriptor];
  if ([v3 appDemotionDisabled])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(SUDownloadOptions *)self _clientIsLivabilityd];
  }

  return v4;
}

- (BOOL)isMASuspensionEnabled
{
  v3 = [(SUDownloadOptions *)self descriptor];
  if ([v3 maSuspensionDisabled])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(SUDownloadOptions *)self _clientIsLivabilityd];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUDownloadOptions *)v5 descriptor];
      v7 = [(SUDownloadOptions *)self descriptor];
      if ([v6 isEqual:v7] && (v8 = -[SUDownloadOptions isAutoDownload](v5, "isAutoDownload"), v8 == -[SUDownloadOptions isAutoDownload](self, "isAutoDownload")) && (v9 = -[SUDownloadOptions isDownloadOnly](v5, "isDownloadOnly"), v9 == -[SUDownloadOptions isDownloadOnly](self, "isDownloadOnly")) && (v10 = -[SUDownloadOptions userUpdateTonight](v5, "userUpdateTonight"), v10 == -[SUDownloadOptions userUpdateTonight](self, "userUpdateTonight")) && (v11 = -[SUDownloadOptions downloadFeeAgreementStatus](v5, "downloadFeeAgreementStatus"), v11 == -[SUDownloadOptions downloadFeeAgreementStatus](self, "downloadFeeAgreementStatus")) && (v12 = -[SUDownloadOptions termsAndConditionsAgreementStatus](v5, "termsAndConditionsAgreementStatus"), v12 == -[SUDownloadOptions termsAndConditionsAgreementStatus](self, "termsAndConditionsAgreementStatus")) && (v13 = -[SUDownloadOptions activeDownloadPolicyType](v5, "activeDownloadPolicyType"), v13 == -[SUDownloadOptions activeDownloadPolicyType](self, "activeDownloadPolicyType")))
      {
        v14 = [(SUDownloadOptions *)v5 allowUnrestrictedCellularDownload];
        v15 = [(SUDownloadOptions *)self allowUnrestrictedCellularDownload];

        if (v14 == v15)
        {
          v16 = 1;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v16 = 0;
      goto LABEL_16;
    }

    v16 = 0;
  }

LABEL_17:

  return v16;
}

- (SUDownloadOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUDownloadOptions;
  v5 = [(SUOptionsBase *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    v5 = [(SUDownloadOptions *)v5 initWithDescriptor:v6];
    -[SUDownloadOptions setDownloadOnly:](v5, "setDownloadOnly:", [v4 decodeBoolForKey:@"downloadOnly"]);
    -[SUDownloadOptions setAutoDownload:](v5, "setAutoDownload:", [v4 decodeBoolForKey:@"autoDownload"]);
    -[SUDownloadOptions setUserUpdateTonight:](v5, "setUserUpdateTonight:", [v4 decodeBoolForKey:@"userUpdateTonight"]);
    -[SUDownloadOptions setAllowUnrestrictedCellularDownload:](v5, "setAllowUnrestrictedCellularDownload:", [v4 decodeBoolForKey:@"allowUnrestrictedCellularDownload"]);
    -[SUDownloadOptions setDownloadFeeAgreementStatus:](v5, "setDownloadFeeAgreementStatus:", [v4 decodeIntForKey:@"feeAgreementStatus"]);
    -[SUDownloadOptions setTermsAndConditionsAgreementStatus:](v5, "setTermsAndConditionsAgreementStatus:", [v4 decodeIntForKey:@"termsAgreementStatus"]);
    -[SUDownloadOptions setActiveDownloadPolicyType:](v5, "setActiveDownloadPolicyType:", [v4 decodeIntForKey:@"policyType"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUDownloadClientNameKey"];
    [(SUDownloadOptions *)v5 setClientName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  downloadOnly = self->_downloadOnly;
  v5 = a3;
  [v5 encodeBool:downloadOnly forKey:@"downloadOnly"];
  [v5 encodeBool:self->_autoDownload forKey:@"autoDownload"];
  [v5 encodeBool:self->_userUpdateTonight forKey:@"userUpdateTonight"];
  [v5 encodeBool:self->_allowUnrestrictedCellularDownload forKey:@"allowUnrestrictedCellularDownload"];
  [v5 encodeInt:self->_downloadFeeAgreementStatus forKey:@"feeAgreementStatus"];
  [v5 encodeInt:self->_termsAndConditionsAgreementStatus forKey:@"termsAgreementStatus"];
  [v5 encodeObject:self->_descriptor forKey:@"descriptor"];
  [v5 encodeInt:self->_activeDownloadPolicyType forKey:@"policyType"];
  [v5 encodeObject:self->_clientName forKey:@"SUDownloadClientNameKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SUDescriptor *)self->_descriptor copy];
  v6 = [v4 initWithDescriptor:v5];

  [v6 setAutoDownload:self->_autoDownload];
  [v6 setDownloadOnly:self->_downloadOnly];
  [v6 setUserUpdateTonight:self->_userUpdateTonight];
  [v6 setAllowUnrestrictedCellularDownload:self->_allowUnrestrictedCellularDownload];
  [v6 setActiveDownloadPolicyType:self->_activeDownloadPolicyType];
  [v6 setDownloadFeeAgreementStatus:self->_downloadFeeAgreementStatus];
  [v6 setTermsAndConditionsAgreementStatus:self->_termsAndConditionsAgreementStatus];
  [v6 setClientName:self->_clientName];
  return v6;
}

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  v20 = [(SUDownloadOptions *)self clientName];
  v3 = @"YES";
  if ([(SUDownloadOptions *)self isDownloadOnly])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v19 = v4;
  if ([(SUDownloadOptions *)self isAutoDownload])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v18 = v5;
  if ([(SUDownloadOptions *)self userUpdateTonight])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v17 = v6;
  if ([(SUDownloadOptions *)self allowsUnrestrictedCellularDownload])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = SUStringFromAgreementStatus([(SUDownloadOptions *)self downloadFeeAgreementStatus]);
  v9 = SUStringFromAgreementStatus([(SUDownloadOptions *)self termsAndConditionsAgreementStatus]);
  v10 = SUStringFromDownloadPolicyType([(SUDownloadOptions *)self activeDownloadPolicyType]);
  if ([(SUDownloadOptions *)self isEnabledForCellular])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(SUDownloadOptions *)self isEnabledForWifi])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if ([(SUDownloadOptions *)self isEnabledOnBatteryPower])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (![(SUDownloadOptions *)self isEnabledForCellularRoaming])
  {
    v3 = @"NO";
  }

  v14 = [(SUDownloadOptions *)self descriptor];
  v15 = [v21 stringWithFormat:@"\n            ClientName: %@\n            downloadOnly: %@\n            autoDownload: %@\n            userUpdateTonight: %@\n            allowUnrestrictedCellularDownload: %@\n            downloadFeeAgreementStatus: %@\n            termsAndConditionsAgreementStatus: %@\n            activeDownloadPolicyType: %@\n            enabledForCellular: %@\n            enabledForWifi: %@\n            enabledOnBatteryPower: %@\n            enabledForCellularRoaming: %@\n            descriptor: %@\n", v20, v19, v18, v17, v7, v8, v9, v10, v11, v12, v13, v3, v14];

  return v15;
}

@end