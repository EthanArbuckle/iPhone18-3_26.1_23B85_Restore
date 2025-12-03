@interface SASUIUserEngagementProviderFactory
+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)identifier eventMask:(unint64_t)mask samplingInterval:(double)interval attentionLossTimeout:(double)timeout;
- (SASUIUserEngagementProviderFactory)initWithSamplingInterval:(double)interval attentionLostTimeout:(double)timeout;
- (id)buttonPressAwarenessClient;
- (id)touchAttentionAwarenessClient;
@end

@implementation SASUIUserEngagementProviderFactory

- (SASUIUserEngagementProviderFactory)initWithSamplingInterval:(double)interval attentionLostTimeout:(double)timeout
{
  v9.receiver = self;
  v9.super_class = SASUIUserEngagementProviderFactory;
  v6 = [(SASUIUserEngagementProviderFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_samplingInterval = interval;
    v6->_attentionLossTimeout = timeout;
    v6->_supportedAttentionAwarenessEvents = [(SASUIUserEngagementProviderFactory *)v6 supportedEvents];
  }

  return v7;
}

- (id)touchAttentionAwarenessClient
{
  v3 = objc_alloc_init(MEMORY[0x277CEF760]);
  v4 = [objc_opt_class() _attentionAwarenessConfigurationWithIdentifier:@"com.apple.siri.AttentionAwareness.Touch" eventMask:-[SASUIUserEngagementProviderFactory _touchAttentionAwarenessEventMask](self samplingInterval:"_touchAttentionAwarenessEventMask") attentionLossTimeout:{0.1, 0.1}];
  [v3 setConfiguration:v4 shouldReset:1];

  return v3;
}

- (id)buttonPressAwarenessClient
{
  v3 = objc_alloc_init(MEMORY[0x277CEF760]);
  v4 = [objc_opt_class() _attentionAwarenessConfigurationWithIdentifier:@"com.apple.siri.AttentionAwareness.ButtonPress" eventMask:-[SASUIUserEngagementProviderFactory _buttonPressAwarenessClientEventMask](self samplingInterval:"_buttonPressAwarenessClientEventMask") attentionLossTimeout:{0.1, 0.1}];
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
  [v11 setAttentionLostTimeout:timeout];

  return v11;
}

@end