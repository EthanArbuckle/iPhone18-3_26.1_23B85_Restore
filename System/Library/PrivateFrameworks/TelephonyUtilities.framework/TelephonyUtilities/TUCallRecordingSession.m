@interface TUCallRecordingSession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecordingSession:(id)a3;
- (TUCallRecordingSession)initWithCoder:(id)a3;
- (TUCallRecordingSession)initWithUUID:(id)a3 state:(int)a4 callUUID:(id)a5 requestUUID:(id)a6 recordingStartedDate:(id)a7 recordingEndedDate:(id)a8 destinationBundleIdentifier:(id)a9 isRedisclosing:(BOOL)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallRecordingSession

- (TUCallRecordingSession)initWithUUID:(id)a3 state:(int)a4 callUUID:(id)a5 requestUUID:(id)a6 recordingStartedDate:(id)a7 recordingEndedDate:(id)a8 destinationBundleIdentifier:(id)a9 isRedisclosing:(BOOL)a10
{
  v17 = a9;
  v21.receiver = self;
  v21.super_class = TUCallRecordingSession;
  v18 = [(TUCallRecordingSessionBase *)&v21 initWithUUID:a3 callUUID:a5 requestUUID:a6 recordingStartedDate:a7 recordingEndedDate:a8 isRedisclosing:a10];
  v19 = v18;
  if (v18)
  {
    v18->_recordingState = a4;
    objc_storeStrong(&v18->_destinationBundleIdentifier, a9);
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
  v6 = [(TUCallRecordingSession *)self destinationBundleIdentifier];
  [v5 appendFormat:@" destinationBundleIdentifier=%@", v6];

  [v5 appendString:@">"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUCallRecordingSession;
  v4 = a3;
  [(TUCallRecordingSessionBase *)&v5 encodeWithCoder:v4];
  [v4 encodeInt:self->_recordingState forKey:{@"recordingState", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_destinationBundleIdentifier forKey:@"destinationBundleIdentifier"];
}

- (TUCallRecordingSession)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUCallRecordingSession;
  v5 = [(TUCallRecordingSessionBase *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_recordingState = [v4 decodeIntForKey:@"recordingState"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationBundleIdentifier"];
    destinationBundleIdentifier = v5->_destinationBundleIdentifier;
    v5->_destinationBundleIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TUCallRecordingSession;
  v4 = [(TUCallRecordingSessionBase *)&v7 copyWithZone:a3];
  [v4 setRecordingState:{-[TUCallRecordingSession recordingState](self, "recordingState")}];
  v5 = [(TUCallRecordingSession *)self destinationBundleIdentifier];
  [v4 setDestinationBundleIdentifier:v5];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallRecordingSession *)self isEqualToRecordingSession:v4];
  }

  return v5;
}

- (BOOL)isEqualToRecordingSession:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TUCallRecordingSession;
  if (-[TUCallRecordingSessionBase isEqual:](&v10, sel_isEqual_, v4) && (v5 = -[TUCallRecordingSession recordingState](self, "recordingState"), v5 == [v4 recordingState]))
  {
    v6 = [(TUCallRecordingSession *)self destinationBundleIdentifier];
    v7 = [v4 destinationBundleIdentifier];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end