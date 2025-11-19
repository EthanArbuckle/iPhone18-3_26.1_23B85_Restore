@interface TUCallStartRecordingRequest
- (TUCallStartRecordingRequest)initWithCall:(id)a3 mode:(int64_t)a4 isInitiatedLocally:(BOOL)a5;
- (TUCallStartRecordingRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallStartRecordingRequest

- (TUCallStartRecordingRequest)initWithCall:(id)a3 mode:(int64_t)a4 isInitiatedLocally:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = TUCallStartRecordingRequest;
  result = [(TUCallRecordingRequest *)&v8 initWithCall:a3];
  if (result)
  {
    result->_mode = a4;
    result->_isInitiatedLocally = a5;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCallRecordingRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUCallRecordingRequest *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", v5];

  [v3 appendFormat:@" mode=%ld", -[TUCallStartRecordingRequest mode](self, "mode")];
  [v3 appendFormat:@" isInitiatedLocally=%d", -[TUCallStartRecordingRequest isInitiatedLocally](self, "isInitiatedLocally")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUCallStartRecordingRequest;
  v4 = a3;
  [(TUCallRecordingRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_mode forKey:{@"mode", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_isInitiatedLocally forKey:@"isInitiatedLocally"];
}

- (TUCallStartRecordingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TUCallStartRecordingRequest;
  v5 = [(TUCallRecordingRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_mode = [v4 decodeIntForKey:@"mode"];
    v5->_isInitiatedLocally = [v4 decodeBoolForKey:@"isInitiatedLocally"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TUCallStartRecordingRequest;
  v4 = [(TUCallRecordingRequest *)&v6 copyWithZone:a3];
  [v4 setMode:{-[TUCallStartRecordingRequest mode](self, "mode")}];
  [v4 setIsInitiatedLocally:{-[TUCallStartRecordingRequest isInitiatedLocally](self, "isInitiatedLocally")}];
  return v4;
}

@end