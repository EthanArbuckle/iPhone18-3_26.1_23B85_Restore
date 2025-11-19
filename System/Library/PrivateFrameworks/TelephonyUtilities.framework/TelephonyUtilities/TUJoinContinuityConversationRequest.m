@interface TUJoinContinuityConversationRequest
+ (id)requestForStagingAreaWithUUID:(id)a3;
- (TUJoinContinuityConversationRequest)initWithCoder:(id)a3;
- (TUJoinContinuityConversationRequest)initWithUUID:(id)a3 isAudioEnabled:(BOOL)a4 isVideoEnabled:(BOOL)a5 wantsStagingArea:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUJoinContinuityConversationRequest

+ (id)requestForStagingAreaWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[TUJoinContinuityConversationRequest alloc] initWithUUID:v3 isAudioEnabled:1 isVideoEnabled:1 wantsStagingArea:1];

  return v4;
}

- (TUJoinContinuityConversationRequest)initWithUUID:(id)a3 isAudioEnabled:(BOOL)a4 isVideoEnabled:(BOOL)a5 wantsStagingArea:(BOOL)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = TUJoinContinuityConversationRequest;
  v11 = [(TUJoinContinuityConversationRequest *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v11->_isAudioEnabled = a4;
    v11->_isVideoEnabled = a5;
    v11->_wantsStagingArea = a6;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" uuid=%@", self->_uuid];
  [v6 appendFormat:@" isAudioEnabled=%d", self->_isAudioEnabled];
  [v6 appendFormat:@" isVideoEnabled=%d", self->_isVideoEnabled];
  [v6 appendFormat:@" wantsStagingArea=%d", self->_wantsStagingArea];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

- (TUJoinContinuityConversationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_uuid);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = NSStringFromSelector(sel_isAudioEnabled);
  v9 = [v4 decodeBoolForKey:v8];
  v10 = NSStringFromSelector(sel_isVideoEnabled);
  v11 = [v4 decodeBoolForKey:v10];
  v12 = NSStringFromSelector(sel_wantsStagingArea);
  v13 = [v4 decodeBoolForKey:v12];

  v14 = [(TUJoinContinuityConversationRequest *)self initWithUUID:v7 isAudioEnabled:v9 isVideoEnabled:v11 wantsStagingArea:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  v6 = NSStringFromSelector(sel_uuid);
  [v5 encodeObject:uuid forKey:v6];

  isAudioEnabled = self->_isAudioEnabled;
  v8 = NSStringFromSelector(sel_isAudioEnabled);
  [v5 encodeBool:isAudioEnabled forKey:v8];

  isVideoEnabled = self->_isVideoEnabled;
  v10 = NSStringFromSelector(sel_isVideoEnabled);
  [v5 encodeBool:isVideoEnabled forKey:v10];

  wantsStagingArea = self->_wantsStagingArea;
  v12 = NSStringFromSelector(sel_wantsStagingArea);
  [v5 encodeBool:wantsStagingArea forKey:v12];
}

@end