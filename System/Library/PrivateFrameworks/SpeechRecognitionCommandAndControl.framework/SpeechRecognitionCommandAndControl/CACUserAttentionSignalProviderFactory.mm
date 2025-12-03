@interface CACUserAttentionSignalProviderFactory
+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)identifier eventMask:(unint64_t)mask samplingInterval:(double)interval attentionLossTimeout:(double)timeout;
- (CACUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events;
- (id)faceAttentionAwarenessClient;
- (id)touchAttentionAwarenessClient;
@end

@implementation CACUserAttentionSignalProviderFactory

- (CACUserAttentionSignalProviderFactory)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events
{
  v9.receiver = self;
  v9.super_class = CACUserAttentionSignalProviderFactory;
  result = [(CACUserAttentionSignalProviderFactory *)&v9 init];
  if (result)
  {
    result->_samplingInterval = interval;
    result->_attentionLossTimeout = timeout;
    result->_supportedAttentionAwarenessEvents = events;
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

+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)identifier eventMask:(unint64_t)mask samplingInterval:(double)interval attentionLossTimeout:(double)timeout
{
  v9 = MEMORY[0x277CEF768];
  identifierCopy = identifier;
  v11 = objc_alloc_init(v9);
  [v11 setIdentifier:identifierCopy];

  [v11 setEventMask:mask];
  [v11 setSamplingInterval:interval];
  [v11 setSampleWhileAbsent:1];
  [v11 setAttentionLostTimeout:timeout];
  [v11 setNotificationMask:3];

  return v11;
}

@end