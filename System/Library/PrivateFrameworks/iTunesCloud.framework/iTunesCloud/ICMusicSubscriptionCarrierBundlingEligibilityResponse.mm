@interface ICMusicSubscriptionCarrierBundlingEligibilityResponse
- (ICMusicSubscriptionCarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)a3 cellularProviderName:(id)a4 phoneNumber:(id)a5;
@end

@implementation ICMusicSubscriptionCarrierBundlingEligibilityResponse

- (ICMusicSubscriptionCarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)a3 cellularProviderName:(id)a4 phoneNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v60.receiver = self;
  v60.super_class = ICMusicSubscriptionCarrierBundlingEligibilityResponse;
  v11 = [(ICMusicSubscriptionCarrierBundlingEligibilityResponse *)&v60 init];
  if (!v11)
  {
    goto LABEL_62;
  }

  v12 = [v8 objectForKey:@"failureType"];
  v13 = [v8 objectForKey:@"status"];
  v14 = [v8 objectForKey:@"errorCode"];
  v59 = v10;
  v57 = v13;
  v58 = v12;
  v56 = v14;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 integerValue])
  {
    v15 = &ICStoreServerErrorDomain;
    v12 = v13;
  }

  else if (objc_opt_respondsToSelector())
  {
    v15 = &ICStoreServerErrorDomain;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v17 = 0;
LABEL_12:
      v16 = [v8 objectForKey:@"fuseCarrierBundleStatus"];
      if (objc_opt_respondsToSelector())
      {
        v21 = [v16 integerValue];
      }

      else
      {
        v22 = [v8 objectForKey:@"checkBack"];
        v23 = [v8 objectForKey:@"startFuseHeaderEnrichment"];
        v24 = [v8 objectForKey:@"startFuseManualSms"];
        v25 = [v8 objectForKey:@"hasFuseCarrierBundleSubscription"];
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v22 BOOLValue])
        {
          v21 = 6;
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && ([v25 BOOLValue])
        {
          v21 = 1;
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && ([v24 BOOLValue])
        {
          v21 = 5;
        }

        else if (objc_opt_respondsToSelector())
        {
          if ([v23 BOOLValue])
          {
            v21 = 4;
          }

          else
          {
            v21 = 2;
          }
        }

        else
        {
          v21 = 2;
        }
      }

      if (v21 <= 3)
      {
        if (v21 == 1)
        {
          v26 = 1;
        }

        else
        {
          if (v21 != 2)
          {
            if (v21 == 3)
            {
              v11->_carrierBundlingStatusType = 0;
            }

            goto LABEL_45;
          }

          v26 = 3;
        }
      }

      else
      {
        if (v21 > 5)
        {
          if (v21 == 6)
          {
            v11->_carrierBundlingStatusType = 0;
            v11->_wantsDelayedRetry = 1;
          }

          else if (v21 == 7)
          {
            v11->_carrierBundlingStatusType = 0;
            v11->_needsSilentSMS = 1;
          }

          goto LABEL_45;
        }

        if (v21 == 4)
        {
          v11->_carrierBundlingStatusType = 0;
          v11->_needsHeaderEnrichment = 1;
          goto LABEL_45;
        }

        v26 = 4;
      }

      v11->_carrierBundlingStatusType = v26;
      goto LABEL_45;
    }

    v15 = &ICMusicSubscriptionCarrierBundlingServerErrorDomain;
    v12 = v14;
  }

  v16 = v12;
  v17 = *v15;
  if (!v16)
  {
    goto LABEL_12;
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:v17 code:objc_msgSend(v16 userInfo:{"integerValue"), 0}];
  v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7601 underlyingError:v18 debugDescription:{@"Eligibility response not valid %@", v8}];
  error = v11->_error;
  v11->_error = v19;

LABEL_45:
  v27 = [v8 objectForKey:@"fuseHeaderEnrichmentMessage"];
  if (_NSIsNSString())
  {
    v28 = [v27 copy];
    headerEnrichmentMessage = v11->_headerEnrichmentMessage;
    v11->_headerEnrichmentMessage = v28;
  }

  v30 = [v8 objectForKey:@"fuseHeaderEnrichmentSessionId"];
  if (_NSIsNSString())
  {
    v31 = [v30 copy];
    headerEnrichmentSessionIdentifier = v11->_headerEnrichmentSessionIdentifier;
    v11->_headerEnrichmentSessionIdentifier = v31;
  }

  v33 = [v8 objectForKey:@"fuseHeaderEnrichmentUrl"];
  if (_NSIsNSString())
  {
    v34 = [MEMORY[0x1E695DFF8] URLWithString:v33];
    headerEnrichmentURL = v11->_headerEnrichmentURL;
    v11->_headerEnrichmentURL = v34;
  }

  v54 = v33;
  v36 = [v8 objectForKey:@"fuseSilentSMSMessage"];
  if (_NSIsNSString())
  {
    v37 = [v36 copy];
    silentSMSMessage = v11->_silentSMSMessage;
    v11->_silentSMSMessage = v37;
  }

  v53 = v36;
  v39 = [v8 objectForKey:@"fuseSilentSMSNumber"];
  if (_NSIsNSString())
  {
    v40 = [v39 copy];
    silentSMSNumber = v11->_silentSMSNumber;
    v11->_silentSMSNumber = v40;
  }

  v55 = v17;
  v42 = [v8 objectForKey:@"fuseSmsSessionId"];
  if (_NSIsNSString())
  {
    v43 = [v42 copy];
    SMSSessionIdentifier = v11->_SMSSessionIdentifier;
    v11->_SMSSessionIdentifier = v43;
  }

  v45 = [v8 objectForKey:@"waitTime"];
  if (objc_opt_respondsToSelector())
  {
    [v45 doubleValue];
    v11->_delayInterval = v46 / 1000.0;
  }

  v47 = [v8 objectForKey:@"isFamily"];
  if (objc_opt_respondsToSelector())
  {
    v11->_familySubscription = [v47 BOOLValue];
  }

  v48 = [v9 copy];
  cellularProviderName = v11->_cellularProviderName;
  v11->_cellularProviderName = v48;

  v10 = v59;
  v50 = [v59 copy];
  phoneNumber = v11->_phoneNumber;
  v11->_phoneNumber = v50;

LABEL_62:
  return v11;
}

@end