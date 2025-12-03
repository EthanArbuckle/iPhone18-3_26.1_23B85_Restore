@interface SFBLERecorder
- (BOOL)recordDevice:(id)device data:(id)data rssi:(id)rssi info:(id)info error:(id *)error;
- (BOOL)replayNextRecording;
- (BOOL)saveToDirectory:(id)directory;
- (SFBLERecorder)initWithPayloadType:(int64_t)type;
- (SFBLERecorder)initWithRecordingURL:(id)l;
- (SFBLERecorderReplayDelegate)replayDelegate;
@end

@implementation SFBLERecorder

- (SFBLERecorderReplayDelegate)replayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_replayDelegate);

  return WeakRetained;
}

- (SFBLERecorder)initWithPayloadType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = SFBLERecorder;
  v4 = [(SFBLERecorder *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_payloadType = type;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recordings = v5->_recordings;
    v5->_recordings = v6;

    v8 = v5;
  }

  return v5;
}

- (SFBLERecorder)initWithRecordingURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = SFBLERecorder;
  v5 = [(SFBLERecorder *)&v14 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:lCopy];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"payloadType"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [v7 objectForKeyedSubscript:@"recordings"];
        if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v5->_payloadType = [v8 integerValue];
          v10 = [v9 mutableCopy];
          recordings = v5->_recordings;
          v5->_recordings = v10;

          v12 = v5;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)recordDevice:(id)device data:(id)data rssi:(id)rssi info:(id)info error:(id *)error
{
  deviceCopy = device;
  dataCopy = data;
  rssiCopy = rssi;
  infoCopy = info;
  if (infoCopy)
  {
    v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:infoCopy requiringSecureCoding:1 error:error];
    if (!v16)
    {
      v17 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (dataCopy)
  {
    v19 = [dataCopy copy];
    [v18 setObject:v19 forKeyedSubscript:@"data"];
  }

  if (deviceCopy)
  {
    uUIDString = [deviceCopy UUIDString];
    [v18 setObject:uUIDString forKeyedSubscript:@"device"];
  }

  if (v16)
  {
    [v18 setObject:v16 forKeyedSubscript:@"infoData"];
  }

  if (rssiCopy)
  {
    [v18 setObject:rssiCopy forKeyedSubscript:@"rssi"];
  }

  v21 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v22 = [v21 numberWithDouble:?];
  [v18 setObject:v22 forKeyedSubscript:@"timestamp"];

  recordings = self->_recordings;
  v24 = [v18 copy];
  [(NSMutableArray *)recordings addObject:v24];

  v17 = 1;
LABEL_14:

  return v17;
}

- (BOOL)replayNextRecording
{
  replayIndex = self->_replayIndex;
  v4 = [(NSMutableArray *)self->_recordings count];
  if (replayIndex < v4)
  {
    v15 = replayIndex;
    recordings = self->_recordings;
    ++self->_replayIndex;
    v6 = [(NSMutableArray *)recordings objectAtIndexedSubscript:?];
    v7 = [v6 objectForKeyedSubscript:@"device"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v6 objectForKeyedSubscript:@"infoData"];
    if (v9)
    {
      v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];
    }

    else
    {
      v10 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_replayDelegate);
    v12 = [v6 objectForKeyedSubscript:@"data"];
    v13 = [v6 objectForKeyedSubscript:@"rssi"];
    [WeakRetained recorder:self replayDevice:v8 data:v12 rssi:v13 info:v10];

    replayIndex = v15;
  }

  return replayIndex < v4;
}

- (BOOL)saveToDirectory:(id)directory
{
  v31[2] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  if ([directoryCopy isFileURL] && -[NSMutableArray count](self->_recordings, "count"))
  {
    v29 = 0;
    v5 = [directoryCopy getResourceValue:&v29 forKey:*MEMORY[0x1E695DB78] error:0];
    v6 = v29;
    v7 = v6;
    if (v5 && [v6 BOOLValue])
    {
      firstObject = [(NSMutableArray *)self->_recordings firstObject];
      v9 = [firstObject objectForKeyedSubscript:@"timestamp"];

      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
        [v10 setLocale:v11];

        [v10 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
        v12 = MEMORY[0x1E695DF00];
        [v9 doubleValue];
        v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
        v14 = MEMORY[0x1E696AEC0];
        v15 = [v10 stringFromDate:v13];
        v16 = [v14 stringWithFormat:@"SFBLERecording_%@.xml", v15];

        v17 = [directoryCopy URLByAppendingPathComponent:v16];
        if (v17)
        {
          v30[0] = @"payloadType";
          [MEMORY[0x1E696AD98] numberWithInteger:self->_payloadType];
          v28 = v16;
          v18 = v13;
          v19 = v9;
          v20 = directoryCopy;
          v22 = v21 = v7;
          v30[1] = @"recordings";
          v31[0] = v22;
          v23 = [(NSMutableArray *)self->_recordings copy];
          v31[1] = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
          v25 = [v24 writeToURL:v17 atomically:1];

          v7 = v21;
          directoryCopy = v20;
          v9 = v19;
          v13 = v18;
          v16 = v28;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

@end