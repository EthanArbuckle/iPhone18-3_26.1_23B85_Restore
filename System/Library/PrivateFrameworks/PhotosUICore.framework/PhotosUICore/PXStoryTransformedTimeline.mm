@interface PXStoryTransformedTimeline
- (CGAffineTransform)transform;
- (CGRect)_untransformRect:(CGRect)rect;
- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier;
- (CGRect)transformedRectForOriginalClipInfo:(id *)info originalRect:(CGRect)rect;
- (CGSize)originalSize;
- (CGSize)size;
- (PXStoryTransformedTimeline)initWithOriginalTimeline:(id)timeline;
- (PXStoryTransformedTimeline)initWithOriginalTimeline:(id)timeline transform:(CGAffineTransform *)transform;
- (id)clipWithIdentifier:(int64_t)identifier;
- (id)description;
- (void)_transformRects:(const CGRect *)rects clipInfos:(id *)infos count:(int64_t)count resultHandler:(id)handler;
- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
@end

@implementation PXStoryTransformedTimeline

- (CGAffineTransform)transform
{
  v3 = *&self[1].a;
  *&retstr->a = *&self->tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].c;
  return self;
}

- (CGSize)originalSize
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [originalTimeline originalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [originalTimeline frameForSegmentWithIdentifier:identifier];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PXStoryTransformedTimeline *)self transform];
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v24 = CGRectApplyAffineTransform(v23, &v22);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)clipWithIdentifier:(int64_t)identifier
{
  v49.receiver = self;
  v49.super_class = PXStoryTransformedTimeline;
  v4 = [(PXStoryDerivedTimeline *)&v49 clipWithIdentifier:identifier];
  v5 = v4;
  memset(v48, 0, 512);
  if (v4)
  {
    [v4 info];
  }

  else
  {
    bzero(v48, 0x300uLL);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x32010000000;
  v15 = &unk_1A561E057;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = *(MEMORY[0x1E695F050] + 16);
  v11[0] = *MEMORY[0x1E695F050];
  v11[1] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PXStoryTransformedTimeline_clipWithIdentifier___block_invoke;
  v10[3] = &unk_1E7738110;
  v10[4] = &v12;
  [(PXStoryTransformedTimeline *)self _transformRects:v11 clipInfos:v48 count:1 resultHandler:v10];
  memcpy(__dst, v13 + 4, sizeof(__dst));
  v7 = [v5 copyWithInfo:__dst];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [(PXStoryTransformedTimeline *)self _untransformRect:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__PXStoryTransformedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke;
  v24[3] = &unk_1E77380E8;
  v24[4] = self;
  v25 = blockCopy;
  v21 = *&range->var0.var3;
  v23[0] = *&range->var0.var0;
  v23[1] = v21;
  v23[2] = *&range->var1.var1;
  v22 = blockCopy;
  [originalTimeline enumerateClipsInTimeRange:v23 rect:v24 usingBlock:{v14, v16, v18, v20}];
}

void __72__PXStoryTransformedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PXStoryTransformedTimeline_enumerateClipsInTimeRange_rect_usingBlock___block_invoke_2;
  v12[3] = &unk_1E77380C0;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = a2;
  v15 = a3;
  v16 = a6;
  [v11 _transformRects:a4 clipInfos:a5 count:a2 resultHandler:v12];
}

- (CGSize)size
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [originalTimeline size];
  v9 = v5;
  v10 = v4;
  [(PXStoryTransformedTimeline *)self transform];

  v8 = vmlaq_n_f64(vmulq_n_f64(v12, v9), v11, v10);
  v7 = v8.f64[1];
  v6 = v8.f64[0];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_transformRects:(const CGRect *)rects clipInfos:(id *)infos count:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  transformedRectsStore = [(PXStoryTransformedTimeline *)self transformedRectsStore];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PXStoryTransformedTimeline__transformRects_clipInfos_count_resultHandler___block_invoke;
  v13[3] = &unk_1E7738098;
  countCopy = count;
  infosCopy = infos;
  rectsCopy = rects;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [transformedRectsStore accessArrayWithElementsCount:count accessBlock:v13];
}

void __76__PXStoryTransformedTimeline__transformRects_clipInfos_count_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) transformedClipInfosStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PXStoryTransformedTimeline__transformRects_clipInfos_count_resultHandler___block_invoke_2;
  v7[3] = &unk_1E7738070;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 56);
  v11 = a2;
  v8 = v5;
  [v4 accessArrayWithElementsCount:v6 accessBlock:v7];
}

uint64_t __76__PXStoryTransformedTimeline__transformRects_clipInfos_count_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 transform];
  }

  if (*(a1 + 48) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a1 + 56);
      v9 = (*(a1 + 64) + v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v23.origin.x = *v9;
      v23.origin.y = v11;
      v23.size.width = v12;
      v23.size.height = v13;
      if (CGRectIsNull(v23))
      {
        PXRectWithOriginAndSize();
      }

      [*(a1 + 32) transformedRectForOriginalClipInfo:v8 + v6 originalRect:{v10, v11, v12, v13}];
      v15 = v14;
      v17 = v16;
      v18 = (*(a1 + 72) + v5);
      *v18 = v19;
      v18[1] = v20;
      v18[2] = v14;
      v18[3] = v16;
      v21 = a2 + v6;
      memcpy((a2 + v6), (v8 + v6), 0x300uLL);
      *(v21 + 16) = v15;
      *(v21 + 24) = v17;
      if (*(v8 + v6 + 8) == 1)
      {
        PXStoryRectOuterBounds();
      }

      ++v7;
      v6 += 768;
      v5 += 32;
    }

    while (v7 < *(a1 + 48));
  }

  return (*(*(a1 + 40) + 16))();
}

- (CGRect)transformedRectForOriginalClipInfo:(id *)info originalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PXStoryTransformedTimeline *)self transform];
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)_untransformRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PXStoryTransformedTimeline *)self transform];
  CGAffineTransformInvert(&v8, &v7);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (id)description
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [(PXStoryTransformedTimeline *)self transform];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [originalTimeline size];
  v9 = NSStringFromCGSize(vmlaq_n_f64(vmulq_n_f64(0, v7), 0, v8));
  v10 = [v4 initWithFormat:@"<%@ %p; Transform: [%g %g %g %g %g %g]; Size: %@; Original Timeline:\n\t%@>", v6, self, 0, 0, 0, 0, 0, 0, v9, originalTimeline];

  return v10;
}

- (PXStoryTransformedTimeline)initWithOriginalTimeline:(id)timeline transform:(CGAffineTransform *)transform
{
  v14.receiver = self;
  v14.super_class = PXStoryTransformedTimeline;
  v5 = [(PXStoryDerivedTimeline *)&v14 initWithOriginalTimeline:timeline];
  v6 = v5;
  if (v5)
  {
    v8 = *&transform->c;
    v7 = *&transform->tx;
    *&v5->_transform.a = *&transform->a;
    *&v5->_transform.c = v8;
    *&v5->_transform.tx = v7;
    v9 = [[off_1E7721500 alloc] initWithElementSize:32];
    transformedRectsStore = v6->_transformedRectsStore;
    v6->_transformedRectsStore = v9;

    v11 = [[off_1E7721500 alloc] initWithElementSize:768];
    transformedClipInfosStore = v6->_transformedClipInfosStore;
    v6->_transformedClipInfosStore = v11;
  }

  return v6;
}

- (PXStoryTransformedTimeline)initWithOriginalTimeline:(id)timeline
{
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(PXStoryTransformedTimeline *)self initWithOriginalTimeline:timeline transform:v5];
}

@end