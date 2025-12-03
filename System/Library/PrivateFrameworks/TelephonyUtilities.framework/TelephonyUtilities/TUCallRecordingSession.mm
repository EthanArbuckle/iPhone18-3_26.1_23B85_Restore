@interface TUCallRecordingSession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecordingSession:(id)session;
- (TUCallRecordingSession)initWithCoder:(id)coder;
- (TUCallRecordingSession)initWithUUID:(id)d state:(int)state callUUID:(id)iD requestUUID:(id)uID recordingStartedDate:(id)date recordingEndedDate:(id)endedDate destinationBundleIdentifier:(id)identifier isRedisclosing:(BOOL)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallRecordingSession

- (TUCallRecordingSession)initWithUUID:(id)d state:(int)state callUUID:(id)iD requestUUID:(id)uID recordingStartedDate:(id)date recordingEndedDate:(id)endedDate destinationBundleIdentifier:(id)identifier isRedisclosing:(BOOL)self0
{
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = TUCallRecordingSession;
  v18 = [(TUCallRecordingSessionBase *)&v21 initWithUUID:d callUUID:iD requestUUID:uID recordingStartedDate:date recordingEndedDate:endedDate isRedisclosing:redisclosing];
  v19 = v18;
  if (v18)
  {
    v18->_recordingState = state;
    objc_storeStrong(&v18->_destinationBundleIdentifier, identifier);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = TUCallRecordingSession;
  v4 = [(TUCallRecordingSessionBase *)&v8 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@" state=%d", -[TUCallRecordingSession recordingState](self, "recordingState")];
  destinationBundleIdentifier = [(TUCallRecordingSession *)self destinationBundleIdentifier];
  [v5 appendFormat:@" destinationBundleIdentifier=%@", destinationBundleIdentifier];

  [v5 appendString:@">"];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUCallRecordingSession;
  coderCopy = coder;
  [(TUCallRecordingSessionBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:self->_recordingState forKey:{@"recordingState", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_destinationBundleIdentifier forKey:@"destinationBundleIdentifier"];
}

- (TUCallRecordingSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUCallRecordingSession;
  v5 = [(TUCallRecordingSessionBase *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_recordingState = [coderCopy decodeIntForKey:@"recordingState"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationBundleIdentifier"];
    destinationBundleIdentifier = v5->_destinationBundleIdentifier;
    v5->_destinationBundleIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TUCallRecordingSession;
  v4 = [(TUCallRecordingSessionBase *)&v7 copyWithZone:zone];
  [v4 setRecordingState:{-[TUCallRecordingSession recordingState](self, "recordingState")}];
  destinationBundleIdentifier = [(TUCallRecordingSession *)self destinationBundleIdentifier];
  [v4 setDestinationBundleIdentifier:destinationBundleIdentifier];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallRecordingSession *)self isEqualToRecordingSession:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRecordingSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = TUCallRecordingSession;
  if (-[TUCallRecordingSessionBase isEqual:](&v10, sel_isEqual_, sessionCopy) && (v5 = -[TUCallRecordingSession recordingState](self, "recordingState"), v5 == [sessionCopy recordingState]))
  {
    destinationBundleIdentifier = [(TUCallRecordingSession *)self destinationBundleIdentifier];
    destinationBundleIdentifier2 = [sessionCopy destinationBundleIdentifier];
    v8 = [destinationBundleIdentifier isEqual:destinationBundleIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end