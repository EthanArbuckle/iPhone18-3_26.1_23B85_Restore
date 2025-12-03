@interface VUIFPSKeyInfoManagedObject
- (void)populateFromKeyRequest:(id)request video:(id)video;
@end

@implementation VUIFPSKeyInfoManagedObject

- (void)populateFromKeyRequest:(id)request video:(id)video
{
  requestCopy = request;
  videoCopy = video;
  [(VUIFPSKeyInfoManagedObject *)self setIsInvalid:0];
  date = [MEMORY[0x1E695DF00] date];
  [(VUIFPSKeyInfoManagedObject *)self setRetrievalDate:date];

  keyIdentifier = [requestCopy keyIdentifier];
  [(VUIFPSKeyInfoManagedObject *)self setKeyURI:keyIdentifier];

  keyResponseData = [requestCopy keyResponseData];
  [(VUIFPSKeyInfoManagedObject *)self setKeyData:keyResponseData];

  expirationDate = [requestCopy expirationDate];
  [(VUIFPSKeyInfoManagedObject *)self setExpirationDate:expirationDate];

  contentID = [requestCopy contentID];
  [(VUIFPSKeyInfoManagedObject *)self setContentID:contentID];

  renewalDate = [requestCopy renewalDate];
  [(VUIFPSKeyInfoManagedObject *)self setRenewalDate:renewalDate];

  renewalInterval = [requestCopy renewalInterval];
  [(VUIFPSKeyInfoManagedObject *)self setRenewalInterval:renewalInterval];

  -[VUIFPSKeyInfoManagedObject setIsLowValue:](self, "setIsLowValue:", [requestCopy isLowValueKey]);
  playbackDuration = [requestCopy playbackDuration];
  [(VUIFPSKeyInfoManagedObject *)self setPlaybackDuration:playbackDuration];

  -[VUIFPSKeyInfoManagedObject setAllowsManualRenewal:](self, "setAllowsManualRenewal:", [requestCopy allowManualRenewal]);
  [(VUIFPSKeyInfoManagedObject *)self setVideo:videoCopy];
  if (([videoCopy markedAsDeleted] & 1) == 0)
  {
    availabilityEndDate = [requestCopy availabilityEndDate];
    [videoCopy setAvailabilityEndDate:availabilityEndDate];

    expirationDate2 = [requestCopy expirationDate];

    if (expirationDate2)
    {
      [videoCopy setHasExpirationDate:1];
    }

    [videoCopy setAllowsManualRenewal:{objc_msgSend(requestCopy, "allowManualRenewal")}];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(requestCopy, "offlineKeyRenewalPolicy")}];
  [videoCopy setOfflineKeyRenewalPolicy:v18];

  additionalRequestParamsFromResponse = [requestCopy additionalRequestParamsFromResponse];
  additionalFPSRequestParams = [videoCopy additionalFPSRequestParams];
  v21 = additionalFPSRequestParams;
  if (additionalFPSRequestParams)
  {
    v22 = [additionalFPSRequestParams mutableCopy];
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v23 = v22;
  if (additionalRequestParamsFromResponse)
  {
    [v22 addEntriesFromDictionary:additionalRequestParamsFromResponse];
  }

  if ([v23 count] && objc_msgSend(MEMORY[0x1E696ACB0], "isValidJSONObject:", v23))
  {
    v26 = 0;
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v23 options:0 error:&v26];
    v25 = v26;
    if ([v24 length])
    {
      [videoCopy setAdditionalFPSRequestParamsJSONData:v24];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VUIFPSKeyInfoManagedObject(VideosUIAdditions) populateFromKeyRequest:v25 video:?];
    }
  }
}

@end