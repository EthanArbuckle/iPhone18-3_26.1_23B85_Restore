@interface ICSecureKeyDeliveryResponse
- (ICSecureKeyDeliveryResponse)initWithResponseDictionary:(id)a3 serverPlaybackContextData:(id)a4;
- (id)description;
- (void)finishAssetResourceLoadingRequest:(id)a3 withError:(id)a4;
@end

@implementation ICSecureKeyDeliveryResponse

- (void)finishAssetResourceLoadingRequest:(id)a3 withError:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(ICSecureKeyDeliveryResponse *)self renewalDate];
  if (v7)
  {
    v8 = [v12 contentInformationRequest];
    [v8 setRenewalDate:v7];
  }

  v9 = [v12 dataRequest];
  v10 = [(ICSecureKeyDeliveryResponse *)self contentKeyContextData];
  if (v10)
  {
    [v9 respondWithData:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E695DEF0] data];
    [v9 respondWithData:v11];
  }

  if (v6)
  {
    [v12 finishLoadingWithError:v6];
  }

  else
  {
    [v12 finishLoading];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = +[ICDeviceInfo currentDeviceInfo];
  v6 = [v5 isInternalBuild];
  if (v6)
  {
    v7 = [(ICSecureKeyDeliveryResponse *)self contentKeyContextData];
  }

  else
  {
    v7 = @"<redacted>";
  }

  v8 = [(ICSecureKeyDeliveryResponse *)self renewalDate];
  v9 = [v3 stringWithFormat:@"<%@ %p (ckc:%@, renewalDate:%@)>", v4, self, v7, v8];

  if (v6)
  {
  }

  return v9;
}

- (ICSecureKeyDeliveryResponse)initWithResponseDictionary:(id)a3 serverPlaybackContextData:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(ICSecureKeyDeliveryResponse *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serverPlaybackContextData, a4);
    v10 = [v6 ic_integerValueForKey:@"status"];
    v9->_status = v10;
    if (v10)
    {
      v11 = [v6 ic_dictionaryValueForKey:@"dialog"];
      if (v11)
      {
        v12 = [[ICStoreDialogResponse alloc] initWithResponseDictionary:v11];
        dialog = v9->_dialog;
        v9->_dialog = v12;
      }

      v14 = [v6 ic_integerValueForKey:@"failureType"];
      v9->_failureType = v14;
      if (v14)
      {
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICStoreServerError" code:v14 userInfo:0];
        serverError = v9->_serverError;
        v9->_serverError = v15;
      }

      v9->_bulkRefreshWaitInterval = [v6 ic_intValueForKey:@"download-repair-wait"];
LABEL_25:

      goto LABEL_26;
    }

    v11 = [v6 objectForKey:@"ckc"];
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
    v20 = [v19 secureKeyRenewalTimeOverride];

    if ([v20 longLongValue])
    {
      v21 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138543618;
        v35 = v9;
        v36 = 2114;
        v37 = v20;
        _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]: [SKD] - using secure key renewalTime override: %{public}@", &v34, 0x16u);
      }

      v22 = MEMORY[0x1E695DF00];
      [v20 doubleValue];
      v23 = v22;
    }

    else
    {
      [v6 ic_doubleValueForKey:@"renew-after"];
      if (v24 == 0.0)
      {
LABEL_20:
        [v6 ic_doubleValueForKey:@"expiration-time"];
        if (v27 != 0.0)
        {
          v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v27 / 1000.0];
          rentalExpirationDate = v9->_rentalExpirationDate;
          v9->_rentalExpirationDate = v28;
        }

        [v6 ic_doubleValueForKey:@"playback-start-time"];
        if (v30 != 0.0)
        {
          v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v30 / 1000.0];
          rentalPlaybackStartDate = v9->_rentalPlaybackStartDate;
          v9->_rentalPlaybackStartDate = v31;
        }

        v9->_bulkRefreshWaitInterval = [v6 ic_intValueForKey:@"download-repair-wait"];

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