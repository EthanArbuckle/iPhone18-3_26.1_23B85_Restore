@interface PXPeopleFaceCropFetchResult
- (CGRect)faceRect;
- (PXPeopleFaceCropFetchResult)initWithImage:(id)image assetObjectID:(id)d assetLocalIdentifier:(id)identifier faceRect:(CGRect)rect isCropped:(BOOL)cropped isDegraded:(BOOL)degraded options:(id)options;
- (id)description;
@end

@implementation PXPeopleFaceCropFetchResult

- (CGRect)faceRect
{
  x = self->_faceRect.origin.x;
  y = self->_faceRect.origin.y;
  width = self->_faceRect.size.width;
  height = self->_faceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = PXPeopleFaceCropFetchResult;
  v3 = [(PXPeopleFaceCropFetchResult *)&v15 description];
  v4 = [v3 mutableCopy];

  image = [(PXPeopleFaceCropFetchResult *)self image];
  [v4 appendFormat:@":\nimage: %@, \n", image];

  assetObjectID = [(PXPeopleFaceCropFetchResult *)self assetObjectID];
  [v4 appendFormat:@"assetObjectID: %@, \n", assetObjectID];

  assetLocalIdentifier = [(PXPeopleFaceCropFetchResult *)self assetLocalIdentifier];
  [v4 appendFormat:@"assetLocalIdentifier: %@, \n", assetLocalIdentifier];

  [(PXPeopleFaceCropFetchResult *)self faceRect];
  v8 = NSStringFromCGRect(v17);
  [v4 appendFormat:@"faceRect: %@, \n", v8];
  if ([(PXPeopleFaceCropFetchResult *)self isCropped])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  [v4 appendFormat:@"isCropped: %@, \n", v10];

  if ([(PXPeopleFaceCropFetchResult *)self isDegraded])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  [v4 appendFormat:@"isDegraded: %@, \n", v12];

  options = [(PXPeopleFaceCropFetchResult *)self options];
  [v4 appendFormat:@"options: %@\n", options];

  return v4;
}

- (PXPeopleFaceCropFetchResult)initWithImage:(id)image assetObjectID:(id)d assetLocalIdentifier:(id)identifier faceRect:(CGRect)rect isCropped:(BOOL)cropped isDegraded:(BOOL)degraded options:(id)options
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  dCopy = d;
  identifierCopy = identifier;
  optionsCopy = options;
  v27.receiver = self;
  v27.super_class = PXPeopleFaceCropFetchResult;
  v23 = [(PXPeopleFaceCropFetchResult *)&v27 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_image, image);
    objc_storeStrong(&v24->_assetObjectID, d);
    objc_storeStrong(&v24->_assetLocalIdentifier, identifier);
    v24->_faceRect.origin.x = x;
    v24->_faceRect.origin.y = y;
    v24->_faceRect.size.width = width;
    v24->_faceRect.size.height = height;
    v24->_isCropped = cropped;
    v24->_isDegraded = degraded;
    objc_storeStrong(&v24->_options, options);
  }

  return v24;
}

@end