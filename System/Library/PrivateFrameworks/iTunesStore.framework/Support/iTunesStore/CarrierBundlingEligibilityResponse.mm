@interface CarrierBundlingEligibilityResponse
- (CarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)dictionary;
@end

@implementation CarrierBundlingEligibilityResponse

- (CarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = CarrierBundlingEligibilityResponse;
  v5 = [(CarrierBundlingEligibilityResponse *)&v40 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [dictionaryCopy objectForKey:@"failureType"];
  v7 = [dictionaryCopy objectForKey:@"status"];
  v8 = [dictionaryCopy objectForKey:@"errorCode"];
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
    error = [dictionaryCopy objectForKey:@"fuseCarrierBundleStatus"];
    if (objc_opt_respondsToSelector())
    {
      integerValue = [error integerValue];
    }

    else
    {
      v35 = [dictionaryCopy objectForKey:@"checkBack"];
      v38 = [dictionaryCopy objectForKey:@"startFuseHeaderEnrichment"];
      v39 = [dictionaryCopy objectForKey:@"startFuseManualSms"];
      v36 = [dictionaryCopy objectForKey:@"hasFuseCarrierBundleSubscription"];
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v35 BOOLValue])
      {
        integerValue = 6;
      }

      else if (objc_opt_respondsToSelector() & 1) != 0 && ([v36 BOOLValue])
      {
        integerValue = 1;
      }

      else if (objc_opt_respondsToSelector() & 1) != 0 && ([v39 BOOLValue])
      {
        integerValue = 5;
      }

      else if (objc_opt_respondsToSelector())
      {
        if ([v38 BOOLValue])
        {
          integerValue = 4;
        }

        else
        {
          integerValue = 2;
        }
      }

      else
      {
        integerValue = 2;
      }
    }

    if (integerValue <= 3)
    {
      if (integerValue == 1)
      {
        v37 = 1;
      }

      else
      {
        if (integerValue != 2)
        {
          if (integerValue == 3)
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
      if (integerValue > 5)
      {
        if (integerValue == 6)
        {
          v5->_bundlingStatus = 0;
          v5->_wantsDelayedRetry = 1;
        }

        else if (integerValue == 7)
        {
          v5->_bundlingStatus = 0;
          v5->_needsSilentSMS = 1;
        }

        goto LABEL_8;
      }

      if (integerValue == 4)
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

  v12 = [dictionaryCopy objectForKey:@"fuseHeaderEnrichmentMessage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 copy];
    headerEnrichmentMessage = v5->_headerEnrichmentMessage;
    v5->_headerEnrichmentMessage = v13;
  }

  v15 = [dictionaryCopy objectForKey:@"fuseHeaderEnrichmentSessionId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 copy];
    headerEnrichmentSessionIdentifier = v5->_headerEnrichmentSessionIdentifier;
    v5->_headerEnrichmentSessionIdentifier = v16;
  }

  v18 = [dictionaryCopy objectForKey:@"fuseHeaderEnrichmentUrl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [[NSURL alloc] initWithString:v18];
    headerEnrichmentURL = v5->_headerEnrichmentURL;
    v5->_headerEnrichmentURL = v19;
  }

  v21 = [dictionaryCopy objectForKey:@"fuseSilentSMSMessage"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v21 copy];
    silentSMSMessage = v5->_silentSMSMessage;
    v5->_silentSMSMessage = v22;
  }

  v24 = [dictionaryCopy objectForKey:@"fuseSilentSMSNumber"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v24 copy];
    silentSMSNumber = v5->_silentSMSNumber;
    v5->_silentSMSNumber = v25;
  }

  v27 = [dictionaryCopy objectForKey:@"fuseSmsSessionId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 copy];
    smsSessionIdentifier = v5->_smsSessionIdentifier;
    v5->_smsSessionIdentifier = v28;
  }

  v30 = [dictionaryCopy objectForKey:@"waitTime"];
  if (objc_opt_respondsToSelector())
  {
    [v30 doubleValue];
    v5->_delayInterval = v31 / 1000.0;
  }

  v32 = [dictionaryCopy objectForKey:@"isFamily"];
  if (objc_opt_respondsToSelector())
  {
    v5->_familySubscription = [v32 BOOLValue];
  }

LABEL_25:
  return v5;
}

@end