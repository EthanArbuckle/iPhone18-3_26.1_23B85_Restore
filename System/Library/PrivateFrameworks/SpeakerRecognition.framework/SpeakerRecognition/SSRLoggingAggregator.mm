@interface SSRLoggingAggregator
- (SSRLoggingAggregator)initWithEvent:(id)a3 locale:(id)a4 configVersion:(id)a5;
- (void)appendVoiceProfileDiscardedImplicitUtteranceScoreWith:(float)a3;
- (void)appendVoiceProfileExplicitUtteranceScoreWith:(float)a3;
- (void)appendVoiceProfileFailedExplicitUtteranceScoreWith:(float)a3;
- (void)appendVoiceProfileImplicitUtteranceScoreWith:(float)a3;
- (void)pushAnalytics;
- (void)pushAnalyticsWithLazyBlock:(id)a3;
- (void)setRetrainingWaitTime:(double)a3;
- (void)setSpeakerRecognitionProcessingStatus:(unint64_t)a3;
- (void)setSpeakerRecognitionWaitTime:(double)a3;
- (void)setVoiceProfileDiscardedUtteranceCount:(unint64_t)a3;
- (void)setVoiceProfilePruningFailureReasonCode:(unint64_t)a3;
- (void)setVoiceProfileRetainedUtteranceCount:(unint64_t)a3;
- (void)setVoiceProfileRetrainingFailureReasonCode:(unint64_t)a3;
- (void)setVoiceProfileUpdateScoreMSE:(float)a3;
- (void)setvoiceProfilePrunedUtteranceCount:(unint64_t)a3;
@end

@implementation SSRLoggingAggregator

- (void)pushAnalytics
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    eventString = self->_eventString;
    v7 = 136315394;
    v8 = "[SSRLoggingAggregator pushAnalytics]";
    v9 = 2114;
    v10 = eventString;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Sending Analytics Event - %{public}@", &v7, 0x16u);
  }

  v5 = [(NSMutableDictionary *)self->_eventContext copy];
  AnalyticsSendEvent();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSpeakerRecognitionWaitTime:(double)a3
{
  self->_speakerRecognitionWaitTime = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:(a3 * 1000.0)];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"speakerRecognitionWaitTimeMs"];
}

- (void)setSpeakerRecognitionProcessingStatus:(unint64_t)a3
{
  self->_speakerRecognitionProcessingStatus = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"speakerRecognitionProcessingStatus"];
}

- (void)setRetrainingWaitTime:(double)a3
{
  self->_retrainingWaitTime = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:(a3 * 1000.0)];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"retrainingWaitTimeMs"];
}

- (void)setVoiceProfileRetrainingFailureReasonCode:(unint64_t)a3
{
  self->_voiceProfileRetrainingFailureReasonCode = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"TdPsrSATRetrainingTimedOut"];
}

- (void)appendVoiceProfileFailedExplicitUtteranceScoreWith:(float)a3
{
  v5 = MEMORY[0x277CCACA8];
  explicitFailedUtteranceIndex = self->explicitFailedUtteranceIndex;
  self->explicitFailedUtteranceIndex = explicitFailedUtteranceIndex + 1;
  v9 = [v5 stringWithFormat:@"%@.%d", @"profileUpdateFailedExplicitUttScore", explicitFailedUtteranceIndex];
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:v9];
}

- (void)appendVoiceProfileDiscardedImplicitUtteranceScoreWith:(float)a3
{
  v5 = MEMORY[0x277CCACA8];
  implicitDiscardedUtteranceIndex = self->implicitDiscardedUtteranceIndex;
  self->implicitDiscardedUtteranceIndex = implicitDiscardedUtteranceIndex + 1;
  v9 = [v5 stringWithFormat:@"%@.%d", @"profileUpdateDiscardImplicitUttScore", implicitDiscardedUtteranceIndex];
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:v9];
}

- (void)appendVoiceProfileImplicitUtteranceScoreWith:(float)a3
{
  v5 = MEMORY[0x277CCACA8];
  implicitUtteranceIndex = self->implicitUtteranceIndex;
  self->implicitUtteranceIndex = implicitUtteranceIndex + 1;
  v9 = [v5 stringWithFormat:@"%@.%d", @"profileUpdateImplicitUttScore", implicitUtteranceIndex];
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:v9];
}

- (void)appendVoiceProfileExplicitUtteranceScoreWith:(float)a3
{
  v5 = MEMORY[0x277CCACA8];
  explicitUtteranceIndex = self->explicitUtteranceIndex;
  self->explicitUtteranceIndex = explicitUtteranceIndex + 1;
  v9 = [v5 stringWithFormat:@"%@.%d", @"profileUpdateExplicitUttScore", explicitUtteranceIndex];
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:v9];
}

- (void)setVoiceProfileRetainedUtteranceCount:(unint64_t)a3
{
  self->_voiceProfileRetainedUtteranceCount = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateNumRetainedUttsPHS"];
}

- (void)setvoiceProfilePrunedUtteranceCount:(unint64_t)a3
{
  self->_voiceProfilePrunedUtteranceCount = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateNumPrunedUttsPHS"];
}

- (void)setVoiceProfileDiscardedUtteranceCount:(unint64_t)a3
{
  self->_voiceProfileDiscardedUtteranceCount = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateNumDiscardedUttsPHS"];
}

- (void)setVoiceProfileUpdateScoreMSE:(float)a3
{
  self->_voiceProfileUpdateScoreMSE = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateScoreMSE"];
}

- (void)setVoiceProfilePruningFailureReasonCode:(unint64_t)a3
{
  self->_voiceProfilePruningFailureReasonCode = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateFailCode"];
}

- (void)pushAnalyticsWithLazyBlock:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

id __51__SSRLoggingAggregator_pushAnalyticsWithLazyBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return v2;
}

- (SSRLoggingAggregator)initWithEvent:(id)a3 locale:(id)a4 configVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SSRLoggingAggregator;
  v11 = [(SSRLoggingAggregator *)&v19 init];
  if (v11)
  {
    v12 = [@"com.apple.ssr" stringByAppendingFormat:@".%@", v8];
    eventString = v11->_eventString;
    v11->_eventString = v12;

    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = @"xx_XX";
    }

    [(NSMutableDictionary *)v11->_eventContext setObject:v14 forKeyedSubscript:@"locale"];
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = @"unknown";
    }

    [(NSMutableDictionary *)v11->_eventContext setObject:v15 forKeyedSubscript:@"asset"];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventContext = v11->_eventContext;
    v11->_eventContext = v16;
  }

  return v11;
}

@end