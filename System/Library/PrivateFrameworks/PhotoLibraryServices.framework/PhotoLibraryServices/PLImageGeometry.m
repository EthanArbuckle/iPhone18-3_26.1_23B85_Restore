@interface PLImageGeometry
+ (id)geometryWithInputSize:(CGSize)a3 initialOrientation:(int64_t)a4;
+ (id)geometryWithOutputSize:(CGSize)a3 appliedOrientation:(int64_t)a4;
- (CGAffineTransform)_transformFromOrientation:(SEL)a3 toOrientation:(int64_t)a4;
- (CGAffineTransform)appliedTransform;
- (CGAffineTransform)transformFromOrientation:(SEL)a3;
- (CGAffineTransform)transformToOrientation:(SEL)a3;
- (CGRect)_basisRect:(int64_t)a3;
- (CGRect)denormalizeRect:(CGRect)a3 basis:(int64_t)a4;
- (CGRect)inputRect;
- (CGRect)inputRectForOutputRect:(CGRect)a3;
- (CGRect)normalizeRect:(CGRect)a3 basis:(int64_t)a4;
- (CGRect)outputRect;
- (CGRect)outputRectForInputRect:(CGRect)a3;
- (PLImageGeometry)initWithInputSize:(CGSize)a3 inputOrientation:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)appliedOrientation;
- (void)applyOrientation:(int64_t)a3;
- (void)setAppliedOrientation:(int64_t)a3;
@end

@implementation PLImageGeometry

- (CGRect)inputRect
{
  x = self->_inputRect.origin.x;
  y = self->_inputRect.origin.y;
  width = self->_inputRect.size.width;
  height = self->_inputRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = PLImageGeometry;
  v3 = [(PLImageGeometry *)&v11 description];
  v4 = [v3 mutableCopy];

  width = self->_inputRect.size.width;
  height = self->_inputRect.size.height;
  v7 = PLOrientationName(self->_inputOrientation);
  v8 = PLOrientationName(self->_userOrientation);
  v9 = PLOrientationName([(PLImageGeometry *)self appliedOrientation]);
  [v4 appendFormat:@" Input size: {%f, %f}, Orientation :: original | user | applied  =  %@ | %@ | %@", *&width, *&height, v7, v8, v9];

  return v4;
}

- (CGAffineTransform)_transformFromOrientation:(SEL)a3 toOrientation:(int64_t)a4
{
  v7 = PLOrientationBetweenOrientations(a4, a5);
  v8 = 6;
  if (v7 != 8)
  {
    v8 = v7;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (v7 == 6)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  *&retstr->a = 0uLL;
  [(PLImageGeometry *)self inputRect];

  return PLOrientationMakeTransformWithSize(v9, retstr, v10, v11);
}

- (CGAffineTransform)transformFromOrientation:(SEL)a3
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = [(PLImageGeometry *)self appliedOrientation];

  return [(PLImageGeometry *)self _transformFromOrientation:a4 toOrientation:v6];
}

- (CGAffineTransform)transformToOrientation:(SEL)a3
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v6 = [(PLImageGeometry *)self appliedOrientation];

  return [(PLImageGeometry *)self _transformFromOrientation:v6 toOrientation:a4];
}

- (CGRect)_basisRect:(int64_t)a3
{
  if (a3 == 1)
  {
    [(PLImageGeometry *)self outputRect];
  }

  else if (!a3)
  {
    [(PLImageGeometry *)self inputRect];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)normalizeRect:(CGRect)a3 basis:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PLImageGeometry *)self _basisRect:a4];
  v10 = (x - v8) / v9;
  v13 = (y - v11) / v12;
  v14 = width / v9;
  v15 = height / v12;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v10;
  return result;
}

- (CGRect)denormalizeRect:(CGRect)a3 basis:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PLImageGeometry *)self _basisRect:a4];
  v10 = v8 + x * v9;
  v13 = v11 + y * v12;
  v14 = width * v9;
  v15 = height * v12;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v10;
  return result;
}

- (CGRect)outputRectForInputRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLImageGeometry *)self appliedOrientation];
  v9 = 6;
  if (v8 != 8)
  {
    v9 = v8;
  }

  if (v8 == 6)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  [(PLImageGeometry *)self inputRect];

  v13 = PLOrientationTransformImageRect(v10, v11, v12, x, y, width, height);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)inputRectForOutputRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLImageGeometry *)self appliedOrientation];
  [(PLImageGeometry *)self outputRect];

  v11 = PLOrientationTransformImageRect(v8, v9, v10, x, y, width, height);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)applyOrientation:(int64_t)a3
{
  if ((a3 - 1) >= 8)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLImageGeometry.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"PLOrientationIsValid(orientation)"}];
  }

  self->_userOrientation = PLOrientationConcat(self->_userOrientation, a3);
}

- (CGAffineTransform)appliedTransform
{
  v5 = [(PLImageGeometry *)self appliedOrientation];
  v6 = 6;
  if (v5 != 8)
  {
    v6 = v5;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (v5 == 6)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  *&retstr->a = 0uLL;
  [(PLImageGeometry *)self inputRect];

  return PLOrientationMakeTransformWithSize(v7, retstr, v8, v9);
}

- (CGRect)outputRect
{
  v3 = [(PLImageGeometry *)self appliedOrientation];
  [(PLImageGeometry *)self inputRect];
  v5 = v4;
  v7 = v6;
  [(PLImageGeometry *)self inputRect];

  v12 = PLOrientationTransformImageRect(v3, v5, v7, v8, v9, v10, v11);
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setAppliedOrientation:(int64_t)a3
{
  v4 = PLOrientationBetweenOrientations([(PLImageGeometry *)self inputOrientation], a3);

  [(PLImageGeometry *)self setUserOrientation:v4];
}

- (int64_t)appliedOrientation
{
  v3 = [(PLImageGeometry *)self inputOrientation];
  v4 = [(PLImageGeometry *)self userOrientation];

  return PLOrientationConcat(v3, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_userOrientation;
  *(result + 1) = self->_inputOrientation;
  origin = self->_inputRect.origin;
  *(result + 40) = self->_inputRect.size;
  *(result + 24) = origin;
  return result;
}

- (PLImageGeometry)initWithInputSize:(CGSize)a3 inputOrientation:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  if ((a4 - 1) >= 8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLImageGeometry.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"PLOrientationIsValid(orientation)"}];
  }

  v11.receiver = self;
  v11.super_class = PLImageGeometry;
  result = [(PLImageGeometry *)&v11 init];
  if (result)
  {
    result->_inputRect.origin.x = 0.0;
    result->_inputRect.origin.y = 0.0;
    result->_inputRect.size.width = width;
    result->_inputRect.size.height = height;
    result->_inputOrientation = a4;
    result->_userOrientation = 1;
  }

  return result;
}

+ (id)geometryWithOutputSize:(CGSize)a3 appliedOrientation:(int64_t)a4
{
  if ((a4 - 5) >= 4)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  if ((a4 - 5) < 4)
  {
    a3.height = a3.width;
  }

  return [a1 geometryWithInputSize:width initialOrientation:a3.height];
}

+ (id)geometryWithInputSize:(CGSize)a3 initialOrientation:(int64_t)a4
{
  v5 = [[a1 alloc] initWithInputSize:1 inputOrientation:{a3.width, a3.height}];
  [v5 applyOrientation:a4];

  return v5;
}

@end