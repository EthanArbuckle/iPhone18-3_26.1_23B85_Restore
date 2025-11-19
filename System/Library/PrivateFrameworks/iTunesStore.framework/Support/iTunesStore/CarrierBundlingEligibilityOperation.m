@interface CarrierBundlingEligibilityOperation
- (BOOL)isDeepLink;
- (CarrierBundlingEligibilityResponse)eligibilityResponse;
- (NSString)cellularProviderName;
- (NSString)mobileSubscriberCountryCode;
- (NSString)mobileSubscriberNetworkCode;
- (NSString)phoneNumber;
- (id)_newDefaultRequestBodyDictionary;
- (id)_newDefaultRequestBodyDictionaryWithResponseCode:(int64_t)a3 error:(id)a4;
- (id)_sendPreflightRequest:(id *)a3;
- (void)_finishEnrichmentWithSessionID:(id)a3 carrierResponse:(id)a4 URLResponse:(id)a5 URLError:(id)a6 outputBlock:(id)a7;
- (void)_finishSilentSMSWithSessionID:(id)a3 responseCode:(int64_t)a4 smsSendingError:(id)a5 outputBlock:(id)a6;
- (void)_sendEnrichmentRequestWithPreflightResponse:(id)a3 outputBlock:(id)a4;
- (void)_sendSilentSMSRequestWithPreflightResponse:(id)a3 outputBlock:(id)a4;
- (void)run;
- (void)setDeepLink:(BOOL)a3;
@end

@implementation CarrierBundlingEligibilityOperation

- (NSString)cellularProviderName
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  v3 = [(NSString *)self->_cellularProviderName copy];
  [(CarrierBundlingEligibilityOperation *)self unlock];

  return v3;
}

- (CarrierBundlingEligibilityResponse)eligibilityResponse
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  v3 = self->_eligibilityResponse;
  [(CarrierBundlingEligibilityOperation *)self unlock];

  return v3;
}

- (BOOL)isDeepLink
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  deepLink = self->_deepLink;
  [(CarrierBundlingEligibilityOperation *)self unlock];
  return deepLink;
}

- (NSString)mobileSubscriberCountryCode
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  v3 = [(NSString *)self->_mobileSubscriberCountryCode copy];
  [(CarrierBundlingEligibilityOperation *)self unlock];

  return v3;
}

- (NSString)mobileSubscriberNetworkCode
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  v3 = [(NSString *)self->_mobileSubscriberNetworkCode copy];
  [(CarrierBundlingEligibilityOperation *)self unlock];

  return v3;
}

- (NSString)phoneNumber
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  v3 = [(NSString *)self->_phoneNumber copy];
  [(CarrierBundlingEligibilityOperation *)self unlock];

  return v3;
}

- (void)setDeepLink:(BOOL)a3
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  self->_deepLink = a3;

  [(CarrierBundlingEligibilityOperation *)self unlock];
}

- (void)run
{
  v4 = +[SSVTelephonyController sharedController];
  v5 = [v4 isPhoneNumberAccessRestricted];

  if (v5)
  {
    sub_1002723F0(a2, self);
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_10013621C;
  v50 = sub_10013622C;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10013621C;
  v44 = sub_10013622C;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v6 = +[ISNetworkObserver sharedInstance];
  v7 = [v6 mobileSubscriberCountryCode];
  v8 = [v6 mobileSubscriberNetworkCode];
  v9 = [v6 providerName];
  v33 = v6;
  v10 = [v6 phoneNumber];
  v11 = +[SSVTelephonyController sharedController];
  v12 = [v11 IMEI];

  [(CarrierBundlingEligibilityOperation *)self lock];
  v13 = [v9 copy];
  cellularProviderName = self->_cellularProviderName;
  self->_cellularProviderName = v13;

  v15 = [v7 copy];
  mobileSubscriberCountryCode = self->_mobileSubscriberCountryCode;
  self->_mobileSubscriberCountryCode = v15;

  v17 = [v8 copy];
  mobileSubscriberNetworkCode = self->_mobileSubscriberNetworkCode;
  self->_mobileSubscriberNetworkCode = v17;

  v19 = [v10 copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v19;

  v21 = [v12 copy];
  IMEI = self->_IMEI;
  self->_IMEI = v21;

  [(CarrierBundlingEligibilityOperation *)self unlock];
  v23 = v10;
  v24 = v9;
  v25 = v8;
  v26 = v7;
  for (i = 0; ; i = v29)
  {
    v28 = (v41 + 5);
    obj = v41[5];
    v29 = [(CarrierBundlingEligibilityOperation *)self _sendPreflightRequest:&obj];
    objc_storeStrong(v28, obj);

    if (![v29 wantsDelayedRetry])
    {
      break;
    }

    [v29 delayInterval];
    [NSThread sleepForTimeInterval:?];
  }

  if (v29)
  {
    v30 = [v29 error];

    if (v30)
    {
      v31 = [v29 error];
      v32 = v41[5];
      v41[5] = v31;
    }

    else
    {
      if ([v29 bundlingStatus] - 1 <= 3)
      {
        objc_storeStrong(v47 + 5, v29);
        *(v37 + 24) = 1;
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100136234;
      v34[3] = &unk_1003297C0;
      v34[4] = &v40;
      v34[5] = &v46;
      v34[6] = &v36;
      v32 = objc_retainBlock(v34);
      if ([v29 needsHeaderEnrichment])
      {
        [(CarrierBundlingEligibilityOperation *)self _sendEnrichmentRequestWithPreflightResponse:v29 outputBlock:v32];
      }

      else if ([v29 needsSilentSMS])
      {
        [(CarrierBundlingEligibilityOperation *)self _sendSilentSMSRequestWithPreflightResponse:v29 outputBlock:v32];
      }
    }
  }

  [(CarrierBundlingEligibilityOperation *)self lock];
  objc_storeStrong(&self->_eligibilityResponse, v47[5]);
  [(CarrierBundlingEligibilityOperation *)self unlock];
  [(CarrierBundlingEligibilityOperation *)self setError:v41[5]];
  [(CarrierBundlingEligibilityOperation *)self setSuccess:*(v37 + 24)];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
}

- (void)_finishEnrichmentWithSessionID:(id)a3 carrierResponse:(id)a4 URLResponse:(id)a5 URLError:(id)a6 outputBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29 = a7;
  v16 = objc_alloc_init(SSMutableURLRequestProperties);
  [v16 setHTTPMethod:@"POST"];
  [v16 setURLBagKey:@"fuseHeaderEnrichmentResponse"];
  [v16 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v30 = v15;
  v17 = -[CarrierBundlingEligibilityOperation _newDefaultRequestBodyDictionaryWithResponseCode:error:](self, "_newDefaultRequestBodyDictionaryWithResponseCode:error:", [v14 statusCode], v15);
  v18 = v17;
  if (v13)
  {
    [v17 setObject:v13 forKey:@"responseMessage"];
  }

  if (v12)
  {
    [v18 setObject:v12 forKey:@"sessionId"];
  }

  v31 = v12;
  if ([(CarrierBundlingEligibilityOperation *)self isDeepLink])
  {
    [v18 setObject:@"true" forKey:@"deepLink"];
  }

  v28 = v18;
  v19 = [NSJSONSerialization dataWithJSONObject:v18 options:0 error:0];
  [v16 setHTTPBody:v19];

  while (1)
  {
    v20 = objc_alloc_init(ISStoreURLOperation);
    v21 = +[DaemonProtocolDataProvider provider];
    [v20 setDataProvider:v21];

    [v20 setRequestProperties:v16];
    v32 = 0;
    LODWORD(v21) = [(CarrierBundlingEligibilityOperation *)self runSubOperation:v20 returningError:&v32];
    v22 = v32;
    v23 = [v20 dataProvider];
    v24 = [v23 output];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v25 = [[CarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:v24];
    }

    else
    {
      v25 = 0;
    }

    if (![(CarrierBundlingEligibilityResponse *)v25 wantsDelayedRetry])
    {
      break;
    }

    [(CarrierBundlingEligibilityResponse *)v25 delayInterval];
    [NSThread sleepForTimeInterval:?];
  }

  v26 = [(CarrierBundlingEligibilityResponse *)v25 error];

  if (v26)
  {
    v27 = [(CarrierBundlingEligibilityResponse *)v25 error];

    v25 = 0;
    v22 = v27;
  }

  v29[2](v29, v25, v22);
}

- (void)_finishSilentSMSWithSessionID:(id)a3 responseCode:(int64_t)a4 smsSendingError:(id)a5 outputBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v26 = a6;
  v12 = objc_alloc_init(SSMutableURLRequestProperties);
  [v12 setHTTPMethod:@"POST"];
  [v12 setURLBagKey:@"fuseHeaderEnrichmentResponse"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v27 = v11;
  v13 = [(CarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionaryWithResponseCode:a4 error:v11];
  v14 = v13;
  if (v10)
  {
    [v13 setObject:v10 forKey:@"sessionId"];
  }

  if ([(CarrierBundlingEligibilityOperation *)self isDeepLink])
  {
    [v14 setObject:@"true" forKey:@"deepLink"];
  }

  v25 = v14;
  v15 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:0];
  [v12 setHTTPBody:v15];

  while (1)
  {
    v16 = objc_alloc_init(ISStoreURLOperation);
    v17 = +[DaemonProtocolDataProvider provider];
    [v16 setDataProvider:v17];

    [v16 setRequestProperties:v12];
    v28 = 0;
    v18 = [(CarrierBundlingEligibilityOperation *)self runSubOperation:v16 returningError:&v28];
    v19 = v28;
    v20 = [v16 dataProvider];
    v21 = [v20 output];

    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = [[CarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:v21];
    }

    else
    {
      v22 = 0;
    }

    if (![(CarrierBundlingEligibilityResponse *)v22 wantsDelayedRetry])
    {
      break;
    }

    [(CarrierBundlingEligibilityResponse *)v22 delayInterval];
    [NSThread sleepForTimeInterval:?];
  }

  v23 = [(CarrierBundlingEligibilityResponse *)v22 error];

  if (v23)
  {
    v24 = [(CarrierBundlingEligibilityResponse *)v22 error];

    v22 = 0;
    v19 = v24;
  }

  v26[2](v26, v22, v19);
}

- (id)_newDefaultRequestBodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CarrierBundlingEligibilityOperation *)self cellularProviderName];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"carrier"];
  }

  v5 = +[ISDevice sharedInstance];
  v6 = [v5 guid];

  if (v6)
  {
    [v3 setObject:v6 forKey:@"guid"];
  }

  v7 = [(CarrierBundlingEligibilityOperation *)self mobileSubscriberCountryCode];

  if (v7)
  {
    [v3 setObject:v7 forKey:@"MCC"];
  }

  v8 = [(CarrierBundlingEligibilityOperation *)self mobileSubscriberNetworkCode];

  if (v8)
  {
    [v3 setObject:v8 forKey:@"MNC"];
  }

  [(CarrierBundlingEligibilityOperation *)self lock];
  v9 = self->_IMEI;

  [(CarrierBundlingEligibilityOperation *)self unlock];
  if (v9)
  {
    [v3 setObject:v9 forKey:@"IMEI"];
  }

  return v3;
}

- (id)_newDefaultRequestBodyDictionaryWithResponseCode:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(CarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionary];
  v8 = [NSString stringWithFormat:@"%ld", a3];
  [v7 setObject:v8 forKey:@"responseCode"];

  if (v6)
  {
    v9 = [v6 domain];

    if (v9)
    {
      v10 = [v6 domain];
      [v7 setObject:v10 forKey:@"error-domain"];
    }

    if ([v6 code])
    {
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
      [v7 setObject:v11 forKey:@"error-code"];
    }

    v12 = [v6 userInfo];
    v13 = [v12 objectForKey:NSLocalizedDescriptionKey];
    if (v13)
    {
      [v7 setObject:v13 forKey:@"error-title"];
    }

    v14 = [v12 objectForKey:NSLocalizedFailureReasonErrorKey];

    if (v14)
    {
      [v7 setObject:v14 forKey:@"error-message"];
    }

    v15 = [v12 objectForKey:NSUnderlyingErrorKey];

    if (v15)
    {
      v16 = [NSString stringWithFormat:@"%@", v15];
      [v7 setObject:v16 forKey:@"error-underlying"];
    }
  }

  return v7;
}

- (void)_sendEnrichmentRequestWithPreflightResponse:(id)a3 outputBlock:(id)a4
{
  v6 = a3;
  v47 = a4;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_10013621C;
  v63 = sub_10013622C;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_10013621C;
  v57 = sub_10013622C;
  v58 = 0;
  v50 = v6;
  v49 = [v6 headerEnrichmentURL];
  if (v49)
  {
    [v6 delayInterval];
    if (v7 > 2.22044605e-16)
    {
      [NSThread sleepForTimeInterval:?];
    }

    applicationID = kSSUserDefaultsIdentifier;
    while (1)
    {
      v8 = objc_alloc_init(ISURLOperation);
      v9 = +[ISDataProvider provider];
      [v8 setDataProvider:v9];

      [v8 _setLoadsHTTPFailures:1];
      v10 = [[SSMutableURLRequestProperties alloc] initWithURL:v49];
      [v10 setHTTPMethod:@"POST"];
      [v10 setITunesStoreRequest:0];
      [v10 setValue:@"ValidateMobile" forHTTPHeaderField:@"SOAPAction"];
      if (MGGetBoolAnswer())
      {
        v11 = CFPreferencesGetAppBooleanValue(@"ISHeaderEnrichmentAllowsWiFi", applicationID, 0) == 0;
      }

      else
      {
        v11 = 1;
      }

      [v10 setRequiresCellularDataNetwork:{v11, v44}];
      v12 = [v50 headerEnrichmentMessage];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 dataUsingEncoding:4];
        [v10 setHTTPBody:v13];
      }

      [v10 setValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
      [v8 setRequestProperties:v10];
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      v15 = [v14 shouldLog];
      v16 = [v14 shouldLogToDisk];
      v17 = [v14 OSLogObject];
      v18 = v17;
      if (v16)
      {
        v19 = v15 | 2;
      }

      else
      {
        v19 = v15;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 2;
      }

      if (v20)
      {
        v21 = objc_opt_class();
        v65 = 138412290;
        v66 = v21;
        v22 = v21;
        LODWORD(v46) = 12;
        v45 = &v65;
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
          goto LABEL_22;
        }

        v18 = [NSString stringWithCString:v23 encoding:4, &v65, v46];
        free(v23);
        v45 = v18;
        SSFileLog();
      }

LABEL_22:
      v24 = (v54 + 5);
      obj = v54[5];
      [(CarrierBundlingEligibilityOperation *)self runSubOperation:v8 returningError:&obj];
      objc_storeStrong(v24, obj);
      v25 = [v8 response];
      if (v25)
      {
        v26 = 0;
LABEL_24:
        v27 = [v50 headerEnrichmentSessionIdentifier];
        v28 = [v8 dataProvider];
        v29 = [v28 output];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [[NSString alloc] initWithData:v29 encoding:4];
        }

        else
        {
          v30 = 0;
        }

        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10013740C;
        v51[3] = &unk_1003297E8;
        v51[4] = &v53;
        v51[5] = &v59;
        [(CarrierBundlingEligibilityOperation *)self _finishEnrichmentWithSessionID:v27 carrierResponse:v30 URLResponse:v25 URLError:v26 outputBlock:v51];

        goto LABEL_32;
      }

      v31 = [v54[5] domain];
      v32 = [v31 isEqualToString:NSURLErrorDomain];

      if (!v32)
      {
        v25 = 0;
        v26 = 0;
        goto LABEL_32;
      }

      v25 = [[NSHTTPURLResponse alloc] initWithURL:v49 statusCode:400 HTTPVersion:@"HTTP/1.1" headerFields:0];
      v26 = [v54[5] copy];
      if (v25)
      {
        goto LABEL_24;
      }

LABEL_32:
      if (![v60[5] needsHeaderEnrichment])
      {

        goto LABEL_48;
      }

      v33 = +[SSLogConfig sharedDaemonConfig];
      if (!v33)
      {
        v33 = +[SSLogConfig sharedConfig];
      }

      v34 = [v33 shouldLog];
      v35 = [v33 shouldLogToDisk];
      v36 = [v33 OSLogObject];
      v37 = v36;
      if (v35)
      {
        v38 = v34 | 2;
      }

      else
      {
        v38 = v34;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 2;
      }

      if (v39)
      {
        v40 = objc_opt_class();
        v65 = 138412290;
        v66 = v40;
        v41 = v40;
        LODWORD(v46) = 12;
        v44 = &v65;
        v42 = _os_log_send_and_compose_impl();

        if (!v42)
        {
          goto LABEL_45;
        }

        v37 = [NSString stringWithCString:v42 encoding:4, &v65, v46];
        free(v42);
        v44 = v37;
        SSFileLog();
      }

LABEL_45:
      [v60[5] delayInterval];
      [NSThread sleepForTimeInterval:?];
    }
  }

  v43 = SSError();
  v8 = v54[5];
  v54[5] = v43;
LABEL_48:

  if (v47)
  {
    v47[2](v47, v60[5], v54[5]);
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);
}

- (id)_sendPreflightRequest:(id *)a3
{
  v5 = objc_alloc_init(ISLoadURLBagOperation);
  v45 = 0;
  [(CarrierBundlingEligibilityOperation *)self runSubOperation:v5 returningError:&v45];
  v6 = v45;
  v7 = [v5 URLBag];
  v8 = [v7 urlForKey:@"fuseHeaderEnrichment"];
  v9 = v8;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (!v10 && v8 == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v27 |= 2u;
    }

    v28 = [v26 OSLogObject];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v29 = objc_opt_class();
      v46 = 138412290;
      v47 = v29;
      v30 = v29;
      LODWORD(v39) = 12;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_34:

        v32 = objc_alloc_init(CarrierBundlingEligibilityResponse);
        [(CarrierBundlingEligibilityResponse *)v32 setBundlingStatus:2];
        v33 = 0;
        goto LABEL_44;
      }

      v28 = [NSString stringWithCString:v31 encoding:4, &v46, v39];
      free(v31);
      SSFileLog();
    }

    goto LABEL_34;
  }

  if (!v8)
  {
    v33 = SSError();
    v32 = 0;
    goto LABEL_44;
  }

  v12 = objc_alloc_init(ISStoreURLOperation);
  v13 = +[DaemonProtocolDataProvider provider];
  [v12 setDataProvider:v13];

  [v12 setMachineDataStyle:3];
  v14 = [[SSMutableURLRequestProperties alloc] initWithURL:v9];
  [v14 setHTTPMethod:@"POST"];
  [v14 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v15 = [(CarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionary];
  v16 = [(CarrierBundlingEligibilityOperation *)self phoneNumber];
  if (v16)
  {
    [v15 setObject:v16 forKey:@"phoneNumber"];
  }

  v40 = v16;
  if ([(CarrierBundlingEligibilityOperation *)self isDeepLink])
  {
    [v15 setObject:@"true" forKey:@"deepLink"];
  }

  v42 = a3;
  v43 = v6;
  v41 = v15;
  v17 = [NSJSONSerialization dataWithJSONObject:v15 options:0 error:0];
  [v14 setHTTPBody:v17];

  [v12 setRequestProperties:v14];
  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  v19 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v18 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 2;
  }

  if (!v22)
  {
    v6 = v43;
    goto LABEL_37;
  }

  v23 = objc_opt_class();
  v46 = 138412290;
  v47 = v23;
  v24 = v23;
  LODWORD(v39) = 12;
  v25 = _os_log_send_and_compose_impl();

  v6 = v43;
  if (v25)
  {
    v21 = [NSString stringWithCString:v25 encoding:4, &v46, v39];
    free(v25);
    SSFileLog();
LABEL_37:
  }

  v44 = 0;
  v34 = [(CarrierBundlingEligibilityOperation *)self runSubOperation:v12 returningError:&v44];
  v33 = v44;
  v32 = 0;
  a3 = v42;
  if (v34)
  {
    v35 = [v12 dataProvider];
    v36 = [v35 output];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[CarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:v36];
    }

    else
    {
      v32 = 0;
    }

    v6 = v43;
  }

LABEL_44:
  if (a3 && !v32)
  {
    v37 = v33;
    *a3 = v33;
  }

  return v32;
}

- (void)_sendSilentSMSRequestWithPreflightResponse:(id)a3 outputBlock:(id)a4
{
  v6 = a3;
  v47 = a4;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_10013621C;
  v61 = sub_10013622C;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10013621C;
  v55 = sub_10013622C;
  v56 = 0;
  v48 = [v6 silentSMSMessage];
  v7 = [v6 silentSMSNumber];
  v8 = v7;
  if (!v48 || !v7)
  {
    v43 = SSError();
    v12 = v52[5];
    v52[5] = v43;
    goto LABEL_49;
  }

  [v6 delayInterval];
  if (v9 > 2.22044605e-16)
  {
    [NSThread sleepForTimeInterval:?];
  }

  while (1)
  {
    v10 = +[SSVTelephonyController sharedController];
    v50 = 0;
    v11 = [v10 sendSMSWithText:v48 toPhoneNumber:v8 countryCode:0 error:&v50];
    v12 = v50;

    if (v11)
    {
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = [v13 shouldLog];
      v15 = [v13 shouldLogToDisk];
      v16 = [v13 OSLogObject];
      v17 = v16;
      if (v15)
      {
        v18 = v14 | 2;
      }

      else
      {
        v18 = v14;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 2;
      }

      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = objc_opt_class();
      v63 = 138412290;
      v64 = v20;
      v21 = v20;
      LODWORD(v46) = 12;
      v45 = &v63;
      v22 = _os_log_send_and_compose_impl();

      if (v22)
      {
        v17 = [NSString stringWithCString:v22 encoding:4, &v63, v46];
        free(v22);
        v45 = v17;
        SSFileLog();
LABEL_17:
        v23 = 200;
        goto LABEL_30;
      }

      v23 = 200;
    }

    else
    {
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v24 = [v13 shouldLog];
      v25 = [v13 shouldLogToDisk];
      v26 = [v13 OSLogObject];
      v17 = v26;
      if (v25)
      {
        v27 = v24 | 2;
      }

      else
      {
        v27 = v24;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 2;
      }

      if (!v28)
      {
        goto LABEL_29;
      }

      v29 = objc_opt_class();
      v63 = 138412290;
      v64 = v29;
      v30 = v29;
      LODWORD(v46) = 12;
      v45 = &v63;
      v31 = _os_log_send_and_compose_impl();

      if (v31)
      {
        v17 = [NSString stringWithCString:v31 encoding:4, &v63, v46];
        free(v31);
        v45 = v17;
        SSFileLog();
LABEL_29:
        v23 = 460;
LABEL_30:

        goto LABEL_31;
      }

      v23 = 460;
    }

LABEL_31:

    v32 = [v6 headerEnrichmentSessionIdentifier];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10013813C;
    v49[3] = &unk_1003297E8;
    v49[4] = &v51;
    v49[5] = &v57;
    [(CarrierBundlingEligibilityOperation *)self _finishSilentSMSWithSessionID:v32 responseCode:v23 smsSendingError:v12 outputBlock:v49];
    if (![v58[5] needsSilentSMS])
    {
      break;
    }

    v33 = +[SSLogConfig sharedDaemonConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    v34 = [v33 shouldLog];
    v35 = [v33 shouldLogToDisk];
    v36 = [v33 OSLogObject];
    v37 = v36;
    if (v35)
    {
      v38 = v34 | 2;
    }

    else
    {
      v38 = v34;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 2;
    }

    if (v39)
    {
      v40 = objc_opt_class();
      v63 = 138412290;
      v64 = v40;
      v41 = v40;
      LODWORD(v46) = 12;
      v44 = &v63;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
        goto LABEL_44;
      }

      v37 = [NSString stringWithCString:v42 encoding:4, &v63, v46];
      free(v42);
      v44 = v37;
      SSFileLog();
    }

LABEL_44:
    [v58[5] delayInterval];
    [NSThread sleepForTimeInterval:?];
  }

LABEL_49:
  if (v47)
  {
    v47[2](v47, v58[5], v52[5]);
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
}

@end