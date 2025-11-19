@interface TUCallRecordingRunningRequest
- (TUCallRecordingRunningRequest)initWithCall:(id)a3;
- (TUCallRecordingRunningRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallRecordingRunningRequest

- (TUCallRecordingRunningRequest)initWithCall:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUCallRecordingRunningRequest;
  v5 = [(TUCallRecordingRequest *)&v13 initWithCall:v4];
  if (v5)
  {
    v6 = [v4 currentRecordingSession];
    v7 = [v6 UUID];

    if (!v7)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v8 = [v4 currentRecordingSession];
    v9 = [v8 UUID];
    recordingSessionUUID = v5->_recordingSessionUUID;
    v5->_recordingSessionUUID = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = TUCallRecordingRunningRequest;
  v4 = [(TUCallRecordingRequest *)&v8 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(TUCallRecordingRunningRequest *)self recordingSessionUUID];
  [v5 appendFormat:@" recordingSessionUUID=%@", v6];

  [v5 appendString:@">"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUCallRecordingRunningRequest;
  v4 = a3;
  [(TUCallRecordingRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_recordingSessionUUID forKey:{@"recordingSessionUUID", v5.receiver, v5.super_class}];
}

- (TUCallRecordingRunningRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUCallRecordingRunningRequest;
  v5 = [(TUCallRecordingRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordingSessionUUID"];
    recordingSessionUUID = v5->_recordingSessionUUID;
    v5->_recordingSessionUUID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TUCallRecordingRunningRequest;
  v4 = [(TUCallRecordingRequest *)&v7 copyWithZone:a3];
  v5 = [(TUCallRecordingRunningRequest *)self recordingSessionUUID];
  [v4 setRecordingSessionUUID:v5];

  return v4;
}

@end