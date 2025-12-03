@interface PXPlacesTestDataGenerator
- (PXPlacesTestDataGenerator)init;
- (id)generateOffsetArray:(double)array insert:(BOOL)insert;
- (unint64_t)generateDataPointsFromLocation:(CLLocationCoordinate2D)location toLocation:(CLLocationCoordinate2D)toLocation longDir:(int64_t)dir currentCount:(unint64_t)count;
- (void)generateTestImages:(unint64_t)images fromLocation:(CLLocationCoordinate2D)location toLocation:(CLLocationCoordinate2D)toLocation atEnd:(id)end;
@end

@implementation PXPlacesTestDataGenerator

- (void)generateTestImages:(unint64_t)images fromLocation:(CLLocationCoordinate2D)location toLocation:(CLLocationCoordinate2D)toLocation atEnd:(id)end
{
  longitude = toLocation.longitude;
  latitude = toLocation.latitude;
  v8 = location.longitude;
  v9 = location.latitude;
  endCopy = end;
  if (images)
  {
    self->_max = images;
  }

  self->_from.latitude = v9;
  self->_from.longitude = v8;
  self->_to.latitude = latitude;
  self->_to.longitude = longitude;
  generationQueue = self->_generationQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PXPlacesTestDataGenerator_generateTestImages_fromLocation_toLocation_atEnd___block_invoke;
  v15[3] = &unk_1E774A508;
  v15[4] = self;
  v16 = endCopy;
  v17 = v9;
  v18 = v8;
  v19 = latitude;
  v20 = longitude;
  v14 = endCopy;
  dispatch_async(generationQueue, v15);
}

uint64_t __78__PXPlacesTestDataGenerator_generateTestImages_fromLocation_toLocation_atEnd___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) count])
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  v3 = [*(a1 + 32) generateOffsetArray:1 insert:{vabdd_f64(*(a1 + 48), *(a1 + 64))}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v6 = vabdd_f64(*(a1 + 56), *(a1 + 72));
  if (v6 > 180.0)
  {
    v6 = 360.0 - v6;
  }

  v7 = [*(a1 + 32) generateOffsetArray:0 insert:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;

  v10 = *(a1 + 32);
  if (v10[4])
  {
    v11 = 0;
    do
    {
      v11 = [v10 generateDataPointsFromLocation:1 toLocation:v11 longDir:*(a1 + 48) currentCount:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
      v10 = *(a1 + 32);
      v12 = v10[4];
      if (v11 < v12)
      {
        v11 = [*(a1 + 32) generateDataPointsFromLocation:-1 toLocation:v11 longDir:*(a1 + 64) currentCount:{*(a1 + 72), *(a1 + 48), *(a1 + 56)}];
        v10 = *(a1 + 32);
        v12 = v10[4];
      }

      if (v11 < v12)
      {
        v13 = CLLocationCoordinate2DMake(*(a1 + 64), *(a1 + 56));
        v14 = CLLocationCoordinate2DMake(*(a1 + 48), *(a1 + 72));
        v11 = [v10 generateDataPointsFromLocation:1 toLocation:v11 longDir:v13.latitude currentCount:{v13.longitude, v14.latitude, v14.longitude}];
        v10 = *(a1 + 32);
        v12 = v10[4];
      }

      if (v11 < v12)
      {
        v15 = CLLocationCoordinate2DMake(*(a1 + 48), *(a1 + 72));
        v16 = CLLocationCoordinate2DMake(*(a1 + 64), *(a1 + 56));
        v11 = [v10 generateDataPointsFromLocation:-1 toLocation:v11 longDir:v15.latitude currentCount:{v15.longitude, v16.latitude, v16.longitude}];
        v10 = *(a1 + 32);
        v12 = v10[4];
      }
    }

    while (v11 < v12);
  }

  result = *(a1 + 40);
  if (result)
  {
LABEL_16:
    v17 = *(result + 16);

    return v17();
  }

  return result;
}

- (unint64_t)generateDataPointsFromLocation:(CLLocationCoordinate2D)location toLocation:(CLLocationCoordinate2D)toLocation longDir:(int64_t)dir currentCount:(unint64_t)count
{
  longitude = location.longitude;
  latitude = location.latitude;
  v48 = *MEMORY[0x1E69E9840];
  v11 = location.latitude <= toLocation.latitude;
  v12 = 1.0;
  if (!v11)
  {
    v12 = -1.0;
  }

  v35 = v12;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_latOffsets;
  v37 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v37)
  {
    v36 = *v43;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v43 != v36)
      {
        objc_enumerationMutation(obj);
      }

      [*(*(&v42 + 1) + 8 * v13) doubleValue];
      v15 = v14;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v16 = self->_longOffsets;
      v17 = [(NSArray *)v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = latitude + v35 * v15;
        v20 = *v39;
LABEL_10:
        v21 = 0;
        while (1)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v38 + 1) + 8 * v21) doubleValue];
          v23 = longitude + dir * v22;
          if (fabs(v23) > 180.0)
          {
            if (v23 <= 0.0)
            {
              v23 = v23 + 360.0;
            }

            else
            {
              v23 = v23 + -360.0;
            }
          }

          v24 = [PXPlacesTestDataPoint alloc];
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", count];
          v26 = CLLocationCoordinate2DMake(v19, v23);
          v27 = [(PXPlacesTestDataPoint *)v24 initWithName:v25 location:v26.latitude, v26.longitude];

          [(NSMutableArray *)self->_dataPoints addObject:v27];
          ++count;
          max = self->_max;

          if (count == max)
          {
            break;
          }

          if (v18 == ++v21)
          {
            v18 = [(NSArray *)v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v18)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      if (count == self->_max)
      {
        break;
      }

      if (++v13 == v37)
      {
        v37 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v37)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (count < self->_max)
  {
    v29 = [PXPlacesTestDataPoint alloc];
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", count];
    v31 = CLLocationCoordinate2DMake(-9999.0, -9999.0);
    v32 = [(PXPlacesTestDataPoint *)v29 initWithName:v30 location:v31.latitude, v31.longitude];

    [(NSMutableArray *)self->_dataPoints addObject:v32];
    ++count;
  }

  return count;
}

- (id)generateOffsetArray:(double)array insert:(BOOL)insert
{
  insertCopy = insert;
  v6 = objc_opt_new();
  v7 = 0.0;
  do
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    if (insertCopy)
    {
      [v6 insertObject:v8 atIndex:0];
    }

    else
    {
      [v6 addObject:v8];
    }

    v9 = array * 0.5;
    if (array * 0.5 <= 0.0001)
    {
      break;
    }

    array = array - v9;
    v7 = v7 + v9;
  }

  while (array > 0.0);

  return v6;
}

- (PXPlacesTestDataGenerator)init
{
  v9.receiver = self;
  v9.super_class = PXPlacesTestDataGenerator;
  v2 = [(PXPlacesTestDataGenerator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_max = 100;
    v2->_from = CLLocationCoordinate2DMake(47.608013, 122.335167);
    v3->_to = CLLocationCoordinate2DMake(28.538336, 81.379234);
    v4 = dispatch_queue_create("serializer", 0);
    generationQueue = v3->_generationQueue;
    v3->_generationQueue = v4;

    v6 = objc_opt_new();
    dataPoints = v3->_dataPoints;
    v3->_dataPoints = v6;
  }

  return v3;
}

@end