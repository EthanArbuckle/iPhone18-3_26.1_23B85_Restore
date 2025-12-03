@interface PUModelTileTransform
- (BOOL)hasUserZoomedIn;
- (BOOL)hasUserZoomedOut;
- (BOOL)isEqual:(id)equal;
- (CGPoint)normalizedTranslation;
- (CGPoint)overscroll;
- (PUModelTileTransform)init;
- (PUModelTileTransform)initWithNoUserInput;
- (PUModelTileTransform)initWithNormalizedTranslation:(CGPoint)translation overscroll:(CGPoint)overscroll scale:(double)scale userInputOriginIdentifier:(id)identifier isZoomedOut:(BOOL)out;
- (id)copyWithScale:(double)scale normalizedTranslation:(CGPoint)translation;
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
  hasUserInput = [(PUModelTileTransform *)self hasUserInput];
  if (hasUserInput)
  {
    [(PUModelTileTransform *)self scale];
    LOBYTE(hasUserInput) = v4 < 1.0;
  }

  return hasUserInput;
}

- (BOOL)hasUserZoomedIn
{
  hasUserInput = [(PUModelTileTransform *)self hasUserInput];
  if (hasUserInput)
  {
    [(PUModelTileTransform *)self scale];
    LOBYTE(hasUserInput) = v4 > 1.0;
  }

  return hasUserInput;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    hasUserInput = [(PUModelTileTransform *)self hasUserInput];
    if (hasUserInput == [v5 hasUserInput])
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

- (id)copyWithScale:(double)scale normalizedTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v8 = [PUModelTileTransform alloc];
  [(PUModelTileTransform *)self overscroll];
  v10 = v9;
  v12 = v11;
  userInputOriginIdentifier = [(PUModelTileTransform *)self userInputOriginIdentifier];
  scale = [(PUModelTileTransform *)v8 initWithNormalizedTranslation:userInputOriginIdentifier overscroll:[(PUModelTileTransform *)self isZoomedOut] scale:x userInputOriginIdentifier:y isZoomedOut:v10, v12, scale];

  return scale;
}

- (PUModelTileTransform)initWithNormalizedTranslation:(CGPoint)translation overscroll:(CGPoint)overscroll scale:(double)scale userInputOriginIdentifier:(id)identifier isZoomedOut:(BOOL)out
{
  y = overscroll.y;
  x = overscroll.x;
  v11 = translation.y;
  v12 = translation.x;
  identifierCopy = identifier;
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
    v15->_scale = scale;
    v17 = [identifierCopy copy];
    userInputOriginIdentifier = v16->_userInputOriginIdentifier;
    v16->_userInputOriginIdentifier = v17;

    v16->_isZoomedOut = out;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUModelTileTransform.m" lineNumber:15 description:@"please use a designated initializer"];

  return [(PUModelTileTransform *)self initWithNoUserInput];
}

@end