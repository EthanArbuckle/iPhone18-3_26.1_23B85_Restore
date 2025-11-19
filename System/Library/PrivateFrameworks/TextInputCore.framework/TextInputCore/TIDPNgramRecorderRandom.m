@interface TIDPNgramRecorderRandom
- (BOOL)report;
- (TIDPNgramRecorderRandom)initWithTypingSession:(id)a3 aligned:(id)a4 n:(unint64_t)a5;
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
  v6 = [(TIDPRecorder *)self typingSession];
  v7 = [(TIDPRecorder *)self typingSessionAligned];
  v8 = [(TIDPNgramRecorder *)v5 initWithTypingSession:v6 aligned:v7 n:v4 shouldDonateNgramSampleRandomly:1];

  v9 = [(TIDPRecorder *)self delegate];
  NSClassFromString(&cfstr_Tidpreportermo.isa);
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    v10 = [(TIDPRecorder *)self delegate];
    [(TIDPRecorder *)v8 setDelegate:v10];
  }

  v11 = [(TIDPNgramRecorder *)v8 report];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (TIDPNgramRecorderRandom)initWithTypingSession:(id)a3 aligned:(id)a4 n:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = TIDPNgramRecorderRandom;
  v6 = [(TIDPRecorder *)&v10 initWithTypingSession:a3 aligned:a4];
  v7 = v6;
  if (v6)
  {
    if (a5)
    {
      v8 = a5;
    }

    else
    {
      v8 = 5;
    }

    [(TIDPNgramRecorderCascading *)v6 setN:v8];
  }

  return v7;
}

@end