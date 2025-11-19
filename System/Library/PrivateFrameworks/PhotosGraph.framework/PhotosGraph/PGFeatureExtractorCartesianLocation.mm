@interface PGFeatureExtractorCartesianLocation
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorCartesianLocation

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v25[3] = *MEMORY[0x277D85DE8];
  v4 = [a3 location];
  v5 = v4;
  if (v4)
  {
    [v4 coordinate];
    *&v6 = v6;
    *&v7 = v7;
    [MEMORY[0x277D3ACD0] cartesianCoordinateFromLatitude:v6 longitude:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = objc_alloc(MEMORY[0x277D22C40]);
    LODWORD(v15) = v9;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    LODWORD(v17) = v11;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:{v17, v16}];
    v25[1] = v18;
    LODWORD(v19) = v13;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v25[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v22 = [v14 initWithArray:v21];
  }

  else
  {
    v22 = [MEMORY[0x277D22C40] zerosOfCount:3];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)featureNames
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"LOCATION_X";
  v5[1] = @"LOCATION_Y";
  v5[2] = @"LOCATION_Z";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end