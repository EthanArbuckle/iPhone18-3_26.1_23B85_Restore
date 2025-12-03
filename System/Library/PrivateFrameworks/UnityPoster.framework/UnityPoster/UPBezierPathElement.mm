@interface UPBezierPathElement
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (UPBezierPathElement)initWithStartPoint:(CGPoint)point pathElement:(const CGPathElement *)element;
- (uint64_t)numberOfPointsForCGPathElementType:(uint64_t)type;
- (void)dealloc;
@end

@implementation UPBezierPathElement

- (UPBezierPathElement)initWithStartPoint:(CGPoint)point pathElement:(const CGPathElement *)element
{
  y = point.y;
  x = point.x;
  v18.receiver = self;
  v18.super_class = UPBezierPathElement;
  v7 = [(UPBezierPathElement *)&v18 init];
  if (v7)
  {
    type = element->type;
    v9 = 3;
    v10 = 2;
    v11 = type != 2;
    if (type != 2)
    {
      v10 = 0;
    }

    if (type == 3)
    {
      v11 = 0;
    }

    else
    {
      v9 = v10;
    }

    v12 = type >= 2 && v11;
    if (type >= 2)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    v14 = malloc_type_malloc(16 * (v13 + 1), 0xA7DD2489uLL);
    v15 = v14;
    *v14 = x;
    v14[1] = y;
    if (!v12)
    {
      memcpy(v14 + 2, element->points, 16 * v13);
    }

    [(UPBezierPathElement *)v7 setPoints:v15];
    [(UPBezierPathElement *)v7 setType:type];
    [(UPBezierPathElement *)v7 setPointCount:v13 + 1];
    v16 = v7;
  }

  return v7;
}

- (uint64_t)numberOfPointsForCGPathElementType:(uint64_t)type
{
  result = 0;
  if (type)
  {
    if (a2 <= 3)
    {
      return qword_27067CD38[a2];
    }
  }

  return result;
}

- (void)dealloc
{
  if ([(UPBezierPathElement *)self points])
  {
    free([(UPBezierPathElement *)self points]);
  }

  v3.receiver = self;
  v3.super_class = UPBezierPathElement;
  [(UPBezierPathElement *)&v3 dealloc];
}

- (CGPoint)startPoint
{
  points = [(UPBezierPathElement *)self points];
  x = points->x;
  y = points->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  points = [(UPBezierPathElement *)self points];
  v4 = &points[[(UPBezierPathElement *)self pointCount]];
  x = v4[-1].x;
  y = v4[-1].y;
  result.y = y;
  result.x = x;
  return result;
}

@end