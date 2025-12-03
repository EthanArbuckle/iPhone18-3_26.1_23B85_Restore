@interface UPContextualizerInput
- (UPContextualizerInput)initWithDomainResult:(id)result coreResult:(id)coreResult modelIdentifier:(id)identifier query:(id)query dialogAct:(id)act;
@end

@implementation UPContextualizerInput

- (UPContextualizerInput)initWithDomainResult:(id)result coreResult:(id)coreResult modelIdentifier:(id)identifier query:(id)query dialogAct:(id)act
{
  resultCopy = result;
  coreResultCopy = coreResult;
  identifierCopy = identifier;
  queryCopy = query;
  actCopy = act;
  v21.receiver = self;
  v21.super_class = UPContextualizerInput;
  v17 = [(UPContextualizerInput *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domainResult, result);
    objc_storeStrong(&v18->_coreResult, coreResult);
    objc_storeStrong(&v18->_modelIdentifier, identifier);
    objc_storeStrong(&v18->_query, query);
    objc_storeStrong(&v18->_dialogAct, act);
  }

  return v18;
}

@end