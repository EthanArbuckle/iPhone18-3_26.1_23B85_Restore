@interface TUContinuityHandleCapabilities
- (TUContinuityHandleCapabilities)initWithCoder:(id)coder;
- (TUContinuityHandleCapabilities)initWithSupportsTelephonyCalls:(BOOL)calls supportsFaceTimeAudio:(BOOL)audio supportsFaceTimeVideo:(BOOL)video;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuityHandleCapabilities

- (TUContinuityHandleCapabilities)initWithSupportsTelephonyCalls:(BOOL)calls supportsFaceTimeAudio:(BOOL)audio supportsFaceTimeVideo:(BOOL)video
{
  v9.receiver = self;
  v9.super_class = TUContinuityHandleCapabilities;
  result = [(TUContinuityHandleCapabilities *)&v9 init];
  if (result)
  {
    result->_supportsTelephonyCalls = calls;
    result->_supportsFaceTimeAudio = audio;
    result->_supportsFaceTimeVideo = video;
  }

  return result;
}

- (TUContinuityHandleCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"supportsTelephonyCalls"];
  v6 = [coderCopy decodeBoolForKey:@"supportsFaceTimeAudio"];
  v7 = [coderCopy decodeBoolForKey:@"supportsFaceTimeVideo"];

  return [(TUContinuityHandleCapabilities *)self initWithSupportsTelephonyCalls:v5 supportsFaceTimeAudio:v6 supportsFaceTimeVideo:v7];
}

- (void)encodeWithCoder:(id)coder
{
  supportsTelephonyCalls = self->_supportsTelephonyCalls;
  coderCopy = coder;
  [coderCopy encodeBool:supportsTelephonyCalls forKey:@"supportsTelephonyCalls"];
  [coderCopy encodeBool:self->_supportsFaceTimeAudio forKey:@"supportsFaceTimeAudio"];
  [coderCopy encodeBool:self->_supportsFaceTimeVideo forKey:@"supportsFaceTimeVideo"];
}

@end