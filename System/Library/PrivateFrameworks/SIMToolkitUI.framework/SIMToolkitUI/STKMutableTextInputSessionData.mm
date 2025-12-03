@interface STKMutableTextInputSessionData
- (void)setDefaultText:(id)text;
@end

@implementation STKMutableTextInputSessionData

- (void)setDefaultText:(id)text
{
  v4 = [text copy];
  defaultText = self->super._defaultText;
  self->super._defaultText = v4;

  MEMORY[0x2821F96F8]();
}

@end