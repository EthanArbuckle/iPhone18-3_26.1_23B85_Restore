@interface TUCallRecordingRequest
- (TUCallRecordingRequest)initWithCall:(id)a3;
- (TUCallRecordingRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallRecordingRequest

- (TUCallRecordingRequest)initWithCall:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUCallRecordingRequest;
  v5 = [(TUCallRecordingRequest *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [v4 uniqueProxyIdentifier];
    v10 = [v8 initWithUUIDString:v9];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCallRecordingRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUCallRecordingRequest *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_callUUID forKey:@"callUUID"];
}

- (TUCallRecordingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallRecordingRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUCallRecordingRequest *)self UUID];
  [v4 setUUID:v5];

  v6 = [(TUCallRecordingRequest *)self callUUID];
  [v4 setCallUUID:v6];

  return v4;
}

@end