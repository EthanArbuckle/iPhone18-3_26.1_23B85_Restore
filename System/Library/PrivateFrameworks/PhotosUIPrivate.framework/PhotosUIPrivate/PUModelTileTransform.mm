@interface PUModelTileTransform
- (BOOL)hasUserZoomedIn;
- (BOOL)hasUserZoomedOut;
- (BOOL)isEqual:(id)a3;
- (CGPoint)normalizedTranslation;
- (CGPoint)overscroll;
- (PUModelTileTransform)init;
- (PUModelTileTransform)initWithNoUserInput;
- (PUModelTileTransform)initWithNormalizedTranslation:(CGPoint)a3 overscroll:(CGPoint)a4 scale:(double)a5 userInputOriginIdentifier:(id)a6 isZoomedOut:(BOOL)a7;
- (id)copyWithScale:(double)a3 normalizedTranslation:(CGPoint)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation PUModelTileTransform

- (CGPoint)overscroll
{
  x = self->_overscroll.x;
  y = self->_overscroll.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)normalizedTranslation
{
  x = self->_normalizedTranslation.x;
  y = self->_normalizedTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  hasUserInput = self->_hasUserInput;
  v6 = NSStringFromCGPoint(self->_normalizedTranslation);
  v7 = NSStringFromCGPoint(self->_overscroll);
  v8 = [v3 stringWithFormat:@"<%@ %p hasUserInput:%i referencePoint:%@ overScroll:%@ scale:%f>", v4, self, hasUserInput, v6, v7, *&self->_scale];

  return v8;
}

- (BOOL)hasUserZoomedOut
{
  v3 = [(PUModelTileTransform *)self hasUserInput];
  if (v3)
  {
    [(PUModelTileTransform *)self scale];
    LOBYTE(v3) = v4 < 1.0;
  }

  return v3;
}

- (BOOL)hasUserZoomedIn
{
  v3 = [(PUModelTileTransform *)self hasUserInput];
  if (v3)
  {
    [(PUModelTileTransform *)self scale];
    LOBYTE(v3) = v4 > 1.0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PUModelTileTransform *)self hasUserInput];
    if (v6 == [v5 hasUserInput])
    {
      [(PUModelTileTransform *)self normalizedTranslation];
      v10 = v9;
      v12 = v11;
      [v5 normalizedTranslation];
      v7 = 0;
      if (v10 == v14 && v12 == v13)
      {
        [(PUModelTileTransform *)self overscroll];
        v16 = v15;
        v18 = v17;
        [v5 overscroll];
        v7 = 0;
        if (v16 == v20 && v18 == v19)
        {
          [(PUModelTileTransform *)self scale];
          v22 = v21;
          [v5 scale];
          v7 = v22 == v23;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  if (![(PUModelTileTransform *)self hasUserInput])
  {
    return 0;
  }

  [(PUModelTileTransform *)self normalizedTranslation];
  v4 = (v3 * 100.0);
  [(PUModelTileTransform *)self normalizedTranslation];
  v6 = (v5 * 100.0);
  [(PUModelTileTransform *)self overscroll];
  v8 = v7;
  [(PUModelTileTransform *)self overscroll];
  v10 = v9;
  [(PUModelTileTransform *)self scale];
  return v4 ^ v6 ^ v8 ^ v10 ^ (v11 * 100.0) ^ 0x2A;
}

- (id)copyWithScale:(double)a3 normalizedTranslation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [PUModelTileTransform alloc];
  [(PUModelTileTransform *)self overscroll];
  v10 = v9;
  v12 = v11;
  v13 = [(PUModelTileTransform *)self userInputOriginIdentifier];
  v14 = [(PUModelTileTransform *)v8 initWithNormalizedTranslation:v13 overscroll:[(PUModelTileTransform *)self isZoomedOut] scale:x userInputOriginIdentifier:y isZoomedOut:v10, v12, a3];

  return v14;
}

- (PUModelTileTransform)initWithNormalizedTranslation:(CGPoint)a3 overscroll:(CGPoint)a4 scale:(double)a5 userInputOriginIdentifier:(id)a6 isZoomedOut:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v11 = a3.y;
  v12 = a3.x;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PUModelTileTransform;
  v15 = [(PUModelTileTransform *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_hasUserInput = 1;
    v15->_normalizedTranslation.x = v12;
    v15->_normalizedTranslation.y = v11;
    v15->_overscroll.x = x;
    v15->_overscroll.y = y;
    v15->_scale = a5;
    v17 = [v14 copy];
    userInputOriginIdentifier = v16->_userInputOriginIdentifier;
    v16->_userInputOriginIdentifier = v17;

    v16->_isZoomedOut = a7;
  }

  return v16;
}

- (PUModelTileTransform)initWithNoUserInput
{
  v3.receiver = self;
  v3.super_class = PUModelTileTransform;
  result = [(PUModelTileTransform *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

- (PUModelTileTransform)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUModelTileTransform.m" lineNumber:15 description:@"please use a designated initializer"];

  return [(PUModelTileTransform *)self initWithNoUserInput];
}

@end