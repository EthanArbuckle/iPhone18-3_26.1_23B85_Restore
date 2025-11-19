@interface SASUIUserEngagementProviderFactory
+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)a3 eventMask:(unint64_t)a4 samplingInterval:(double)a5 attentionLossTimeout:(double)a6;
- (SASUIUserEngagementProviderFactory)initWithSamplingInterval:(double)a3 attentionLostTimeout:(double)a4;
- (id)buttonPressAwarenessClient;
- (id)touchAttentionAwarenessClient;
@end

@implementation SASUIUserEngagementProviderFactory

- (SASUIUserEngagementProviderFactory)initWithSamplingInterval:(double)a3 attentionLostTimeout:(double)a4
{
  v9.receiver = self;
  v9.super_class = SASUIUserEngagementProviderFactory;
  v6 = [(SASUIUserEngagementProviderFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_samplingInterval = a3;
    v6->_attentionLossTimeout = a4;
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

+ (id)_attentionAwarenessConfigurationWithIdentifier:(id)a3 eventMask:(unint64_t)a4 samplingInterval:(double)a5 attentionLossTimeout:(double)a6
{
  v9 = MEMORY[0x277CEF768];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  [v11 setIdentifier:v10];

  [v11 setEventMask:a4];
  [v11 setSamplingInterval:a5];
  [v11 setAttentionLostTimeout:a6];

  return v11;
}

@end