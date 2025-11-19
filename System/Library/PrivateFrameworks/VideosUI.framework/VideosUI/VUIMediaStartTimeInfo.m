@interface VUIMediaStartTimeInfo
- (VUIMediaStartTimeInfo)initWithStartTime:(id)a3 timestamp:(id)a4 type:(int64_t)a5 source:(id)a6;
- (id)description;
@end

@implementation VUIMediaStartTimeInfo

- (VUIMediaStartTimeInfo)initWithStartTime:(id)a3 timestamp:(id)a4 type:(int64_t)a5 source:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = VUIMediaStartTimeInfo;
  v14 = [(VUIMediaStartTimeInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, a3);
    objc_storeStrong(&v15->_timestamp, a4);
    v15->_type = a5;
    objc_storeStrong(&v15->_source, a6);
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
  v5 = [(VUIMediaStartTimeInfo *)self startTime];
  v6 = [(VUIMediaStartTimeInfo *)self timestamp];
  v7 = [(VUIMediaStartTimeInfo *)self source];
  v8 = [v4 stringWithFormat:@"start time: %@, timestamp: %@, type: %@, source: %@", v5, v6, v3, v7];

  return v8;
}

@end