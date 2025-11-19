@interface CACUserAttentionSignalProviderFactory
+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)a3 eventMask:(unint64_t)a4 samplingInterval:(double)a5 attentionLossTimeout:(double)a6;
- (CACUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)a3 attentionLossTimeout:(double)a4 supportedAttentionAwarenessEvents:(unint64_t)a5;
- (id)faceAttentionAwarenessClient;
- (id)touchAttentionAwarenessClient;
@end

@implementation CACUserAttentionSignalProviderFactory

- (CACUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)a3 attentionLossTimeout:(double)a4 supportedAttentionAwarenessEvents:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = CACUserAttentionSignalProviderFactory;
  result = [(CACUserAttentionSignalProviderFactory *)&v9 init];
  if (result)
  {
    result->_samplingInterval = a3;
    result->_attentionLossTimeout = a4;
    result->_supportedAttentionAwarenessEvents = a5;
  }

  return result;
}

- (id)faceAttentionAwarenessClient
{
  v3 = objc_alloc_init(MEMORY[0x277CEF760]);
  v4 = [objc_opt_class() _attentionAwarenessConfigurationWithIdentifier:@"com.apple.SpeechRecognitionCore.AttentionAwareness.Face" eventMask:-[CACUserAttentionSignalProviderFactory _faceAttentionAwarenessEventMask](self samplingInterval:"_faceAttentionAwarenessEventMask") attentionLossTimeout:{self->_samplingInterval, self->_attentionLossTimeout}];
  [v3 setConfiguration:v4 shouldReset:1];

  return v3;
}

- (id)touchAttentionAwarenessClient
{
  v3 = objc_alloc_init(MEMORY[0x277CEF760]);
  v4 = [objc_opt_class() _attentionAwarenessConfigurationWithIdentifier:@"com.apple.SpeechRecognitionCore.AttentionAwareness.Touch" eventMask:-[CACUserAttentionSignalProviderFactory _touchAttentionAwarenessEventMask](self samplingInterval:"_touchAttentionAwarenessEventMask") attentionLossTimeout:{0.1, 0.1}];
  [v3 setConfiguration:v4 shouldReset:1];

  return v3;
}

+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)a3 eventMask:(unint64_t)a4 samplingInterval:(double)a5 attentionLossTimeout:(double)a6
{
  v9 = MEMORY[0x277CEF768];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  [v11 setIdentifier:v10];

  [v11 setEventMask:a4];
  [v11 setSamplingInterval:a5];
  [v11 setSampleWhileAbsent:1];
  [v11 setAttentionLostTimeout:a6];
  [v11 setNotificationMask:3];

  return v11;
}

@end