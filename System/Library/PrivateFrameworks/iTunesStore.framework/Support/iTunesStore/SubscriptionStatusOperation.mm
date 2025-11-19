@interface SubscriptionStatusOperation
- (BOOL)_carrierBundleStatusIsValidForCachedStatus:(id)a3;
- (BOOL)allowsBypassOfPrivacyAcknowledgement;
- (BOOL)authenticatesIfNecessary;
- (NSString)localizedAuthenticationReason;
- (NSString)reason;
- (SSAuthenticationContext)authenticationContext;
- (id)_getInitialStatus:(id *)a3;
- (id)_loadStatusOnce:(id *)a3;
- (id)statusBlock;
- (int64_t)carrierBundleProvisioningStyle;
- (void)_cacheAccountEligibilityWithStatus:(id)a3;
- (void)run;
- (void)setAllowsBypassOfPrivacyAcknowledgement:(BOOL)a3;
- (void)setAuthenticatesIfNecessary:(BOOL)a3;
- (void)setAuthenticationContext:(id)a3;
- (void)setCarrierBundleProvisioningStyle:(int64_t)a3;
- (void)setLocalizedAuthenticationReason:(id)a3;
- (void)setReason:(id)a3;
- (void)setStatusBlock:(id)a3;
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

- (void)setAllowsBypassOfPrivacyAcknowledgement:(BOOL)a3
{
  [(SubscriptionStatusOperation *)self lock];
  self->_allowsBypassOfPrivacyAcknowledgement = a3;

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setAuthenticatesIfNecessary:(BOOL)a3
{
  [(SubscriptionStatusOperation *)self lock];
  self->_authenticatesIfNecessary = a3;

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setAuthenticationContext:(id)a3
{
  v6 = a3;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_authenticationContext != v6)
  {
    v4 = [(SSAuthenticationContext *)v6 copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setCarrierBundleProvisioningStyle:(int64_t)a3
{
  [(SubscriptionStatusOperation *)self lock];
  self->_carrierBundleProvisioningStyle = a3;

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setLocalizedAuthenticationReason:(id)a3
{
  v6 = a3;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_localizedAuthenticationReason != v6)
  {
    v4 = [(NSString *)v6 copy];
    localizedAuthenticationReason = self->_localizedAuthenticationReason;
    self->_localizedAuthenticationReason = v4;
  }

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setReason:(id)a3
{
  v6 = a3;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_reason != v6)
  {
    v4 = [(NSString *)v6 copy];
    reason = self->_reason;
    self->_reason = v4;
  }

  [(SubscriptionStatusOperation *)self unlock];
}

- (void)setStatusBlock:(id)a3
{
  v6 = a3;
  [(SubscriptionStatusOperation *)self lock];
  if (self->_statusBlock != v6)
  {
    v4 = [v6 copy];
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

      v20 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v21 = v20 | 2;
      }

      else
      {
        v21 = v20;
      }

      v19 = [v16 OSLogObject];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
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

      v19 = [NSString stringWithCString:v23 encoding:4, &v59, v53];
      free(v23);
      v52 = v19;
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

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
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
    v10 = [v9 isPhoneNumberAccessRestricted];

    if (v10)
    {
      goto LABEL_85;
    }

    v11 = [v7 carrierBundlingStatus];
    v12 = [(SubscriptionStatusOperation *)self carrierBundleProvisioningStyle];
    if (v12 == 1)
    {
      v14 = 0;
      if (v11 != 1 && v11 != 4)
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
      if (v12 == 2)
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
      if (v11 != 1 && v11 != 4)
      {
        [v7 setCarrierBundlingStatus:{objc_msgSend(v42, "carrierBundlingStatus")}];
      }

      v43 = [v42 cellularOperatorName];
      [v7 setCellularOperatorName:v43];

      v44 = [v42 phoneNumber];
      [v7 setPhoneNumber:v44];

      v45 = [v42 sessionIdentifier];
      [v7 setSessionIdentifier:v45];
    }

    if (v13)
    {
      v27 = 0;
      v25 = v14;
LABEL_39:
      v28 = objc_alloc_init(CarrierBundlingEligibilityOperation);
      v29 = [(SubscriptionStatusOperation *)self reason];
      v30 = [v29 isEqualToString:SSVSubscriptionStatusRequestReasonDeepLink];

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
        v35 = [v32 domain];
        if ([v35 isEqualToString:@"CarrierBundlingEligibilityErrorDomain"])
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
          v47 = [v7 accountIdentifier];
          v48 = +[SSAccountStore defaultStore];
          v49 = [v48 activeAccount];
          v50 = [v49 uniqueIdentifier];

          if (!v50 || v47 == v50)
          {
            if (v6)
            {
LABEL_95:

              v24 = 1;
              goto LABEL_96;
            }
          }

          else if (!v47 || ((v6 | [v47 isEqualToNumber:v50] ^ 1) & 1) != 0)
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

      v34 = [(CarrierBundlingEligibilityOperation *)v28 eligibilityResponse];
      v35 = v34;
      v56 = v27;
      if ((v27 & 1) == 0 && [v34 bundlingStatus] == 1)
      {
        v4[2](v4, v7, 1, 0);
      }

      v36 = [(CarrierBundlingEligibilityOperation *)v28 cellularProviderName];
      [v7 setCellularOperatorName:v36];

      v37 = [(CarrierBundlingEligibilityOperation *)v28 phoneNumber];
      [v7 setPhoneNumber:v37];

      v38 = [v35 bundlingStatus];
      if (v38 == 1)
      {
        if (![v7 accountStatus])
        {
          v38 = 4;
LABEL_75:
          [v7 setCarrierBundlingStatus:v38];
          goto LABEL_76;
        }

        if ([v7 carrierBundlingStatus] == 4)
        {
LABEL_76:
          if ([v35 isFamilySubscription])
          {
            [v7 setFamilySubscription:1];
          }

          v46 = [v35 SMSSessionIdentifier];
          if (!v46)
          {
            v46 = [v35 headerEnrichmentSessionIdentifier];
          }

          [v7 setSessionIdentifier:v46];
          if ((v56 & 1) == 0 && [v35 bundlingStatus] != 1)
          {
            v4[2](v4, v7, 1, 0);
          }

          v27 = v56;
          goto LABEL_84;
        }
      }

      v55 = v6;
      v39 = [v33 domain];
      if ([v39 isEqualToString:SSErrorDomain])
      {
        v54 = v25;
        v40 = [v33 code];

        v41 = v40 == 124;
        v25 = v54;
        if (v41)
        {
          v38 = 2;
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

- (void)_cacheAccountEligibilityWithStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 accountIdentifier];
  if (v4)
  {
    v5 = +[SSAccountStore defaultStore];
    v6 = [v5 accountWithUniqueIdentifier:v4];
    if (!v6)
    {
LABEL_18:

      goto LABEL_19;
    }

    if ([v3 accountStatus] == 3)
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

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v16 = v12;
      v13 = [v6 accountName];
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

      v11 = [NSString stringWithCString:v14 encoding:4, &v17, v15];
      free(v14);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_19:
}

- (BOOL)_carrierBundleStatusIsValidForCachedStatus:(id)a3
{
  v5 = a3;
  v6 = +[SSVTelephonyController sharedController];
  v7 = [v6 isPhoneNumberAccessRestricted];

  if (v7)
  {
    sub_100271E0C(a2, self);
  }

  v8 = [v5 carrierBundlingStatus];
  v9 = 0;
  if (v8 <= 4 && ((1 << v8) & 0x16) != 0)
  {
    v10 = +[ISNetworkObserver sharedInstance];
    v11 = [v10 phoneNumber];

    v12 = [v5 phoneNumber];
    if (v11 == v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v11 isEqualToString:v12];
    }
  }

  return v9;
}

- (id)_getInitialStatus:(id *)a3
{
  v4 = [(SubscriptionStatusOperation *)self authenticationContext];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 promptStyle] < 2;
  }

  else
  {
    v6 = [(SubscriptionStatusOperation *)self authenticatesIfNecessary];
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

    if (v8 == 0 || !v6)
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
      v16 = [v15 activeAccount];
      v13 = [v14 initWithAccount:v16];
    }

    v17 = [v13 reasonDescription];

    if (!v17)
    {
      v18 = [(SubscriptionStatusOperation *)self localizedAuthenticationReason];
      [v13 setReasonDescription:v18];
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
  if (a3 && !v8)
  {
    v20 = v7;
    *a3 = v7;
  }

LABEL_17:

  return v8;
}

- (id)_loadStatusOnce:(id *)a3
{
  v5 = +[SSAccountStore defaultStore];
  v6 = [v5 activeAccount];
  v7 = [v6 uniqueIdentifier];

  v8 = objc_alloc_init(ISStoreURLOperation);
  [v8 setCanSendGUIDParameter:0];
  v9 = +[DaemonProtocolDataProvider provider];
  [v8 setDataProvider:v9];

  v10 = [(SubscriptionStatusOperation *)self authenticationContext];
  [v8 setAuthenticationContext:v10];
  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  v12 = +[SSDevice currentDevice];
  v13 = [v12 uniqueDeviceIdentifier];

  if (v13)
  {
    [v11 setValue:v13 forRequestParameter:@"guid"];
  }

  [v11 setURLBagKey:@"getSubscriptionStatusSrv"];

  [v8 setRequestProperties:v11];
  v25 = 0;
  v14 = [(SubscriptionStatusOperation *)self runSubOperation:v8 returningError:&v25];
  v15 = v25;
  if (!v14)
  {
    v20 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v16 = [v8 dataProvider];
  v17 = [v16 output];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 objectForKey:@"failureType"];
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
      [v20 setValuesUsingStatusDictionary:v17];
      v22 = [v8 authenticatedAccountDSID];
      if (!v22)
      {
        v22 = [v10 requiredUniqueIdentifier];
        if (!v22)
        {
          v22 = v7;
        }
      }

      v21 = v22;
      [v20 setAccountIdentifier:v22];
    }
  }

  else
  {
    v20 = 0;
  }

  if (a3)
  {
LABEL_16:
    if (!v20)
    {
      v23 = v15;
      *a3 = v15;
    }
  }

LABEL_18:

  return v20;
}

@end