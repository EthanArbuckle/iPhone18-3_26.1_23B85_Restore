@interface PLImageGeometry
+ (id)geometryWithInputSize:(CGSize)size initialOrientation:(int64_t)orientation;
+ (id)geometryWithOutputSize:(CGSize)size appliedOrientation:(int64_t)orientation;
- (CGAffineTransform)_transformFromOrientation:(SEL)orientation toOrientation:(int64_t)toOrientation;
- (CGAffineTransform)appliedTransform;
- (CGAffineTransform)transformFromOrientation:(SEL)orientation;
- (CGAffineTransform)transformToOrientation:(SEL)orientation;
- (CGRect)_basisRect:(int64_t)rect;
- (CGRect)denormalizeRect:(CGRect)rect basis:(int64_t)basis;
- (CGRect)inputRect;
- (CGRect)inputRectForOutputRect:(CGRect)rect;
- (CGRect)normalizeRect:(CGRect)rect basis:(int64_t)basis;
- (CGRect)outputRect;
- (CGRect)outputRectForInputRect:(CGRect)rect;
- (PLImageGeometry)initWithInputSize:(CGSize)size inputOrientation:(int64_t)orientation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)appliedOrientation;
- (void)applyOrientation:(int64_t)orientation;
- (void)setAppliedOrientation:(int64_t)orientation;
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

- (CGAffineTransform)_transformFromOrientation:(SEL)orientation toOrientation:(int64_t)toOrientation
{
  v7 = PLOrientationBetweenOrientations(toOrientation, a5);
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

- (CGAffineTransform)transformFromOrientation:(SEL)orientation
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  appliedOrientation = [(PLImageGeometry *)self appliedOrientation];

  return [(PLImageGeometry *)self _transformFromOrientation:a4 toOrientation:appliedOrientation];
}

- (CGAffineTransform)transformToOrientation:(SEL)orientation
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  appliedOrientation = [(PLImageGeometry *)self appliedOrientation];

  return [(PLImageGeometry *)self _transformFromOrientation:appliedOrientation toOrientation:a4];
}

- (CGRect)_basisRect:(int64_t)rect
{
  if (rect == 1)
  {
    [(PLImageGeometry *)self outputRect];
  }

  else if (!rect)
  {
    [(PLImageGeometry *)self inputRect];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)normalizeRect:(CGRect)rect basis:(int64_t)basis
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PLImageGeometry *)self _basisRect:basis];
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

- (CGRect)denormalizeRect:(CGRect)rect basis:(int64_t)basis
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PLImageGeometry *)self _basisRect:basis];
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

- (CGRect)outputRectForInputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  appliedOrientation = [(PLImageGeometry *)self appliedOrientation];
  v9 = 6;
  if (appliedOrientation != 8)
  {
    v9 = appliedOrientation;
  }

  if (appliedOrientation == 6)
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

- (CGRect)inputRectForOutputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  appliedOrientation = [(PLImageGeometry *)self appliedOrientation];
  [(PLImageGeometry *)self outputRect];

  v11 = PLOrientationTransformImageRect(appliedOrientation, v9, v10, x, y, width, height);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)applyOrientation:(int64_t)orientation
{
  if ((orientation - 1) >= 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLImageGeometry.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"PLOrientationIsValid(orientation)"}];
  }

  self->_userOrientation = PLOrientationConcat(self->_userOrientation, orientation);
}

- (CGAffineTransform)appliedTransform
{
  appliedOrientation = [(PLImageGeometry *)self appliedOrientation];
  v6 = 6;
  if (appliedOrientation != 8)
  {
    v6 = appliedOrientation;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (appliedOrientation == 6)
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
  appliedOrientation = [(PLImageGeometry *)self appliedOrientation];
  [(PLImageGeometry *)self inputRect];
  v5 = v4;
  v7 = v6;
  [(PLImageGeometry *)self inputRect];

  v12 = PLOrientationTransformImageRect(appliedOrientation, v5, v7, v8, v9, v10, v11);
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setAppliedOrientation:(int64_t)orientation
{
  v4 = PLOrientationBetweenOrientations([(PLImageGeometry *)self inputOrientation], orientation);

  [(PLImageGeometry *)self setUserOrientation:v4];
}

- (int64_t)appliedOrientation
{
  inputOrientation = [(PLImageGeometry *)self inputOrientation];
  userOrientation = [(PLImageGeometry *)self userOrientation];

  return PLOrientationConcat(inputOrientation, userOrientation);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_userOrientation;
  *(result + 1) = self->_inputOrientation;
  origin = self->_inputRect.origin;
  *(result + 40) = self->_inputRect.size;
  *(result + 24) = origin;
  return result;
}

- (PLImageGeometry)initWithInputSize:(CGSize)size inputOrientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  if ((orientation - 1) >= 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLImageGeometry.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"PLOrientationIsValid(orientation)"}];
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
    result->_inputOrientation = orientation;
    result->_userOrientation = 1;
  }

  return result;
}

+ (id)geometryWithOutputSize:(CGSize)size appliedOrientation:(int64_t)orientation
{
  if ((orientation - 5) >= 4)
  {
    width = size.width;
  }

  else
  {
    width = size.height;
  }

  if ((orientation - 5) < 4)
  {
    size.height = size.width;
  }

  return [self geometryWithInputSize:width initialOrientation:size.height];
}

+ (id)geometryWithInputSize:(CGSize)size initialOrientation:(int64_t)orientation
{
  v5 = [[self alloc] initWithInputSize:1 inputOrientation:{size.width, size.height}];
  [v5 applyOrientation:orientation];

  return v5;
}

@end