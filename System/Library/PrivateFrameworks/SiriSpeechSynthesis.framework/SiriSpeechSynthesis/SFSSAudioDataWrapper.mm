@interface SFSSAudioDataWrapper
- (NSArray)audioChunks;
- (SFSSAudioDataWrapper)initWithAudioChunks:(id)a3;
@end

@implementation SFSSAudioDataWrapper

- (NSArray)audioChunks
{
  WeakRetained = objc_loadWeakRetained(&self->_audioChunks);

  return WeakRetained;
}

- (SFSSAudioDataWrapper)initWithAudioChunks:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFSSAudioDataWrapper;
  v5 = [(SFSSAudioDataWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_index = 0;
    objc_storeWeak(&v5->_audioChunks, v4);
  }

  return v6;
}

@end