@interface PXPlacesMapThumbnailLocationCurator
- (PXPlacesMapThumbnailLocationCurator)init;
- (PXPlacesMapThumbnailLocationCurator)initWithLocationCuratorClass:(Class)class curatedThumbnailsLimit:(unint64_t)limit;
- (id)curatedGeotaggableFromSet:(id)set;
@end

@implementation PXPlacesMapThumbnailLocationCurator

- (id)curatedGeotaggableFromSet:(id)set
{
  v23[1] = *MEMORY[0x1E69E9840];
  array = [set array];
  if (array)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      px_descriptionForAssertionMessage = [array px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailLocationCurator.m" lineNumber:58 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"geotaggableSet.array", v17, px_descriptionForAssertionMessage}];
    }

    firstObject = [array firstObject];
    if (firstObject)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        px_descriptionForAssertionMessage2 = [firstObject px_descriptionForAssertionMessage];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailLocationCurator.m" lineNumber:64 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assets.firstObject", v21, px_descriptionForAssertionMessage2}];
      }

      v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v23[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v9 = [array sortedArrayUsingDescriptors:v8];

      curatedThumbnailsLimit = [(PXPlacesMapThumbnailLocationCurator *)self curatedThumbnailsLimit];
      v11 = v9;
      v12 = v11;
      if (curatedThumbnailsLimit && [v11 count] > curatedThumbnailsLimit)
      {
        [v12 subarrayWithRange:{0, curatedThumbnailsLimit}];
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

- (PXPlacesMapThumbnailLocationCurator)initWithLocationCuratorClass:(Class)class curatedThumbnailsLimit:(unint64_t)limit
{
  v9.receiver = self;
  v9.super_class = PXPlacesMapThumbnailLocationCurator;
  v6 = [(PXPlacesMapThumbnailLocationCurator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationCuratorClass, class);
    v7->_curatedThumbnailsLimit = limit;
  }

  return v7;
}

- (PXPlacesMapThumbnailLocationCurator)init
{
  v3 = objc_opt_class();
  fetchLimit = [MEMORY[0x1E69C1568] fetchLimit];

  return [(PXPlacesMapThumbnailLocationCurator *)self initWithLocationCuratorClass:v3 curatedThumbnailsLimit:fetchLimit];
}

@end