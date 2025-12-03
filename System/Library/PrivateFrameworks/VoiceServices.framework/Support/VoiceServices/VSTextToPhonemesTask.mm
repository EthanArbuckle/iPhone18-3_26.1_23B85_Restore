@interface VSTextToPhonemesTask
- (void)main;
@end

@implementation VSTextToPhonemesTask

- (void)main
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    *buf = 134217984;
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "Starting text to phonemes task %llu", buf, 0xCu);
  }

  [(VSSpeechSpeakTask *)self fetchVoiceAsset];
  voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];

  if (voiceSelection)
  {
    v5 = MEMORY[0x277D79970];
    request = [(VSSpeechSpeakTask *)self request];
    text = [request text];
    voiceSelection2 = [(VSSpeechSpeakTask *)self voiceSelection];
    voicePath = [voiceSelection2 voicePath];
    v18 = 0;
    v10 = [v5 generateTTSPhonemes:text voicePath:voicePath phonemeSystem:-[VSTextToPhonemesTask phonemeSystem](self error:{"phonemeSystem"), &v18}];
    v11 = v18;

    v19 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [(VSSpeechSpeakTask *)self setPhonemes:v12];

    [(VSSpeechSpeakTask *)self setError:v11];
  }

  v13 = VSGetLogDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
    *buf = 134217984;
    requestCreatedTimestamp = requestCreatedTimestamp2;
    _os_log_debug_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEBUG, "Finished text to phonemes task %llu", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end