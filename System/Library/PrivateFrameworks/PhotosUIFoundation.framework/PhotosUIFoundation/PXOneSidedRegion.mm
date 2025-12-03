@interface PXOneSidedRegion
+ (PXOneSidedRegion)identityRegion;
- (BOOL)_getIntersectionWithLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint intersectionFromPoint:(CGPoint *)fromPoint toPoint:(CGPoint *)a6;
- (BOOL)isEqual:(id)equal;
- (CGPath)createPathInRect:(CGRect)rect;
- (PXOneSidedRegion)initWithA:(double)a b:(double)b c:(double)c;
- (PXOneSidedRegion)initWithSideAngle:(double)angle point:(CGPoint)point width:(double)width offset:(double)offset;
- (id)transformedWithAffineTransform:(CGAffineTransform *)transform;
- (unint64_t)hash;
@end

@implementation PXOneSidedRegion

- (unint64_t)hash
{
  [(PXOneSidedRegion *)self a];
  v4 = v3;
  [(PXOneSidedRegion *)self b];
  v6 = v4 + v5;
  [(PXOneSidedRegion *)self c];
  return (v6 + v7);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = PXOneSidedRegion;
  v5 = [(PXOneSidedRegion *)&v18 isEqual:equalCopy];
  v6 = v5;
  if (equalCopy != self && v5)
  {
    v7 = equalCopy;
    [(PXOneSidedRegion *)self a];
    v9 = v8;
    [(PXOneSidedRegion *)v7 a];
    if (v9 == v10 && ([(PXOneSidedRegion *)self b], v12 = v11, [(PXOneSidedRegion *)v7 b], v12 == v13))
    {
      [(PXOneSidedRegion *)self c];
      v15 = v14;
      [(PXOneSidedRegion *)v7 c];
      v6 = v15 == v16;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_getIntersectionWithLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint intersectionFromPoint:(CGPoint *)fromPoint toPoint:(CGPoint *)a6
{
  y = toPoint.y;
  x = toPoint.x;
  v10 = point.y;
  v11 = point.x;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__PXOneSidedRegion__getIntersectionWithLineFromPoint_toPoint_intersectionFromPoint_toPoint___block_invoke;
  aBlock[3] = &unk_1E7BB7FE8;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = v12[2](v11, v10);
  (v12[2])(v12, x, y);
  v15 = v14 >= 0.0 || v13 >= 0.0;
  if (!v15 || v13 >= 0.0 && v14 >= 0.0)
  {
LABEL_9:
    if (!fromPoint)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v13 >= 0.0)
  {
    v16 = -v14 / (v13 - v14);
    x = x + v16 * (v11 - x);
    y = y + v16 * (v10 - y);
    goto LABEL_9;
  }

  v18 = -v13 / (v14 - v13);
  v11 = v11 + v18 * (x - v11);
  v10 = v10 + v18 * (y - v10);
  if (fromPoint)
  {
LABEL_10:
    fromPoint->x = v11;
    fromPoint->y = v10;
  }

LABEL_11:
  if (a6)
  {
    a6->x = x;
    a6->y = y;
  }

  return v15;
}

- (CGPath)createPathInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__PXOneSidedRegion_createPathInRect___block_invoke;
  aBlock[3] = &unk_1E7BB7F98;
  aBlock[4] = self;
  aBlock[5] = &v29;
  aBlock[6] = Mutable;
  v9 = _Block_copy(aBlock);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3010000000;
  v26[3] = "";
  v27 = PXPointNull;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __37__PXOneSidedRegion_createPathInRect___block_invoke_2;
  v23[3] = &unk_1E7BB7FC0;
  v25 = v26;
  v10 = v9;
  v24 = v10;
  v11 = _Block_copy(v23);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MinY = CGRectGetMinY(v34);
  v11[2](v11, MinX, MinY);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MaxX = CGRectGetMaxX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v15 = CGRectGetMinY(v36);
  v11[2](v11, MaxX, v15);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v16 = CGRectGetMaxX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MaxY = CGRectGetMaxY(v38);
  v11[2](v11, v16, MaxY);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v18 = CGRectGetMinX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v19 = CGRectGetMaxY(v40);
  v11[2](v11, v18, v19);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v20 = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v21 = CGRectGetMinY(v42);
  v11[2](v11, v20, v21);
  if (*(v30 + 24) == 1)
  {
    CGPathCloseSubpath(Mutable);
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v29, 8);
  return Mutable;
}

void __37__PXOneSidedRegion_createPathInRect___block_invoke(uint64_t a1)
{
  v5 = 0.0;
  v6 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  if ([*(a1 + 32) _getIntersectionWithLineFromPoint:&v5 toPoint:&v3 intersectionFromPoint:? toPoint:?])
  {
    v2 = *(a1 + 48);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      CGPathAddLineToPoint(v2, 0, v5, v6);
    }

    else
    {
      CGPathMoveToPoint(v2, 0, v5, v6);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    CGPathAddLineToPoint(*(a1 + 48), 0, v3, v4);
  }
}

uint64_t __37__PXOneSidedRegion_createPathInRect___block_invoke_2(uint64_t result, double a2, double a3)
{
  v5 = *(*(result + 40) + 8);
  if (*(v5 + 32) != INFINITY || *(v5 + 40) != INFINITY)
  {
    v7 = result;
    result = (*(*(result + 32) + 16))();
    v5 = *(*(v7 + 40) + 8);
  }

  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

- (id)transformedWithAffineTransform:(CGAffineTransform *)transform
{
  if (transform->b != 0.0 || transform->c != 0.0)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1B3F73000, v5, OS_LOG_TYPE_ERROR, "currently only supporting non-rotational transforms", v9, 2u);
    }
  }

  v6 = self->_b / transform->d;
  v7 = [[PXOneSidedRegion alloc] initWithA:self->_a / transform->a b:v6 c:self->_c - self->_a / transform->a * transform->tx - v6 * transform->ty];

  return v7;
}

- (PXOneSidedRegion)initWithA:(double)a b:(double)b c:(double)c
{
  v9.receiver = self;
  v9.super_class = PXOneSidedRegion;
  result = [(PXOneSidedRegion *)&v9 init];
  if (result)
  {
    result->_a = a;
    result->_b = b;
    result->_c = c;
  }

  return result;
}

- (PXOneSidedRegion)initWithSideAngle:(double)angle point:(CGPoint)point width:(double)width offset:(double)offset
{
  __sincos_stret(angle);

  return [PXOneSidedRegion initWithA:"initWithA:b:c:" b:? c:?];
}

+ (PXOneSidedRegion)identityRegion
{
  if (identityRegion_onceToken != -1)
  {
    dispatch_once(&identityRegion_onceToken, &__block_literal_global_15433);
  }

  v3 = identityRegion_identityRegion;

  return v3;
}

uint64_t __34__PXOneSidedRegion_identityRegion__block_invoke()
{
  v0 = [[PXOneSidedRegion alloc] initWithA:0.0 b:0.0 c:1.0];
  v1 = identityRegion_identityRegion;
  identityRegion_identityRegion = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end