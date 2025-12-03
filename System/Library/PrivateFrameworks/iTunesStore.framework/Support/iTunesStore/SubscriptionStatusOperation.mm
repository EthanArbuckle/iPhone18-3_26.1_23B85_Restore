@interface SubscriptionStatusOperation
- (BOOL)_carrierBundleStatusIsValidForCachedStatus:(id)status;
- (BOOL)allowsBypassOfPrivacyAcknowledgement;
- (BOOL)authenticatesIfNecessary;
- (NSString)localizedAuthenticationReason;
- (NSString)reason;
- (SSAuthenticationContext)authenticationContext;
- (id)_getInitialStatus:(id *)status;
- (id)_loadStatusOnce:(id *)once;
- (id)statusBlock;
- (int64_t)carrierBundleProvisioningStyle;
- (void)_cacheAccountEligibilityWithStatus:(id)status;
- (void)run;
- (void)setAllowsBypassOfPrivacyAcknowledgement:(BOOL)acknowledgement;
- (void)setAuthenticatesIfNecessary:(BOOL)necessary;
- (void)setAuthenticationContext:(id)context;
- (void)setCarrierBundleProvisioningStyle:(int64_t)style;
- (void)setLocalizedAuthenticationReason:(id)reason;
- (void)setReason:(id)reason;
- (void)setStatusBlock:(id)block;
@end

@implementation SubscriptionStatusOperation

- (BOOL)allowsBypassOfPrivacyAcknowledgement
{
  [(SubscriptionStatusOperation *)self lock];
  allowsBypassOfPrivacyAcknowledgement = self->_allowsBypassOfPrivacyAcknowledgement;
  [(SubscriptionStatusOperation *)self unlock];
  return allowsBypassOfPrivacyAcknowledgement;
}

- (BOOL)authenticatesIfNecessary
{
  [(SubscriptionStatusOperation *)self lock];
  authenticatesIfNecessary = self->_authenticatesIfNecessary;
  [(SubscriptionStatusOperation *)self unlock];
  return authenticatesIfNecessary;
}

- (SSAuthenticationContext)authenticationContext
{
  [(SubscriptionStatusOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext copy];
  [(SubscriptionStatusOperation *)self unlock];

  return v3;
}

- (int64_t)carrierBundleProvisioningStyle
{
  [(SubscriptionStatusOperation *)self lock];
  carrierBundleProvisioningStyle = self->_carrierBundleProvisioningStyle;
  [(SubscriptionStatusOperation *)self unlock];
  return carrierBundleProvisioningStyle;
}

- (NSString)localizedAuthenticationReason
{
  [(SubscriptionStatusOperation *)self lock];
  v3 = [(NSString *)self->_localizedAuthenticationReason copy];
  [(SubscriptionStatusOperation *)self unlock];

  return v3;
}

- (NSString)reason
{
  [(SubscriptionStatusOperation *)self lock];
  v3 = [(NSString *)self->_reason copy];
  [(SubscriptionStatusOperation *)self unlock];

  return v3;
}

- (void)setAllowsBypassOfPrivacyAcknowledgement:(BOOL)acknowledgement
{
  [(SubscriptionStatusOperation *)self lock];
  self->_allowsBypassOfPrivacyAcknowledgement = acknowledgement;

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setAuthenticatesIfNecessary:(BOOL)necessary
{
  [(SubscriptionStatusOperation *)self lock];
  self->_authenticatesIfNecessary = necessary;

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_authenticationContext != contextCopy)
  {
    v4 = [(SSAuthenticationContext *)contextCopy copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setCarrierBundleProvisioningStyle:(int64_t)style
{
  [(SubscriptionStatusOperation *)self lock];
  self->_carrierBundleProvisioningStyle = style;

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setLocalizedAuthenticationReason:(id)reason
{
  reasonCopy = reason;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_localizedAuthenticationReason != reasonCopy)
  {
    v4 = [(NSString *)reasonCopy copy];
    localizedAuthenticationReason = self->_localizedAuthenticationReason;
    self->_localizedAuthenticationReason = v4;
  }

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setReason:(id)reason
{
  reasonCopy = reason;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_reason != reasonCopy)
  {
    v4 = [(NSString *)reasonCopy copy];
    reason = self->_reason;
    self->_reason = v4;
  }

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setStatusBlock:(id)block
{
  blockCopy = block;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_statusBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    statusBlock = self->_statusBlock;
    self->_statusBlock = v4;
  }

  [(SubscriptionStatusOperation *)self unlock];
}

- (id)statusBlock
{
  [(SubscriptionStatusOperation *)self lock];
  v3 = [self->_statusBlock copy];
  [(SubscriptionStatusOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)run
{
  [(SubscriptionStatusOperation *)self lock];
  allowsBypassOfPrivacyAcknowledgement = self->_allowsBypassOfPrivacyAcknowledgement;
  v4 = [self->_statusBlock copy];
  [(SubscriptionStatusOperation *)self unlock];
  v5 = MKBDeviceUnlockedSinceBoot();
  if ((+[SSDevice deviceIsAppleWatch](SSDevice, "deviceIsAppleWatch") & 1) != 0 || (+[SSDevice deviceIsAudioAccessory]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [SSPrivacyController shouldDisplayPrivacyLinkWithIdentifier:SSPrivacyIdentifierMusicStore];
    if (v6 && !allowsBypassOfPrivacyAcknowledgement)
    {
      v15 = SSError();
      v8 = SSErrorWithUnderlyingError();
      v16 = +[SSLogConfig sharedAccountsConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v21 = shouldLog | 2;
      }

      else
      {
        v21 = shouldLog;
      }

      oSLogObject = [v16 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v21 &= 2u;
      }

      if (!v21)
      {
        goto LABEL_34;
      }

LABEL_32:
      v59 = 138543362;
      v60 = objc_opt_class();
      v22 = v60;
      LODWORD(v53) = 12;
      v52 = &v59;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_35:

        goto LABEL_36;
      }

      oSLogObject = [NSString stringWithCString:v23 encoding:4, &v59, v53];
      free(v23);
      v52 = oSLogObject;
      SSFileLog();
LABEL_34:

      goto LABEL_35;
    }
  }

  if (v5 <= 0)
  {
    v15 = SSError();
    v8 = SSErrorWithUnderlyingError();
    v16 = +[SSLogConfig sharedAccountsConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog2 | 2;
    }

    else
    {
      v18 = shouldLog2;
    }

    oSLogObject = [v16 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v58 = 0;
  v7 = [(SubscriptionStatusOperation *)self _getInitialStatus:&v58];
  v8 = v58;
  if (v7)
  {
    if ((v6 & 1) == 0)
    {
      [(SubscriptionStatusOperation *)self _cacheAccountEligibilityWithStatus:v7];
    }

    if (!MGGetBoolAnswer())
    {
      [v7 setCarrierBundlingStatus:2];
      v25 = 0;
      v26 = 1;
      goto LABEL_38;
    }

    v9 = +[SSVTelephonyController sharedController];
    isPhoneNumberAccessRestricted = [v9 isPhoneNumberAccessRestricted];

    if (isPhoneNumberAccessRestricted)
    {
      goto LABEL_85;
    }

    carrierBundlingStatus = [v7 carrierBundlingStatus];
    carrierBundleProvisioningStyle = [(SubscriptionStatusOperation *)self carrierBundleProvisioningStyle];
    if (carrierBundleProvisioningStyle == 1)
    {
      v14 = 0;
      if (carrierBundlingStatus != 1 && carrierBundlingStatus != 4)
      {
        v14 = [v7 accountStatus] != 3;
      }

      if ([v7 carrierBundlingStatus] == 4)
      {
        v13 = [v7 accountStatus] == 0;
        goto LABEL_65;
      }
    }

    else
    {
      if (carrierBundleProvisioningStyle == 2)
      {
        v13 = 0;
        v14 = 1;
        goto LABEL_65;
      }

      v14 = 0;
    }

    v13 = 0;
LABEL_65:
    v42 = +[SSVSubscriptionStatusCoordinator copyStatusFromUserDefaults];
    if (v42 && [(SubscriptionStatusOperation *)self _carrierBundleStatusIsValidForCachedStatus:v42])
    {
      if (carrierBundlingStatus != 1 && carrierBundlingStatus != 4)
      {
        [v7 setCarrierBundlingStatus:{objc_msgSend(v42, "carrierBundlingStatus")}];
      }

      cellularOperatorName = [v42 cellularOperatorName];
      [v7 setCellularOperatorName:cellularOperatorName];

      phoneNumber = [v42 phoneNumber];
      [v7 setPhoneNumber:phoneNumber];

      sessionIdentifier = [v42 sessionIdentifier];
      [v7 setSessionIdentifier:sessionIdentifier];
    }

    if (v13)
    {
      v27 = 0;
      v25 = v14;
LABEL_39:
      v28 = objc_alloc_init(CarrierBundlingEligibilityOperation);
      reason = [(SubscriptionStatusOperation *)self reason];
      v30 = [reason isEqualToString:SSVSubscriptionStatusRequestReasonDeepLink];

      if (v30)
      {
        [(CarrierBundlingEligibilityOperation *)v28 setDeepLink:1];
      }

      v57 = 0;
      v31 = [(SubscriptionStatusOperation *)self runSubOperation:v28 returningError:&v57];
      v32 = v57;
      v33 = v32;
      if (!v31)
      {
        domain = [v32 domain];
        if ([domain isEqualToString:@"CarrierBundlingEligibilityErrorDomain"])
        {
          [v7 setCarrierBundlingErrorCode:{objc_msgSend(v33, "code")}];
        }

        [v7 setCarrierBundlingStatus:0];
        if ((v27 & 1) == 0)
        {
          v4[2](v4, v7, 1, v33);
        }

LABEL_84:

        if ((v25 & v27) != 1)
        {
LABEL_86:
          accountIdentifier = [v7 accountIdentifier];
          v48 = +[SSAccountStore defaultStore];
          activeAccount = [v48 activeAccount];
          uniqueIdentifier = [activeAccount uniqueIdentifier];

          if (!uniqueIdentifier || accountIdentifier == uniqueIdentifier)
          {
            if (v6)
            {
LABEL_95:

              v24 = 1;
              goto LABEL_96;
            }
          }

          else if (!accountIdentifier || ((v6 | [accountIdentifier isEqualToNumber:uniqueIdentifier] ^ 1) & 1) != 0)
          {
            goto LABEL_95;
          }

          v51 = +[SSVSubscriptionStatusCoordinator copyStatusFromUserDefaults];
          [SSVSubscriptionStatusCoordinator updateUserDefaultsWithStatus:v7];
          if (([v7 isEqualToStatus:v51] & 1) == 0)
          {
            +[SSVSubscriptionStatusCoordinator sendChangeNotification];
          }

          goto LABEL_95;
        }

LABEL_85:
        v4[2](v4, v7, 1, 0);
        goto LABEL_86;
      }

      eligibilityResponse = [(CarrierBundlingEligibilityOperation *)v28 eligibilityResponse];
      domain = eligibilityResponse;
      v56 = v27;
      if ((v27 & 1) == 0 && [eligibilityResponse bundlingStatus] == 1)
      {
        v4[2](v4, v7, 1, 0);
      }

      cellularProviderName = [(CarrierBundlingEligibilityOperation *)v28 cellularProviderName];
      [v7 setCellularOperatorName:cellularProviderName];

      phoneNumber2 = [(CarrierBundlingEligibilityOperation *)v28 phoneNumber];
      [v7 setPhoneNumber:phoneNumber2];

      bundlingStatus = [domain bundlingStatus];
      if (bundlingStatus == 1)
      {
        if (![v7 accountStatus])
        {
          bundlingStatus = 4;
LABEL_75:
          [v7 setCarrierBundlingStatus:bundlingStatus];
          goto LABEL_76;
        }

        if ([v7 carrierBundlingStatus] == 4)
        {
LABEL_76:
          if ([domain isFamilySubscription])
          {
            [v7 setFamilySubscription:1];
          }

          sMSSessionIdentifier = [domain SMSSessionIdentifier];
          if (!sMSSessionIdentifier)
          {
            sMSSessionIdentifier = [domain headerEnrichmentSessionIdentifier];
          }

          [v7 setSessionIdentifier:sMSSessionIdentifier];
          if ((v56 & 1) == 0 && [domain bundlingStatus] != 1)
          {
            v4[2](v4, v7, 1, 0);
          }

          v27 = v56;
          goto LABEL_84;
        }
      }

      v55 = v6;
      domain2 = [v33 domain];
      if ([domain2 isEqualToString:SSErrorDomain])
      {
        v54 = v25;
        code = [v33 code];

        v41 = code == 124;
        v25 = v54;
        if (v41)
        {
          bundlingStatus = 2;
        }
      }

      else
      {
      }

      v6 = v55;
      goto LABEL_75;
    }

    v25 = v14;
    v26 = !v14;
LABEL_38:
    v4[2](v4, v7, v26, 0);
    v27 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v4[2](v4, 0, 1, v8);
  v24 = 0;
LABEL_96:
  [(SubscriptionStatusOperation *)self setError:v8, v52];
  [(SubscriptionStatusOperation *)self setStatusBlock:0];
  [(SubscriptionStatusOperation *)self setSuccess:v24];
}

- (void)_cacheAccountEligibilityWithStatus:(id)status
{
  statusCopy = status;
  accountIdentifier = [statusCopy accountIdentifier];
  if (accountIdentifier)
  {
    v5 = +[SSAccountStore defaultStore];
    v6 = [v5 accountWithUniqueIdentifier:accountIdentifier];
    if (!v6)
    {
LABEL_18:

      goto LABEL_19;
    }

    if ([statusCopy accountStatus] == 3)
    {
      v7 = &__kCFBooleanTrue;
    }

    else
    {
      v7 = &__kCFBooleanFalse;
    }

    [v6 setEligibility:v7 forServiceType:0];
    v8 = +[SSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v16 = v12;
      accountName = [v6 accountName];
      SSHashIfNeeded();
      v17 = 138543618;
      v18 = v12;
      v20 = v19 = 2114;
      LODWORD(v15) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_17:

        [v5 saveAccount:v6 verifyCredentials:0 completion:0];
        goto LABEL_18;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4, &v17, v15];
      free(v14);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_19:
}

- (BOOL)_carrierBundleStatusIsValidForCachedStatus:(id)status
{
  statusCopy = status;
  v6 = +[SSVTelephonyController sharedController];
  isPhoneNumberAccessRestricted = [v6 isPhoneNumberAccessRestricted];

  if (isPhoneNumberAccessRestricted)
  {
    sub_100271E0C(a2, self);
  }

  carrierBundlingStatus = [statusCopy carrierBundlingStatus];
  v9 = 0;
  if (carrierBundlingStatus <= 4 && ((1 << carrierBundlingStatus) & 0x16) != 0)
  {
    v10 = +[ISNetworkObserver sharedInstance];
    phoneNumber = [v10 phoneNumber];

    phoneNumber2 = [statusCopy phoneNumber];
    if (phoneNumber == phoneNumber2)
    {
      v9 = 1;
    }

    else
    {
      v9 = [phoneNumber isEqualToString:phoneNumber2];
    }
  }

  return v9;
}

- (id)_getInitialStatus:(id *)status
{
  authenticationContext = [(SubscriptionStatusOperation *)self authenticationContext];
  v5 = authenticationContext;
  if (authenticationContext)
  {
    authenticatesIfNecessary = [authenticationContext promptStyle] < 2;
  }

  else
  {
    authenticatesIfNecessary = [(SubscriptionStatusOperation *)self authenticatesIfNecessary];
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v8;
    v11 = v7;
    v12 = objc_autoreleasePoolPush();
    v23 = v7;
    v8 = [(SubscriptionStatusOperation *)self _loadStatusOnce:&v23];
    v7 = v23;

    if (v8 == 0 || !authenticatesIfNecessary)
    {
      break;
    }

    if ((([v8 accountStatus] == 1) & v9) == 0)
    {
      objc_autoreleasePoolPop(v12);
      goto LABEL_17;
    }

    v13 = [v5 mutableCopy];
    if (!v13)
    {
      v14 = [SSMutableAuthenticationContext alloc];
      v15 = +[SSAccountStore defaultStore];
      activeAccount = [v15 activeAccount];
      v13 = [v14 initWithAccount:activeAccount];
    }

    reasonDescription = [v13 reasonDescription];

    if (!reasonDescription)
    {
      localizedAuthenticationReason = [(SubscriptionStatusOperation *)self localizedAuthenticationReason];
      [v13 setReasonDescription:localizedAuthenticationReason];
    }

    [v13 setCanCreateNewAccount:0];
    [v13 setPromptStyle:1];
    v19 = [(SubscriptionStatusOperation *)self copyAccountID:0 credentialSource:0 byAuthenticatingWithContext:v13 returningError:0];

    objc_autoreleasePoolPop(v12);
    v9 = 0;
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  objc_autoreleasePoolPop(v12);
  if (status && !v8)
  {
    v20 = v7;
    *status = v7;
  }

LABEL_17:

  return v8;
}

- (id)_loadStatusOnce:(id *)once
{
  v5 = +[SSAccountStore defaultStore];
  activeAccount = [v5 activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];

  v8 = objc_alloc_init(ISStoreURLOperation);
  [v8 setCanSendGUIDParameter:0];
  v9 = +[DaemonProtocolDataProvider provider];
  [v8 setDataProvider:v9];

  authenticationContext = [(SubscriptionStatusOperation *)self authenticationContext];
  [v8 setAuthenticationContext:authenticationContext];
  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  v12 = +[SSDevice currentDevice];
  uniqueDeviceIdentifier = [v12 uniqueDeviceIdentifier];

  if (uniqueDeviceIdentifier)
  {
    [v11 setValue:uniqueDeviceIdentifier forRequestParameter:@"guid"];
  }

  [v11 setURLBagKey:@"getSubscriptionStatusSrv"];

  [v8 setRequestProperties:v11];
  v25 = 0;
  v14 = [(SubscriptionStatusOperation *)self runSubOperation:v8 returningError:&v25];
  v15 = v25;
  if (!v14)
  {
    v20 = 0;
    if (!once)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  dataProvider = [v8 dataProvider];
  output = [dataProvider output];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [output objectForKey:@"failureType"];
    v19 = v18;
    if (v18)
    {
      [v18 integerValue];
      SSError();
      v20 = 0;
      v15 = v21 = v15;
    }

    else
    {
      v20 = objc_alloc_init(SSVSubscriptionStatus);
      [v20 setValuesUsingStatusDictionary:output];
      authenticatedAccountDSID = [v8 authenticatedAccountDSID];
      if (!authenticatedAccountDSID)
      {
        authenticatedAccountDSID = [authenticationContext requiredUniqueIdentifier];
        if (!authenticatedAccountDSID)
        {
          authenticatedAccountDSID = uniqueIdentifier;
        }
      }

      v21 = authenticatedAccountDSID;
      [v20 setAccountIdentifier:authenticatedAccountDSID];
    }
  }

  else
  {
    v20 = 0;
  }

  if (once)
  {
LABEL_16:
    if (!v20)
    {
      v23 = v15;
      *once = v15;
    }
  }

LABEL_18:

  return v20;
}

@end