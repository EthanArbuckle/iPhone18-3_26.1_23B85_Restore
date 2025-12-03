@interface CarrierBundlingEligibilityOperation
- (BOOL)isDeepLink;
- (CarrierBundlingEligibilityResponse)eligibilityResponse;
- (NSString)cellularProviderName;
- (NSString)mobileSubscriberCountryCode;
- (NSString)mobileSubscriberNetworkCode;
- (NSString)phoneNumber;
- (id)_newDefaultRequestBodyDictionary;
- (id)_newDefaultRequestBodyDictionaryWithResponseCode:(int64_t)code error:(id)error;
- (id)_sendPreflightRequest:(id *)request;
- (void)_finishEnrichmentWithSessionID:(id)d carrierResponse:(id)response URLResponse:(id)lResponse URLError:(id)error outputBlock:(id)block;
- (void)_finishSilentSMSWithSessionID:(id)d responseCode:(int64_t)code smsSendingError:(id)error outputBlock:(id)block;
- (void)_sendEnrichmentRequestWithPreflightResponse:(id)response outputBlock:(id)block;
- (void)_sendSilentSMSRequestWithPreflightResponse:(id)response outputBlock:(id)block;
- (void)run;
- (void)setDeepLink:(BOOL)link;
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

- (void)setDeepLink:(BOOL)link
{
  [(CarrierBundlingEligibilityOperation *)self lock];
  self->_deepLink = link;

  [(CarrierBundlingEligibilityOperation *)self unlock];
}

- (void)run
{
  v4 = +[SSVTelephonyController sharedController];
  isPhoneNumberAccessRestricted = [v4 isPhoneNumberAccessRestricted];

  if (isPhoneNumberAccessRestricted)
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
  mobileSubscriberCountryCode = [v6 mobileSubscriberCountryCode];
  mobileSubscriberNetworkCode = [v6 mobileSubscriberNetworkCode];
  providerName = [v6 providerName];
  v33 = v6;
  phoneNumber = [v6 phoneNumber];
  v11 = +[SSVTelephonyController sharedController];
  iMEI = [v11 IMEI];

  [(CarrierBundlingEligibilityOperation *)self lock];
  v13 = [providerName copy];
  cellularProviderName = self->_cellularProviderName;
  self->_cellularProviderName = v13;

  v15 = [mobileSubscriberCountryCode copy];
  mobileSubscriberCountryCode = self->_mobileSubscriberCountryCode;
  self->_mobileSubscriberCountryCode = v15;

  v17 = [mobileSubscriberNetworkCode copy];
  mobileSubscriberNetworkCode = self->_mobileSubscriberNetworkCode;
  self->_mobileSubscriberNetworkCode = v17;

  v19 = [phoneNumber copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v19;

  v21 = [iMEI copy];
  IMEI = self->_IMEI;
  self->_IMEI = v21;

  [(CarrierBundlingEligibilityOperation *)self unlock];
  v23 = phoneNumber;
  v24 = providerName;
  v25 = mobileSubscriberNetworkCode;
  v26 = mobileSubscriberCountryCode;
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
    error = [v29 error];

    if (error)
    {
      error2 = [v29 error];
      v32 = v41[5];
      v41[5] = error2;
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

- (void)_finishEnrichmentWithSessionID:(id)d carrierResponse:(id)response URLResponse:(id)lResponse URLError:(id)error outputBlock:(id)block
{
  dCopy = d;
  responseCopy = response;
  lResponseCopy = lResponse;
  errorCopy = error;
  blockCopy = block;
  v16 = objc_alloc_init(SSMutableURLRequestProperties);
  [v16 setHTTPMethod:@"POST"];
  [v16 setURLBagKey:@"fuseHeaderEnrichmentResponse"];
  [v16 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v30 = errorCopy;
  v17 = -[CarrierBundlingEligibilityOperation _newDefaultRequestBodyDictionaryWithResponseCode:error:](self, "_newDefaultRequestBodyDictionaryWithResponseCode:error:", [lResponseCopy statusCode], errorCopy);
  v18 = v17;
  if (responseCopy)
  {
    [v17 setObject:responseCopy forKey:@"responseMessage"];
  }

  if (dCopy)
  {
    [v18 setObject:dCopy forKey:@"sessionId"];
  }

  v31 = dCopy;
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
    dataProvider = [v20 dataProvider];
    output = [dataProvider output];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v25 = [[CarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:output];
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

  error = [(CarrierBundlingEligibilityResponse *)v25 error];

  if (error)
  {
    error2 = [(CarrierBundlingEligibilityResponse *)v25 error];

    v25 = 0;
    v22 = error2;
  }

  blockCopy[2](blockCopy, v25, v22);
}

- (void)_finishSilentSMSWithSessionID:(id)d responseCode:(int64_t)code smsSendingError:(id)error outputBlock:(id)block
{
  dCopy = d;
  errorCopy = error;
  blockCopy = block;
  v12 = objc_alloc_init(SSMutableURLRequestProperties);
  [v12 setHTTPMethod:@"POST"];
  [v12 setURLBagKey:@"fuseHeaderEnrichmentResponse"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v27 = errorCopy;
  v13 = [(CarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionaryWithResponseCode:code error:errorCopy];
  v14 = v13;
  if (dCopy)
  {
    [v13 setObject:dCopy forKey:@"sessionId"];
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
    dataProvider = [v16 dataProvider];
    output = [dataProvider output];

    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = [[CarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:output];
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

  error = [(CarrierBundlingEligibilityResponse *)v22 error];

  if (error)
  {
    error2 = [(CarrierBundlingEligibilityResponse *)v22 error];

    v22 = 0;
    v19 = error2;
  }

  blockCopy[2](blockCopy, v22, v19);
}

- (id)_newDefaultRequestBodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  cellularProviderName = [(CarrierBundlingEligibilityOperation *)self cellularProviderName];
  if (cellularProviderName)
  {
    [v3 setObject:cellularProviderName forKey:@"carrier"];
  }

  v5 = +[ISDevice sharedInstance];
  guid = [v5 guid];

  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  mobileSubscriberCountryCode = [(CarrierBundlingEligibilityOperation *)self mobileSubscriberCountryCode];

  if (mobileSubscriberCountryCode)
  {
    [v3 setObject:mobileSubscriberCountryCode forKey:@"MCC"];
  }

  mobileSubscriberNetworkCode = [(CarrierBundlingEligibilityOperation *)self mobileSubscriberNetworkCode];

  if (mobileSubscriberNetworkCode)
  {
    [v3 setObject:mobileSubscriberNetworkCode forKey:@"MNC"];
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

- (id)_newDefaultRequestBodyDictionaryWithResponseCode:(int64_t)code error:(id)error
{
  errorCopy = error;
  _newDefaultRequestBodyDictionary = [(CarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionary];
  code = [NSString stringWithFormat:@"%ld", code];
  [_newDefaultRequestBodyDictionary setObject:code forKey:@"responseCode"];

  if (errorCopy)
  {
    domain = [errorCopy domain];

    if (domain)
    {
      domain2 = [errorCopy domain];
      [_newDefaultRequestBodyDictionary setObject:domain2 forKey:@"error-domain"];
    }

    if ([errorCopy code])
    {
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      [_newDefaultRequestBodyDictionary setObject:v11 forKey:@"error-code"];
    }

    userInfo = [errorCopy userInfo];
    v13 = [userInfo objectForKey:NSLocalizedDescriptionKey];
    if (v13)
    {
      [_newDefaultRequestBodyDictionary setObject:v13 forKey:@"error-title"];
    }

    v14 = [userInfo objectForKey:NSLocalizedFailureReasonErrorKey];

    if (v14)
    {
      [_newDefaultRequestBodyDictionary setObject:v14 forKey:@"error-message"];
    }

    v15 = [userInfo objectForKey:NSUnderlyingErrorKey];

    if (v15)
    {
      v16 = [NSString stringWithFormat:@"%@", v15];
      [_newDefaultRequestBodyDictionary setObject:v16 forKey:@"error-underlying"];
    }
  }

  return _newDefaultRequestBodyDictionary;
}

- (void)_sendEnrichmentRequestWithPreflightResponse:(id)response outputBlock:(id)block
{
  responseCopy = response;
  blockCopy = block;
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
  v50 = responseCopy;
  headerEnrichmentURL = [responseCopy headerEnrichmentURL];
  if (headerEnrichmentURL)
  {
    [responseCopy delayInterval];
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
      v10 = [[SSMutableURLRequestProperties alloc] initWithURL:headerEnrichmentURL];
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
      headerEnrichmentMessage = [v50 headerEnrichmentMessage];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [headerEnrichmentMessage dataUsingEncoding:4];
        [v10 setHTTPBody:v13];
      }

      [v10 setValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
      [v8 setRequestProperties:v10];
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v14 shouldLog];
      shouldLogToDisk = [v14 shouldLogToDisk];
      oSLogObject = [v14 OSLogObject];
      v18 = oSLogObject;
      if (shouldLogToDisk)
      {
        v19 = shouldLog | 2;
      }

      else
      {
        v19 = shouldLog;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      response = [v8 response];
      if (response)
      {
        v26 = 0;
LABEL_24:
        headerEnrichmentSessionIdentifier = [v50 headerEnrichmentSessionIdentifier];
        dataProvider = [v8 dataProvider];
        output = [dataProvider output];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [[NSString alloc] initWithData:output encoding:4];
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
        [(CarrierBundlingEligibilityOperation *)self _finishEnrichmentWithSessionID:headerEnrichmentSessionIdentifier carrierResponse:v30 URLResponse:response URLError:v26 outputBlock:v51];

        goto LABEL_32;
      }

      domain = [v54[5] domain];
      v32 = [domain isEqualToString:NSURLErrorDomain];

      if (!v32)
      {
        response = 0;
        v26 = 0;
        goto LABEL_32;
      }

      response = [[NSHTTPURLResponse alloc] initWithURL:headerEnrichmentURL statusCode:400 HTTPVersion:@"HTTP/1.1" headerFields:0];
      v26 = [v54[5] copy];
      if (response)
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

      shouldLog2 = [v33 shouldLog];
      shouldLogToDisk2 = [v33 shouldLogToDisk];
      oSLogObject2 = [v33 OSLogObject];
      v37 = oSLogObject2;
      if (shouldLogToDisk2)
      {
        v38 = shouldLog2 | 2;
      }

      else
      {
        v38 = shouldLog2;
      }

      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v60[5], v54[5]);
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);
}

- (id)_sendPreflightRequest:(id *)request
{
  v5 = objc_alloc_init(ISLoadURLBagOperation);
  v45 = 0;
  [(CarrierBundlingEligibilityOperation *)self runSubOperation:v5 returningError:&v45];
  v6 = v45;
  uRLBag = [v5 URLBag];
  v8 = [uRLBag urlForKey:@"fuseHeaderEnrichment"];
  v9 = v8;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = uRLBag == 0;
  }

  if (!v10 && v8 == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v26 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
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

      oSLogObject = [NSString stringWithCString:v31 encoding:4, &v46, v39];
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
  _newDefaultRequestBodyDictionary = [(CarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionary];
  phoneNumber = [(CarrierBundlingEligibilityOperation *)self phoneNumber];
  if (phoneNumber)
  {
    [_newDefaultRequestBodyDictionary setObject:phoneNumber forKey:@"phoneNumber"];
  }

  v40 = phoneNumber;
  if ([(CarrierBundlingEligibilityOperation *)self isDeepLink])
  {
    [_newDefaultRequestBodyDictionary setObject:@"true" forKey:@"deepLink"];
  }

  requestCopy = request;
  v43 = v6;
  v41 = _newDefaultRequestBodyDictionary;
  v17 = [NSJSONSerialization dataWithJSONObject:_newDefaultRequestBodyDictionary options:0 error:0];
  [v14 setHTTPBody:v17];

  [v12 setRequestProperties:v14];
  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = shouldLog2 | 2;
  }

  else
  {
    v20 = shouldLog2;
  }

  oSLogObject2 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
    oSLogObject2 = [NSString stringWithCString:v25 encoding:4, &v46, v39];
    free(v25);
    SSFileLog();
LABEL_37:
  }

  v44 = 0;
  v34 = [(CarrierBundlingEligibilityOperation *)self runSubOperation:v12 returningError:&v44];
  v33 = v44;
  v32 = 0;
  request = requestCopy;
  if (v34)
  {
    dataProvider = [v12 dataProvider];
    output = [dataProvider output];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[CarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:output];
    }

    else
    {
      v32 = 0;
    }

    v6 = v43;
  }

LABEL_44:
  if (request && !v32)
  {
    v37 = v33;
    *request = v33;
  }

  return v32;
}

- (void)_sendSilentSMSRequestWithPreflightResponse:(id)response outputBlock:(id)block
{
  responseCopy = response;
  blockCopy = block;
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
  silentSMSMessage = [responseCopy silentSMSMessage];
  silentSMSNumber = [responseCopy silentSMSNumber];
  v8 = silentSMSNumber;
  if (!silentSMSMessage || !silentSMSNumber)
  {
    v43 = SSError();
    v12 = v52[5];
    v52[5] = v43;
    goto LABEL_49;
  }

  [responseCopy delayInterval];
  if (v9 > 2.22044605e-16)
  {
    [NSThread sleepForTimeInterval:?];
  }

  while (1)
  {
    v10 = +[SSVTelephonyController sharedController];
    v50 = 0;
    v11 = [v10 sendSMSWithText:silentSMSMessage toPhoneNumber:v8 countryCode:0 error:&v50];
    v12 = v50;

    if (v11)
    {
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v13 shouldLog];
      shouldLogToDisk = [v13 shouldLogToDisk];
      oSLogObject = [v13 OSLogObject];
      v17 = oSLogObject;
      if (shouldLogToDisk)
      {
        v18 = shouldLog | 2;
      }

      else
      {
        v18 = shouldLog;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

      shouldLog2 = [v13 shouldLog];
      shouldLogToDisk2 = [v13 shouldLogToDisk];
      oSLogObject2 = [v13 OSLogObject];
      v17 = oSLogObject2;
      if (shouldLogToDisk2)
      {
        v27 = shouldLog2 | 2;
      }

      else
      {
        v27 = shouldLog2;
      }

      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

    headerEnrichmentSessionIdentifier = [responseCopy headerEnrichmentSessionIdentifier];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10013813C;
    v49[3] = &unk_1003297E8;
    v49[4] = &v51;
    v49[5] = &v57;
    [(CarrierBundlingEligibilityOperation *)self _finishSilentSMSWithSessionID:headerEnrichmentSessionIdentifier responseCode:v23 smsSendingError:v12 outputBlock:v49];
    if (![v58[5] needsSilentSMS])
    {
      break;
    }

    v33 = +[SSLogConfig sharedDaemonConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v33 shouldLog];
    shouldLogToDisk3 = [v33 shouldLogToDisk];
    oSLogObject3 = [v33 OSLogObject];
    v37 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      v38 = shouldLog3 | 2;
    }

    else
    {
      v38 = shouldLog3;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v58[5], v52[5]);
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
}

@end