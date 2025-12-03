@interface PCCandidateVisitData
- (PCCandidateVisitData)initWithVisitIdentifier:(id)identifier loiIdentifier:(id)loiIdentifier coordinate:(id)coordinate entryTime:(double)time;
- (id)description;
@end

@implementation PCCandidateVisitData

- (PCCandidateVisitData)initWithVisitIdentifier:(id)identifier loiIdentifier:(id)loiIdentifier coordinate:(id)coordinate entryTime:(double)time
{
  identifierCopy = identifier;
  loiIdentifierCopy = loiIdentifier;
  coordinateCopy = coordinate;
  v19.receiver = self;
  v19.super_class = PCCandidateVisitData;
  v13 = [(PCCandidateVisitData *)&v19 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    visitIdentifier = v13->_visitIdentifier;
    v13->_visitIdentifier = v14;

    v16 = [loiIdentifierCopy copy];
    loiIdentifier = v13->_loiIdentifier;
    v13->_loiIdentifier = v16;

    objc_storeStrong(&v13->_coordinate, coordinate);
    v13->_entryTime = time;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  visitIdentifier = [(PCCandidateVisitData *)self visitIdentifier];
  v7 = [PCAlgorithmsCommonUtils uuidStringFromData:visitIdentifier];
  loiIdentifier = [(PCCandidateVisitData *)self loiIdentifier];
  v9 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
  coordinate = [(PCCandidateVisitData *)self coordinate];
  [(PCCandidateVisitData *)self entryTime];
  v12 = [v3 stringWithFormat:@"<%@: visitIdentifier: %@, loiIdentifier: %@, coordinate: %@, entry Time: %.2f>", v5, v7, v9, coordinate, v11];

  return v12;
}

@end