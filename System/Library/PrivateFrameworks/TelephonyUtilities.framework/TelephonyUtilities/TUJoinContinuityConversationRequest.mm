@interface TUJoinContinuityConversationRequest
+ (id)requestForStagingAreaWithUUID:(id)d;
- (TUJoinContinuityConversationRequest)initWithCoder:(id)coder;
- (TUJoinContinuityConversationRequest)initWithUUID:(id)d isAudioEnabled:(BOOL)enabled isVideoEnabled:(BOOL)videoEnabled wantsStagingArea:(BOOL)area;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUJoinContinuityConversationRequest

+ (id)requestForStagingAreaWithUUID:(id)d
{
  dCopy = d;
  v4 = [[TUJoinContinuityConversationRequest alloc] initWithUUID:dCopy isAudioEnabled:1 isVideoEnabled:1 wantsStagingArea:1];

  return v4;
}

- (TUJoinContinuityConversationRequest)initWithUUID:(id)d isAudioEnabled:(BOOL)enabled isVideoEnabled:(BOOL)videoEnabled wantsStagingArea:(BOOL)area
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = TUJoinContinuityConversationRequest;
  v11 = [(TUJoinContinuityConversationRequest *)&v15 init];
  if (v11)
  {
    v12 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v11->_isAudioEnabled = enabled;
    v11->_isVideoEnabled = videoEnabled;
    v11->_wantsStagingArea = area;
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

- (TUJoinContinuityConversationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_uuid);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = NSStringFromSelector(sel_isAudioEnabled);
  v9 = [coderCopy decodeBoolForKey:v8];
  v10 = NSStringFromSelector(sel_isVideoEnabled);
  v11 = [coderCopy decodeBoolForKey:v10];
  v12 = NSStringFromSelector(sel_wantsStagingArea);
  v13 = [coderCopy decodeBoolForKey:v12];

  v14 = [(TUJoinContinuityConversationRequest *)self initWithUUID:v7 isAudioEnabled:v9 isVideoEnabled:v11 wantsStagingArea:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v6];

  isAudioEnabled = self->_isAudioEnabled;
  v8 = NSStringFromSelector(sel_isAudioEnabled);
  [coderCopy encodeBool:isAudioEnabled forKey:v8];

  isVideoEnabled = self->_isVideoEnabled;
  v10 = NSStringFromSelector(sel_isVideoEnabled);
  [coderCopy encodeBool:isVideoEnabled forKey:v10];

  wantsStagingArea = self->_wantsStagingArea;
  v12 = NSStringFromSelector(sel_wantsStagingArea);
  [coderCopy encodeBool:wantsStagingArea forKey:v12];
}

@end