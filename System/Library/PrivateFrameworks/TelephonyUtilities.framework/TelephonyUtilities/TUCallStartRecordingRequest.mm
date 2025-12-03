@interface TUCallStartRecordingRequest
- (TUCallStartRecordingRequest)initWithCall:(id)call mode:(int64_t)mode isInitiatedLocally:(BOOL)locally;
- (TUCallStartRecordingRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallStartRecordingRequest

- (TUCallStartRecordingRequest)initWithCall:(id)call mode:(int64_t)mode isInitiatedLocally:(BOOL)locally
{
  v8.receiver = self;
  v8.super_class = TUCallStartRecordingRequest;
  result = [(TUCallRecordingRequest *)&v8 initWithCall:call];
  if (result)
  {
    result->_mode = mode;
    result->_isInitiatedLocally = locally;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUCallRecordingRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  callUUID = [(TUCallRecordingRequest *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", callUUID];

  [v3 appendFormat:@" mode=%ld", -[TUCallStartRecordingRequest mode](self, "mode")];
  [v3 appendFormat:@" isInitiatedLocally=%d", -[TUCallStartRecordingRequest isInitiatedLocally](self, "isInitiatedLocally")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUCallStartRecordingRequest;
  coderCopy = coder;
  [(TUCallRecordingRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_mode forKey:{@"mode", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_isInitiatedLocally forKey:@"isInitiatedLocally"];
}

- (TUCallStartRecordingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TUCallStartRecordingRequest;
  v5 = [(TUCallRecordingRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_mode = [coderCopy decodeIntForKey:@"mode"];
    v5->_isInitiatedLocally = [coderCopy decodeBoolForKey:@"isInitiatedLocally"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TUCallStartRecordingRequest;
  v4 = [(TUCallRecordingRequest *)&v6 copyWithZone:zone];
  [v4 setMode:{-[TUCallStartRecordingRequest mode](self, "mode")}];
  [v4 setIsInitiatedLocally:{-[TUCallStartRecordingRequest isInitiatedLocally](self, "isInitiatedLocally")}];
  return v4;
}

@end