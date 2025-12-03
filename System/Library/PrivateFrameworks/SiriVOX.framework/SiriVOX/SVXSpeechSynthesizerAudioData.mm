@interface SVXSpeechSynthesizerAudioData
- (SVXSpeechSynthesizerAudioData)initWithAudioChunkData:(id)data audioChunkIndex:(unint64_t)index;
@end

@implementation SVXSpeechSynthesizerAudioData

- (SVXSpeechSynthesizerAudioData)initWithAudioChunkData:(id)data audioChunkIndex:(unint64_t)index
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = SVXSpeechSynthesizerAudioData;
  v8 = [(SVXSpeechSynthesizerAudioData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audioChunkData, data);
    v9->_audioChunkIndex = index;
  }

  return v9;
}

@end