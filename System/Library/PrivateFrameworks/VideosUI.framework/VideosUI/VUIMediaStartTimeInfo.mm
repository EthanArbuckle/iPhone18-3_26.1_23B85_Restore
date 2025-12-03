@interface VUIMediaStartTimeInfo
- (VUIMediaStartTimeInfo)initWithStartTime:(id)time timestamp:(id)timestamp type:(int64_t)type source:(id)source;
- (id)description;
@end

@implementation VUIMediaStartTimeInfo

- (VUIMediaStartTimeInfo)initWithStartTime:(id)time timestamp:(id)timestamp type:(int64_t)type source:(id)source
{
  timeCopy = time;
  timestampCopy = timestamp;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = VUIMediaStartTimeInfo;
  v14 = [(VUIMediaStartTimeInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, time);
    objc_storeStrong(&v15->_timestamp, timestamp);
    v15->_type = type;
    objc_storeStrong(&v15->_source, source);
  }

  return v15;
}

- (id)description
{
  if ([(VUIMediaStartTimeInfo *)self type])
  {
    if ([(VUIMediaStartTimeInfo *)self type]== 1)
    {
      v3 = @"relative to main content";
    }

    else
    {
      v3 = @"unknown";
    }
  }

  else
  {
    v3 = @"absolute";
  }

  v4 = MEMORY[0x1E696AEC0];
  startTime = [(VUIMediaStartTimeInfo *)self startTime];
  timestamp = [(VUIMediaStartTimeInfo *)self timestamp];
  source = [(VUIMediaStartTimeInfo *)self source];
  v8 = [v4 stringWithFormat:@"start time: %@, timestamp: %@, type: %@, source: %@", startTime, timestamp, v3, source];

  return v8;
}

@end