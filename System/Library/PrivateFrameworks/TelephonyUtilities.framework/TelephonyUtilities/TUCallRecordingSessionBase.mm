@interface TUCallRecordingSessionBase
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecordingSessionBase:(id)a3;
- (TUCallRecordingSessionBase)initWithCoder:(id)a3;
- (TUCallRecordingSessionBase)initWithUUID:(id)a3 callUUID:(id)a4 requestUUID:(id)a5 recordingStartedDate:(id)a6 recordingEndedDate:(id)a7 isRedisclosing:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallRecordingSessionBase

- (TUCallRecordingSessionBase)initWithUUID:(id)a3 callUUID:(id)a4 requestUUID:(id)a5 recordingStartedDate:(id)a6 recordingEndedDate:(id)a7 isRedisclosing:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = TUCallRecordingSessionBase;
  v18 = [(TUCallRecordingSessionBase *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_UUID, a3);
    objc_storeStrong(&v19->_callUUID, a4);
    objc_storeStrong(&v19->_requestUUID, a5);
    objc_storeStrong(&v19->_recordingStartedDate, a6);
    objc_storeStrong(&v19->_recordingEndedDate, a7);
    v19->_redisclosing = a8;
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCallRecordingSessionBase *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUCallRecordingSessionBase *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_requestUUID forKey:@"requestUUID"];
  [v5 encodeObject:self->_callUUID forKey:@"callUUID"];
  [v5 encodeObject:self->_recordingStartedDate forKey:@"recordingStartedDate"];
  [v5 encodeObject:self->_recordingEndedDate forKey:@"recordingEndedDate"];
  [v5 encodeBool:self->_redisclosing forKey:@"redisclosing"];
}

- (TUCallRecordingSessionBase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallRecordingSessionBase *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordingStartedDate"];
    recordingStartedDate = v5->_recordingStartedDate;
    v5->_recordingStartedDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordingEndedDate"];
    recordingEndedDate = v5->_recordingEndedDate;
    v5->_recordingEndedDate = v14;

    v5->_redisclosing = [v4 decodeBoolForKey:@"redisclosing"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUCallRecordingSessionBase *)self UUID];
  [v4 setUUID:v5];

  v6 = [(TUCallRecordingSessionBase *)self callUUID];
  [v4 setCallUUID:v6];

  v7 = [(TUCallRecordingSessionBase *)self requestUUID];
  [v4 setRequestUUID:v7];

  v8 = [(TUCallRecordingSessionBase *)self recordingStartedDate];
  [v4 setRecordingStartedDate:v8];

  v9 = [(TUCallRecordingSessionBase *)self recordingEndedDate];
  [v4 setRecordingEndedDate:v9];

  [v4 setRedisclosing:{-[TUCallRecordingSessionBase isRedisclosing](self, "isRedisclosing")}];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallRecordingSessionBase *)self isEqualToRecordingSessionBase:v4];
  }

  return v5;
}

- (BOOL)isEqualToRecordingSessionBase:(id)a3
{
  v4 = a3;
  v5 = [(TUCallRecordingSessionBase *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUCallRecordingSessionBase *)self callUUID];
    v8 = [v4 callUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(TUCallRecordingSessionBase *)self requestUUID];
      v10 = [v4 requestUUID];
      if ([v9 isEqual:v10])
      {
        v11 = [(TUCallRecordingSessionBase *)self recordingStartedDate];
        v12 = [v4 recordingStartedDate];
        if (TUObjectsAreEqualOrNil(v11, v12))
        {
          v20 = v11;
          v13 = [(TUCallRecordingSessionBase *)self recordingEndedDate];
          v14 = [v4 recordingEndedDate];
          v21 = v13;
          v15 = v13;
          v16 = v14;
          if (TUObjectsAreEqualOrNil(v15, v14))
          {
            v17 = [(TUCallRecordingSessionBase *)self isRedisclosing];
            v18 = v17 ^ [v4 isRedisclosing] ^ 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          v11 = v20;
        }

        else
        {
          LOBYTE(v18) = 0;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

@end