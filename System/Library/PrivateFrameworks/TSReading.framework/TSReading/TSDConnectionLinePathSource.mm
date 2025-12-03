@interface TSDConnectionLinePathSource
+ (id)pathSourceAtAngleOfSize:(CGSize)size forType:(int)type;
+ (id)pathSourceOfLength:(double)length;
- (CGPoint)fixedPointForControlKnobChange;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (TSDConnectionLinePathSource)initWithBezierPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)pathElementIndexForKnobTag:(unint64_t)tag;
- (void)bend;
- (void)p_setBezierPath:(id)path;
- (void)scaleToNaturalSize:(CGSize)size;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
@end

@implementation TSDConnectionLinePathSource

- (TSDConnectionLinePathSource)initWithBezierPath:(id)path
{
  pathCopy = path;
  if ([path elementCount] < 1)
  {
    v5 = *(MEMORY[0x277CBF398] + 16);
    v6 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    [pathCopy controlPointBounds];
  }

  v7 = v5 == *MEMORY[0x277CBF3A8] && v6 == *(MEMORY[0x277CBF3A8] + 8);
  if (v7 || (TSDRectHasNaNComponents() & 1) != 0 || [pathCopy elementCount] != 3)
  {
    pathCopy = +[TSDBezierPath bezierPath];
    [pathCopy moveToPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    [pathCopy lineToPoint:{50.0, 50.0}];
    [pathCopy lineToPoint:{100.0, 100.0}];
  }

  v9.receiver = self;
  v9.super_class = TSDConnectionLinePathSource;
  return [(TSDBezierPathSource *)&v9 initWithBezierPath:pathCopy];
}

+ (id)pathSourceOfLength:(double)length
{
  v4 = +[TSDBezierPath bezierPath];
  [v4 moveToPoint:{0.0, 0.0}];
  [v4 lineToPoint:{length * 0.5, 0.0}];
  [v4 lineToPoint:{length, 0.0}];
  v5 = [[TSDConnectionLinePathSource alloc] initWithBezierPath:v4];

  return v5;
}

+ (id)pathSourceAtAngleOfSize:(CGSize)size forType:(int)type
{
  v4 = *&type;
  height = size.height;
  width = size.width;
  v7 = +[TSDBezierPath bezierPath];
  v8 = v7;
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    [v7 moveToPoint:{0.0, 0.0}];
    [v8 lineToPoint:{0.0, height}];
  }

  else
  {
    [v7 moveToPoint:{0.0, height}];
    [v8 lineToPoint:{width * 0.5, height * 0.5}];
    height = 0.0;
  }

  [v8 lineToPoint:{width, height}];
LABEL_6:
  v9 = [[TSDConnectionLinePathSource alloc] initWithBezierPath:v8];
  [(TSDConnectionLinePathSource *)v9 setType:v4];

  return v9;
}

- (void)bend
{
  [(TSDConnectionLinePathSource *)self getControlKnobPosition:12];
  v4 = v3;
  v6 = v5;
  [(TSDConnectionLinePathSource *)self getControlKnobPosition:10];
  v8 = v7;
  [(TSDConnectionLinePathSource *)self getControlKnobPosition:11];
  v11 = TSDSubtractPoints(v9, v10, v8);
  v13 = TSDNormalizePoint(v11, v12);
  v15 = TSDRotatePoint90Degrees(1, v13, v14);
  v17 = v15;
  v18 = v16;
  if (v16 > 0.0)
  {
    v17 = TSDMultiplyPointScalar(v15, v16, -1.0);
    v18 = v19;
  }

  [(TSDBezierPathSource *)self naturalSize];
  v21 = v20;
  [(TSDBezierPathSource *)self naturalSize];
  v23 = v22;
  [(TSDBezierPathSource *)self naturalSize];
  v25 = v24;
  [(TSDBezierPathSource *)self naturalSize];
  v27 = TSDMultiplyPointScalar(v17, v18, sqrt(v25 * v26 + v21 * v23) * 0.3);
  v28 = TSDAddPoints(v4, v6, v27);

  [(TSDConnectionLinePathSource *)self setControlKnobPosition:12 toPoint:v28];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TSDConnectionLinePathSource;
  v4 = [(TSDBezierPathSource *)&v6 copyWithZone:zone];
  [v4 setType:self->mType];
  [(TSDConnectionLinePathSource *)self outsetFrom];
  [v4 setOutsetFrom:?];
  [(TSDConnectionLinePathSource *)self outsetTo];
  [v4 setOutsetTo:?];
  return v4;
}

- (int64_t)pathElementIndexForKnobTag:(unint64_t)tag
{
  if (tag - 10 > 2)
  {
    return -1;
  }

  else
  {
    return qword_26CA66418[tag - 10];
  }
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  v7 = *MEMORY[0x277CBF348];
  v4 = [(TSDConnectionLinePathSource *)self pathElementIndexForKnobTag:position];
  if ((v4 & 0x8000000000000000) == 0)
  {
    [(TSDBezierPath *)self->super.mPath elementAtIndex:v4 associatedPoints:&v7];
  }

  v6 = *(&v7 + 1);
  v5 = *&v7;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  v5 = [(TSDConnectionLinePathSource *)self pathElementIndexForKnobTag:position, *&point.x, *&point.y];
  if ((v5 & 0x8000000000000000) == 0)
  {
    [(TSDBezierPath *)self->super.mPath setAssociatedPoints:&v6 atIndex:v5];
  }
}

- (void)scaleToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TSDBezierPath *)self->super.mPath bounds];
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, width / v6, height / v7);
  mPath = self->super.mPath;
  v9 = v10;
  [(TSDBezierPath *)mPath transformUsingAffineTransform:&v9];
  [(TSDBezierPathSource *)self setNaturalSize:width, height];
}

- (CGPoint)fixedPointForControlKnobChange
{
  v4 = 0.0;
  v5 = 0.0;
  [(TSDBezierPath *)self->super.mPath elementAtIndex:0 associatedPoints:&v4];
  v2 = v4;
  v3 = v5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)p_setBezierPath:(id)path
{
  pathCopy = path;
  v14 = *MEMORY[0x277D85DE8];
  if (!path)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDConnectionLinePathSource p_setBezierPath:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDConnectionLinePathSource.m"), 199, @"invalid nil value for '%s'", "path"}];
  }

  if ([(TSDBezierPath *)pathCopy elementCount]== 2 && [(TSDBezierPath *)pathCopy elementAtIndex:1]== 2)
  {
    [(TSDBezierPath *)pathCopy elementAtIndex:1 allPoints:v11];
    pathCopy = +[TSDBezierPath bezierPath];
    [(TSDBezierPath *)pathCopy moveToPoint:*v11];
    [(TSDBezierPath *)pathCopy lineToPoint:TSDPointOnCurve(v11, 0.5)];
    [(TSDBezierPath *)pathCopy lineToPoint:v12, v13];
  }

  v7 = pathCopy;

  self->super.mPath = pathCopy;
  p_mNaturalSize = &self->super.mNaturalSize;
  [(TSDBezierPath *)pathCopy bounds];
  p_mNaturalSize->width = v9;
  p_mNaturalSize->height = v10;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TSDConnectionLinePathSource;
  v3 = [-[TSDBezierPathSource description](&v8 description)];
  v4 = MEMORY[0x277CCACA8];
  type = [(TSDConnectionLinePathSource *)self type];
  v6 = @"curved";
  if (type == 1)
  {
    v6 = @"orthogonal";
  }

  [v3 appendString:{objc_msgSend(v4, "stringWithFormat:", @"; connection type: %@", v6)}];
  return v3;
}

@end