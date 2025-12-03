@interface ICMusicSubscriptionCarrierBundlingEligibilityResponse
- (ICMusicSubscriptionCarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)dictionary cellularProviderName:(id)name phoneNumber:(id)number;
@end

@implementation ICMusicSubscriptionCarrierBundlingEligibilityResponse

- (ICMusicSubscriptionCarrierBundlingEligibilityResponse)initWithEligibilityDictionary:(id)dictionary cellularProviderName:(id)name phoneNumber:(id)number
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  numberCopy = number;
  v60.receiver = self;
  v60.super_class = ICMusicSubscriptionCarrierBundlingEligibilityResponse;
  v11 = [(ICMusicSubscriptionCarrierBundlingEligibilityResponse *)&v60 init];
  if (!v11)
  {
    goto LABEL_62;
  }

  v12 = [dictionaryCopy objectForKey:@"failureType"];
  v13 = [dictionaryCopy objectForKey:@"status"];
  v14 = [dictionaryCopy objectForKey:@"errorCode"];
  v59 = numberCopy;
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
      v16 = [dictionaryCopy objectForKey:@"fuseCarrierBundleStatus"];
      if (objc_opt_respondsToSelector())
      {
        integerValue = [v16 integerValue];
      }

      else
      {
        v22 = [dictionaryCopy objectForKey:@"checkBack"];
        v23 = [dictionaryCopy objectForKey:@"startFuseHeaderEnrichment"];
        v24 = [dictionaryCopy objectForKey:@"startFuseManualSms"];
        v25 = [dictionaryCopy objectForKey:@"hasFuseCarrierBundleSubscription"];
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v22 BOOLValue])
        {
          integerValue = 6;
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && ([v25 BOOLValue])
        {
          integerValue = 1;
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && ([v24 BOOLValue])
        {
          integerValue = 5;
        }

        else if (objc_opt_respondsToSelector())
        {
          if ([v23 BOOLValue])
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
          v26 = 1;
        }

        else
        {
          if (integerValue != 2)
          {
            if (integerValue == 3)
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
        if (integerValue > 5)
        {
          if (integerValue == 6)
          {
            v11->_carrierBundlingStatusType = 0;
            v11->_wantsDelayedRetry = 1;
          }

          else if (integerValue == 7)
          {
            v11->_carrierBundlingStatusType = 0;
            v11->_needsSilentSMS = 1;
          }

          goto LABEL_45;
        }

        if (integerValue == 4)
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
  v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7601 underlyingError:v18 debugDescription:{@"Eligibility response not valid %@", dictionaryCopy}];
  error = v11->_error;
  v11->_error = v19;

LABEL_45:
  v27 = [dictionaryCopy objectForKey:@"fuseHeaderEnrichmentMessage"];
  if (_NSIsNSString())
  {
    v28 = [v27 copy];
    headerEnrichmentMessage = v11->_headerEnrichmentMessage;
    v11->_headerEnrichmentMessage = v28;
  }

  v30 = [dictionaryCopy objectForKey:@"fuseHeaderEnrichmentSessionId"];
  if (_NSIsNSString())
  {
    v31 = [v30 copy];
    headerEnrichmentSessionIdentifier = v11->_headerEnrichmentSessionIdentifier;
    v11->_headerEnrichmentSessionIdentifier = v31;
  }

  v33 = [dictionaryCopy objectForKey:@"fuseHeaderEnrichmentUrl"];
  if (_NSIsNSString())
  {
    v34 = [MEMORY[0x1E695DFF8] URLWithString:v33];
    headerEnrichmentURL = v11->_headerEnrichmentURL;
    v11->_headerEnrichmentURL = v34;
  }

  v54 = v33;
  v36 = [dictionaryCopy objectForKey:@"fuseSilentSMSMessage"];
  if (_NSIsNSString())
  {
    v37 = [v36 copy];
    silentSMSMessage = v11->_silentSMSMessage;
    v11->_silentSMSMessage = v37;
  }

  v53 = v36;
  v39 = [dictionaryCopy objectForKey:@"fuseSilentSMSNumber"];
  if (_NSIsNSString())
  {
    v40 = [v39 copy];
    silentSMSNumber = v11->_silentSMSNumber;
    v11->_silentSMSNumber = v40;
  }

  v55 = v17;
  v42 = [dictionaryCopy objectForKey:@"fuseSmsSessionId"];
  if (_NSIsNSString())
  {
    v43 = [v42 copy];
    SMSSessionIdentifier = v11->_SMSSessionIdentifier;
    v11->_SMSSessionIdentifier = v43;
  }

  v45 = [dictionaryCopy objectForKey:@"waitTime"];
  if (objc_opt_respondsToSelector())
  {
    [v45 doubleValue];
    v11->_delayInterval = v46 / 1000.0;
  }

  v47 = [dictionaryCopy objectForKey:@"isFamily"];
  if (objc_opt_respondsToSelector())
  {
    v11->_familySubscription = [v47 BOOLValue];
  }

  v48 = [nameCopy copy];
  cellularProviderName = v11->_cellularProviderName;
  v11->_cellularProviderName = v48;

  numberCopy = v59;
  v50 = [v59 copy];
  phoneNumber = v11->_phoneNumber;
  v11->_phoneNumber = v50;

LABEL_62:
  return v11;
}

@end