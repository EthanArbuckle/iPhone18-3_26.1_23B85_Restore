@interface BKDisplayAnnotationLocation
+ (id)centerAtPoint:(CGPoint)a3;
+ (id)controlledBySupernode;
+ (id)relativeToBottomLeftOfSuper:(CGPoint)a3;
+ (id)relativeToBottomMiddleOfSuper:(CGPoint)a3;
+ (id)relativeToTopLeftOfSuper:(CGPoint)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)point;
- (CGPoint)superBias;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BKDisplayAnnotationLocation

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)superBias
{
  x = self->_superBias.x;
  y = self->_superBias.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  shouldAutoposition = self->_shouldAutoposition;
  if (shouldAutoposition != [v4 shouldAutoposition])
  {
    goto LABEL_11;
  }

  inhibitRotation = self->_inhibitRotation;
  if (inhibitRotation != [v4 inhibitRotation])
  {
    goto LABEL_11;
  }

  [v4 superBias];
  v8 = 0;
  if (self->_superBias.x == v9 && self->_superBias.y == v7)
  {
    definedInReferenceSpace = self->_definedInReferenceSpace;
    if (definedInReferenceSpace == [v4 definedInReferenceSpace])
    {
      [v4 point];
      v8 = self->_point.y == v12 && self->_point.x == v11;
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(BKDisplayAnnotationLocation);
  *(result + 8) = self->_inhibitRotation;
  *(result + 9) = self->_shouldAutoposition;
  *(result + 1) = self->_superBias;
  *(result + 2) = self->_point;
  *(result + 10) = self->_definedInReferenceSpace;
  return result;
}

+ (id)relativeToBottomMiddleOfSuper:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(BKDisplayAnnotationLocation);
  [(BKDisplayAnnotationLocation *)v5 setShouldAutoposition:1];
  [(BKDisplayAnnotationLocation *)v5 setSuperBias:0.5, 1.0];
  [(BKDisplayAnnotationLocation *)v5 setPoint:ceil(x), ceil(y)];

  return v5;
}

+ (id)relativeToBottomLeftOfSuper:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(BKDisplayAnnotationLocation);
  [(BKDisplayAnnotationLocation *)v5 setShouldAutoposition:1];
  [(BKDisplayAnnotationLocation *)v5 setSuperBias:0.0, 1.0];
  [(BKDisplayAnnotationLocation *)v5 setPoint:ceil(x), ceil(y)];

  return v5;
}

+ (id)relativeToTopLeftOfSuper:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(BKDisplayAnnotationLocation);
  [(BKDisplayAnnotationLocation *)v5 setShouldAutoposition:1];
  [(BKDisplayAnnotationLocation *)v5 setSuperBias:0.0, 0.0];
  [(BKDisplayAnnotationLocation *)v5 setPoint:ceil(x), ceil(y)];

  return v5;
}

+ (id)centerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(BKDisplayAnnotationLocation);
  [(BKDisplayAnnotationLocation *)v5 setSuperBias:0.5, 0.5];
  [(BKDisplayAnnotationLocation *)v5 setPoint:ceil(x), ceil(y)];

  return v5;
}

+ (id)controlledBySupernode
{
  if (qword_100126108 != -1)
  {
    dispatch_once(&qword_100126108, &stru_1000FD030);
  }

  v3 = qword_100126100;

  return v3;
}

@end