@interface TSDLineEnd
+ (id)filledArrow;
+ (id)filledCircle;
+ (id)filledDiamond;
+ (id)filledSquare;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)invertedArrow;
+ (id)line;
+ (id)lineEndWithIdentifier:(id)identifier;
+ (id)lineEndWithPath:(CGPath *)path endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier;
+ (id)lineEndWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier;
+ (id)lineEndWithType:(int)type;
+ (id)openArrow;
+ (id)openCircle;
+ (id)openSquare;
+ (id)simpleArrow;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNone;
- (CGImage)newLineEndImageOnRight:(BOOL)right forContentsScale:(double)scale withSize:(CGSize)size;
- (CGPoint)endPoint;
- (TSDLineEnd)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDLineEnd)initWithBezierPath:(id)path wrapPath:(id)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier lineJoin:(int)join;
- (TSDLineEnd)initWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier lineJoin:(int)join;
- (TSUBezierPath)wrapPath;
- (double)scaleForStrokeWidth:(double)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDLineEnd

+ (id)simpleArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  v4 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v3, Mutable, 1, @"simple arrow", 3.0, 0.0);
  CGPathRelease(Mutable);

  return v4;
}

+ (id)filledCircle
{
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = 6.0;
  v13.size.height = 6.0;
  v14 = CGRectInset(v13, 0.5, 0.5);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  Mutable = CGPathCreateMutable();
  CGPathAddEllipseInRectSafe();
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v10 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v9, Mutable, 1, @"filled circle", MidX, MinY);
  CGPathRelease(Mutable);

  return v10;
}

+ (id)filledDiamond
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  v4 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v3, Mutable, 1, @"filled diamond", 3.0, 0.331400007);
  CGPathRelease(Mutable);

  return v4;
}

+ (id)openArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  v3 = [TSDLineEnd alloc];
  isFilled_identifier_lineJoin = objc_msgSend_initWithPath_wrapPath_endPoint_isFilled_identifier_lineJoin_(v3, v4, Mutable, 0, 0, @"open arrow", 1, 3.0, 0.0);
  CGPathRelease(Mutable);

  return isFilled_identifier_lineJoin;
}

+ (id)filledArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  v4 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v3, Mutable, 1, @"filled arrow", 3.0, 1.5);
  CGPathRelease(Mutable);

  return v4;
}

+ (id)filledSquare
{
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = 6.0;
  v13.size.height = 6.0;
  v14 = CGRectInset(v13, 0.5, 0.5);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  Mutable = CGPathCreateMutable();
  CGPathAddRectSafe();
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v10 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v9, Mutable, 1, @"filled square", MidX, MinY);
  CGPathRelease(Mutable);

  return v10;
}

+ (id)openSquare
{
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = 6.0;
  v13.size.height = 6.0;
  v14 = CGRectInset(v13, 1.0, 1.0);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  Mutable = CGPathCreateMutable();
  CGPathAddRectSafe();
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v10 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v9, Mutable, 0, @"open square", MidX, MinY + -0.800000012);
  CGPathRelease(Mutable);

  return v10;
}

+ (id)openCircle
{
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = 6.0;
  v13.size.height = 6.0;
  v14 = CGRectInset(v13, 0.5, 0.5);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  Mutable = CGPathCreateMutable();
  CGPathAddEllipseInRectSafe();
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v10 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v9, Mutable, 0, @"open circle", MidX, MinY + -0.800000012);
  CGPathRelease(Mutable);

  return v10;
}

+ (id)invertedArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  v4 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v3, Mutable, 1, @"inverted arrow", 3.0, 0.331400007);
  CGPathRelease(Mutable);

  return v4;
}

+ (id)line
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  v4 = objc_msgSend_lineEndWithPath_endPoint_isFilled_identifier_(TSDLineEnd, v3, Mutable, 0, @"line", 3.0, -0.800000012);
  CGPathRelease(Mutable);

  return v4;
}

+ (id)lineEndWithType:(int)type
{
  if (type > 5)
  {
    if (type > 8)
    {
      if (type == 9)
      {
        self = objc_msgSend_line(TSDLineEnd, a2, *&type);
        goto LABEL_27;
      }

      if (type == 10)
      {
        self = objc_msgSend_none(TSDLineEnd, a2, *&type);
        goto LABEL_27;
      }

      if (type != 11)
      {
        goto LABEL_27;
      }

      v3 = MEMORY[0x277D81150];
      v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSDLineEnd lineEndWithType:]");
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLineEnd.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 196, 0, "Should not ask for line end with this type (count)");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v8, v9);
LABEL_19:
      self = objc_msgSend_simpleArrow(TSDLineEnd, a2, *&type);
      goto LABEL_27;
    }

    if (type == 6)
    {
      self = objc_msgSend_openSquare(TSDLineEnd, a2, *&type);
      goto LABEL_27;
    }

    if (type == 7)
    {
      objc_msgSend_openCircle(TSDLineEnd, a2, *&type);
    }

    else
    {
      objc_msgSend_invertedArrow(TSDLineEnd, a2, *&type);
    }

    self = LABEL_11:;
    goto LABEL_27;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      self = objc_msgSend_openArrow(TSDLineEnd, a2, *&type);
      goto LABEL_27;
    }

    if (type == 4)
    {
      objc_msgSend_filledArrow(TSDLineEnd, a2, *&type);
    }

    else
    {
      objc_msgSend_filledSquare(TSDLineEnd, a2, *&type);
    }

    goto LABEL_11;
  }

  switch(type)
  {
    case 0:
      goto LABEL_19;
    case 1:
      self = objc_msgSend_filledCircle(TSDLineEnd, a2, *&type);
      break;
    case 2:
      self = objc_msgSend_filledDiamond(TSDLineEnd, a2, *&type);
      break;
  }

LABEL_27:

  return self;
}

+ (id)lineEndWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend_isEqualToString_(identifierCopy, v4, @"simple arrow"))
  {
    v7 = objc_msgSend_simpleArrow(TSDLineEnd, v5, v6);
LABEL_23:
    v28 = v7;
    goto LABEL_24;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v5, @"filled circle"))
  {
    v7 = objc_msgSend_filledCircle(TSDLineEnd, v8, v9);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v8, @"filled diamond"))
  {
    v7 = objc_msgSend_filledDiamond(TSDLineEnd, v10, v11);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v10, @"open arrow"))
  {
    v7 = objc_msgSend_openArrow(TSDLineEnd, v12, v13);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v12, @"filled arrow"))
  {
    v7 = objc_msgSend_filledArrow(TSDLineEnd, v14, v15);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v14, @"filled square"))
  {
    v7 = objc_msgSend_filledSquare(TSDLineEnd, v16, v17);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v16, @"open square"))
  {
    v7 = objc_msgSend_openSquare(TSDLineEnd, v18, v19);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v18, @"open circle"))
  {
    v7 = objc_msgSend_openCircle(TSDLineEnd, v20, v21);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v20, @"inverted arrow"))
  {
    v7 = objc_msgSend_invertedArrow(TSDLineEnd, v22, v23);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v22, @"line"))
  {
    v7 = objc_msgSend_line(TSDLineEnd, v24, v25);
    goto LABEL_23;
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v24, @"none"))
  {
    v7 = objc_msgSend_none(TSDLineEnd, v26, v27);
    goto LABEL_23;
  }

  v28 = 0;
LABEL_24:

  return v28;
}

+ (id)lineEndWithPath:(CGPath *)path endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier
{
  filledCopy = filled;
  y = point.y;
  x = point.x;
  identifierCopy = identifier;
  v11 = objc_alloc(objc_opt_class());
  isFilled_identifier = objc_msgSend_initWithPath_endPoint_isFilled_identifier_(v11, v12, path, filledCopy, identifierCopy, x, y);

  return isFilled_identifier;
}

+ (id)lineEndWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier
{
  filledCopy = filled;
  y = point.y;
  x = point.x;
  identifierCopy = identifier;
  v13 = objc_alloc(objc_opt_class());
  isFilled_identifier_lineJoin = objc_msgSend_initWithPath_wrapPath_endPoint_isFilled_identifier_lineJoin_(v13, v14, path, wrapPath, filledCopy, identifierCopy, 0, x, y);

  return isFilled_identifier_lineJoin;
}

- (TSDLineEnd)initWithBezierPath:(id)path wrapPath:(id)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier lineJoin:(int)join
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  wrapPathCopy = wrapPath;
  identifierCopy = identifier;
  v32.receiver = self;
  v32.super_class = TSDLineEnd;
  v20 = [(TSDLineEnd *)&v32 init];
  if (v20)
  {
    v21 = objc_msgSend_copy(identifierCopy, v18, v19);
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v20->_lineJoin = join;
    v25 = objc_msgSend_copy(pathCopy, v23, v24);
    path = v20->_path;
    v20->_path = v25;

    v29 = objc_msgSend_copy(wrapPathCopy, v27, v28);
    wrapPath = v20->_wrapPath;
    v20->_wrapPath = v29;

    v20->_endPoint.x = x;
    v20->_endPoint.y = y;
    v20->_isFilled = filled;
  }

  return v20;
}

- (TSDLineEnd)initWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier lineJoin:(int)join
{
  v8 = *&join;
  filledCopy = filled;
  y = point.y;
  x = point.x;
  identifierCopy = identifier;
  if (path)
  {
    path = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v15, path);
  }

  if (wrapPath)
  {
    wrapPath = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v15, wrapPath);
  }

  isFilled_identifier_lineJoin = objc_msgSend_initWithBezierPath_wrapPath_endPoint_isFilled_identifier_lineJoin_(self, v15, path, wrapPath, filledCopy, identifierCopy, v8, x, y);

  return isFilled_identifier_lineJoin;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 0;
LABEL_10:
    isEqual = 1;
    goto LABEL_16;
  }

  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    isEqual = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v7 = equalCopy;
  if (objc_msgSend_isEqualToString_(self->_identifier, v8, @"none"))
  {
    v11 = objc_msgSend_identifier(v7, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"none");

    if (isEqualToString)
    {
      goto LABEL_10;
    }
  }

  lineJoin = self->_lineJoin;
  if (lineJoin == objc_msgSend_lineJoin(v7, v9, v10))
  {
    identifier = self->_identifier;
    v18 = objc_msgSend_identifier(v7, v15, v16);
    if (objc_msgSend_isEqualToString_(identifier, v19, v18))
    {
      path = self->_path;
      v22 = v7->_path;
      if (path | v22)
      {
        isEqual = objc_msgSend_isEqual_(path, v20, v22);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

LABEL_16:

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  path = self->_path;
  wrapPath = self->_wrapPath;
  isFilled = self->_isFilled;
  identifier = self->_identifier;
  lineJoin = self->_lineJoin;
  x = self->_endPoint.x;
  y = self->_endPoint.y;

  return objc_msgSend_initWithBezierPath_wrapPath_endPoint_isFilled_identifier_lineJoin_(v4, v5, path, wrapPath, isFilled, identifier, lineJoin, x, y);
}

- (CGImage)newLineEndImageOnRight:(BOOL)right forContentsScale:(double)scale withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  rightCopy = right;
  v10 = TSDBitmapContextCreate(0xB, size.width * scale, size.height * scale);
  CGContextScaleCTM(v10, scale, scale);
  CGContextSetRGBFillColor(v10, 0.0, 0.0, 0.0, 1.0);
  CGContextSetRGBStrokeColor(v10, 0.0, 0.0, 0.0, 1.0);
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *&v53.a = *MEMORY[0x277CBF2C0];
  *&v53.c = v12;
  v13 = *(MEMORY[0x277CBF2C0] + 32);
  *&v53.tx = v13;
  v14 = -width;
  if (rightCopy)
  {
    *&transform.a = v11;
    *&transform.c = v12;
    *&transform.tx = v13;
    CGAffineTransformScale(&v53, &transform, -1.0, 1.0);
    v51 = v53;
    CGAffineTransformTranslate(&transform, &v51, v14, 0.0);
    v53 = transform;
  }

  v51 = v53;
  CGAffineTransformTranslate(&transform, &v51, 3.0, 1.0);
  v53 = transform;
  if ((objc_msgSend_isFilled(self, v15, v16) & 1) == 0)
  {
    v51 = v53;
    CGAffineTransformTranslate(&transform, &v51, 0.5, 0.0);
    v53 = transform;
  }

  v19 = objc_msgSend_CGPath(self->_path, v17, v18);
  BoundingBox = CGPathGetBoundingBox(v19);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  v22 = BoundingBox.size.width;
  v23 = BoundingBox.size.height;
  MaxX = 0.0;
  if (CGRectGetMinX(BoundingBox) < 0.0)
  {
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = v22;
    v55.size.height = v23;
    MaxX = CGRectGetMaxX(v55);
  }

  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = v22;
  v56.size.height = v23;
  MaxY = CGRectGetMaxY(v56);
  v51 = v53;
  CGAffineTransformTranslate(&transform, &v51, MaxY, MaxX);
  v53 = transform;
  v51 = transform;
  CGAffineTransformRotate(&transform, &v51, 1.57079633);
  v53 = transform;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = v22;
  v57.size.height = v23;
  v26 = CGRectGetHeight(v57);
  v27 = 1.5;
  if (v26 * 1.5 > height)
  {
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = v22;
    v58.size.height = v23;
    v27 = height / (CGRectGetHeight(v58) * 1.5) * 1.5;
  }

  v51 = v53;
  CGAffineTransformScale(&transform, &v51, v27, v27);
  v53 = transform;
  CGContextConcatCTM(v10, &transform);
  v30 = objc_msgSend_lineJoin(self, v28, v29);
  CGContextSetLineJoin(v10, v30);
  CGContextSetLineWidth(v10, 0.5);
  v33 = objc_msgSend_path(self, v31, v32);
  v34 = v33;
  objc_msgSend_CGPath(v34, v35, v36);
  CGContextAddPathSafe();

  if (objc_msgSend_isFilled(self, v37, v38))
  {
    CGContextFillPath(v10);
  }

  else
  {
    CGContextStrokePath(v10);
  }

  objc_msgSend_endPoint(self, v39, v40);
  v42 = v41;
  objc_msgSend_endPoint(self, v43, v44);
  CGContextMoveToPoint(v10, v42, v45 + 1.0);
  objc_msgSend_endPoint(self, v46, v47);
  CGContextAddLineToPoint(v10, v48, v14);
  CGContextStrokePath(v10);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

- (TSUBezierPath)wrapPath
{
  wrapPath = self->_wrapPath;
  if (!wrapPath)
  {
    wrapPath = self->_path;
  }

  v5 = objc_msgSend_copy(wrapPath, a2, v2);

  return v5;
}

- (BOOL)isNone
{
  v3 = objc_msgSend_identifier(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, @"none");

  return isEqualToString;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_identifier(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@ %p %@>", v5, self, v8);

  return v10;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDLineEnd mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLineEnd.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 404, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_identifier(self, v7, v8);
  v19 = objc_msgSend_identifier(v6, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v16, v20, v19);

  if (isEqualToString)
  {
    v22 = 5;
  }

  else
  {
    v22 = 2;
  }

  return v22;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v4 = objc_msgSend_identifier(self, a2, object, fraction);
  v6 = objc_msgSend_lineEndWithIdentifier_(TSDLineEnd, v5, v4);

  return v6;
}

- (double)scaleForStrokeWidth:(double)result
{
  if (result > 1.0)
  {
    return (result + -1.0) * 0.6 + 1.0;
  }

  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (TSD::LineEndArchive::ByteSizeLong(archive))
  {
    v8 = [TSDLineEnd alloc];
    v10 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, archive, unarchiverCopy);
  }

  else
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  }

  v11 = v10;

  return v11;
}

- (TSDLineEnd)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = MEMORY[0x277D809C8];
  }

  v9 = TSPCGPathCreateFromMessage(v7);
  v10 = *(archive + 4);
  if ((v10 & 4) != 0)
  {
    TSPCGPointFromMessage(*(archive + 5));
    v11 = v13;
    v12 = v14;
    v10 = *(archive + 4);
  }

  else
  {
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
  }

  v15 = *(archive + 52);
  if (v10)
  {
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = objc_msgSend_tsp_initWithProtobufString_(v30, v31, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDLineEnd(PersistenceAdditions) initWithArchive:unarchiver:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLineEndPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 47, 0, "Should have identifier!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v25 = objc_msgSend_none(TSDLineEnd, v23, v24);
    v28 = objc_msgSend_identifier(v25, v26, v27);
  }

  isFilled_identifier = objc_msgSend_initWithPath_endPoint_isFilled_identifier_(self, v29, v9, v15, v28, v11, v12);
  v33 = isFilled_identifier;
  if (isFilled_identifier)
  {
    v34 = *(archive + 12);
    if (v34 <= 2)
    {
      *(isFilled_identifier + 56) = v34;
    }
  }

  if (v9)
  {
    CGPathRelease(v9);
  }

  return v33;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_CGPath(self->_path, v6, v7);
  *(archive + 4) |= 2u;
  v9 = *(archive + 4);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C9BAC0](v10);
    *(archive + 4) = v9;
  }

  TSPCGPathCopyToMessage(v8, v9);
  lineJoin = self->_lineJoin;
  if (lineJoin < 3)
  {
    *(archive + 4) |= 8u;
    *(archive + 12) = lineJoin;
  }

  x = self->_endPoint.x;
  y = self->_endPoint.y;
  if (x != 0.0 || y != 0.0)
  {
    *(archive + 4) |= 4u;
    v16 = *(archive + 5);
    if (!v16)
    {
      v17 = *(archive + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C9BB00](v17);
      *(archive + 5) = v16;
    }

    v22.x = x;
    v22.y = y;
    TSPCGPointCopyToMessage(v22, v16);
  }

  if (self->_isFilled)
  {
    *(archive + 4) |= 0x10u;
    *(archive + 52) = 1;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v19 = objc_msgSend_tsp_protobufString(identifier, v11, v12);
    sub_2766926CC(archive, v19);
  }
}

@end