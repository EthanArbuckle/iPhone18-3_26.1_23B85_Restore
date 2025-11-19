@interface PSIDisambiguationIntermediateResult
- (PSIDisambiguationIntermediateResult)initWithDisambiguation:(id)a3 exactMatchResults:(id)a4 fullTokenMatchResults:(id)a5 wildcardMatchResults:(id)a6;
@end

@implementation PSIDisambiguationIntermediateResult

- (PSIDisambiguationIntermediateResult)initWithDisambiguation:(id)a3 exactMatchResults:(id)a4 fullTokenMatchResults:(id)a5 wildcardMatchResults:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PSIDisambiguationIntermediateResult;
  v15 = [(PSIDisambiguationIntermediateResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_disambiguation, a3);
    objc_storeStrong(&v16->_exactMatchResults, a4);
    objc_storeStrong(&v16->_fullTokenMatchResults, a5);
    objc_storeStrong(&v16->_wildcardMatchResults, a6);
  }

  return v16;
}

@end