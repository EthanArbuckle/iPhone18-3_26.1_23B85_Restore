@interface CLCircularRegion(ThreeBars)
- (id)searchPredicateWithLatitudeKey:()ThreeBars longitudeKey:;
- (void)boundingBox;
@end

@implementation CLCircularRegion(ThreeBars)

- (void)boundingBox
{
  [a1 center];
  v5 = v4 * 0.0174532925;
  v6 = cos(v5 + v5) * -559.82 + 111132.92;
  v7 = v6 + cos(v5 * 4.0) * 1.175;
  v8 = v7 + cos(v5 * 6.0) * -0.0023;
  v9 = cos(v5);
  v10 = cos(v5 * 3.0) * -93.5 + v9 * 111412.84;
  v11 = v10 + cos(v5 * 5.0) * 0.118;
  [a1 radius];
  v13 = (v12 + v12) / v8;
  [a1 radius];
  v15 = (v14 + v14) / v11;
  [a1 center];
  v16 = v13 * 0.5;
  v18 = v17 - v16;
  [a1 center];
  v20 = v19 + v16;
  [a1 center];
  v21 = v15 * 0.5;
  v23 = v22 - v15 * 0.5;
  [a1 center];
  v25 = v24 + v21;
  a2[1] = CLLocationCoordinate2DMake(v20, v25);
  a2[3] = CLLocationCoordinate2DMake(v18, v25);
  *a2 = CLLocationCoordinate2DMake(v20, v23);
  a2[2] = CLLocationCoordinate2DMake(v18, v23);
}

- (id)searchPredicateWithLatitudeKey:()ThreeBars longitudeKey:
{
  v6 = a4;
  v7 = a3;
  [a1 boundingBox];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v13 = [v8 stringWithFormat:@"%@ >= %@ && %@ <= %@ && %@ >= %@ && %@ <= %@", v7, v9, v7, v10, v6, v11, v6, v12];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:v13];

  return v14;
}

@end