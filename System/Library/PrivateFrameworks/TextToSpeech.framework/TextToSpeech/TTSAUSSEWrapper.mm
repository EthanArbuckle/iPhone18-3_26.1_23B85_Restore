@interface TTSAUSSEWrapper
- (TTSAUSSEWrapper)initWithAudioUnit:(id)unit;
@end

@implementation TTSAUSSEWrapper

- (TTSAUSSEWrapper)initWithAudioUnit:(id)unit
{
  unitCopy = unit;
  v9.receiver = self;
  v9.super_class = TTSAUSSEWrapper;
  v6 = [(TTSAUSSEWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioUnit, unit);
  }

  return v7;
}

@end