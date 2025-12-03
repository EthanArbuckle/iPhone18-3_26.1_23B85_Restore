@interface SSRLoggingAggregator
- (SSRLoggingAggregator)initWithEvent:(id)event locale:(id)locale configVersion:(id)version;
- (void)appendVoiceProfileDiscardedImplicitUtteranceScoreWith:(float)with;
- (void)appendVoiceProfileExplicitUtteranceScoreWith:(float)with;
- (void)appendVoiceProfileFailedExplicitUtteranceScoreWith:(float)with;
- (void)appendVoiceProfileImplicitUtteranceScoreWith:(float)with;
- (void)pushAnalytics;
- (void)pushAnalyticsWithLazyBlock:(id)block;
- (void)setRetrainingWaitTime:(double)time;
- (void)setSpeakerRecognitionProcessingStatus:(unint64_t)status;
- (void)setSpeakerRecognitionWaitTime:(double)time;
- (void)setVoiceProfileDiscardedUtteranceCount:(unint64_t)count;
- (void)setVoiceProfilePruningFailureReasonCode:(unint64_t)code;
- (void)setVoiceProfileRetainedUtteranceCount:(unint64_t)count;
- (void)setVoiceProfileRetrainingFailureReasonCode:(unint64_t)code;
- (void)setVoiceProfileUpdateScoreMSE:(float)e;
- (void)setvoiceProfilePrunedUtteranceCount:(unint64_t)count;
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

- (void)setSpeakerRecognitionWaitTime:(double)time
{
  self->_speakerRecognitionWaitTime = time;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:(time * 1000.0)];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"speakerRecognitionWaitTimeMs"];
}

- (void)setSpeakerRecognitionProcessingStatus:(unint64_t)status
{
  self->_speakerRecognitionProcessingStatus = status;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"speakerRecognitionProcessingStatus"];
}

- (void)setRetrainingWaitTime:(double)time
{
  self->_retrainingWaitTime = time;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:(time * 1000.0)];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"retrainingWaitTimeMs"];
}

- (void)setVoiceProfileRetrainingFailureReasonCode:(unint64_t)code
{
  self->_voiceProfileRetrainingFailureReasonCode = code;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"TdPsrSATRetrainingTimedOut"];
}

- (void)appendVoiceProfileFailedExplicitUtteranceScoreWith:(float)with
{
  v5 = MEMORY[0x277CCACA8];
  explicitFailedUtteranceIndex = self->explicitFailedUtteranceIndex;
  self->explicitFailedUtteranceIndex = explicitFailedUtteranceIndex + 1;
  explicitFailedUtteranceIndex = [v5 stringWithFormat:@"%@.%d", @"profileUpdateFailedExplicitUttScore", explicitFailedUtteranceIndex];
  *&v7 = with;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:explicitFailedUtteranceIndex];
}

- (void)appendVoiceProfileDiscardedImplicitUtteranceScoreWith:(float)with
{
  v5 = MEMORY[0x277CCACA8];
  implicitDiscardedUtteranceIndex = self->implicitDiscardedUtteranceIndex;
  self->implicitDiscardedUtteranceIndex = implicitDiscardedUtteranceIndex + 1;
  implicitDiscardedUtteranceIndex = [v5 stringWithFormat:@"%@.%d", @"profileUpdateDiscardImplicitUttScore", implicitDiscardedUtteranceIndex];
  *&v7 = with;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:implicitDiscardedUtteranceIndex];
}

- (void)appendVoiceProfileImplicitUtteranceScoreWith:(float)with
{
  v5 = MEMORY[0x277CCACA8];
  implicitUtteranceIndex = self->implicitUtteranceIndex;
  self->implicitUtteranceIndex = implicitUtteranceIndex + 1;
  implicitUtteranceIndex = [v5 stringWithFormat:@"%@.%d", @"profileUpdateImplicitUttScore", implicitUtteranceIndex];
  *&v7 = with;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:implicitUtteranceIndex];
}

- (void)appendVoiceProfileExplicitUtteranceScoreWith:(float)with
{
  v5 = MEMORY[0x277CCACA8];
  explicitUtteranceIndex = self->explicitUtteranceIndex;
  self->explicitUtteranceIndex = explicitUtteranceIndex + 1;
  explicitUtteranceIndex = [v5 stringWithFormat:@"%@.%d", @"profileUpdateExplicitUttScore", explicitUtteranceIndex];
  *&v7 = with;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [(NSMutableDictionary *)self->_eventContext setObject:v8 forKeyedSubscript:explicitUtteranceIndex];
}

- (void)setVoiceProfileRetainedUtteranceCount:(unint64_t)count
{
  self->_voiceProfileRetainedUtteranceCount = count;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateNumRetainedUttsPHS"];
}

- (void)setvoiceProfilePrunedUtteranceCount:(unint64_t)count
{
  self->_voiceProfilePrunedUtteranceCount = count;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateNumPrunedUttsPHS"];
}

- (void)setVoiceProfileDiscardedUtteranceCount:(unint64_t)count
{
  self->_voiceProfileDiscardedUtteranceCount = count;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateNumDiscardedUttsPHS"];
}

- (void)setVoiceProfileUpdateScoreMSE:(float)e
{
  self->_voiceProfileUpdateScoreMSE = e;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateScoreMSE"];
}

- (void)setVoiceProfilePruningFailureReasonCode:(unint64_t)code
{
  self->_voiceProfilePruningFailureReasonCode = code;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_eventContext setObject:v4 forKeyedSubscript:@"profileUpdateFailCode"];
}

- (void)pushAnalyticsWithLazyBlock:(id)block
{
  blockCopy = block;
  v4 = blockCopy;
  if (blockCopy)
  {
    v5 = blockCopy;
    AnalyticsSendEventLazy();
  }
}

id __51__SSRLoggingAggregator_pushAnalyticsWithLazyBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return v2;
}

- (SSRLoggingAggregator)initWithEvent:(id)event locale:(id)locale configVersion:(id)version
{
  eventCopy = event;
  localeCopy = locale;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = SSRLoggingAggregator;
  v11 = [(SSRLoggingAggregator *)&v19 init];
  if (v11)
  {
    eventCopy = [@"com.apple.ssr" stringByAppendingFormat:@".%@", eventCopy];
    eventString = v11->_eventString;
    v11->_eventString = eventCopy;

    if (localeCopy)
    {
      v14 = localeCopy;
    }

    else
    {
      v14 = @"xx_XX";
    }

    [(NSMutableDictionary *)v11->_eventContext setObject:v14 forKeyedSubscript:@"locale"];
    if (versionCopy)
    {
      v15 = versionCopy;
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