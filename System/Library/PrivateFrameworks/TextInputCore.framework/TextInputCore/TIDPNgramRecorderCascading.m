@interface TIDPNgramRecorderCascading
- (BOOL)report;
- (TIDPNgramRecorderCascading)initWithTypingSession:(id)a3 aligned:(id)a4 n:(unint64_t)a5;
@end

@implementation TIDPNgramRecorderCascading

- (BOOL)report
{
  v3 = [(TIDPNgramRecorderCascading *)self n];
  if (v3 >= 2)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = v5;
      v7 = [TIDPNgramRecorder alloc];
      v8 = [(TIDPRecorder *)self typingSession];
      v9 = [(TIDPRecorder *)self typingSessionAligned];
      v5 = [(TIDPNgramRecorderCascading *)v7 initWithTypingSession:v8 aligned:v9 n:v4];

      v10 = [(TIDPRecorder *)self delegate];
      NSClassFromString(&cfstr_Tidpreportermo.isa);
      LOBYTE(v9) = objc_opt_isKindOfClass();

      if (v9)
      {
        v11 = [(TIDPRecorder *)self delegate];
        [(TIDPRecorder *)v5 setDelegate:v11];
      }

      [(TIDPNgramRecorder *)v5 report];
      --v4;
    }

    while (v4 > 1);
  }

  return 0;
}

- (TIDPNgramRecorderCascading)initWithTypingSession:(id)a3 aligned:(id)a4 n:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = TIDPNgramRecorderCascading;
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