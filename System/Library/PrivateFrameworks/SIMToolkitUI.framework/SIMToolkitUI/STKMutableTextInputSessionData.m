@interface STKMutableTextInputSessionData
- (void)setDefaultText:(id)a3;
@end

@implementation STKMutableTextInputSessionData

- (void)setDefaultText:(id)a3
{
  v4 = [a3 copy];
  defaultText = self->super._defaultText;
  self->super._defaultText = v4;

  MEMORY[0x2821F96F8]();
}

@end