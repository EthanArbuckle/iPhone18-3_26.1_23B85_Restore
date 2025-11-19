@interface TSDBezierPathSource
+ (id)pathSourceWithBezierPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transformToNaturalSize;
- (CGSize)naturalSize;
- (TSDBezierPathSource)initWithBezierPath:(id)a3;
- (TSDBezierPathSource)initWithNaturalSize:(CGSize)a3;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_setBezierPath:(id)a3;
@end

@implementation TSDBezierPathSource

+ (id)pathSourceWithBezierPath:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithBezierPath:a3];

  return v3;
}

- (TSDBezierPathSource)initWithBezierPath:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSDBezierPathSource;
  v4 = [(TSDBezierPathSource *)&v9 init];
  if (v4)
  {
    if ([a3 elementCount] < 1)
    {
      v5 = *(MEMORY[0x277CBF398] + 16);
      v6 = *(MEMORY[0x277CBF398] + 24);
    }

    else
    {
      [a3 controlPointBounds];
    }

    v7 = v5 == *MEMORY[0x277CBF3A8] && v6 == *(MEMORY[0x277CBF3A8] + 8);
    if (v7 || TSDRectHasNaNComponents())
    {
      a3 = +[TSDBezierPath bezierPath];
      [a3 moveToPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      [a3 lineToPoint:{100.0, 100.0}];
    }

    if (a3)
    {
      [(TSDBezierPathSource *)v4 p_setBezierPath:a3];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (TSDBezierPathSource)initWithNaturalSize:(CGSize)a3
{
  v4 = [TSDBezierPath bezierPathWithRect:0.0, 0.0, a3.width, a3.height];

  return [(TSDBezierPathSource *)self initWithBezierPath:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDBezierPathSource;
  [(TSDBezierPathSource *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(TSDBezierPath *)self->mPath copy];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithBezierPath:", v5}];

  [v6 setHasHorizontalFlip:{-[TSDPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
  [v6 setHasVerticalFlip:{-[TSDPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
  [(TSDBezierPathSource *)self naturalSize];
  [v6 setNaturalSize:?];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v7;
      v11.receiver = self;
      v11.super_class = TSDBezierPathSource;
      LODWORD(v7) = [(TSDPathSource *)&v11 isEqual:a3];
      if (v7)
      {
        mPath = self->mPath;
        if (mPath == *(v8 + 16) || (LODWORD(v7) = [(TSDBezierPath *)mPath isEqual:?], v7))
        {
          LOBYTE(v7) = self->mIsRectangular == *(v8 + 24) && self->mNaturalSize.height == *(v8 + 40) && self->mNaturalSize.width == *(v8 + 32);
        }
      }
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);

  return [(NSString *)v3 hash];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = TSDBezierPathSource;
  v3 = [-[TSDBezierPathSource description](&v5 description)];
  [v3 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"; naturalSize=%@; path=%@; isRectangular=%d", NSStringFromCGSize(self->mNaturalSize), self->mPath, self->mIsRectangular)}];
  return v3;
}

- (CGAffineTransform)transformToNaturalSize
{
  [(TSDBezierPath *)self->mPath bounds];
  v6 = v5;
  v8 = v7;
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result = TSDNearlyEqualSizes(v5, v7, width, height);
  if (result)
  {
    v12 = MEMORY[0x277CBF2C0];
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v13;
    *&retstr->tx = *(v12 + 32);
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
    if (v6 > 0.01)
    {
      v16 = width / v6;
      v15 = v16;
    }

    if (v8 > 0.01)
    {
      v17 = height / v8;
      v14 = v17;
    }

    return CGAffineTransformMakeScale(retstr, v15, v14);
  }

  return result;
}

- (id)bezierPathWithoutFlips
{
  v3 = [(TSDBezierPath *)self->mPath copy];
  memset(&v5[1], 0, sizeof(CGAffineTransform));
  [(TSDBezierPathSource *)self transformToNaturalSize];
  v5[0] = v5[1];
  if (!CGAffineTransformIsIdentity(v5))
  {
    v5[0] = v5[1];
    [v3 transformUsingAffineTransform:v5];
  }

  return v3;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TSDBezierPathSource_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __44__TSDBezierPathSource_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPathSource mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathSource.m"), 176, @"nil object after cast"}];
  }

  if (*(*(a1 + 40) + 24) == *(v2 + 24))
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__TSDBezierPathSource_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDBezierPathSource *__56__TSDBezierPathSource_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  [*(a1 + 40) naturalSize];
  v4 = v3;
  v6 = v5;
  [v2 naturalSize];
  v9 = TSDMixSizes(v4, v6, v7, v8, *(a1 + 48));
  v11 = v10;
  v12 = +[TSDBezierPathSource pathSourceWithBezierPath:](TSDBezierPathSource, "pathSourceWithBezierPath:", [*(a1 + 40) bezierPath]);
  [(TSDBezierPathSource *)v12 setNaturalSize:v9, v11];
  return v12;
}

- (void)p_setBezierPath:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPathSource p_setBezierPath:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathSource.m"), 207, @"invalid nil value for '%s'", "path"}];
  }

  [a3 bounds];
  v8 = v7;
  v10 = v9;
  if (!TSDNearlyEqualPoints(v7, v9, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)))
  {
    CGAffineTransformMakeTranslation(&v14, -v8, -v10);
    [a3 transformUsingAffineTransform:&v14];
  }

  v11 = a3;

  self->mPath = a3;
  [a3 bounds];
  self->mNaturalSize.width = v12;
  self->mNaturalSize.height = v13;
  self->mIsRectangular = [(TSDBezierPath *)self->mPath isRectangular];
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end