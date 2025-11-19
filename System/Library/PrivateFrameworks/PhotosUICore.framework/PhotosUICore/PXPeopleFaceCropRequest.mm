@interface PXPeopleFaceCropRequest
- (CGPoint)normalizedCenterEyeLine;
- (CGRect)flippedNormalizedEdgeAdjustedCropRect;
- (CGRect)normalizedEdgeAdjustedCropRect;
- (CGRect)normalizedFaceCropRect;
- (CGRect)normalizedSmallFaceRect;
- (CGRect)smallFaceRect;
- (CGSize)targetSizeToUse;
- (PXPeopleFaceCropRequest)initWithFetchOptions:(id)a3;
- (id)description;
- (void)cancel;
@end

@implementation PXPeopleFaceCropRequest

- (CGSize)targetSizeToUse
{
  width = self->_targetSizeToUse.width;
  height = self->_targetSizeToUse.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)normalizedCenterEyeLine
{
  x = self->_normalizedCenterEyeLine.x;
  y = self->_normalizedCenterEyeLine.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)smallFaceRect
{
  x = self->_smallFaceRect.origin.x;
  y = self->_smallFaceRect.origin.y;
  width = self->_smallFaceRect.size.width;
  height = self->_smallFaceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedSmallFaceRect
{
  x = self->_normalizedSmallFaceRect.origin.x;
  y = self->_normalizedSmallFaceRect.origin.y;
  width = self->_normalizedSmallFaceRect.size.width;
  height = self->_normalizedSmallFaceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)flippedNormalizedEdgeAdjustedCropRect
{
  x = self->_flippedNormalizedEdgeAdjustedCropRect.origin.x;
  y = self->_flippedNormalizedEdgeAdjustedCropRect.origin.y;
  width = self->_flippedNormalizedEdgeAdjustedCropRect.size.width;
  height = self->_flippedNormalizedEdgeAdjustedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedEdgeAdjustedCropRect
{
  x = self->_normalizedEdgeAdjustedCropRect.origin.x;
  y = self->_normalizedEdgeAdjustedCropRect.origin.y;
  width = self->_normalizedEdgeAdjustedCropRect.size.width;
  height = self->_normalizedEdgeAdjustedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedFaceCropRect
{
  x = self->_normalizedFaceCropRect.origin.x;
  y = self->_normalizedFaceCropRect.origin.y;
  width = self->_normalizedFaceCropRect.size.width;
  height = self->_normalizedFaceCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = PXPeopleFaceCropRequest;
  v3 = [(PXPeopleFaceCropRequest *)&v16 description];
  v4 = [v3 mutableCopy];

  v5 = [(PXPeopleFaceCropRequest *)self options];
  [v4 appendFormat:@":\noptions: %@", v5];

  v6 = [(PXPeopleFaceCropRequest *)self face];
  [v4 appendFormat:@"face: %@, \n", v6];

  v7 = [(PXPeopleFaceCropRequest *)self asset];
  [v4 appendFormat:@"asset: %@, \n", v7];

  [v4 appendFormat:@"faceCropRequestID: %d, \n", -[PXPeopleFaceCropRequest faceCropRequestID](self, "faceCropRequestID")];
  [v4 appendFormat:@"imageManagerRequestID: %d, \n", -[PXPeopleFaceCropRequest imageManagerRequestID](self, "imageManagerRequestID")];
  [(PXPeopleFaceCropRequest *)self normalizedFaceCropRect];
  v8 = NSStringFromRect(v19);
  [v4 appendFormat:@"normalizedFaceCropRect: %@, \n", v8];

  [(PXPeopleFaceCropRequest *)self normalizedEdgeAdjustedCropRect];
  v9 = NSStringFromRect(v20);
  [v4 appendFormat:@"normalizedEdgeAdjustedCropRect: %@, \n", v9];

  [(PXPeopleFaceCropRequest *)self flippedNormalizedEdgeAdjustedCropRect];
  v10 = NSStringFromRect(v21);
  [v4 appendFormat:@"flippedNormalizedEdgeAdjustedCropRect: %@, \n", v10];

  [(PXPeopleFaceCropRequest *)self normalizedCenterEyeLine];
  v11 = NSStringFromPoint(v18);
  [v4 appendFormat:@"normalizedCenterEyeLine: %@, \n", v11];

  v12 = [(PXPeopleFaceCropRequest *)self canceled];
  v13 = @"NO";
  if (v12)
  {
    v13 = @"YES";
  }

  v14 = v13;
  [v4 appendFormat:@"canceled: %@\n", v14];

  return v4;
}

- (void)cancel
{
  self->_canceled = 1;
  v3 = [MEMORY[0x1E6978860] defaultManager];
  [v3 cancelImageRequest:{-[PXPeopleFaceCropRequest imageManagerRequestID](self, "imageManagerRequestID")}];
}

- (PXPeopleFaceCropRequest)initWithFetchOptions:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXPeopleFaceCropRequest;
  v6 = [(PXPeopleFaceCropRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    v7->_faceCropRequestID = +[PXPeopleFaceCropRequest generateUniqueRequestID];
    [v5 targetPixelSize];
    v7->_targetSizeToUse.width = v8;
    v7->_targetSizeToUse.height = v9;
  }

  return v7;
}

@end