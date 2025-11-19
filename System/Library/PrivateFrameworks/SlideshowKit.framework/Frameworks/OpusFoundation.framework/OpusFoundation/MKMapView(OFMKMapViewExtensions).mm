@interface MKMapView(OFMKMapViewExtensions)
- (uint64_t)regionToFitAnnotations;
- (uint64_t)regionToFitLocations:()OFMKMapViewExtensions;
- (uint64_t)zoomToFitAnnotations;
- (uint64_t)zoomToFitLocations:()OFMKMapViewExtensions animated:;
@end

@implementation MKMapView(OFMKMapViewExtensions)

- (uint64_t)regionToFitAnnotations
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [a1 annotations];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = -90.0;
    v7 = 180.0;
    v8 = 90.0;
    v9 = -180.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 coordinate];
        v7 = fmin(v7, v12);
        [v11 coordinate];
        v6 = fmax(v6, v13);
        [v11 coordinate];
        v9 = fmax(v9, v14);
        [v11 coordinate];
        v8 = fmin(v8, v15);
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -90.0;
    v7 = 180.0;
    v8 = 90.0;
    v9 = -180.0;
  }

  return [a1 regionThatFits:{v6 - (v6 - v8) * 0.5, v7 + (v9 - v7) * 0.5, vabdd_f64(v6, v8) * 1.1, vabdd_f64(v9, v7) * 1.1}];
}

- (uint64_t)zoomToFitAnnotations
{
  result = [objc_msgSend(a1 "annotations")];
  if (result)
  {
    [a1 regionToFitAnnotations];

    return [a1 setRegion:1 animated:?];
  }

  return result;
}

- (uint64_t)regionToFitLocations:()OFMKMapViewExtensions
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = -90.0;
    v9 = 180.0;
    v10 = 90.0;
    v11 = -180.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        [v13 coordinate];
        v9 = fmin(v9, v14);
        [v13 coordinate];
        v8 = fmax(v8, v15);
        [v13 coordinate];
        v11 = fmax(v11, v16);
        [v13 coordinate];
        v10 = fmin(v10, v17);
      }

      v6 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = -90.0;
    v9 = 180.0;
    v10 = 90.0;
    v11 = -180.0;
  }

  return [a1 regionThatFits:{v8 - (v8 - v10) * 0.5, v9 + (v11 - v9) * 0.5, vabdd_f64(v8, v10) * 1.1, vabdd_f64(v11, v9) * 1.1}];
}

- (uint64_t)zoomToFitLocations:()OFMKMapViewExtensions animated:
{
  result = [a3 count];
  if (result)
  {
    [a1 regionToFitLocations:a3];

    return [a1 setRegion:a4 animated:?];
  }

  return result;
}

@end