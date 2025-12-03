@interface PLDisambiguationResult
- (PLDisambiguationResult)initWithDisambiguation:(id)disambiguation personLookupIdentifiers:(id)identifiers locationNames:(id)names genericLocationTuples:(id)tuples;
@end

@implementation PLDisambiguationResult

- (PLDisambiguationResult)initWithDisambiguation:(id)disambiguation personLookupIdentifiers:(id)identifiers locationNames:(id)names genericLocationTuples:(id)tuples
{
  disambiguationCopy = disambiguation;
  identifiersCopy = identifiers;
  namesCopy = names;
  tuplesCopy = tuples;
  if (!disambiguationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDisambiguationResult.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"disambiguation"}];
  }

  v26.receiver = self;
  v26.super_class = PLDisambiguationResult;
  v16 = [(PLDisambiguationResult *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_disambiguation, disambiguation);
    v18 = [identifiersCopy copy];
    personLookupIdentifiers = v17->_personLookupIdentifiers;
    v17->_personLookupIdentifiers = v18;

    v20 = [namesCopy copy];
    locationNames = v17->_locationNames;
    v17->_locationNames = v20;

    v22 = [tuplesCopy copy];
    genericLocationTuples = v17->_genericLocationTuples;
    v17->_genericLocationTuples = v22;
  }

  return v17;
}

@end