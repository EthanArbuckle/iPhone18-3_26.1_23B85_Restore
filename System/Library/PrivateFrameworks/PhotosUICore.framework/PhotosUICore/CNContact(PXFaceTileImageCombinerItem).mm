@interface CNContact(PXFaceTileImageCombinerItem)
- (void)px_requestImageWithTargetSize:()PXFaceTileImageCombinerItem displayScale:isRTL:resultHandler:;
@end

@implementation CNContact(PXFaceTileImageCombinerItem)

- (void)px_requestImageWithTargetSize:()PXFaceTileImageCombinerItem displayScale:isRTL:resultHandler:
{
  v13 = a4;
  if (a5 == *MEMORY[0x1E695F060] && a6 == *(MEMORY[0x1E695F060] + 8))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContact+PXFaceTileImageCombinerItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"!CGSizeEqualToSize(targetSize, CGSizeZero)"}];
  }

  if (a7 <= 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CNContact+PXFaceTileImageCombinerItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];

    if (v13)
    {
      goto LABEL_8;
    }

LABEL_10:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"CNContact+PXFaceTileImageCombinerItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

    goto LABEL_8;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_8:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __105__CNContact_PXFaceTileImageCombinerItem__px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke;
  v19[3] = &unk_1E774B658;
  v20 = v13;
  v15 = v13;
  [PXActivityUtilities requestImageForContact:self targetSize:a3 displayScale:0 isRTL:v19 deliverOnce:a5 completion:a6, a7];
}

@end