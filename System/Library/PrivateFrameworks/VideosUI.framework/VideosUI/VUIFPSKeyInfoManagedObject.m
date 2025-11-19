@interface VUIFPSKeyInfoManagedObject
- (void)populateFromKeyRequest:(id)a3 video:(id)a4;
@end

@implementation VUIFPSKeyInfoManagedObject

- (void)populateFromKeyRequest:(id)a3 video:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(VUIFPSKeyInfoManagedObject *)self setIsInvalid:0];
  v8 = [MEMORY[0x1E695DF00] date];
  [(VUIFPSKeyInfoManagedObject *)self setRetrievalDate:v8];

  v9 = [v6 keyIdentifier];
  [(VUIFPSKeyInfoManagedObject *)self setKeyURI:v9];

  v10 = [v6 keyResponseData];
  [(VUIFPSKeyInfoManagedObject *)self setKeyData:v10];

  v11 = [v6 expirationDate];
  [(VUIFPSKeyInfoManagedObject *)self setExpirationDate:v11];

  v12 = [v6 contentID];
  [(VUIFPSKeyInfoManagedObject *)self setContentID:v12];

  v13 = [v6 renewalDate];
  [(VUIFPSKeyInfoManagedObject *)self setRenewalDate:v13];

  v14 = [v6 renewalInterval];
  [(VUIFPSKeyInfoManagedObject *)self setRenewalInterval:v14];

  -[VUIFPSKeyInfoManagedObject setIsLowValue:](self, "setIsLowValue:", [v6 isLowValueKey]);
  v15 = [v6 playbackDuration];
  [(VUIFPSKeyInfoManagedObject *)self setPlaybackDuration:v15];

  -[VUIFPSKeyInfoManagedObject setAllowsManualRenewal:](self, "setAllowsManualRenewal:", [v6 allowManualRenewal]);
  [(VUIFPSKeyInfoManagedObject *)self setVideo:v7];
  if (([v7 markedAsDeleted] & 1) == 0)
  {
    v16 = [v6 availabilityEndDate];
    [v7 setAvailabilityEndDate:v16];

    v17 = [v6 expirationDate];

    if (v17)
    {
      [v7 setHasExpirationDate:1];
    }

    [v7 setAllowsManualRenewal:{objc_msgSend(v6, "allowManualRenewal")}];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "offlineKeyRenewalPolicy")}];
  [v7 setOfflineKeyRenewalPolicy:v18];

  v19 = [v6 additionalRequestParamsFromResponse];
  v20 = [v7 additionalFPSRequestParams];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 mutableCopy];
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v23 = v22;
  if (v19)
  {
    [v22 addEntriesFromDictionary:v19];
  }

  if ([v23 count] && objc_msgSend(MEMORY[0x1E696ACB0], "isValidJSONObject:", v23))
  {
    v26 = 0;
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v23 options:0 error:&v26];
    v25 = v26;
    if ([v24 length])
    {
      [v7 setAdditionalFPSRequestParamsJSONData:v24];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VUIFPSKeyInfoManagedObject(VideosUIAdditions) populateFromKeyRequest:v25 video:?];
    }
  }
}

@end