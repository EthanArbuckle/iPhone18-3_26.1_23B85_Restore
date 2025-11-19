@interface PXPlacesMapThumbnailLocationCurator
- (PXPlacesMapThumbnailLocationCurator)init;
- (PXPlacesMapThumbnailLocationCurator)initWithLocationCuratorClass:(Class)a3 curatedThumbnailsLimit:(unint64_t)a4;
- (id)curatedGeotaggableFromSet:(id)a3;
@end

@implementation PXPlacesMapThumbnailLocationCurator

- (id)curatedGeotaggableFromSet:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 array];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v5 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailLocationCurator.m" lineNumber:58 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"geotaggableSet.array", v17, v18}];
    }

    v6 = [v5 firstObject];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v6 px_descriptionForAssertionMessage];
        [v19 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailLocationCurator.m" lineNumber:64 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assets.firstObject", v21, v22}];
      }

      v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v23[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v9 = [v5 sortedArrayUsingDescriptors:v8];

      v10 = [(PXPlacesMapThumbnailLocationCurator *)self curatedThumbnailsLimit];
      v11 = v9;
      v12 = v11;
      if (v10 && [v11 count] > v10)
      {
        [v12 subarrayWithRange:{0, v10}];
        objc_claimAutoreleasedReturnValue();
      }

      else
      {
        v13 = v12;
      }

      PXMap();
    }
  }

  return 0;
}

- (PXPlacesMapThumbnailLocationCurator)initWithLocationCuratorClass:(Class)a3 curatedThumbnailsLimit:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = PXPlacesMapThumbnailLocationCurator;
  v6 = [(PXPlacesMapThumbnailLocationCurator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationCuratorClass, a3);
    v7->_curatedThumbnailsLimit = a4;
  }

  return v7;
}

- (PXPlacesMapThumbnailLocationCurator)init
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E69C1568] fetchLimit];

  return [(PXPlacesMapThumbnailLocationCurator *)self initWithLocationCuratorClass:v3 curatedThumbnailsLimit:v4];
}

@end