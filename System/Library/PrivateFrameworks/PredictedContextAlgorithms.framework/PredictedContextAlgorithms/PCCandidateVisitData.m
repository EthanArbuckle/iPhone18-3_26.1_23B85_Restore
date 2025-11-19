@interface PCCandidateVisitData
- (PCCandidateVisitData)initWithVisitIdentifier:(id)a3 loiIdentifier:(id)a4 coordinate:(id)a5 entryTime:(double)a6;
- (id)description;
@end

@implementation PCCandidateVisitData

- (PCCandidateVisitData)initWithVisitIdentifier:(id)a3 loiIdentifier:(id)a4 coordinate:(id)a5 entryTime:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = PCCandidateVisitData;
  v13 = [(PCCandidateVisitData *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    visitIdentifier = v13->_visitIdentifier;
    v13->_visitIdentifier = v14;

    v16 = [v11 copy];
    loiIdentifier = v13->_loiIdentifier;
    v13->_loiIdentifier = v16;

    objc_storeStrong(&v13->_coordinate, a5);
    v13->_entryTime = a6;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PCCandidateVisitData *)self visitIdentifier];
  v7 = [PCAlgorithmsCommonUtils uuidStringFromData:v6];
  v8 = [(PCCandidateVisitData *)self loiIdentifier];
  v9 = [PCAlgorithmsCommonUtils uuidStringFromData:v8];
  v10 = [(PCCandidateVisitData *)self coordinate];
  [(PCCandidateVisitData *)self entryTime];
  v12 = [v3 stringWithFormat:@"<%@: visitIdentifier: %@, loiIdentifier: %@, coordinate: %@, entry Time: %.2f>", v5, v7, v9, v10, v11];

  return v12;
}

@end