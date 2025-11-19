@interface SKUIPlayableAsset
- (SKUIPlayableAsset)init;
- (SKUIPlayableAsset)initWithContentURL:(id)a3;
- (SKUIPlayableAsset)initWithVideo:(id)a3;
- (SKUIPlayableAsset)initWithVideoViewElement:(id)a3 assetViewElement:(id)a4;
@end

@implementation SKUIPlayableAsset

- (SKUIPlayableAsset)init
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIPlayableAsset *)v3 init:v4];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = SKUIPlayableAsset;
  result = [(SKUIPlayableAsset *)&v12 init];
  if (result)
  {
    result->_initialPlaybackTime = NAN;
    result->_playbackDuration = NAN;
  }

  return result;
}

- (SKUIPlayableAsset)initWithContentURL:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIPlayableAsset *)v6 initWithContentURL:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = [(SKUIPlayableAsset *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contentURL, a3);
  }

  return v15;
}

- (SKUIPlayableAsset)initWithVideoViewElement:(id)a3 assetViewElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIPlayableAsset *)v8 initWithVideoViewElement:v9 assetViewElement:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [(SKUIPlayableAsset *)self init];
  v17 = v16;
  if (v7 && v16)
  {
    v18 = [v7 URL];
    contentURL = v17->_contentURL;
    v17->_contentURL = v18;

    [v7 initialPlaybackTime];
    v17->_initialPlaybackTime = v20;
    v21 = [v7 itemIdentifier];
    v17->_storeItemIdentifier = v21;
    if (!v21)
    {
      v17->_storeItemIdentifier = [v6 itemIdentifier];
    }

    v22 = [v7 secureKeyDeliveryType];
    v17->_shouldUseITunesStoreSecureKeyDelivery = [v22 isEqualToString:0x282813D68];

    v17->_ITunesStream = [v7 isITunesStream];
    v23 = [v7 keyCertificateURL];
    keyCertificateURL = v17->_keyCertificateURL;
    v17->_keyCertificateURL = v23;

    v25 = [v7 keyServerURL];
    keyServerURL = v17->_keyServerURL;
    v17->_keyServerURL = v25;

    [v7 playbackDuration];
    v17->_playbackDuration = v27;
  }

  return v17;
}

- (SKUIPlayableAsset)initWithVideo:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPlayableAsset *)v5 initWithVideo:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIPlayableAsset *)self init];
  v14 = v13;
  if (v4 && v13)
  {
    v15 = [v4 URL];
    contentURL = v14->_contentURL;
    v14->_contentURL = v15;
  }

  return v14;
}

@end