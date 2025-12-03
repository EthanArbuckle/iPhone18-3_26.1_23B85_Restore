@interface TUCallRecordingSessionBase
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecordingSessionBase:(id)base;
- (TUCallRecordingSessionBase)initWithCoder:(id)coder;
- (TUCallRecordingSessionBase)initWithUUID:(id)d callUUID:(id)iD requestUUID:(id)uID recordingStartedDate:(id)date recordingEndedDate:(id)endedDate isRedisclosing:(BOOL)redisclosing;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallRecordingSessionBase

- (TUCallRecordingSessionBase)initWithUUID:(id)d callUUID:(id)iD requestUUID:(id)uID recordingStartedDate:(id)date recordingEndedDate:(id)endedDate isRedisclosing:(BOOL)redisclosing
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  dateCopy = date;
  endedDateCopy = endedDate;
  v23.receiver = self;
  v23.super_class = TUCallRecordingSessionBase;
  v18 = [(TUCallRecordingSessionBase *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_UUID, d);
    objc_storeStrong(&v19->_callUUID, iD);
    objc_storeStrong(&v19->_requestUUID, uID);
    objc_storeStrong(&v19->_recordingStartedDate, date);
    objc_storeStrong(&v19->_recordingEndedDate, endedDate);
    v19->_redisclosing = redisclosing;
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUCallRecordingSessionBase *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  callUUID = [(TUCallRecordingSessionBase *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", callUUID];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_requestUUID forKey:@"requestUUID"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
  [coderCopy encodeObject:self->_recordingStartedDate forKey:@"recordingStartedDate"];
  [coderCopy encodeObject:self->_recordingEndedDate forKey:@"recordingEndedDate"];
  [coderCopy encodeBool:self->_redisclosing forKey:@"redisclosing"];
}

- (TUCallRecordingSessionBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCallRecordingSessionBase *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordingStartedDate"];
    recordingStartedDate = v5->_recordingStartedDate;
    v5->_recordingStartedDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordingEndedDate"];
    recordingEndedDate = v5->_recordingEndedDate;
    v5->_recordingEndedDate = v14;

    v5->_redisclosing = [coderCopy decodeBoolForKey:@"redisclosing"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uUID = [(TUCallRecordingSessionBase *)self UUID];
  [v4 setUUID:uUID];

  callUUID = [(TUCallRecordingSessionBase *)self callUUID];
  [v4 setCallUUID:callUUID];

  requestUUID = [(TUCallRecordingSessionBase *)self requestUUID];
  [v4 setRequestUUID:requestUUID];

  recordingStartedDate = [(TUCallRecordingSessionBase *)self recordingStartedDate];
  [v4 setRecordingStartedDate:recordingStartedDate];

  recordingEndedDate = [(TUCallRecordingSessionBase *)self recordingEndedDate];
  [v4 setRecordingEndedDate:recordingEndedDate];

  [v4 setRedisclosing:{-[TUCallRecordingSessionBase isRedisclosing](self, "isRedisclosing")}];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallRecordingSessionBase *)self isEqualToRecordingSessionBase:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRecordingSessionBase:(id)base
{
  baseCopy = base;
  uUID = [(TUCallRecordingSessionBase *)self UUID];
  uUID2 = [baseCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    callUUID = [(TUCallRecordingSessionBase *)self callUUID];
    callUUID2 = [baseCopy callUUID];
    if ([callUUID isEqual:callUUID2])
    {
      requestUUID = [(TUCallRecordingSessionBase *)self requestUUID];
      requestUUID2 = [baseCopy requestUUID];
      if ([requestUUID isEqual:requestUUID2])
      {
        recordingStartedDate = [(TUCallRecordingSessionBase *)self recordingStartedDate];
        recordingStartedDate2 = [baseCopy recordingStartedDate];
        if (TUObjectsAreEqualOrNil(recordingStartedDate, recordingStartedDate2))
        {
          v20 = recordingStartedDate;
          recordingEndedDate = [(TUCallRecordingSessionBase *)self recordingEndedDate];
          recordingEndedDate2 = [baseCopy recordingEndedDate];
          v21 = recordingEndedDate;
          v15 = recordingEndedDate;
          v16 = recordingEndedDate2;
          if (TUObjectsAreEqualOrNil(v15, recordingEndedDate2))
          {
            isRedisclosing = [(TUCallRecordingSessionBase *)self isRedisclosing];
            v18 = isRedisclosing ^ [baseCopy isRedisclosing] ^ 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          recordingStartedDate = v20;
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