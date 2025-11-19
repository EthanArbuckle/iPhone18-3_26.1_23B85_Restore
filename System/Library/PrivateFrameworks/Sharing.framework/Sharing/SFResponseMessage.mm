@interface SFResponseMessage
- (SFResponseMessage)initWithRequestMessage:(id)a3;
@end

@implementation SFResponseMessage

- (SFResponseMessage)initWithRequestMessage:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFResponseMessage;
  v5 = [(SFResponseMessage *)&v11 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->super._identifier;
    v5->super._identifier = v6;

    v8 = [v4 peerDevice];
    peerDevice = v5->super._peerDevice;
    v5->super._peerDevice = v8;
  }

  return v5;
}

@end