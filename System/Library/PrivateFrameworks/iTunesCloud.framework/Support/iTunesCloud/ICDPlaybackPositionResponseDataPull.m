@interface ICDPlaybackPositionResponseDataPull
- (ICDPlaybackPositionResponseDataPull)initWithResponseDictionary:(id)a3 forDomain:(id)a4;
@end

@implementation ICDPlaybackPositionResponseDataPull

- (ICDPlaybackPositionResponseDataPull)initWithResponseDictionary:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = ICDPlaybackPositionResponseDataPull;
  v7 = [(ICDPlaybackPositionResponseDataBase *)&v20 initWithDomain:a4];
  if (v7)
  {
    v8 = [v6 ic_stringValueForKey:@"key"];
    itemKey = v7->_itemKey;
    v7->_itemKey = v8;

    v10 = [v6 ic_stringValueForKey:@"version"];
    itemVersion = v7->_itemVersion;
    v7->_itemVersion = v10;

    v12 = [v6 ic_stringValueForKey:@"domain-version"];
    domainVersion = v7->_domainVersion;
    v7->_domainVersion = v12;

    v14 = [v6 ic_dataValueForKey:@"value"];
    v15 = [(ICDPlaybackPositionResponseDataBase *)v7 dataByInflatingWithNoZipHeader:v14];
    itemValueData = v7->_itemValueData;
    v7->_itemValueData = v15;

    if (v7->_itemKey && v7->_itemValueData)
    {
      v17 = [ICDPlaybackPositionResponseDataBase metadataWithItemIdentifier:v7 keyValueStorePayload:"metadataWithItemIdentifier:keyValueStorePayload:failuresOkay:" failuresOkay:?];
      cloudEntity = v7->_cloudEntity;
      v7->_cloudEntity = v17;
    }

    else
    {
      cloudEntity = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(cloudEntity, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, cloudEntity, OS_LOG_TYPE_ERROR, "<ICDPlaybackPositionResponseDataPull %p> initWithResponseDictionary - Could not create _cloudEntity from response", buf, 0xCu);
      }
    }
  }

  return v7;
}

@end