@interface PGMeaningfulEventRequiredCriteria
- (NSString)meaningNodeLabel;
- (PGMeaningfulEventRequiredCriteria)initWithIdentifier:(id)a3 minimumScore:(double)a4 graph:(id)a5;
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
  v2 = [(PGMeaningfulEventRequiredCriteria *)self identifier];
  if ([(__CFString *)v2 isEqualToString:@"WeakBirthday"])
  {
    v3 = @"Birthday";

    v2 = @"Birthday";
  }

  return v2;
}

- (PGMeaningfulEventRequiredCriteria)initWithIdentifier:(id)a3 minimumScore:(double)a4 graph:(id)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = PGMeaningfulEventRequiredCriteria;
  v10 = [(PGMeaningfulEventCriteria *)&v15 initWithGraph:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
    v11->_minimumScore = a4;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalAdditionalInfo = v11->_internalAdditionalInfo;
    v11->_internalAdditionalInfo = v12;
  }

  return v11;
}

@end