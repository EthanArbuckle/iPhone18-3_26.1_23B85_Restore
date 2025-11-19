@interface SVXSpeechSynthesizerAudioData
- (SVXSpeechSynthesizerAudioData)initWithAudioChunkData:(id)a3 audioChunkIndex:(unint64_t)a4;
@end

@implementation SVXSpeechSynthesizerAudioData

- (SVXSpeechSynthesizerAudioData)initWithAudioChunkData:(id)a3 audioChunkIndex:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SVXSpeechSynthesizerAudioData;
  v8 = [(SVXSpeechSynthesizerAudioData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audioChunkData, a3);
    v9->_audioChunkIndex = a4;
  }

  return v9;
}

@end