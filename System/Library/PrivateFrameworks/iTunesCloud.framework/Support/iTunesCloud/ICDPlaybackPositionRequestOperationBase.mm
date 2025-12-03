@interface ICDPlaybackPositionRequestOperationBase
- (id)canonicalTimestampFromTimeInterval:(id)interval;
- (id)keyValueStorePayloadWithEntity:(id)entity;
@end

@implementation ICDPlaybackPositionRequestOperationBase

- (id)canonicalTimestampFromTimeInterval:(id)interval
{
  intervalCopy = interval;
  [intervalCopy doubleValue];
  if (v5 == 0.0 || ([intervalCopy doubleValue], v6 <= -kCFAbsoluteTimeIntervalSince1904))
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2114;
      v14 = intervalCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{puvlic}@ WARNING!!!! Encountered bogus timeInterval %{public}@", &v11, 0x16u);
    }

    v7 = [NSNumber numberWithDouble:-kCFAbsoluteTimeIntervalSince1904];
  }

  else
  {
    v7 = intervalCopy;
  }

  v9 = v7;

  return v9;
}

- (id)keyValueStorePayloadWithEntity:(id)entity
{
  entityCopy = entity;
  bookmarkTime = [entityCopy bookmarkTime];
  v6 = bookmarkTime;
  if (bookmarkTime)
  {
    v7 = bookmarkTime;
  }

  else
  {
    v7 = &off_1001ED768;
  }

  v8 = v7;

  hasBeenPlayed = [entityCopy hasBeenPlayed];
  v10 = hasBeenPlayed;
  if (hasBeenPlayed)
  {
    v11 = hasBeenPlayed;
  }

  else
  {
    v11 = &off_1001ED768;
  }

  v12 = v11;

  userPlayCount = [entityCopy userPlayCount];
  v14 = userPlayCount;
  if (userPlayCount)
  {
    v15 = userPlayCount;
  }

  else
  {
    v15 = &off_1001ED768;
  }

  v16 = v15;

  bookmarkTimestamp = [entityCopy bookmarkTimestamp];

  if (bookmarkTimestamp)
  {
    v18 = bookmarkTimestamp;
  }

  else
  {
    v18 = &off_1001ED768;
  }

  v19 = v18;

  v31[0] = v8;
  v31[1] = v12;
  v31[2] = v16;
  v31[3] = v19;
  v20 = [NSArray arrayWithObjects:v31 count:4];
  v21 = [NSDictionary dictionaryWithObjects:v20 forKeys:&off_1001EE338];

  v26 = 0;
  v22 = [NSPropertyListSerialization dataWithPropertyList:v21 format:200 options:0 error:&v26];
  v23 = v26;
  if (v23)
  {
    v24 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@ Error serializing data. error=%{public}@,", buf, 0x16u);
    }
  }

  return v22;
}

@end