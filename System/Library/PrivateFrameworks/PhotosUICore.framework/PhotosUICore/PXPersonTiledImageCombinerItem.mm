@interface PXPersonTiledImageCombinerItem
- (PXPersonTiledImageCombinerItem)initWithPerson:(id)a3;
- (void)px_requestImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6;
@end

@implementation PXPersonTiledImageCombinerItem

- (void)px_requestImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a6;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPerson+PXFaceTileImageCombinerItem.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"!CGSizeEqualToSize(targetSize, CGSizeZero)"}];
  }

  if (a4 <= 0.0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPerson+PXFaceTileImageCombinerItem.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];

    if (v11)
    {
      goto LABEL_8;
    }

LABEL_10:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXPerson+PXFaceTileImageCombinerItem.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

    goto LABEL_8;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  person = self->_person;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__PXPersonTiledImageCombinerItem_px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke;
  v18[3] = &unk_1E774B680;
  v19 = v11;
  v14 = v11;
  [(PXPerson *)person requestFaceCropImageWithTargetSize:0 displayScale:0 cropFactor:1 style:1 cacheResult:v18 synchronous:width resultHandler:height, a4];
}

void __97__PXPersonTiledImageCombinerItem_px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"PXPeopleErrorKey"];
  (*(v4 + 16))(v4, v5, v6);
}

- (PXPersonTiledImageCombinerItem)initWithPerson:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPerson+PXFaceTileImageCombinerItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v11.receiver = self;
  v11.super_class = PXPersonTiledImageCombinerItem;
  v7 = [(PXPersonTiledImageCombinerItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_person, a3);
  }

  return v8;
}

@end