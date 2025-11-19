@interface UPContextualizerInput
- (UPContextualizerInput)initWithDomainResult:(id)a3 coreResult:(id)a4 modelIdentifier:(id)a5 query:(id)a6 dialogAct:(id)a7;
@end

@implementation UPContextualizerInput

- (UPContextualizerInput)initWithDomainResult:(id)a3 coreResult:(id)a4 modelIdentifier:(id)a5 query:(id)a6 dialogAct:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = UPContextualizerInput;
  v17 = [(UPContextualizerInput *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domainResult, a3);
    objc_storeStrong(&v18->_coreResult, a4);
    objc_storeStrong(&v18->_modelIdentifier, a5);
    objc_storeStrong(&v18->_query, a6);
    objc_storeStrong(&v18->_dialogAct, a7);
  }

  return v18;
}

@end