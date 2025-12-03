@interface TUPodcastRecordingSession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPodcastSession:(id)session;
- (TUPodcastRecordingSession)initWithCoder:(id)coder;
- (TUPodcastRecordingSession)initWithUUID:(id)d state:(int)state callUUID:(id)iD requestUUID:(id)uID recordingStartedDate:(id)date recordingEndedDate:(id)endedDate isRedisclosing:(BOOL)redisclosing isInitiatedLocally:(BOOL)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUPodcastRecordingSession

- (TUPodcastRecordingSession)initWithUUID:(id)d state:(int)state callUUID:(id)iD requestUUID:(id)uID recordingStartedDate:(id)date recordingEndedDate:(id)endedDate isRedisclosing:(BOOL)redisclosing isInitiatedLocally:(BOOL)self0
{
  v12.receiver = self;
  v12.super_class = TUPodcastRecordingSession;
  result = [(TUCallRecordingSessionBase *)&v12 initWithUUID:d callUUID:iD requestUUID:uID recordingStartedDate:date recordingEndedDate:endedDate isRedisclosing:redisclosing];
  if (result)
  {
    result->_initiatedLocally = locally;
    result->_recordingState = state;
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUPodcastRecordingSession;
  coderCopy = coder;
  [(TUCallRecordingSessionBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:self->_recordingState forKey:{@"recordingState", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_initiatedLocally forKey:@"initiatedLocally"];
}

- (TUPodcastRecordingSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TUPodcastRecordingSession;
  v5 = [(TUCallRecordingSessionBase *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_recordingState = [coderCopy decodeIntForKey:@"recordingState"];
    v5->_initiatedLocally = [coderCopy decodeBoolForKey:@"initiatedLocally"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TUPodcastRecordingSession;
  v4 = [(TUCallRecordingSessionBase *)&v6 copyWithZone:zone];
  [v4 setRecordingState:{-[TUPodcastRecordingSession recordingState](self, "recordingState")}];
  [v4 setInitiatedLocally:{-[TUPodcastRecordingSession isInitiatedLocally](self, "isInitiatedLocally")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUPodcastRecordingSession *)self isEqualToPodcastSession:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPodcastSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = TUPodcastRecordingSession;
  if (-[TUCallRecordingSessionBase isEqual:](&v9, sel_isEqual_, sessionCopy) && (v5 = -[TUPodcastRecordingSession recordingState](self, "recordingState"), v5 == [sessionCopy recordingState]))
  {
    isInitiatedLocally = [(TUPodcastRecordingSession *)self isInitiatedLocally];
    v7 = isInitiatedLocally ^ [sessionCopy isInitiatedLocally] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end