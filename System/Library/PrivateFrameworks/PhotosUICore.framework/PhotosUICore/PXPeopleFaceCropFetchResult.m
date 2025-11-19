@interface PXPeopleFaceCropFetchResult
- (CGRect)faceRect;
- (PXPeopleFaceCropFetchResult)initWithImage:(id)a3 assetObjectID:(id)a4 assetLocalIdentifier:(id)a5 faceRect:(CGRect)a6 isCropped:(BOOL)a7 isDegraded:(BOOL)a8 options:(id)a9;
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

  v5 = [(PXPeopleFaceCropFetchResult *)self image];
  [v4 appendFormat:@":\nimage: %@, \n", v5];

  v6 = [(PXPeopleFaceCropFetchResult *)self assetObjectID];
  [v4 appendFormat:@"assetObjectID: %@, \n", v6];

  v7 = [(PXPeopleFaceCropFetchResult *)self assetLocalIdentifier];
  [v4 appendFormat:@"assetLocalIdentifier: %@, \n", v7];

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

  v13 = [(PXPeopleFaceCropFetchResult *)self options];
  [v4 appendFormat:@"options: %@\n", v13];

  return v4;
}

- (PXPeopleFaceCropFetchResult)initWithImage:(id)a3 assetObjectID:(id)a4 assetLocalIdentifier:(id)a5 faceRect:(CGRect)a6 isCropped:(BOOL)a7 isDegraded:(BOOL)a8 options:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a9;
  v27.receiver = self;
  v27.super_class = PXPeopleFaceCropFetchResult;
  v23 = [(PXPeopleFaceCropFetchResult *)&v27 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_image, a3);
    objc_storeStrong(&v24->_assetObjectID, a4);
    objc_storeStrong(&v24->_assetLocalIdentifier, a5);
    v24->_faceRect.origin.x = x;
    v24->_faceRect.origin.y = y;
    v24->_faceRect.size.width = width;
    v24->_faceRect.size.height = height;
    v24->_isCropped = a7;
    v24->_isDegraded = a8;
    objc_storeStrong(&v24->_options, a9);
  }

  return v24;
}

@end