@interface _UISecureControlDrawing
- (CGSize)drawingSize;
- (_UISecureControlDrawing)initWithDrawingPlan:(id)a3 cornerStyle:(int64_t)a4 cornerRadius:(double)a5 foregroundColor:(CGColor *)a6 backgroundColor:(CGColor *)a7 imagePlacement:(unint64_t)a8 leftToRight:(BOOL)a9 size:(CGSize)a10;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation _UISecureControlDrawing

- (_UISecureControlDrawing)initWithDrawingPlan:(id)a3 cornerStyle:(int64_t)a4 cornerRadius:(double)a5 foregroundColor:(CGColor *)a6 backgroundColor:(CGColor *)a7 imagePlacement:(unint64_t)a8 leftToRight:(BOOL)a9 size:(CGSize)a10
{
  height = a10.height;
  width = a10.width;
  v20 = a3;
  v32.receiver = self;
  v32.super_class = _UISecureControlDrawing;
  v21 = [(_UISecureControlDrawing *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_drawingPlan, a3);
    v22->_foregroundColor = CGColorRetain(a6);
    v23 = height * 0.5;
    v24 = 0.0;
    if (a4 > 1)
    {
      if (a4 != 2)
      {
        v26 = v23 * 0.5;
        if (a4 == 4)
        {
          v24 = INFINITY;
        }

        v25 = a4 == 3;
        goto LABEL_10;
      }

      a5 = v23 * 0.35;
    }

    else if (a4 != -1)
    {
      if (a4)
      {
        v25 = a4 == 1;
        v26 = v23 * 0.25;
LABEL_10:
        if (v25)
        {
          a5 = v26;
        }

        else
        {
          a5 = v24;
        }

        goto LABEL_13;
      }

      [v20 contentSizeCategory];
      CTFontDescriptorGetTextStyleSize();
      CTFontDescriptorGetTextStyleSize();
      [v20 displayScale];
      a5 = round(v31 * (0.0 * a5 / 0.0)) / v31;
    }

LABEL_13:
    v27 = [UISPathDrawing alloc];
    v33[0] = fmin(fmax(a5, 0.0), fmin(v23, width * 0.5));
    v33[1] = v33[0];
    v33[2] = v33[0];
    v33[3] = v33[0];
    v28 = [v27 initWithRoundedRectSize:v33 cornerRadii:a7 fillColor:{width, height}];
    backgroundDrawing = v22->_backgroundDrawing;
    v22->_backgroundDrawing = v28;

    v22->_imagePlacement = a8;
    v22->_leftToRight = a9;
    v22->_size.width = width;
    v22->_size.height = height;
  }

  return v22;
}

- (void)dealloc
{
  CGColorRelease(self->_foregroundColor);
  v3.receiver = self;
  v3.super_class = _UISecureControlDrawing;
  [(_UISecureControlDrawing *)&v3 dealloc];
}

- (CGSize)drawingSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  CGContextSaveGState(a3);
  [(UISPathDrawing *)self->_backgroundDrawing drawInContext:a3 atPoint:x, y];
  CGContextRestoreGState(a3);
  [(_UISecureControlDrawingPlan *)self->_drawingPlan alignmentSize];
  v9 = v8;
  v11 = v10;
  [(_UISecureControlDrawingPlan *)self->_drawingPlan displayScale];
  v13 = v12;
  v14 = v9 * 0.5;
  v15 = v11 * 0.5;
  v31 = [(_UISecureControlDrawingPlan *)self->_drawingPlan glyphDrawingInColor:self->_foregroundColor];
  v16 = [(_UISecureControlDrawingPlan *)self->_drawingPlan textDrawingInColor:self->_foregroundColor];
  if (v31)
  {
    CGContextSaveGState(a3);
    [v31 alignmentRect];
    imagePlacement = self->_imagePlacement;
    if ((imagePlacement & 0xA) != 0)
    {
      v22 = v14 - v19;
      if (self->_leftToRight != (imagePlacement == 8))
      {
        v22 = -v14;
      }

      v23 = v20 * -0.5;
    }

    else
    {
      v23 = v15 - v20;
      if (imagePlacement == 1)
      {
        v23 = -v15;
      }

      v22 = v19 * -0.5;
    }

    [v31 drawInContext:a3 atPoint:{x + floor(v13 * (v22 + self->_size.width * 0.5 - v17)) / v13, y + floor(v13 * (v23 + self->_size.height * 0.5 - v18)) / v13}];
    CGContextRestoreGState(a3);
  }

  if (v16)
  {
    CGContextSaveGState(a3);
    [v16 alignmentRect];
    v28 = self->_imagePlacement;
    if ((v28 & 0xA) != 0)
    {
      v29 = v14 - v26;
      if (self->_leftToRight == (v28 == 8))
      {
        v29 = -v14;
      }

      v30 = v27 * -0.5;
    }

    else
    {
      v30 = v15 - v27;
      if (v28 != 1)
      {
        v30 = -v15;
      }

      v29 = v26 * -0.5;
    }

    [v16 drawInContext:a3 atPoint:{x + floor(v13 * (v29 + self->_size.width * 0.5 - v24)) / v13, y + floor(v13 * (v30 + self->_size.height * 0.5 - v25)) / v13}];
    CGContextRestoreGState(a3);
  }
}

@end