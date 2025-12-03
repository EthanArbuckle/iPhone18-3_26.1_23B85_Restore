@interface CRNormalizedPolyline
- (BOOL)isEqual:(id)equal;
- (CGPath)path;
- (CGSize)normalizationSize;
- (CRNormalizedPolyline)init;
- (CRNormalizedPolyline)initWithCRCodableDataRepresentation:(id)representation;
- (CRNormalizedPolyline)initWithCoder:(id)coder;
- (CRNormalizedPolyline)initWithDenormalizedPolyline:(id)polyline size:(CGSize)size;
- (CRNormalizedPolyline)initWithNormalizedPointValues:(id)values size:(CGSize)size;
- (CRNormalizedPolyline)initWithNormalizedPoints:(CGPoint *)points count:(unint64_t)count size:(CGSize)size;
- (CRNormalizedPolyline)initWithPolyline:(id)polyline;
- (NSArray)pointValues;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)crCodableDataRepresentation;
- (id)polylineByAppendingPoint:(CGPoint)point;
- (id)polylineByAppendingPolyline:(id)polyline;
- (id)rotated180;
- (id)simplified;
- (unint64_t)pointCount;
- (void)appendPoint:(CGPoint)point;
- (void)appendPolyline:(id)polyline;
- (void)encodeWithCoder:(id)coder;
- (void)enumeratePoints:(id)points;
@end

@implementation CRNormalizedPolyline

- (CRNormalizedPolyline)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRPolylineData"];
  v6 = uncompressDataOfSize(v5, [coderCopy decodeIntegerForKey:@"CRPolylineUncompressedDataSize"]);
  v7 = [(CRNormalizedPolyline *)self initWithCRCodableDataRepresentation:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  crCodableDataRepresentation = [(CRNormalizedPolyline *)self crCodableDataRepresentation];
  v5 = compressData(crCodableDataRepresentation);
  [coderCopy encodeObject:v5 forKey:@"CRPolylineData"];
  [coderCopy encodeInteger:objc_msgSend(crCodableDataRepresentation forKey:{"length"), @"CRPolylineUncompressedDataSize"}];
}

- (CRNormalizedPolyline)initWithNormalizedPoints:(CGPoint *)points count:(unint64_t)count size:(CGSize)size
{
  width = size.width;
  height = size.height;
  countCopy = count;
  std::vector<CGPoint>::vector[abi:ne200100](__p, count);
  if (countCopy)
  {
    v8 = __p[0];
    v9.f64[0] = width;
    v9.f64[1] = height;
    do
    {
      v10 = *points++;
      *v8++ = vmulq_f64(v9, v10);
      --countCopy;
    }

    while (countCopy);
  }

  v11 = [(CRNormalizedPolyline *)self init];
  if (v11)
  {
    v12 = [[CRImageSpacePolyline alloc] initWithPoints:?];
    [(CRNormalizedPolyline *)v11 setDenormalizedPolyline:v12];

    [(CRNormalizedPolyline *)v11 setNormalizationSize:v15, height];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

- (CRNormalizedPolyline)init
{
  v6.receiver = self;
  v6.super_class = CRNormalizedPolyline;
  v2 = [(CRNormalizedPolyline *)&v6 init];
  v3 = v2;
  if (v2)
  {
    mCFObject = v2->__pathRef.mCFObject;
    v3->__pathRef.mCFObject = 0;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }
  }

  return v3;
}

- (CRNormalizedPolyline)initWithPolyline:(id)polyline
{
  polylineCopy = polyline;
  v5 = [(CRNormalizedPolyline *)self init];
  if (v5)
  {
    denormalizedPolyline = [polylineCopy denormalizedPolyline];
    [(CRNormalizedPolyline *)v5 setDenormalizedPolyline:denormalizedPolyline];

    [polylineCopy normalizationSize];
    [(CRNormalizedPolyline *)v5 setNormalizationSize:?];
  }

  return v5;
}

- (CRNormalizedPolyline)initWithDenormalizedPolyline:(id)polyline size:(CGSize)size
{
  height = size.height;
  width = size.width;
  polylineCopy = polyline;
  v8 = [(CRNormalizedPolyline *)self init];
  v9 = v8;
  if (v8)
  {
    [(CRNormalizedPolyline *)v8 setDenormalizedPolyline:polylineCopy];
    [(CRNormalizedPolyline *)v9 setNormalizationSize:width, height];
  }

  return v9;
}

- (CRNormalizedPolyline)initWithNormalizedPointValues:(id)values size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = valuesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v19 + 1) + 8 * v12) pointValue];
        v15 = [MEMORY[0x1E696B098] valueWithPoint:{width * v13, height * v14}];
        [v8 addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [[CRImageSpacePolyline alloc] initWithPointValues:v8];
  height = [(CRNormalizedPolyline *)self initWithDenormalizedPolyline:v16 size:width, height];

  return height;
}

- (id)polylineByAppendingPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = [(CRNormalizedPolyline *)self copy];
  [v5 appendPoint:{x, y}];

  return v5;
}

- (id)polylineByAppendingPolyline:(id)polyline
{
  polylineCopy = polyline;
  [(CRNormalizedPolyline *)self normalizationSize];
  v6 = v5;
  v8 = v7;
  [polylineCopy normalizationSize];
  if (v6 == v10 && v8 == v9)
  {
    v12 = [(CRNormalizedPolyline *)self copy];
    [v12 appendPolyline:polylineCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  [(CRNormalizedPolyline *)self normalizationSize];
  v4 = NSStringFromSize(v11);
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v6 = [denormalizedPolyline description];
  v7 = [v3 stringWithFormat:@"Size: %@\nDenormalized Polyline: %@", v4, v6];

  v8 = [MEMORY[0x1E696AEC0] stringWithString:v7];

  return v8;
}

- (CGPath)path
{
  [(CRNormalizedPolyline *)self _pathRef];
  if (v8)
  {
    CFRelease(v8);
  }

  else
  {
    denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__CRNormalizedPolyline_path__block_invoke;
    v6[3] = &unk_1E7BC2BE8;
    v6[4] = self;
    [(CRImageSpacePolyline *)&v7 createPathWithTransformer:denormalizedPolyline, v6];
    [(CRNormalizedPolyline *)self set_pathRef:&v7];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  [(CRNormalizedPolyline *)self _pathRef];
  v4 = v8;
  if (v8)
  {
    CFRelease(v8);
  }

  return v4;
}

double __28__CRNormalizedPolyline_path__block_invoke(uint64_t a1, double a2)
{
  [*(a1 + 32) normalizationSize];
  if (v4 != 0.0 && v3 != 0.0)
  {
    return a2 / v3;
  }

  return a2;
}

- (unint64_t)pointCount
{
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  pointCount = [denormalizedPolyline pointCount];

  return pointCount;
}

- (NSArray)pointValues
{
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CRNormalizedPolyline_pointValues__block_invoke;
  v7[3] = &unk_1E7BC2B20;
  v4 = v3;
  v8 = v4;
  [(CRNormalizedPolyline *)self enumeratePoints:v7];
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  return v5;
}

void __35__CRNormalizedPolyline_pointValues__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696B098] valueWithPoint:?];
  [v1 addObject:?];
}

- (void)enumeratePoints:(id)points
{
  pointsCopy = points;
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CRNormalizedPolyline_enumeratePoints___block_invoke;
  v6[3] = &unk_1E7BC2BE8;
  v6[4] = self;
  [(CRImageSpacePolyline *)denormalizedPolyline enumeratePointsWithTransformer:v6 block:pointsCopy];
}

double __40__CRNormalizedPolyline_enumeratePoints___block_invoke(uint64_t a1, double a2)
{
  [*(a1 + 32) normalizationSize];
  if (v4 != 0.0 && v3 != 0.0)
  {
    return a2 / v3;
  }

  return a2;
}

- (void)appendPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  [(CRNormalizedPolyline *)self normalizationSize];
  [(CRImageSpacePolyline *)denormalizedPolyline appendPoint:y * v8];

  cf = 0;
  [(CRNormalizedPolyline *)self set_pathRef:&cf];
  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)appendPolyline:(id)polyline
{
  polylineCopy = polyline;
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  denormalizedPolyline2 = [polylineCopy denormalizedPolyline];
  [(CRImageSpacePolyline *)denormalizedPolyline appendPolyline:denormalizedPolyline2];

  cf = 0;
  [(CRNormalizedPolyline *)self set_pathRef:&cf];
  if (cf)
  {
    CFRelease(cf);
  }
}

- (id)simplified
{
  v3 = [CRNormalizedPolyline alloc];
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  simplified = [denormalizedPolyline simplified];
  [(CRNormalizedPolyline *)self normalizationSize];
  v6 = [(CRNormalizedPolyline *)v3 initWithDenormalizedPolyline:simplified size:?];

  return v6;
}

- (id)rotated180
{
  v3 = [CRNormalizedPolyline alloc];
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  rotated180 = [denormalizedPolyline rotated180];
  [(CRNormalizedPolyline *)self normalizationSize];
  v6 = [(CRNormalizedPolyline *)v3 initWithDenormalizedPolyline:rotated180 size:?];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(CRNormalizedPolyline *)self normalizationSize];
      v7 = v6;
      v9 = v8;
      [(CRNormalizedPolyline *)v5 normalizationSize];
      v11 = 0;
      if (v7 == v12 && v9 == v10)
      {
        denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
        denormalizedPolyline2 = [(CRNormalizedPolyline *)v5 denormalizedPolyline];
        v11 = [denormalizedPolyline isEqual:denormalizedPolyline2];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRNormalizedPolyline allocWithZone:zone];
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v6 = [denormalizedPolyline copy];
  [(CRNormalizedPolyline *)self normalizationSize];
  v7 = [(CRNormalizedPolyline *)v4 initWithDenormalizedPolyline:v6 size:?];

  return v7;
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:1 toData:v3];
  denormalizedPolyline = [(CRNormalizedPolyline *)self denormalizedPolyline];
  [CRCodingUtilities appendCodable:denormalizedPolyline toData:v3];

  [(CRNormalizedPolyline *)self normalizationSize];
  [CRCodingUtilities appendSize:v3 toData:?];

  return v3;
}

- (CRNormalizedPolyline)initWithCRCodableDataRepresentation:(id)representation
{
  representationCopy = representation;
  v10 = 0;
  if ([CRCodingUtilities integerFromEncodingData:representationCopy offset:&v10]== 1)
  {
    v5 = [CRImageSpacePolyline alloc];
    v6 = [CRCodingUtilities objectDataFromEncodingData:representationCopy offset:&v10];
    v7 = [(CRImageSpacePolyline *)v5 initWithCRCodableDataRepresentation:v6];

    [CRCodingUtilities sizeFromEncodingData:representationCopy offset:&v10];
    self = [(CRNormalizedPolyline *)self initWithDenormalizedPolyline:v7 size:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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