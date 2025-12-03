@interface UIRegion
+ (UIRegion)infiniteRegion;
- (BOOL)containsPoint:(CGPoint)point;
- (UIBezierPath)path;
- (UIRegion)initWithCoder:(id)coder;
- (UIRegion)initWithPath:(id)path;
- (UIRegion)initWithRadius:(CGFloat)radius;
- (UIRegion)initWithSize:(CGSize)size;
- (UIRegion)inverseRegion;
- (UIRegion)regionByDifferenceFromRegion:(UIRegion *)region;
- (UIRegion)regionByIntersectionWithRegion:(UIRegion *)region;
- (UIRegion)regionByUnionWithRegion:(UIRegion *)region;
- (id)copyWithZone:(_NSZone *)zone;
- (void)containsPoints:(const float *)points locationStride:(int64_t)stride results:(char *)results resultsStride:(int64_t)resultsStride count:(int)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIRegion

- (UIBezierPath)path
{
  path = [(PKRegion *)self->_region path];

  return [UIBezierPath bezierPathWithCGPath:path];
}

+ (UIRegion)infiniteRegion
{
  if (qword_1ED49DB68 != -1)
  {
    dispatch_once(&qword_1ED49DB68, &__block_literal_global_198);
  }

  v3 = _MergedGlobals_1077;

  return v3;
}

void __26__UIRegion_infiniteRegion__block_invoke()
{
  v0 = objc_alloc_init(UIRegion);
  v1 = _MergedGlobals_1077;
  _MergedGlobals_1077 = v0;

  v2 = [MEMORY[0x1E69C4A60] infiniteRegion];
  v3 = *(_MergedGlobals_1077 + 8);
  *(_MergedGlobals_1077 + 8) = v2;
}

- (UIRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIRegion;
  v5 = [(UIRegion *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"_region"];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  region = self->_region;
  if (region)
  {
    [coderCopy encodeObject:region forKey:@"_region"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_region);
  return v4;
}

- (UIRegion)initWithRadius:(CGFloat)radius
{
  v11.receiver = self;
  v11.super_class = UIRegion;
  v4 = [(UIRegion *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C4A60]);
    PKGet_PTM_RATIO();
    v7 = v6 * radius;
    *&v7 = v7;
    v8 = [v5 initWithRadius:v7];
    region = v4->_region;
    v4->_region = v8;
  }

  return v4;
}

- (UIRegion)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = UIRegion;
  v5 = [(UIRegion *)&v14 init];
  if (v5)
  {
    PKGet_PTM_RATIO();
    v7 = v6;
    v8 = dyld_program_sdk_at_least();
    v9 = objc_alloc(MEMORY[0x1E69C4A60]);
    v10 = v7;
    if (!v8)
    {
      v10 = v7 * 0.5;
    }

    v11 = [v9 initWithSize:{width * v10, height * v10}];
    region = v5->_region;
    v5->_region = v11;
  }

  return v5;
}

- (UIRegion)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = UIRegion;
  v5 = [(UIRegion *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C4A60]) initWithPath:{objc_msgSend(pathCopy, "CGPath")}];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (UIRegion)inverseRegion
{
  v2 = [(UIRegion *)self copy];
  inverseRegion = [v2[1] inverseRegion];
  v4 = v2[1];
  v2[1] = inverseRegion;

  return v2;
}

- (UIRegion)regionByUnionWithRegion:(UIRegion *)region
{
  v4 = region;
  v5 = [(UIRegion *)self copy];
  v6 = [v5[1] regionByUnionWithRegion:v4->_region];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (UIRegion)regionByDifferenceFromRegion:(UIRegion *)region
{
  v4 = region;
  v5 = [(UIRegion *)self copy];
  v6 = [v5[1] regionByDifferenceFromRegion:v4->_region];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (UIRegion)regionByIntersectionWithRegion:(UIRegion *)region
{
  v4 = region;
  v5 = [(UIRegion *)self copy];
  v6 = [v5[1] regionByIntersectionWithRegion:v4->_region];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)containsPoint:(CGPoint)point
{
  region = self->_region;
  if (region)
  {
    LOBYTE(region) = [(PKRegion *)region containsPoint:point.x, point.y];
  }

  return region;
}

- (void)containsPoints:(const float *)points locationStride:(int64_t)stride results:(char *)results resultsStride:(int64_t)resultsStride count:(int)count
{
  if (count >= 1)
  {
    v21 = v12;
    v22 = v11;
    v23 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v7;
    v27 = v13;
    v28 = v14;
    countCopy = count;
    v20 = (points + 1);
    do
    {
      *results = [(UIRegion *)self containsPoint:*(v20 - 1), *v20, v21, v22, v23, v24, v25, v26, v27, v28];
      results += resultsStride;
      v20 = (v20 + stride);
      --countCopy;
    }

    while (countCopy);
  }
}

@end