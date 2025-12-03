@interface PGMeaningfulEventRequiredCriteria
- (NSString)meaningNodeLabel;
- (PGMeaningfulEventRequiredCriteria)initWithIdentifier:(id)identifier minimumScore:(double)score graph:(id)graph;
- (id)debugDescription;
- (id)description;
@end

@implementation PGMeaningfulEventRequiredCriteria

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGMeaningfulEventRequiredCriteria;
  v4 = [(PGMeaningfulEventRequiredCriteria *)&v10 description];
  identifier = self->_identifier;
  minimumScore = self->_minimumScore;
  v7 = [(PGMeaningfulEventCriteria *)self _debugDescriptionWithMomentNode:0];
  v8 = [v3 stringWithFormat:@"%@ %@, %.2f, %@", v4, identifier, *&minimumScore, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGMeaningfulEventRequiredCriteria;
  v4 = [(PGMeaningfulEventRequiredCriteria *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@, %.2f", v4, self->_identifier, *&self->_minimumScore];

  return v5;
}

- (NSString)meaningNodeLabel
{
  identifier = [(PGMeaningfulEventRequiredCriteria *)self identifier];
  if ([(__CFString *)identifier isEqualToString:@"WeakBirthday"])
  {
    v3 = @"Birthday";

    identifier = @"Birthday";
  }

  return identifier;
}

- (PGMeaningfulEventRequiredCriteria)initWithIdentifier:(id)identifier minimumScore:(double)score graph:(id)graph
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PGMeaningfulEventRequiredCriteria;
  v10 = [(PGMeaningfulEventCriteria *)&v15 initWithGraph:graph];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    v11->_minimumScore = score;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalAdditionalInfo = v11->_internalAdditionalInfo;
    v11->_internalAdditionalInfo = v12;
  }

  return v11;
}

@end