@interface TITraceLogCandidateWordSource
- (TITraceLogCandidateWordSource)initWithWordSource:(id)source probability:(double)probability linguisticContextProbability:(double)contextProbability;
@end

@implementation TITraceLogCandidateWordSource

- (TITraceLogCandidateWordSource)initWithWordSource:(id)source probability:(double)probability linguisticContextProbability:(double)contextProbability
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = TITraceLogCandidateWordSource;
  v10 = [(TITraceLogCandidateWordSource *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wordSource, source);
    v11->_probability = probability;
    v11->_linguisticContextProbability = contextProbability;
  }

  return v11;
}

@end