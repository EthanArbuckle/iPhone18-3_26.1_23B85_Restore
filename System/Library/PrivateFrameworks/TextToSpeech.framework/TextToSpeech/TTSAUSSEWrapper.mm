@interface TTSAUSSEWrapper
- (TTSAUSSEWrapper)initWithAudioUnit:(id)a3;
@end

@implementation TTSAUSSEWrapper

- (TTSAUSSEWrapper)initWithAudioUnit:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TTSAUSSEWrapper;
  v6 = [(TTSAUSSEWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioUnit, a3);
  }

  return v7;
}

@end