@interface ICDPlaybackPositionRequestOperationBase
- (id)canonicalTimestampFromTimeInterval:(id)a3;
- (id)keyValueStorePayloadWithEntity:(id)a3;
@end

@implementation ICDPlaybackPositionRequestOperationBase

- (id)canonicalTimestampFromTimeInterval:(id)a3
{
  v4 = a3;
  [v4 doubleValue];
  if (v5 == 0.0 || ([v4 doubleValue], v6 <= -kCFAbsoluteTimeIntervalSince1904))
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{puvlic}@ WARNING!!!! Encountered bogus timeInterval %{public}@", &v11, 0x16u);
    }

    v7 = [NSNumber numberWithDouble:-kCFAbsoluteTimeIntervalSince1904];
  }

  else
  {
    v7 = v4;
  }

  v9 = v7;

  return v9;
}

- (id)keyValueStorePayloadWithEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 bookmarkTime];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &off_1001ED768;
  }

  v8 = v7;

  v9 = [v4 hasBeenPlayed];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &off_1001ED768;
  }

  v12 = v11;

  v13 = [v4 userPlayCount];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &off_1001ED768;
  }

  v16 = v15;

  v17 = [v4 bookmarkTimestamp];

  if (v17)
  {
    v18 = v17;
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
      v28 = self;
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@ Error serializing data. error=%{public}@,", buf, 0x16u);
    }
  }

  return v22;
}

@end