@interface ICPushNotificationMessage
- (ICPushNotificationMessage)initWithMessageUserInfo:(id)a3;
- (NSArray)jaliscoChangedMediaTypes;
- (NSArray)sagaUpdatedSubscribedPlaylistIDs;
@end

@implementation ICPushNotificationMessage

- (ICPushNotificationMessage)initWithMessageUserInfo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(ICPushNotificationMessage *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInfo, a3);
    v7->_accountDSID = [v5 ic_int64ValueForKey:@"0"];
    v7->_actionType = [v5 ic_intValueForKey:@"1"];
    v8 = [v5 ic_stringValueForKey:@"10"];
    v9 = v8;
    if (v8 && ![v8 isEqualToString:@"application/json"])
    {
      if ([v9 isEqualToString:@"application/gzip"])
      {
        v10 = [v5 ic_stringValueForKey:@"aps"];
        if (v10)
        {
          v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
          if (v11)
          {
            v12 = MSVGzipDecompressData();
            if (v12)
            {
              v22 = 0;
              v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v22];
              v14 = v22;
              apsPayload = v7->_apsPayload;
              v7->_apsPayload = v13;

              if (!v7->_apsPayload || (v16 = 0, v14))
              {
                v17 = _ICLogCategoryDefault();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v24 = v7;
                  v25 = 2114;
                  v26 = v14;
                  _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to deserialize aps payload data. err=%{public}@", buf, 0x16u);
                }

                v16 = v14;
              }
            }

            else
            {
              v16 = _ICLogCategoryDefault();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v24 = v7;
                _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to decompress aps payload data.", buf, 0xCu);
              }
            }
          }

          else
          {
            v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v24 = v7;
              _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to decode compressed aps payload data.", buf, 0xCu);
            }
          }
        }

        goto LABEL_17;
      }

      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = v7;
        v25 = 2114;
        v26 = v9;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ unknown APS format %{public}@. assuming dictionary", buf, 0x16u);
      }
    }

    v19 = [v5 ic_dictionaryValueForKey:@"aps"];
    v20 = v7->_apsPayload;
    v7->_apsPayload = v19;

LABEL_17:
  }

  return v7;
}

- (NSArray)sagaUpdatedSubscribedPlaylistIDs
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSDictionary *)self->_userInfo ic_arrayValueForKey:@"3"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (!_NSIsNSNumber())
        {

          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = v2;
LABEL_11:

  return v7;
}

- (NSArray)jaliscoChangedMediaTypes
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSDictionary *)self->_userInfo ic_arrayValueForKey:@"3"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (!_NSIsNSString())
        {

          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = v2;
LABEL_11:

  return v7;
}

@end