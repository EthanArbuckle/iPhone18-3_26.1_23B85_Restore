@interface TUCallRecordingRunningRequest
- (TUCallRecordingRunningRequest)initWithCall:(id)call;
- (TUCallRecordingRunningRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallRecordingRunningRequest

- (TUCallRecordingRunningRequest)initWithCall:(id)call
{
  callCopy = call;
  v13.receiver = self;
  v13.super_class = TUCallRecordingRunningRequest;
  v5 = [(TUCallRecordingRequest *)&v13 initWithCall:callCopy];
  if (v5)
  {
    currentRecordingSession = [callCopy currentRecordingSession];
    uUID = [currentRecordingSession UUID];

    if (!uUID)
    {
      v11 = 0;
      goto LABEL_6;
    }

    currentRecordingSession2 = [callCopy currentRecordingSession];
    uUID2 = [currentRecordingSession2 UUID];
    recordingSessionUUID = v5->_recordingSessionUUID;
    v5->_recordingSessionUUID = uUID2;
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

  recordingSessionUUID = [(TUCallRecordingRunningRequest *)self recordingSessionUUID];
  [v5 appendFormat:@" recordingSessionUUID=%@", recordingSessionUUID];

  [v5 appendString:@">"];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUCallRecordingRunningRequest;
  coderCopy = coder;
  [(TUCallRecordingRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_recordingSessionUUID forKey:{@"recordingSessionUUID", v5.receiver, v5.super_class}];
}

- (TUCallRecordingRunningRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUCallRecordingRunningRequest;
  v5 = [(TUCallRecordingRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordingSessionUUID"];
    recordingSessionUUID = v5->_recordingSessionUUID;
    v5->_recordingSessionUUID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TUCallRecordingRunningRequest;
  v4 = [(TUCallRecordingRequest *)&v7 copyWithZone:zone];
  recordingSessionUUID = [(TUCallRecordingRunningRequest *)self recordingSessionUUID];
  [v4 setRecordingSessionUUID:recordingSessionUUID];

  return v4;
}

@end