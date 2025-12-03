@interface TIDPNgramRecorderCascading
- (BOOL)report;
- (TIDPNgramRecorderCascading)initWithTypingSession:(id)session aligned:(id)aligned n:(unint64_t)n;
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
      typingSession = [(TIDPRecorder *)self typingSession];
      typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
      v5 = [(TIDPNgramRecorderCascading *)v7 initWithTypingSession:typingSession aligned:typingSessionAligned n:v4];

      delegate = [(TIDPRecorder *)self delegate];
      NSClassFromString(&cfstr_Tidpreportermo.isa);
      LOBYTE(typingSessionAligned) = objc_opt_isKindOfClass();

      if (typingSessionAligned)
      {
        delegate2 = [(TIDPRecorder *)self delegate];
        [(TIDPRecorder *)v5 setDelegate:delegate2];
      }

      [(TIDPNgramRecorder *)v5 report];
      --v4;
    }

    while (v4 > 1);
  }

  return 0;
}

- (TIDPNgramRecorderCascading)initWithTypingSession:(id)session aligned:(id)aligned n:(unint64_t)n
{
  v10.receiver = self;
  v10.super_class = TIDPNgramRecorderCascading;
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