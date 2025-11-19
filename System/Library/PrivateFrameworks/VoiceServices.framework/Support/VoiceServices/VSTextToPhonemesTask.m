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
    v15 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    *buf = 134217984;
    v21 = [v15 requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "Starting text to phonemes task %llu", buf, 0xCu);
  }

  [(VSSpeechSpeakTask *)self fetchVoiceAsset];
  v4 = [(VSSpeechSpeakTask *)self voiceSelection];

  if (v4)
  {
    v5 = MEMORY[0x277D79970];
    v6 = [(VSSpeechSpeakTask *)self request];
    v7 = [v6 text];
    v8 = [(VSSpeechSpeakTask *)self voiceSelection];
    v9 = [v8 voicePath];
    v18 = 0;
    v10 = [v5 generateTTSPhonemes:v7 voicePath:v9 phonemeSystem:-[VSTextToPhonemesTask phonemeSystem](self error:{"phonemeSystem"), &v18}];
    v11 = v18;

    v19 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [(VSSpeechSpeakTask *)self setPhonemes:v12];

    [(VSSpeechSpeakTask *)self setError:v11];
  }

  v13 = VSGetLogDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v17 = [v16 requestCreatedTimestamp];
    *buf = 134217984;
    v21 = v17;
    _os_log_debug_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEBUG, "Finished text to phonemes task %llu", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end