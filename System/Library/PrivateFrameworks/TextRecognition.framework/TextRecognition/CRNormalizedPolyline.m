@interface CRNormalizedPolyline
- (BOOL)isEqual:(id)a3;
- (CGPath)path;
- (CGSize)normalizationSize;
- (CRNormalizedPolyline)init;
- (CRNormalizedPolyline)initWithCRCodableDataRepresentation:(id)a3;
- (CRNormalizedPolyline)initWithCoder:(id)a3;
- (CRNormalizedPolyline)initWithDenormalizedPolyline:(id)a3 size:(CGSize)a4;
- (CRNormalizedPolyline)initWithNormalizedPointValues:(id)a3 size:(CGSize)a4;
- (CRNormalizedPolyline)initWithNormalizedPoints:(CGPoint *)a3 count:(unint64_t)a4 size:(CGSize)a5;
- (CRNormalizedPolyline)initWithPolyline:(id)a3;
- (NSArray)pointValues;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)crCodableDataRepresentation;
- (id)polylineByAppendingPoint:(CGPoint)a3;
- (id)polylineByAppendingPolyline:(id)a3;
- (id)rotated180;
- (id)simplified;
- (unint64_t)pointCount;
- (void)appendPoint:(CGPoint)a3;
- (void)appendPolyline:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumeratePoints:(id)a3;
@end

@implementation CRNormalizedPolyline

- (CRNormalizedPolyline)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CRPolylineData"];
  v6 = uncompressDataOfSize(v5, [v4 decodeIntegerForKey:@"CRPolylineUncompressedDataSize"]);
  v7 = [(CRNormalizedPolyline *)self initWithCRCodableDataRepresentation:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CRNormalizedPolyline *)self crCodableDataRepresentation];
  v5 = compressData(v4);
  [v6 encodeObject:v5 forKey:@"CRPolylineData"];
  [v6 encodeInteger:objc_msgSend(v4 forKey:{"length"), @"CRPolylineUncompressedDataSize"}];
}

- (CRNormalizedPolyline)initWithNormalizedPoints:(CGPoint *)a3 count:(unint64_t)a4 size:(CGSize)a5
{
  width = a5.width;
  height = a5.height;
  v5 = a4;
  std::vector<CGPoint>::vector[abi:ne200100](__p, a4);
  if (v5)
  {
    v8 = __p[0];
    v9.f64[0] = width;
    v9.f64[1] = height;
    do
    {
      v10 = *a3++;
      *v8++ = vmulq_f64(v9, v10);
      --v5;
    }

    while (v5);
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

- (CRNormalizedPolyline)initWithPolyline:(id)a3
{
  v4 = a3;
  v5 = [(CRNormalizedPolyline *)self init];
  if (v5)
  {
    v6 = [v4 denormalizedPolyline];
    [(CRNormalizedPolyline *)v5 setDenormalizedPolyline:v6];

    [v4 normalizationSize];
    [(CRNormalizedPolyline *)v5 setNormalizationSize:?];
  }

  return v5;
}

- (CRNormalizedPolyline)initWithDenormalizedPolyline:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(CRNormalizedPolyline *)self init];
  v9 = v8;
  if (v8)
  {
    [(CRNormalizedPolyline *)v8 setDenormalizedPolyline:v7];
    [(CRNormalizedPolyline *)v9 setNormalizationSize:width, height];
  }

  return v9;
}

- (CRNormalizedPolyline)initWithNormalizedPointValues:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
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
  v17 = [(CRNormalizedPolyline *)self initWithDenormalizedPolyline:v16 size:width, height];

  return v17;
}

- (id)polylineByAppendingPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRNormalizedPolyline *)self copy];
  [v5 appendPoint:{x, y}];

  return v5;
}

- (id)polylineByAppendingPolyline:(id)a3
{
  v4 = a3;
  [(CRNormalizedPolyline *)self normalizationSize];
  v6 = v5;
  v8 = v7;
  [v4 normalizationSize];
  if (v6 == v10 && v8 == v9)
  {
    v12 = [(CRNormalizedPolyline *)self copy];
    [v12 appendPolyline:v4];
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
  v5 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v6 = [v5 description];
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
    v3 = [(CRNormalizedPolyline *)self denormalizedPolyline];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__CRNormalizedPolyline_path__block_invoke;
    v6[3] = &unk_1E7BC2BE8;
    v6[4] = self;
    [(CRImageSpacePolyline *)&v7 createPathWithTransformer:v3, v6];
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
  v2 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v3 = [v2 pointCount];

  return v3;
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

- (void)enumeratePoints:(id)a3
{
  v4 = a3;
  v5 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CRNormalizedPolyline_enumeratePoints___block_invoke;
  v6[3] = &unk_1E7BC2BE8;
  v6[4] = self;
  [(CRImageSpacePolyline *)v5 enumeratePointsWithTransformer:v6 block:v4];
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

- (void)appendPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  [(CRNormalizedPolyline *)self normalizationSize];
  [(CRImageSpacePolyline *)v6 appendPoint:y * v8];

  cf = 0;
  [(CRNormalizedPolyline *)self set_pathRef:&cf];
  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)appendPolyline:(id)a3
{
  v4 = a3;
  v5 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v6 = [v4 denormalizedPolyline];
  [(CRImageSpacePolyline *)v5 appendPolyline:v6];

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
  v4 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v5 = [v4 simplified];
  [(CRNormalizedPolyline *)self normalizationSize];
  v6 = [(CRNormalizedPolyline *)v3 initWithDenormalizedPolyline:v5 size:?];

  return v6;
}

- (id)rotated180
{
  v3 = [CRNormalizedPolyline alloc];
  v4 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v5 = [v4 rotated180];
  [(CRNormalizedPolyline *)self normalizationSize];
  v6 = [(CRNormalizedPolyline *)v3 initWithDenormalizedPolyline:v5 size:?];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(CRNormalizedPolyline *)self normalizationSize];
      v7 = v6;
      v9 = v8;
      [(CRNormalizedPolyline *)v5 normalizationSize];
      v11 = 0;
      if (v7 == v12 && v9 == v10)
      {
        v13 = [(CRNormalizedPolyline *)self denormalizedPolyline];
        v14 = [(CRNormalizedPolyline *)v5 denormalizedPolyline];
        v11 = [v13 isEqual:v14];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRNormalizedPolyline allocWithZone:a3];
  v5 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  v6 = [v5 copy];
  [(CRNormalizedPolyline *)self normalizationSize];
  v7 = [(CRNormalizedPolyline *)v4 initWithDenormalizedPolyline:v6 size:?];

  return v7;
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:1 toData:v3];
  v4 = [(CRNormalizedPolyline *)self denormalizedPolyline];
  [CRCodingUtilities appendCodable:v4 toData:v3];

  [(CRNormalizedPolyline *)self normalizationSize];
  [CRCodingUtilities appendSize:v3 toData:?];

  return v3;
}

- (CRNormalizedPolyline)initWithCRCodableDataRepresentation:(id)a3
{
  v4 = a3;
  v10 = 0;
  if ([CRCodingUtilities integerFromEncodingData:v4 offset:&v10]== 1)
  {
    v5 = [CRImageSpacePolyline alloc];
    v6 = [CRCodingUtilities objectDataFromEncodingData:v4 offset:&v10];
    v7 = [(CRImageSpacePolyline *)v5 initWithCRCodableDataRepresentation:v6];

    [CRCodingUtilities sizeFromEncodingData:v4 offset:&v10];
    self = [(CRNormalizedPolyline *)self initWithDenormalizedPolyline:v7 size:?];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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