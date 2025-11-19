@interface PXTilingCoordinateSpaceConverter
+ (BOOL)_canConvertBetweenCoordinateSpace:(id)a3 andCoordinateSpace:(id)a4;
+ (BOOL)canConvertBetweenCoordinateSpaceIdentifier:(void *)a3 andCoordinateSpaceIdentifier:(void *)a4;
+ (id)defaultConverter;
- (CGAffineTransform)_transformOfCoordinateSpace:(SEL)a3 relativeToCoordinateSpace:(id)a4;
- (CGAffineTransform)_transformOfCoordinateSpaceIdentifier:(SEL)a3 relativeToCoordinateSpaceIdentifier:(void *)a4;
- (CGPoint)convertPoint:(CGPoint)result fromCoordinateSpaceIdentifier:(void *)a4 toCoordinateSpaceIdentifier:(void *)a5;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpaceIdentifier:(void *)a4 toCoordinateSpaceIdentifier:(void *)a5;
- (PXTileGeometry)convertTileGeometry:(SEL)a3 toCoordinateSpaceIdentifier:(PXTileGeometry *)a4;
@end

@implementation PXTilingCoordinateSpaceConverter

- (CGAffineTransform)_transformOfCoordinateSpace:(SEL)a3 relativeToCoordinateSpace:(id)a4
{
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E695EFD0];
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v12;
  *&retstr->tx = *(v11 + 32);
  if (v9 != v10)
  {
    v13 = [v9 parentSpace];
    if (v13)
    {
      v14 = v13;
      [(PXTilingCoordinateSpaceConverter *)self _transformOfCoordinateSpace:v13 relativeToCoordinateSpace:v10];
      if (v9)
      {
        [v9 transform];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v16 = *&retstr->c;
      v23 = *&retstr->a;
      v24 = v16;
      v25 = *&retstr->tx;
      p_t2 = &t2;
      v18 = &v23;
LABEL_13:
      CGAffineTransformConcat(&v27, p_t2, v18);
      v21 = *&v27.c;
      *&retstr->a = *&v27.a;
      *&retstr->c = v21;
      *&retstr->tx = *&v27.tx;

      goto LABEL_14;
    }

    v15 = [v10 parentSpace];
    if (v15)
    {
      v14 = v15;
      [(PXTilingCoordinateSpaceConverter *)self _transformOfCoordinateSpace:v9 relativeToCoordinateSpace:v15];
      if (v10)
      {
        [v10 transform];
      }

      else
      {
        memset(&v27, 0, sizeof(v27));
      }

      CGAffineTransformInvert(&t2, &v27);
      v20 = *&retstr->c;
      v23 = *&retstr->a;
      v24 = v20;
      v25 = *&retstr->tx;
      p_t2 = &v23;
      v18 = &t2;
      goto LABEL_13;
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a3 object:self file:@"PXTilingCoordinateSpaceConverter.m" lineNumber:80 description:@"coordinate spaces don't have a common ancestor"];
  }

LABEL_14:

  return result;
}

- (CGAffineTransform)_transformOfCoordinateSpaceIdentifier:(SEL)a3 relativeToCoordinateSpaceIdentifier:(void *)a4
{
  v10 = a4;
  v8 = a5;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  [(PXTilingCoordinateSpaceConverter *)self _transformOfCoordinateSpace:v10 relativeToCoordinateSpace:v8];

  return result;
}

- (PXTileGeometry)convertTileGeometry:(SEL)a3 toCoordinateSpaceIdentifier:(PXTileGeometry *)a4
{
  v6 = *&a4->contentSize.height;
  *&retstr->hidden = *&a4->hidden;
  *&retstr->contentSize.height = v6;
  v7 = *&a4->contentsRect.size.height;
  *&retstr->contentsRect.origin.y = *&a4->contentsRect.origin.y;
  *&retstr->contentsRect.size.height = v7;
  v8 = *&a4->transform.c;
  *&retstr->transform.a = *&a4->transform.a;
  *&retstr->transform.c = v8;
  v9 = *&a4->alpha;
  *&retstr->transform.tx = *&a4->transform.tx;
  *&retstr->alpha = v9;
  size = a4->frame.size;
  retstr->frame.origin = a4->frame.origin;
  retstr->frame.size = size;
  v11 = a4->size;
  retstr->center = a4->center;
  retstr->size = v11;
  if (retstr->coordinateSpaceIdentifier != a5)
  {
    v14 = self;
    [(PXTileGeometry *)self convertRect:a4->coordinateSpaceIdentifier fromCoordinateSpaceIdentifier:a4->frame.origin.x toCoordinateSpaceIdentifier:a4->frame.origin.y, a4->frame.size.width, a4->frame.size.height];
    retstr->frame.origin.x = v15;
    retstr->frame.origin.y = v16;
    retstr->frame.size.width = v17;
    retstr->frame.size.height = v18;
    self = [(PXTileGeometry *)v14 convertPoint:a4->coordinateSpaceIdentifier fromCoordinateSpaceIdentifier:a5 toCoordinateSpaceIdentifier:a4->center.x, a4->center.y];
    retstr->center.x = v19;
    retstr->center.y = v20;
    retstr->coordinateSpaceIdentifier = a5;
  }

  return self;
}

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpaceIdentifier:(void *)a4 toCoordinateSpaceIdentifier:(void *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4 != a5)
  {
    memset(&v13[1], 0, sizeof(CGAffineTransform));
    [PXTilingCoordinateSpaceConverter _transformOfCoordinateSpaceIdentifier:"_transformOfCoordinateSpaceIdentifier:relativeToCoordinateSpaceIdentifier:" relativeToCoordinateSpaceIdentifier:?];
    v13[0] = v13[1];
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectApplyAffineTransform(v14, v13);
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)result fromCoordinateSpaceIdentifier:(void *)a4 toCoordinateSpaceIdentifier:(void *)a5
{
  y = result.y;
  if (a4 != a5)
  {
    x = result.x;
    v9 = result;
    [PXTilingCoordinateSpaceConverter _transformOfCoordinateSpaceIdentifier:"_transformOfCoordinateSpaceIdentifier:relativeToCoordinateSpaceIdentifier:" relativeToCoordinateSpaceIdentifier:?];
    result = vaddq_f64(0, vmlaq_n_f64(vmulq_laneq_f64(0, v9, 1), 0, x));
  }

  v7 = v6;
  result.y = v7;
  return result;
}

+ (BOOL)_canConvertBetweenCoordinateSpace:(id)a3 andCoordinateSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 == v7)
  {
    v13 = 1;
  }

  else
  {
    v8 = [v6 parentSpace];
    if (v8)
    {
      v9 = v8;
      v10 = a1;
      v11 = v9;
      v12 = v7;
    }

    else
    {
      v14 = [v7 parentSpace];
      if (!v14)
      {
        v13 = 0;
        goto LABEL_8;
      }

      v9 = v14;
      v10 = a1;
      v11 = v6;
      v12 = v9;
    }

    v13 = [v10 _canConvertBetweenCoordinateSpace:v11 andCoordinateSpace:v12];
  }

LABEL_8:

  return v13;
}

+ (BOOL)canConvertBetweenCoordinateSpaceIdentifier:(void *)a3 andCoordinateSpaceIdentifier:(void *)a4
{
  v6 = a3;
  v7 = a4;
  LOBYTE(a1) = [a1 _canConvertBetweenCoordinateSpace:v6 andCoordinateSpace:v7];

  return a1;
}

+ (id)defaultConverter
{
  if (defaultConverter_onceToken != -1)
  {
    dispatch_once(&defaultConverter_onceToken, &__block_literal_global_127444);
  }

  v3 = defaultConverter_defaultConverter;

  return v3;
}

void __52__PXTilingCoordinateSpaceConverter_defaultConverter__block_invoke()
{
  v0 = objc_alloc_init(PXTilingCoordinateSpaceConverter);
  v1 = defaultConverter_defaultConverter;
  defaultConverter_defaultConverter = v0;
}

@end