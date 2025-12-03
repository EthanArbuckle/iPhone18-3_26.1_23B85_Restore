@interface CRNormalizedQuad
- (BOOL)isEqual:(id)equal;
- (BOOL)overlapsNormalizedQuad:(id)quad;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)midPoint;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
- (CGSize)normalizationSize;
- (CGSize)size;
- (CRNormalizedQuad)initWithCRCodableDataRepresentation:(id)representation;
- (CRNormalizedQuad)initWithCoder:(id)coder;
- (CRNormalizedQuad)initWithDenormalizedQuad:(id)quad size:(CGSize)size;
- (CRNormalizedQuad)initWithNormalizedBoundingBox:(CGRect)box size:(CGSize)size;
- (CRNormalizedQuad)initWithNormalizedTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft size:(CGSize)size;
- (NSString)description;
- (double)area;
- (double)boundingBoxClippedIOUWithQuad:(id)quad;
- (double)boundingBoxIOUWithQuad:(id)quad;
- (id)copyWithZone:(_NSZone *)zone;
- (id)crCodableDataRepresentation;
- (id)rotated180;
- (id)rotatedAroundDenormalizedPoint:(CGPoint)point angle:(float)angle;
- (id)scaledBy:(CGPoint)by normalizedOffset:(CGPoint)offset;
- (id)unionWithNormalizedQuad:(id)quad baselineAngle:(float)angle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRNormalizedQuad

- (double)boundingBoxIOUWithQuad:(id)quad
{
  quadCopy = quad;
  [(CRNormalizedQuad *)self boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [quadCopy boundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v25 = CGRectUnion(v24, v27);
  height = v25.size.height;
  width = v25.size.width;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v26 = CGRectIntersection(v25, v28);
  return v26.size.width * v26.size.height / (width * height + 1.0e-23);
}

- (double)boundingBoxClippedIOUWithQuad:(id)quad
{
  quadCopy = quad;
  [(CRNormalizedQuad *)self boundingBox];
  v34.origin.x = v5;
  v34.origin.y = v6;
  v34.size.width = v7;
  v34.size.height = v8;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 1.0;
  v28.size.height = 1.0;
  v29 = CGRectIntersection(v28, v34);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  [quadCopy boundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = 1.0;
  v30.size.height = 1.0;
  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  v31 = CGRectIntersection(v30, v35);
  v21 = v31.origin.x;
  v22 = v31.origin.y;
  v23 = v31.size.width;
  v24 = v31.size.height;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v36.origin.x = v21;
  v36.origin.y = v22;
  v36.size.width = v23;
  v36.size.height = v24;
  v32 = CGRectUnion(v31, v36);
  v26 = v32.size.height;
  v27 = v32.size.width;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v37.origin.x = v21;
  v37.origin.y = v22;
  v37.size.width = v23;
  v37.size.height = v24;
  v33 = CGRectIntersection(v32, v37);
  return v33.size.width * v33.size.height / (v27 * v26 + 1.0e-23);
}

- (CRNormalizedQuad)initWithNormalizedTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft size:(CGSize)size
{
  v8 = [[CRImageSpaceQuad alloc] initWithTopLeft:left.x * v11 topRight:left.y * v12 bottomRight:right.x * v11 bottomLeft:right.y * v12, bottomRight.x * v11, bottomRight.y * v12, bottomLeft.x * v11, bottomLeft.y * v12];
  v9 = [(CRNormalizedQuad *)self initWithDenormalizedQuad:v8 size:v11, v12];

  return v9;
}

- (CRNormalizedQuad)initWithNormalizedBoundingBox:(CGRect)box size:(CGSize)size
{
  height = size.height;
  width = size.width;
  height = [[CRImageSpaceQuad alloc] initWithBoundingBox:box.origin.x * width, box.origin.y * height, box.size.width * width, box.size.height * height];
  height2 = [(CRNormalizedQuad *)self initWithDenormalizedQuad:height size:width, height];

  return height2;
}

- (CRNormalizedQuad)initWithDenormalizedQuad:(id)quad size:(CGSize)size
{
  height = size.height;
  width = size.width;
  quadCopy = quad;
  v12.receiver = self;
  v12.super_class = CRNormalizedQuad;
  v9 = [(CRNormalizedQuad *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_denormalizedQuad, quad);
    v10->_normalizationSize.width = width;
    v10->_normalizationSize.height = height;
  }

  return v10;
}

- (CGPoint)topLeft
{
  [(CRImageSpaceQuad *)self->_denormalizedQuad topLeft];
  height = self->_normalizationSize.height;
  if (height != 0.0)
  {
    width = self->_normalizationSize.width;
    if (width != 0.0)
    {
      v3 = v3 / width;
      v4 = v4 / height;
    }
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)topRight
{
  [(CRImageSpaceQuad *)self->_denormalizedQuad topRight];
  height = self->_normalizationSize.height;
  if (height != 0.0)
  {
    width = self->_normalizationSize.width;
    if (width != 0.0)
    {
      v3 = v3 / width;
      v4 = v4 / height;
    }
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)bottomRight
{
  [(CRImageSpaceQuad *)self->_denormalizedQuad bottomRight];
  height = self->_normalizationSize.height;
  if (height != 0.0)
  {
    width = self->_normalizationSize.width;
    if (width != 0.0)
    {
      v3 = v3 / width;
      v4 = v4 / height;
    }
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)bottomLeft
{
  [(CRImageSpaceQuad *)self->_denormalizedQuad bottomLeft];
  height = self->_normalizationSize.height;
  if (height != 0.0)
  {
    width = self->_normalizationSize.width;
    if (width != 0.0)
    {
      v3 = v3 / width;
      v4 = v4 / height;
    }
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)midPoint
{
  [(CRImageSpaceQuad *)self->_denormalizedQuad midPoint];
  height = self->_normalizationSize.height;
  if (height != 0.0)
  {
    width = self->_normalizationSize.width;
    if (width != 0.0)
    {
      v3 = v3 / width;
      v4 = v4 / height;
    }
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)boundingBox
{
  [(CRImageSpaceQuad *)self->_denormalizedQuad boundingBox];
  height = self->_normalizationSize.height;
  if (height != 0.0)
  {
    width = self->_normalizationSize.width;
    if (width != 0.0)
    {
      v3 = v3 / width;
      v4 = v4 / height;
      v5 = v5 / width;
      v6 = v6 / height;
    }
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)size
{
  [(CRImageSpaceQuad *)self->_denormalizedQuad size];
  height = self->_normalizationSize.height;
  if (height != 0.0)
  {
    width = self->_normalizationSize.width;
    if (width != 0.0)
    {
      v3 = v3 / width;
      v4 = v4 / height;
    }
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (id)rotated180
{
  v3 = objc_alloc(objc_opt_class());
  rotated180 = [(CRImageSpaceQuad *)self->_denormalizedQuad rotated180];
  v5 = [v3 initWithDenormalizedQuad:rotated180 size:{self->_normalizationSize.width, self->_normalizationSize.height}];

  return v5;
}

- (BOOL)overlapsNormalizedQuad:(id)quad
{
  denormalizedQuad = [quad denormalizedQuad];
  LOBYTE(self) = [(CRNormalizedQuad *)self overlapsDenormalizedQuad:denormalizedQuad];

  return self;
}

- (id)rotatedAroundDenormalizedPoint:(CGPoint)point angle:(float)angle
{
  v5 = [(CRImageSpaceQuad *)self->_denormalizedQuad rotatedAroundPoint:point.x angle:point.y];
  v6 = [v5 normalizedQuadForImageSize:{self->_normalizationSize.width, self->_normalizationSize.height}];

  return v6;
}

- (id)scaledBy:(CGPoint)by normalizedOffset:(CGPoint)offset
{
  v5 = [(CRImageSpaceQuad *)self->_denormalizedQuad scaledBy:by.x offset:by.y, offset.x * self->_normalizationSize.width, offset.y * self->_normalizationSize.height];
  v6 = [v5 normalizedQuadForImageSize:{self->_normalizationSize.width, self->_normalizationSize.height}];

  return v6;
}

- (id)unionWithNormalizedQuad:(id)quad baselineAngle:(float)angle
{
  denormalizedQuad = self->_denormalizedQuad;
  denormalizedQuad = [quad denormalizedQuad];
  *&v8 = angle;
  v9 = [(CRImageSpaceQuad *)denormalizedQuad unionWithQuad:denormalizedQuad baselineAngle:v8];
  v10 = [v9 normalizedQuadForImageSize:{self->_normalizationSize.width, self->_normalizationSize.height}];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSize(self->_normalizationSize);
  v5 = [v3 stringWithFormat:@"Size: %@ | Quad: %@", v4, self->_denormalizedQuad];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(CRNormalizedQuad *)v5 normalizationSize];
      if (self->_normalizationSize.width == v7 && self->_normalizationSize.height == v6)
      {
        denormalizedQuad = self->_denormalizedQuad;
        denormalizedQuad = [(CRNormalizedQuad *)v5 denormalizedQuad];
        v9 = [(CRImageSpaceQuad *)denormalizedQuad isEqual:denormalizedQuad];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CRNormalizedQuad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRQuadData"];
  v6 = [coderCopy decodeIntegerForKey:@"CRQuadUncompressedDataSize"];

  v7 = uncompressDataOfSize(v5, v6);
  v8 = [(CRNormalizedQuad *)self initWithCRCodableDataRepresentation:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  crCodableDataRepresentation = [(CRNormalizedQuad *)self crCodableDataRepresentation];
  v5 = compressData(crCodableDataRepresentation);
  [coderCopy encodeObject:v5 forKey:@"CRQuadData"];
  [coderCopy encodeInteger:objc_msgSend(crCodableDataRepresentation forKey:{"length"), @"CRQuadUncompressedDataSize"}];
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:1 toData:v3];
  [CRCodingUtilities appendCodable:self->_denormalizedQuad toData:v3];
  [CRCodingUtilities appendSize:v3 toData:self->_normalizationSize.width, self->_normalizationSize.height];

  return v3;
}

- (CRNormalizedQuad)initWithCRCodableDataRepresentation:(id)representation
{
  representationCopy = representation;
  v10 = 0;
  if ([CRCodingUtilities integerFromEncodingData:representationCopy offset:&v10]== 1)
  {
    v5 = [CRImageSpaceQuad alloc];
    v6 = [CRCodingUtilities objectDataFromEncodingData:representationCopy offset:&v10];
    v7 = [(CRImageSpaceQuad *)v5 initWithCRCodableDataRepresentation:v6];

    [CRCodingUtilities sizeFromEncodingData:representationCopy offset:&v10];
    self = [(CRNormalizedQuad *)self initWithDenormalizedQuad:v7 size:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRNormalizedQuad allocWithZone:zone];
  v5 = [(CRImageSpaceQuad *)self->_denormalizedQuad copy];
  v6 = [(CRNormalizedQuad *)v4 initWithDenormalizedQuad:v5 size:self->_normalizationSize.width, self->_normalizationSize.height];

  return v6;
}

- (double)area
{
  [(CRNormalizedQuad *)self topRight];
  v4 = v3;
  [(CRNormalizedQuad *)self topLeft];
  v6 = v4 - v5;
  [(CRNormalizedQuad *)self topRight];
  v8 = v7;
  [(CRNormalizedQuad *)self topLeft];
  v10 = v8 - v9;
  [(CRNormalizedQuad *)self bottomLeft];
  v12 = v11;
  [(CRNormalizedQuad *)self topLeft];
  v14 = v12 - v13;
  [(CRNormalizedQuad *)self bottomLeft];
  v16 = v15;
  [(CRNormalizedQuad *)self topLeft];
  v18 = fabs(v6 * (v16 - v17) - v10 * v14) * 0.5;
  [(CRNormalizedQuad *)self topRight];
  v20 = v19;
  [(CRNormalizedQuad *)self bottomRight];
  v22 = v20 - v21;
  [(CRNormalizedQuad *)self topRight];
  v24 = v23;
  [(CRNormalizedQuad *)self bottomRight];
  v26 = v24 - v25;
  [(CRNormalizedQuad *)self bottomLeft];
  v28 = v27;
  [(CRNormalizedQuad *)self bottomRight];
  v30 = v28 - v29;
  [(CRNormalizedQuad *)self bottomLeft];
  v32 = v31;
  [(CRNormalizedQuad *)self bottomRight];
  return v18 + fabs(v22 * (v32 - v33) - v26 * v30) * 0.5;
}

- (CGSize)normalizationSize
{
  objc_copyStruct(v4, &self->_normalizationSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end