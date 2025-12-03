@interface PSIDisambiguationIntermediateResult
- (PSIDisambiguationIntermediateResult)initWithDisambiguation:(id)disambiguation exactMatchResults:(id)results fullTokenMatchResults:(id)matchResults wildcardMatchResults:(id)wildcardMatchResults;
@end

@implementation PSIDisambiguationIntermediateResult

- (PSIDisambiguationIntermediateResult)initWithDisambiguation:(id)disambiguation exactMatchResults:(id)results fullTokenMatchResults:(id)matchResults wildcardMatchResults:(id)wildcardMatchResults
{
  disambiguationCopy = disambiguation;
  resultsCopy = results;
  matchResultsCopy = matchResults;
  wildcardMatchResultsCopy = wildcardMatchResults;
  v18.receiver = self;
  v18.super_class = PSIDisambiguationIntermediateResult;
  v15 = [(PSIDisambiguationIntermediateResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_disambiguation, disambiguation);
    objc_storeStrong(&v16->_exactMatchResults, results);
    objc_storeStrong(&v16->_fullTokenMatchResults, matchResults);
    objc_storeStrong(&v16->_wildcardMatchResults, wildcardMatchResults);
  }

  return v16;
}

@end