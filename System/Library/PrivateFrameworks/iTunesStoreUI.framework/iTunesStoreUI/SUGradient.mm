@interface SUGradient
+ (SUGradient)gradientWithColor:(id)a3;
- (CGGradient)copyCGGradient;
- (CGShading)copyShading;
- (NSArray)colorStopColors;
- (NSArray)colorStopOffsets;
- (SUGradient)initWithCoder:(id)a3;
- (SUGradient)initWithPoint0:(SUGradientPoint *)a3 point1:(SUGradientPoint *)a4 type:(int64_t)a5;
- (SUGradient)initWithPropertyList:(id)a3;
- (SUGradient)initWithType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)newPatternColorWithSize:(CGSize)a3 opaque:(BOOL)a4;
- (int64_t)numberOfColorStops;
- (void)addColorStopWithOffset:(double)a3 color:(CGColor *)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUGradient

- (SUGradient)initWithPoint0:(SUGradientPoint *)a3 point1:(SUGradientPoint *)a4 type:(int64_t)a5
{
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v17 = v5;
  v20.receiver = self;
  v20.super_class = SUGradient;
  v18 = [(SUGradient *)&v20 init:a3];
  if (v18)
  {
    v18->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v18->_p0.point.x = v17;
    v18->_p0.point.y = v16;
    v18->_p0.radius = v15;
    v18->_p1.point.x = v14;
    v18->_p1.point.y = v13;
    v18->_p1.radius = v12;
    v18->_type = a3;
  }

  return v18;
}

- (SUGradient)initWithPropertyList:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [a3 objectForKey:@"top-color"];
  v7 = [objc_alloc(MEMORY[0x1E69DC888]) initWithStyleString:v6];
  if (v7)
  {
    v8 = v7;
    [v5 addObject:v7];
  }

  v9 = [a3 objectForKey:@"bottom-color"];
  if (v9)
  {
    v10 = v9;
    if (([v6 isEqualToString:v9] & 1) == 0)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DC888]) initWithStyleString:v10];
      if (v11)
      {
        v12 = v11;
        [v5 addObject:v11];
      }
    }
  }

  if ([v5 count])
  {
    v13 = [(SUGradient *)self initWithType:0];
    v14 = [v5 count];
    if (v14 >= 1)
    {
      v15 = v14;
      v16 = 0;
      v17 = v14 + -1.0;
      do
      {
        -[SUGradient addColorStopWithOffset:color:](v13, "addColorStopWithOffset:color:", [objc_msgSend(v5 objectAtIndex:{v16), "CGColor"}], v16 / v17);
        ++v16;
      }

      while (v15 != v16);
    }
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (SUGradient)initWithType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0.5;
    v4 = 0.5;
    v5 = 0.5;
    v6 = 1.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.5;
    v5 = 1.0;
    v6 = 0.0;
  }

  return [(SUGradient *)self initWithPoint0:0.5 point1:v3 type:0.0, v4, v5, v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUGradient;
  [(SUGradient *)&v3 dealloc];
}

+ (SUGradient)gradientWithColor:(id)a3
{
  v4 = [[a1 alloc] initWithType:0];
  [v4 addColorStopWithOffset:objc_msgSend(a3 color:{"CGColor"), 0.0}];

  return v4;
}

- (SUGradient)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SUGradient;
  v4 = [(SUGradient *)&v13 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v4->_colorStops = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 2)), @"colorstops"}];
    [a3 decodeCGPointForKey:@"point0"];
    v4->_p0.point.x = v6;
    v4->_p0.point.y = v7;
    [a3 decodeFloatForKey:@"radius0"];
    v4->_p0.radius = v8;
    [a3 decodeCGPointForKey:@"point1"];
    v4->_p1.point.x = v9;
    v4->_p1.point.y = v10;
    [a3 decodeFloatForKey:@"radius1"];
    v4->_p1.radius = v11;
    v4->_type = [a3 decodeIntegerForKey:@"type"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [(NSLock *)self->_lock lock];
  [a3 encodeObject:self->_colorStops forKey:@"colorstops"];
  [a3 encodeCGPoint:@"point0" forKey:{self->_p0.point.x, self->_p0.point.y}];
  radius = self->_p0.radius;
  *&radius = radius;
  [a3 encodeFloat:@"radius0" forKey:radius];
  [a3 encodeCGPoint:@"point1" forKey:{self->_p1.point.x, self->_p1.point.y}];
  v6 = self->_p1.radius;
  *&v6 = v6;
  [a3 encodeFloat:@"radius1" forKey:v6];
  [a3 encodeInteger:self->_type forKey:@"type"];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(NSLock *)self->_lock lock];
  *(v5 + 8) = [(NSMutableArray *)self->_colorStops copyWithZone:a3];
  radius = self->_p0.radius;
  *(v5 + 24) = self->_p0.point;
  *(v5 + 40) = radius;
  point = self->_p1.point;
  *(v5 + 64) = self->_p1.radius;
  *(v5 + 48) = point;
  *(v5 + 72) = self->_sorted;
  *(v5 + 80) = self->_type;
  [(NSLock *)self->_lock unlock];
  return v5;
}

- (void)addColorStopWithOffset:(double)a3 color:(CGColor *)a4
{
  [(NSLock *)self->_lock lock];
  if (!self->_colorStops)
  {
    self->_colorStops = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v7 = [[SUGradientColorStop alloc] initWithColor:a4 offset:a3];
  [(NSMutableArray *)self->_colorStops addObject:v7];

  self->_sorted = 0;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (NSArray)colorStopColors
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  [(NSLock *)self->_lock lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  colorStops = self->_colorStops;
  v5 = [(NSMutableArray *)colorStops countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(colorStops);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) copyCGColor];
        [(NSArray *)v3 addObject:v9];
        CGColorRelease(v9);
      }

      v6 = [(NSMutableArray *)colorStops countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_lock unlock];
  return v3;
}

- (NSArray)colorStopOffsets
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  [(NSLock *)self->_lock lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  colorStops = self->_colorStops;
  v5 = [(NSMutableArray *)colorStops countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(colorStops);
        }

        v9 = MEMORY[0x1E696AD98];
        [*(*(&v12 + 1) + 8 * i) offset];
        *&v10 = v10;
        -[NSArray addObject:](v3, "addObject:", [v9 numberWithFloat:v10]);
      }

      v6 = [(NSMutableArray *)colorStops countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_lock unlock];
  return v3;
}

- (CGGradient)copyCGGradient
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_colorStops count];
  if (v3 >= 1 && (v4 = v3, (v5 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL)) != 0))
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    for (i = 0; i != v4; ++i)
    {
      v9 = [(NSMutableArray *)self->_colorStops objectAtIndex:i];
      v10 = [v9 copyCGColor];
      [v7 addObject:v10];
      CGColorRelease(v10);
      [v9 offset];
      v6[i] = v11;
    }

    v12 = CGGradientCreateWithColors(0, v7, v6);

    free(v6);
  }

  else
  {
    v12 = 0;
  }

  [(NSLock *)self->_lock unlock];
  return v12;
}

- (CGShading)copyShading
{
  v21 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 0;
  }

  v4 = DeviceRGB;
  [(NSLock *)self->_lock lock];
  if (!self->_sorted)
  {
    [(NSMutableArray *)self->_colorStops sortUsingSelector:sel_compare_];
    self->_sorted = 1;
  }

  v5 = [(NSMutableArray *)self->_colorStops copy];
  [(NSLock *)self->_lock unlock];
  *domain = xmmword_1C2339F90;
  range[0] = 0.0;
  v14 = 0;
  v16 = 0;
  range[1] = 1.0;
  v15 = 0x3FF0000000000000;
  v17 = 0x3FF0000000000000;
  v18 = 0;
  v19 = 0x3FF0000000000000;
  v12 = *byte_1F41ACCF0;
  v6 = CGFunctionCreate(v5, 1uLL, domain, 4uLL, range, &v12);
  x = self->_p0.point.x;
  y = self->_p0.point.y;
  if (self->_type)
  {
    Radial = CGShadingCreateRadial(v4, *&x, self->_p0.radius, self->_p1.point, self->_p1.radius, v6, 1, 1);
  }

  else
  {
    Radial = CGShadingCreateAxial(v4, *&x, self->_p1.point, v6, 1, 1);
  }

  v10 = Radial;
  CGFunctionRelease(v6);
  CGColorSpaceRelease(v4);
  return v10;
}

- (id)newPatternColorWithSize:(CGSize)a3 opaque:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  if ([(SUGradient *)self gradientType])
  {
    return 0;
  }

  v9 = [(SUGradient *)self copyCGGradient];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v12 = v11;
  v21.width = width;
  v21.height = height;
  UIGraphicsBeginImageContextWithOptions(v21, a4, v12);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, width, height);
  [(SUGradient *)self p0];
  v15 = v14;
  v17 = v16;
  [(SUGradient *)self p1];
  v23.x = v18;
  v23.y = v19;
  v22.x = v15;
  v22.y = v17;
  CGContextDrawLinearGradient(CurrentContext, v10, v22, v23, 3u);
  v8 = [objc_alloc(MEMORY[0x1E69DC888]) initWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()];
  if (v8)
  {
    objc_setAssociatedObject(v8, "com.apple.iTunesStoreUI.SUGradient.iscolor", [MEMORY[0x1E696AD98] numberWithBool:1], 1);
    objc_setAssociatedObject(v8, "com.apple.iTunesStoreUI.SUGradient.size", [MEMORY[0x1E696B098] valueWithCGSize:{width, height}], 1);
  }

  UIGraphicsEndImageContext();
  CGGradientRelease(v10);
  return v8;
}

- (int64_t)numberOfColorStops
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_colorStops count];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SUGradient;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Colorstops: %@", -[SUGradient description](&v3, sel_description), self->_colorStops];
}

@end