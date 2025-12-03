@interface PXTilingCoordinateSpaceConverter
+ (BOOL)_canConvertBetweenCoordinateSpace:(id)space andCoordinateSpace:(id)coordinateSpace;
+ (BOOL)canConvertBetweenCoordinateSpaceIdentifier:(void *)identifier andCoordinateSpaceIdentifier:(void *)spaceIdentifier;
+ (id)defaultConverter;
- (CGAffineTransform)_transformOfCoordinateSpace:(SEL)space relativeToCoordinateSpace:(id)coordinateSpace;
- (CGAffineTransform)_transformOfCoordinateSpaceIdentifier:(SEL)identifier relativeToCoordinateSpaceIdentifier:(void *)spaceIdentifier;
- (CGPoint)convertPoint:(CGPoint)result fromCoordinateSpaceIdentifier:(void *)identifier toCoordinateSpaceIdentifier:(void *)spaceIdentifier;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpaceIdentifier:(void *)identifier toCoordinateSpaceIdentifier:(void *)spaceIdentifier;
- (PXTileGeometry)convertTileGeometry:(SEL)geometry toCoordinateSpaceIdentifier:(PXTileGeometry *)identifier;
@end

@implementation PXTilingCoordinateSpaceConverter

- (CGAffineTransform)_transformOfCoordinateSpace:(SEL)space relativeToCoordinateSpace:(id)coordinateSpace
{
  coordinateSpaceCopy = coordinateSpace;
  v10 = a5;
  v11 = MEMORY[0x1E695EFD0];
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v12;
  *&retstr->tx = *(v11 + 32);
  if (coordinateSpaceCopy != v10)
  {
    parentSpace = [coordinateSpaceCopy parentSpace];
    if (parentSpace)
    {
      v14 = parentSpace;
      [(PXTilingCoordinateSpaceConverter *)self _transformOfCoordinateSpace:parentSpace relativeToCoordinateSpace:v10];
      if (coordinateSpaceCopy)
      {
        [coordinateSpaceCopy transform];
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

    parentSpace2 = [v10 parentSpace];
    if (parentSpace2)
    {
      v14 = parentSpace2;
      [(PXTilingCoordinateSpaceConverter *)self _transformOfCoordinateSpace:coordinateSpaceCopy relativeToCoordinateSpace:parentSpace2];
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:space object:self file:@"PXTilingCoordinateSpaceConverter.m" lineNumber:80 description:@"coordinate spaces don't have a common ancestor"];
  }

LABEL_14:

  return result;
}

- (CGAffineTransform)_transformOfCoordinateSpaceIdentifier:(SEL)identifier relativeToCoordinateSpaceIdentifier:(void *)spaceIdentifier
{
  spaceIdentifierCopy = spaceIdentifier;
  v8 = a5;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  [(PXTilingCoordinateSpaceConverter *)self _transformOfCoordinateSpace:spaceIdentifierCopy relativeToCoordinateSpace:v8];

  return result;
}

- (PXTileGeometry)convertTileGeometry:(SEL)geometry toCoordinateSpaceIdentifier:(PXTileGeometry *)identifier
{
  v6 = *&identifier->contentSize.height;
  *&retstr->hidden = *&identifier->hidden;
  *&retstr->contentSize.height = v6;
  v7 = *&identifier->contentsRect.size.height;
  *&retstr->contentsRect.origin.y = *&identifier->contentsRect.origin.y;
  *&retstr->contentsRect.size.height = v7;
  v8 = *&identifier->transform.c;
  *&retstr->transform.a = *&identifier->transform.a;
  *&retstr->transform.c = v8;
  v9 = *&identifier->alpha;
  *&retstr->transform.tx = *&identifier->transform.tx;
  *&retstr->alpha = v9;
  size = identifier->frame.size;
  retstr->frame.origin = identifier->frame.origin;
  retstr->frame.size = size;
  v11 = identifier->size;
  retstr->center = identifier->center;
  retstr->size = v11;
  if (retstr->coordinateSpaceIdentifier != a5)
  {
    selfCopy = self;
    [(PXTileGeometry *)self convertRect:identifier->coordinateSpaceIdentifier fromCoordinateSpaceIdentifier:identifier->frame.origin.x toCoordinateSpaceIdentifier:identifier->frame.origin.y, identifier->frame.size.width, identifier->frame.size.height];
    retstr->frame.origin.x = v15;
    retstr->frame.origin.y = v16;
    retstr->frame.size.width = v17;
    retstr->frame.size.height = v18;
    self = [(PXTileGeometry *)selfCopy convertPoint:identifier->coordinateSpaceIdentifier fromCoordinateSpaceIdentifier:a5 toCoordinateSpaceIdentifier:identifier->center.x, identifier->center.y];
    retstr->center.x = v19;
    retstr->center.y = v20;
    retstr->coordinateSpaceIdentifier = a5;
  }

  return self;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpaceIdentifier:(void *)identifier toCoordinateSpaceIdentifier:(void *)spaceIdentifier
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (identifier != spaceIdentifier)
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

- (CGPoint)convertPoint:(CGPoint)result fromCoordinateSpaceIdentifier:(void *)identifier toCoordinateSpaceIdentifier:(void *)spaceIdentifier
{
  y = result.y;
  if (identifier != spaceIdentifier)
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

+ (BOOL)_canConvertBetweenCoordinateSpace:(id)space andCoordinateSpace:(id)coordinateSpace
{
  spaceCopy = space;
  coordinateSpaceCopy = coordinateSpace;
  if (spaceCopy == coordinateSpaceCopy)
  {
    v13 = 1;
  }

  else
  {
    parentSpace = [spaceCopy parentSpace];
    if (parentSpace)
    {
      v9 = parentSpace;
      selfCopy2 = self;
      v11 = v9;
      v12 = coordinateSpaceCopy;
    }

    else
    {
      parentSpace2 = [coordinateSpaceCopy parentSpace];
      if (!parentSpace2)
      {
        v13 = 0;
        goto LABEL_8;
      }

      v9 = parentSpace2;
      selfCopy2 = self;
      v11 = spaceCopy;
      v12 = v9;
    }

    v13 = [selfCopy2 _canConvertBetweenCoordinateSpace:v11 andCoordinateSpace:v12];
  }

LABEL_8:

  return v13;
}

+ (BOOL)canConvertBetweenCoordinateSpaceIdentifier:(void *)identifier andCoordinateSpaceIdentifier:(void *)spaceIdentifier
{
  identifierCopy = identifier;
  spaceIdentifierCopy = spaceIdentifier;
  LOBYTE(self) = [self _canConvertBetweenCoordinateSpace:identifierCopy andCoordinateSpace:spaceIdentifierCopy];

  return self;
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