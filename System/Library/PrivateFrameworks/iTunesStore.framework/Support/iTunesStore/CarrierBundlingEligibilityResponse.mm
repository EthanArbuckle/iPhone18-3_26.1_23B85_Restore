@interface CarrierBundlingEligibilityResponse
- (CarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)a3;
@end

@implementation CarrierBundlingEligibilityResponse

- (CarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = CarrierBundlingEligibilityResponse;
  v5 = [(CarrierBundlingEligibilityResponse *)&v40 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [v4 objectForKey:@"failureType"];
  v7 = [v4 objectForKey:@"status"];
  v8 = [v4 objectForKey:@"errorCode"];
  if ([v7 integerValue])
  {
    v9 = v7;
LABEL_6:
    [v9 integerValue];
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = v6;
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    error = [v4 objectForKey:@"fuseCarrierBundleStatus"];
    if (objc_opt_respondsToSelector())
    {
      v34 = [error integerValue];
    }

    else
    {
      v35 = [v4 objectForKey:@"checkBack"];
      v38 = [v4 objectForKey:@"startFuseHeaderEnrichment"];
      v39 = [v4 objectForKey:@"startFuseManualSms"];
      v36 = [v4 objectForKey:@"hasFuseCarrierBundleSubscription"];
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v35 BOOLValue])
      {
        v34 = 6;
      }

      else if (objc_opt_respondsToSelector() & 1) != 0 && ([v36 BOOLValue])
      {
        v34 = 1;
      }

      else if (objc_opt_respondsToSelector() & 1) != 0 && ([v39 BOOLValue])
      {
        v34 = 5;
      }

      else if (objc_opt_respondsToSelector())
      {
        if ([v38 BOOLValue])
        {
          v34 = 4;
        }

        else
        {
          v34 = 2;
        }
      }

      else
      {
        v34 = 2;
      }
    }

    if (v34 <= 3)
    {
      if (v34 == 1)
      {
        v37 = 1;
      }

      else
      {
        if (v34 != 2)
        {
          if (v34 == 3)
          {
            v5->_bundlingStatus = 0;
          }

          goto LABEL_8;
        }

        v37 = 2;
      }
    }

    else
    {
      if (v34 > 5)
      {
        if (v34 == 6)
        {
          v5->_bundlingStatus = 0;
          v5->_wantsDelayedRetry = 1;
        }

        else if (v34 == 7)
        {
          v5->_bundlingStatus = 0;
          v5->_needsSilentSMS = 1;
        }

        goto LABEL_8;
      }

      if (v34 == 4)
      {
        v5->_bundlingStatus = 0;
        v5->_needsHeaderEnrichment = 1;
        goto LABEL_8;
      }

      v37 = 3;
    }

    v5->_bundlingStatus = v37;
    goto LABEL_8;
  }

  [v8 integerValue];
LABEL_7:
  v10 = SSError();
  error = v5->_error;
  v5->_error = v10;
LABEL_8:

  v12 = [v4 objectForKey:@"fuseHeaderEnrichmentMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 copy];
    headerEnrichmentMessage = v5->_headerEnrichmentMessage;
    v5->_headerEnrichmentMessage = v13;
  }

  v15 = [v4 objectForKey:@"fuseHeaderEnrichmentSessionId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 copy];
    headerEnrichmentSessionIdentifier = v5->_headerEnrichmentSessionIdentifier;
    v5->_headerEnrichmentSessionIdentifier = v16;
  }

  v18 = [v4 objectForKey:@"fuseHeaderEnrichmentUrl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [[NSURL alloc] initWithString:v18];
    headerEnrichmentURL = v5->_headerEnrichmentURL;
    v5->_headerEnrichmentURL = v19;
  }

  v21 = [v4 objectForKey:@"fuseSilentSMSMessage"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v21 copy];
    silentSMSMessage = v5->_silentSMSMessage;
    v5->_silentSMSMessage = v22;
  }

  v24 = [v4 objectForKey:@"fuseSilentSMSNumber"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v24 copy];
    silentSMSNumber = v5->_silentSMSNumber;
    v5->_silentSMSNumber = v25;
  }

  v27 = [v4 objectForKey:@"fuseSmsSessionId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 copy];
    smsSessionIdentifier = v5->_smsSessionIdentifier;
    v5->_smsSessionIdentifier = v28;
  }

  v30 = [v4 objectForKey:@"waitTime"];
  if (objc_opt_respondsToSelector())
  {
    [v30 doubleValue];
    v5->_delayInterval = v31 / 1000.0;
  }

  v32 = [v4 objectForKey:@"isFamily"];
  if (objc_opt_respondsToSelector())
  {
    v5->_familySubscription = [v32 BOOLValue];
  }

LABEL_25:
  return v5;
}

@end