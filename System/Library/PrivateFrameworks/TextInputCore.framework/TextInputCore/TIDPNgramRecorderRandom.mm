@interface TIDPNgramRecorderRandom
- (BOOL)report;
- (TIDPNgramRecorderRandom)initWithTypingSession:(id)session aligned:(id)aligned n:(unint64_t)n;
@end

@implementation TIDPNgramRecorderRandom

- (BOOL)report
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = arc4random_uniform([(TIDPNgramRecorderCascading *)self n]+ 1);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[TIDPNgramRecorderRandom report]";
    v16 = 2048;
    v17 = v4;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Using random n value: %lu", &v14, 0x16u);
  }

  v5 = [TIDPNgramRecorder alloc];
  typingSession = [(TIDPRecorder *)self typingSession];
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  v8 = [(TIDPNgramRecorder *)v5 initWithTypingSession:typingSession aligned:typingSessionAligned n:v4 shouldDonateNgramSampleRandomly:1];

  delegate = [(TIDPRecorder *)self delegate];
  NSClassFromString(&cfstr_Tidpreportermo.isa);
  LOBYTE(typingSession) = objc_opt_isKindOfClass();

  if (typingSession)
  {
    delegate2 = [(TIDPRecorder *)self delegate];
    [(TIDPRecorder *)v8 setDelegate:delegate2];
  }

  report = [(TIDPNgramRecorder *)v8 report];

  v12 = *MEMORY[0x277D85DE8];
  return report;
}

- (TIDPNgramRecorderRandom)initWithTypingSession:(id)session aligned:(id)aligned n:(unint64_t)n
{
  v10.receiver = self;
  v10.super_class = TIDPNgramRecorderRandom;
  v6 = [(TIDPRecorder *)&v10 initWithTypingSession:session aligned:aligned];
  v7 = v6;
  if (v6)
  {
    if (n)
    {
      nCopy = n;
    }

    else
    {
      nCopy = 5;
    }

    [(TIDPNgramRecorderCascading *)v6 setN:nCopy];
  }

  return v7;
}

@end