@interface ATXBiomeProactiveSuggestionUIFeedbackResultStream
- (ATXBiomeProactiveSuggestionUIFeedbackResultStream)initWithStoreConfig:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation ATXBiomeProactiveSuggestionUIFeedbackResultStream

- (ATXBiomeProactiveSuggestionUIFeedbackResultStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXBiomeProactiveSuggestionUIFeedbackResultStream;
  v5 = [(ATXBiomeProactiveSuggestionUIFeedbackResultStream *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"proactiveSuggestionUIFeedbackResults" storeConfig:v6 eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [(ATXBiomeProactiveSuggestionUIFeedbackResultStream *)self source];
  [v5 sendEvent:v4];
}

@end