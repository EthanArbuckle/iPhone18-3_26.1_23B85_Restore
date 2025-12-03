@interface TUCallRecordingRequest
- (TUCallRecordingRequest)initWithCall:(id)call;
- (TUCallRecordingRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallRecordingRequest

- (TUCallRecordingRequest)initWithCall:(id)call
{
  callCopy = call;
  v13.receiver = self;
  v13.super_class = TUCallRecordingRequest;
  v5 = [(TUCallRecordingRequest *)&v13 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = [v8 initWithUUIDString:uniqueProxyIdentifier];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUCallRecordingRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  callUUID = [(TUCallRecordingRequest *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", callUUID];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
}

- (TUCallRecordingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCallRecordingRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uUID = [(TUCallRecordingRequest *)self UUID];
  [v4 setUUID:uUID];

  callUUID = [(TUCallRecordingRequest *)self callUUID];
  [v4 setCallUUID:callUUID];

  return v4;
}

@end