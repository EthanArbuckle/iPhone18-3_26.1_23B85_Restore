@interface _LTSpeechActivityDetector
- (_LTSpeechActivityDetector)initWithDelegate:(id)a3;
- (id)nativeAudioFormat;
- (void)addSpeechAudioData:(id)a3;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)request:(id)a3 didProduceResult:(id)a4;
@end

@implementation _LTSpeechActivityDetector

- (_LTSpeechActivityDetector)initWithDelegate:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _LTSpeechActivityDetector;
  v5 = [(_LTSpeechActivityDetector *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_alloc(MEMORY[0x277CDC8F0]);
    v8 = [(_LTSpeechActivityDetector *)v6 nativeAudioFormat];
    v9 = [v7 initWithFormat:v8];
    streamAnalyzer = v6->_streamAnalyzer;
    v6->_streamAnalyzer = v9;

    v11 = objc_alloc(MEMORY[0x277CDC918]);
    v12 = [v11 initWithSoundIdentifier:*MEMORY[0x277CDC960]];
    [(SNAudioStreamAnalyzer *)v6->_streamAnalyzer addRequest:v12 withObserver:v6 error:0];
    v13 = dispatch_queue_create("com.apple.translation.AnalysisQueue", 0);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = v6;
  }

  return v6;
}

- (id)nativeAudioFormat
{
  v2 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&SupportedASBD];

  return v2;
}

- (void)addSpeechAudioData:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___LTSpeechActivityDetector_addSpeechAudioData___block_invoke;
  v7[3] = &unk_2789B5990;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)request:(id)a3 didProduceResult:(id)a4
{
  if ([a4 detected])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 speechActivityDetected];
    }
  }
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = _LTOSLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_LTSpeechActivityDetector request:v4 didFailWithError:v5];
  }
}

- (void)request:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "SNAudioStreamAnalyzer failure: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end