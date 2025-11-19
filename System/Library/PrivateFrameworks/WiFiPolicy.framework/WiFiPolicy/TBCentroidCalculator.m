@interface TBCentroidCalculator
- (CLLocationCoordinate2D)centroid;
- (NSMutableArray)points;
- (void)addLatitude:(double)a3 longitude:(double)a4;
@end

@implementation TBCentroidCalculator

- (NSMutableArray)points
{
  points = self->_points;
  if (!points)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_points;
    self->_points = v4;

    points = self->_points;
  }

  return points;
}

- (void)addLatitude:(double)a3 longitude:(double)a4
{
  if ([(TBCentroidCalculator *)self _validLatitudeValue:?]&& [(TBCentroidCalculator *)self _validLongitudeValue:a4])
  {
    v7 = MEMORY[0x277CBEA60];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v11 = [v7 arrayWithObjects:{v8, v9, 0}];

    v10 = [(TBCentroidCalculator *)self points];
    [v10 addObject:v11];
  }
}

- (CLLocationCoordinate2D)centroid
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(TBCentroidCalculator *)self points];
  v4 = [v3 count];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(TBCentroidCalculator *)self points];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        if ([v13 count] == 2)
        {
          v14 = [v13 objectAtIndexedSubscript:0];
          [v14 floatValue];
          v16 = v15;

          v17 = [v13 objectAtIndexedSubscript:1];
          [v17 floatValue];
          v19 = v18;

          v20 = v16 * 0.0174532925;
          v21 = v19 * 0.0174532925;
          v22 = v21;
          v23 = __sincos_stret(v20);
          v24 = __sincos_stret(v22);
          v11 = v11 + v23.__cosval * v24.__cosval;
          v10 = v10 + v23.__cosval * v24.__sinval;
          v9 = v9 + v23.__sinval;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

  v25 = v9 / v4;
  v26 = atan2(v10 / v4, v11 / v4);
  v27 = atan2(v25, sqrt(v10 / v4 * (v10 / v4) + v11 / v4 * (v11 / v4)));
  v28 = v27 * 57.2957795;
  v29 = v26;
  v30 = v29 * 57.2957795;
  v33 = CLLocationCoordinate2DMake(v28, v30);
  longitude = v33.longitude;
  latitude = v33.latitude;
  v34 = *MEMORY[0x277D85DE8];
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end