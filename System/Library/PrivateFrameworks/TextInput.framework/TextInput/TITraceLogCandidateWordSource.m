@interface TITraceLogCandidateWordSource
- (TITraceLogCandidateWordSource)initWithWordSource:(id)a3 probability:(double)a4 linguisticContextProbability:(double)a5;
@end

@implementation TITraceLogCandidateWordSource

- (TITraceLogCandidateWordSource)initWithWordSource:(id)a3 probability:(double)a4 linguisticContextProbability:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TITraceLogCandidateWordSource;
  v10 = [(TITraceLogCandidateWordSource *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wordSource, a3);
    v11->_probability = a4;
    v11->_linguisticContextProbability = a5;
  }

  return v11;
}

@end