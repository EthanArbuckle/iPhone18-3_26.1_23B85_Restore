@interface ICDPlaybackPositionResponseDataBase
- (ICDPlaybackPositionResponseDataBase)initWithDomain:(id)domain;
- (id)dataByInflatingWithNoZipHeader:(id)header;
- (id)metadataWithItemIdentifier:(id)identifier keyValueStorePayload:(id)payload failuresOkay:(BOOL)okay;
@end

@implementation ICDPlaybackPositionResponseDataBase

- (id)metadataWithItemIdentifier:(id)identifier keyValueStorePayload:(id)payload failuresOkay:(BOOL)okay
{
  identifierCopy = identifier;
  payloadCopy = payload;
  if (payloadCopy)
  {
    v34 = 0;
    v11 = [NSPropertyListSerialization propertyListWithData:payloadCopy options:1 format:0 error:&v34];
    v12 = v34;
    if (v12)
    {
      v13 = v12;
      v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v37 = 2114;
        v38 = v13;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ metadataWithItemIdentifier - error deserializing data. error=%{public}@,", buf, 0x16u);
      }
    }

    if (v11)
    {
      v32 = 0;
    }

    else
    {
      v33 = 0;
      v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:payloadCopy error:&v33];
      v32 = v33;
      [v5 setDecodingFailurePolicy:0];
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [NSSet setWithObjects:v15, v16, v17, objc_opt_class(), 0];
      v11 = [v5 decodeObjectOfClasses:v18 forKey:NSKeyedArchiveRootObjectKey];

      [v5 finishDecoding];
      if (!v11)
      {
        if (!okay)
        {
          v29 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy3 = self;
            v37 = 2112;
            v38 = identifierCopy;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@ metadataWithItemIdentifier - encountered invalid data while unarchiving payload for itemIdentifier: %@", buf, 0x16u);
          }

          v11 = 0;
          v14 = 0;
          goto LABEL_37;
        }

        v11 = 0;
LABEL_33:
        v14 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_33;
    }

    v19 = [v11 objectForKey:@"pver"];
    if (!v19 || ([v11 objectForKey:@"pver"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = [v11 objectForKey:@"pver"];
      integerValue = [v22 integerValue];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v20 = [v11 objectForKey:@"pver"];
      integerValue = [v20 integerValue];
    }

LABEL_18:
    if (!integerValue)
    {
      v14 = [[ICPlaybackPositionEntity alloc] initWithDomain:self->_domain];
      [v14 setPlaybackPositionKey:identifierCopy];
      v23 = [v11 objectForKey:@"bktm"];
      if (_NSIsNSNumber())
      {
        v24 = [v11 objectForKey:@"bktm"];
        [v14 setBookmarkTime:v24];
      }

      else
      {
        [v14 setBookmarkTime:0];
      }

      v25 = [v11 objectForKey:@"hbpl"];
      if (_NSIsNSNumber())
      {
        v26 = [v11 objectForKey:@"hbpl"];
        [v14 setHasBeenPlayed:v26];
      }

      else
      {
        [v14 setHasBeenPlayed:0];
      }

      v27 = [v11 objectForKey:@"plct"];
      if (_NSIsNSNumber())
      {
        v28 = [v11 objectForKey:@"plct"];
        [v14 setUserPlayCount:v28];
      }

      else
      {
        [v14 setUserPlayCount:0];
      }

      v29 = [v11 objectForKey:@"tstm"];
      if (_NSIsNSNumber())
      {
        v30 = [v11 objectForKey:@"tstm"];
        [v14 setBookmarkTimestamp:v30];
      }

      else
      {
        [v14 setBookmarkTimestamp:0];
      }

LABEL_37:

      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ metadataWithItemIdentifier - keyValueStorePayload=nil", buf, 0xCu);
  }

  v14 = 0;
LABEL_39:

  return v14;
}

- (id)dataByInflatingWithNoZipHeader:(id)header
{
  v3 = __chkstk_darwin(self);
  v5 = v4;
  if ([v5 length] >> 32)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v3;
      v16 = 2048;
      v17 = [v5 length] / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ ERROR: unable to zip large data of size ~%.3f GB", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    memset(&v13.avail_in, 0, 104);
    v13.avail_in = [v5 length];
    v13.next_in = [v5 bytes];
    if (inflateInit2_(&v13, -15, "1.2.12", 112))
    {
LABEL_16:
      v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v15 = v3;
        v16 = 2114;
        v17 = *&v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@ could not unzip. returning inputdata: %{public}@", buf, 0x16u);
      }

      v7 = v5;
    }

    else
    {
      v7 = objc_alloc_init(NSMutableData);
      do
      {
        v13.avail_out = 0x4000;
        v13.next_out = buf;
        v8 = inflate(&v13, 0);
        if (v8 > 1)
        {
          inflateEnd(&v13);

          goto LABEL_16;
        }

        v9 = v8;
        if (v13.avail_out != 0x4000)
        {
          [v7 appendBytes:buf length:0x4000 - v13.avail_out];
        }
      }

      while (!v9);
      inflateEnd(&v13);
      if (!v7)
      {
        goto LABEL_16;
      }

      v10 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v15 = v3;
        v16 = 2114;
        v17 = *&v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@ successfully unzipped. outputData=%{public}@", buf, 0x16u);
      }
    }
  }

  return v7;
}

- (ICDPlaybackPositionResponseDataBase)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = ICDPlaybackPositionResponseDataBase;
  v6 = [(ICDPlaybackPositionResponseDataBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, domain);
  }

  return v7;
}

@end