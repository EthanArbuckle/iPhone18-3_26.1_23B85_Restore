@interface SFResponseMessage
- (SFResponseMessage)initWithRequestMessage:(id)message;
@end

@implementation SFResponseMessage

- (SFResponseMessage)initWithRequestMessage:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = SFResponseMessage;
  v5 = [(SFResponseMessage *)&v11 init];
  if (v5)
  {
    identifier = [messageCopy identifier];
    identifier = v5->super._identifier;
    v5->super._identifier = identifier;

    peerDevice = [messageCopy peerDevice];
    peerDevice = v5->super._peerDevice;
    v5->super._peerDevice = peerDevice;
  }

  return v5;
}

@end