@interface PXStoryMultipartPanoramaCropFinder
- (PXStoryMultipartPanoramaCropFinder)initWithSaliencyAreas:(id)a3;
- (double)_scoreContentsRects:(const CGRect *)a3 count:(int64_t)a4;
- (id)bestCropContentsRectsWithAspectRatio:(double)a3 axis:(int64_t)a4;
- (int64_t)_findBestRectsWithMaximumCount:(int64_t)a3 aspectRatio:(double)a4;
- (void)_enumeratePossibleContentsRects:(CGRect *)a3 count:(int64_t)a4 usingBlock:(id)a5;
- (void)dealloc;
@end

@implementation PXStoryMultipartPanoramaCropFinder

- (double)_scoreContentsRects:(const CGRect *)a3 count:(int64_t)a4
{
  if (a4 >= 1)
  {
    PXRectGetMinForAxis();
  }

  return 0.0;
}

- (void)_enumeratePossibleContentsRects:(CGRect *)a3 count:(int64_t)a4 usingBlock:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a4 <= 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryMultipartPanoramaCropFinder.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  size = self->_referenceContentsRect.size;
  origin = self->_referenceContentsRect.origin;
  v12 = size;
  PXSizeValueForAxis();
}

- (int64_t)_findBestRectsWithMaximumCount:(int64_t)a3 aspectRatio:(double)a4
{
  v4 = a3;
  v6 = *(off_1E77221F8 + 1);
  self->_referenceContentsRect.origin = *off_1E77221F8;
  self->_referenceContentsRect.size = v6;
  if (self->_axis == 2)
  {
    self->_referenceContentsRect.size.width = self->_referenceContentsRect.size.height * a4;
  }

  else
  {
    self->_referenceContentsRect.size.height = self->_referenceContentsRect.size.width / a4;
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0xC12E848000000000;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a3 < 1)
  {
    v10 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = 1;
    do
    {
      possibleRects = self->_possibleRects;
      v12[0] = v7;
      v12[1] = 3221225472;
      v12[2] = __81__PXStoryMultipartPanoramaCropFinder__findBestRectsWithMaximumCount_aspectRatio___block_invoke;
      v12[3] = &unk_1E7746720;
      v12[4] = self;
      v12[5] = v17;
      v12[6] = &v13;
      v12[7] = v8;
      [(PXStoryMultipartPanoramaCropFinder *)self _enumeratePossibleContentsRects:possibleRects count:v8++ usingBlock:v12];
      --v4;
    }

    while (v4);
    v10 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v17, 8);
  return v10;
}

void *__81__PXStoryMultipartPanoramaCropFinder__findBestRectsWithMaximumCount_aspectRatio___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _scoreContentsRects:*(*(a1 + 32) + 8) count:*(a1 + 56)];
  v4 = v3;
  if (v3 > *(*(*(a1 + 40) + 8) + 24))
  {
    result = memcpy(*(*(a1 + 32) + 16), *(*(a1 + 32) + 8), 32 * *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = v4;
    *(*(*(a1 + 48) + 8) + 24) = *(a1 + 56);
  }

  return result;
}

- (id)bestCropContentsRectsWithAspectRatio:(double)a3 axis:(int64_t)a4
{
  v4 = +[PXStoryMultipartPanoramaSettings sharedInstance];
  [v4 maximumNumberOfParts];

  _PXGArrayCapacityResizeToCount();
}

- (void)dealloc
{
  free(self->_possibleRects);
  free(self->_bestRects);
  v3.receiver = self;
  v3.super_class = PXStoryMultipartPanoramaCropFinder;
  [(PXStoryMultipartPanoramaCropFinder *)&v3 dealloc];
}

- (PXStoryMultipartPanoramaCropFinder)initWithSaliencyAreas:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryMultipartPanoramaCropFinder;
  v5 = [(PXStoryMultipartPanoramaCropFinder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    saliencyAreas = v5->_saliencyAreas;
    v5->_saliencyAreas = v6;
  }

  return v5;
}

@end