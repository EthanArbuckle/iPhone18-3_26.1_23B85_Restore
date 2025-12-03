@interface ICSecureKeyDeliveryResponse
- (ICSecureKeyDeliveryResponse)initWithResponseDictionary:(id)dictionary serverPlaybackContextData:(id)data;
- (id)description;
- (void)finishAssetResourceLoadingRequest:(id)request withError:(id)error;
@end

@implementation ICSecureKeyDeliveryResponse

- (void)finishAssetResourceLoadingRequest:(id)request withError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  renewalDate = [(ICSecureKeyDeliveryResponse *)self renewalDate];
  if (renewalDate)
  {
    contentInformationRequest = [requestCopy contentInformationRequest];
    [contentInformationRequest setRenewalDate:renewalDate];
  }

  dataRequest = [requestCopy dataRequest];
  contentKeyContextData = [(ICSecureKeyDeliveryResponse *)self contentKeyContextData];
  if (contentKeyContextData)
  {
    [dataRequest respondWithData:contentKeyContextData];
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
    [dataRequest respondWithData:data];
  }

  if (errorCopy)
  {
    [requestCopy finishLoadingWithError:errorCopy];
  }

  else
  {
    [requestCopy finishLoading];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = +[ICDeviceInfo currentDeviceInfo];
  isInternalBuild = [v5 isInternalBuild];
  if (isInternalBuild)
  {
    contentKeyContextData = [(ICSecureKeyDeliveryResponse *)self contentKeyContextData];
  }

  else
  {
    contentKeyContextData = @"<redacted>";
  }

  renewalDate = [(ICSecureKeyDeliveryResponse *)self renewalDate];
  v9 = [v3 stringWithFormat:@"<%@ %p (ckc:%@, renewalDate:%@)>", v4, self, contentKeyContextData, renewalDate];

  if (isInternalBuild)
  {
  }

  return v9;
}

- (ICSecureKeyDeliveryResponse)initWithResponseDictionary:(id)dictionary serverPlaybackContextData:(id)data
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dataCopy = data;
  v8 = [(ICSecureKeyDeliveryResponse *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serverPlaybackContextData, data);
    v10 = [dictionaryCopy ic_integerValueForKey:@"status"];
    v9->_status = v10;
    if (v10)
    {
      v11 = [dictionaryCopy ic_dictionaryValueForKey:@"dialog"];
      if (v11)
      {
        v12 = [[ICStoreDialogResponse alloc] initWithResponseDictionary:v11];
        dialog = v9->_dialog;
        v9->_dialog = v12;
      }

      v14 = [dictionaryCopy ic_integerValueForKey:@"failureType"];
      v9->_failureType = v14;
      if (v14)
      {
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICStoreServerError" code:v14 userInfo:0];
        serverError = v9->_serverError;
        v9->_serverError = v15;
      }

      v9->_bulkRefreshWaitInterval = [dictionaryCopy ic_intValueForKey:@"download-repair-wait"];
LABEL_25:

      goto LABEL_26;
    }

    v11 = [dictionaryCopy objectForKey:@"ckc"];
    if (_NSIsNSString())
    {
      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v11 options:0];
    }

    else
    {
      if (!_NSIsNSData())
      {
        goto LABEL_13;
      }

      v17 = v11;
    }

    contentKeyContextData = v9->_contentKeyContextData;
    v9->_contentKeyContextData = v17;

LABEL_13:
    v19 = +[ICDefaults standardDefaults];
    secureKeyRenewalTimeOverride = [v19 secureKeyRenewalTimeOverride];

    if ([secureKeyRenewalTimeOverride longLongValue])
    {
      v21 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138543618;
        v35 = v9;
        v36 = 2114;
        v37 = secureKeyRenewalTimeOverride;
        _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]: [SKD] - using secure key renewalTime override: %{public}@", &v34, 0x16u);
      }

      v22 = MEMORY[0x1E695DF00];
      [secureKeyRenewalTimeOverride doubleValue];
      v23 = v22;
    }

    else
    {
      [dictionaryCopy ic_doubleValueForKey:@"renew-after"];
      if (v24 == 0.0)
      {
LABEL_20:
        [dictionaryCopy ic_doubleValueForKey:@"expiration-time"];
        if (v27 != 0.0)
        {
          v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v27 / 1000.0];
          rentalExpirationDate = v9->_rentalExpirationDate;
          v9->_rentalExpirationDate = v28;
        }

        [dictionaryCopy ic_doubleValueForKey:@"playback-start-time"];
        if (v30 != 0.0)
        {
          v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v30 / 1000.0];
          rentalPlaybackStartDate = v9->_rentalPlaybackStartDate;
          v9->_rentalPlaybackStartDate = v31;
        }

        v9->_bulkRefreshWaitInterval = [dictionaryCopy ic_intValueForKey:@"download-repair-wait"];

        goto LABEL_25;
      }

      v23 = MEMORY[0x1E695DF00];
    }

    v25 = [v23 dateWithTimeIntervalSinceNow:?];
    renewalDate = v9->_renewalDate;
    v9->_renewalDate = v25;

    goto LABEL_20;
  }

LABEL_26:

  return v9;
}

@end