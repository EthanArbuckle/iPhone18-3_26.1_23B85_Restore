@interface TUPodcastRecordingSession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPodcastSession:(id)a3;
- (TUPodcastRecordingSession)initWithCoder:(id)a3;
- (TUPodcastRecordingSession)initWithUUID:(id)a3 state:(int)a4 callUUID:(id)a5 requestUUID:(id)a6 recordingStartedDate:(id)a7 recordingEndedDate:(id)a8 isRedisclosing:(BOOL)a9 isInitiatedLocally:(BOOL)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUPodcastRecordingSession

- (TUPodcastRecordingSession)initWithUUID:(id)a3 state:(int)a4 callUUID:(id)a5 requestUUID:(id)a6 recordingStartedDate:(id)a7 recordingEndedDate:(id)a8 isRedisclosing:(BOOL)a9 isInitiatedLocally:(BOOL)a10
{
  v12.receiver = self;
  v12.super_class = TUPodcastRecordingSession;
  result = [(TUCallRecordingSessionBase *)&v12 initWithUUID:a3 callUUID:a5 requestUUID:a6 recordingStartedDate:a7 recordingEndedDate:a8 isRedisclosing:a9];
  if (result)
  {
    result->_initiatedLocally = a10;
    result->_recordingState = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = TUPodcastRecordingSession;
  v4 = [(TUCallRecordingSessionBase *)&v7 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@" state=%d", -[TUPodcastRecordingSession recordingState](self, "recordingState")];
  [v5 appendFormat:@" initiatedLocally=%d", -[TUPodcastRecordingSession isInitiatedLocally](self, "isInitiatedLocally")];
  [v5 appendString:@">"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUPodcastRecordingSession;
  v4 = a3;
  [(TUCallRecordingSessionBase *)&v5 encodeWithCoder:v4];
  [v4 encodeInt:self->_recordingState forKey:{@"recordingState", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_initiatedLocally forKey:@"initiatedLocally"];
}

- (TUPodcastRecordingSession)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TUPodcastRecordingSession;
  v5 = [(TUCallRecordingSessionBase *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_recordingState = [v4 decodeIntForKey:@"recordingState"];
    v5->_initiatedLocally = [v4 decodeBoolForKey:@"initiatedLocally"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TUPodcastRecordingSession;
  v4 = [(TUCallRecordingSessionBase *)&v6 copyWithZone:a3];
  [v4 setRecordingState:{-[TUPodcastRecordingSession recordingState](self, "recordingState")}];
  [v4 setInitiatedLocally:{-[TUPodcastRecordingSession isInitiatedLocally](self, "isInitiatedLocally")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUPodcastRecordingSession *)self isEqualToPodcastSession:v4];
  }

  return v5;
}

- (BOOL)isEqualToPodcastSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUPodcastRecordingSession;
  if (-[TUCallRecordingSessionBase isEqual:](&v9, sel_isEqual_, v4) && (v5 = -[TUPodcastRecordingSession recordingState](self, "recordingState"), v5 == [v4 recordingState]))
  {
    v6 = [(TUPodcastRecordingSession *)self isInitiatedLocally];
    v7 = v6 ^ [v4 isInitiatedLocally] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end