@interface PLDisambiguationResult
- (PLDisambiguationResult)initWithDisambiguation:(id)a3 personLookupIdentifiers:(id)a4 locationNames:(id)a5 genericLocationTuples:(id)a6;
@end

@implementation PLDisambiguationResult

- (PLDisambiguationResult)initWithDisambiguation:(id)a3 personLookupIdentifiers:(id)a4 locationNames:(id)a5 genericLocationTuples:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLDisambiguationResult.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"disambiguation"}];
  }

  v26.receiver = self;
  v26.super_class = PLDisambiguationResult;
  v16 = [(PLDisambiguationResult *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_disambiguation, a3);
    v18 = [v13 copy];
    personLookupIdentifiers = v17->_personLookupIdentifiers;
    v17->_personLookupIdentifiers = v18;

    v20 = [v14 copy];
    locationNames = v17->_locationNames;
    v17->_locationNames = v20;

    v22 = [v15 copy];
    genericLocationTuples = v17->_genericLocationTuples;
    v17->_genericLocationTuples = v22;
  }

  return v17;
}

@end