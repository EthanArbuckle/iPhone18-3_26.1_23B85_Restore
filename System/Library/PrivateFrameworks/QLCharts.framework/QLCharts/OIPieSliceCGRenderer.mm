@interface OIPieSliceCGRenderer
- (OIPieSliceCGRenderer)initWithChart:(__OIChart *)chart;
- (void)dealloc;
- (void)renderPieSliceFromSeries:(__OISeries *)series radius:(double)radius angle:(double)angle newAngle:(double)newAngle xOffset:(double)offset yOffset:(double)yOffset thickness:(double)thickness;
@end

@implementation OIPieSliceCGRenderer

- (OIPieSliceCGRenderer)initWithChart:(__OIChart *)chart
{
  v6.receiver = self;
  v6.super_class = OIPieSliceCGRenderer;
  v4 = [(OIPieSliceCGRenderer *)&v6 init];
  if (v4)
  {
    [(OIPieSliceCGRenderer *)v4 setChart:OILabelRetain(chart)];
  }

  return v4;
}

- (void)dealloc
{
  OIChartRelease(self->_chart);
  v3.receiver = self;
  v3.super_class = OIPieSliceCGRenderer;
  [(OIPieSliceCGRenderer *)&v3 dealloc];
}

- (void)renderPieSliceFromSeries:(__OISeries *)series radius:(double)radius angle:(double)angle newAngle:(double)newAngle xOffset:(double)offset yOffset:(double)yOffset thickness:(double)thickness
{
  Type = OIAxisGetType(self->_chart);
  TextColor = OILabelGetTextColor(series);
  StrokeColor = OILabelGetStrokeColor(series);
  if (angle >= -3.14159265 && thickness > 0.0 && (newAngle < 0.0 || angle > 3.14159265 || angle < 0.0 || newAngle > 3.14159265))
  {
    if (angle >= 3.14159265 || angle <= 0.0)
    {
      angleCopy = angle;
    }

    else
    {
      angleCopy = 0.0;
    }

    if (newAngle >= -3.14159265)
    {
      newAngleCopy = newAngle;
    }

    else
    {
      newAngleCopy = 3.14159265;
    }

    v22 = __sincos_stret(angleCopy);
    CGContextMoveToPoint(Type, offset + radius * v22.__cosval, yOffset + radius * v22.__sinval);
    CGContextAddArc(Type, offset, yOffset, radius, angleCopy, newAngleCopy, 1);
    v23 = __sincos_stret(newAngleCopy);
    CGContextAddLineToPoint(Type, offset + radius * v23.__cosval, yOffset + radius * v23.__sinval - thickness);
    CGContextAddArc(Type, offset, yOffset - thickness, radius, newAngleCopy, angleCopy, 0);
    if (TextColor)
    {
      v24 = OICreateDimmedColorFromColor(TextColor, 0.5);
      CGContextSetFillColorWithColor(Type, v24);
      CGContextFillPath(Type);
      CGColorRelease(v24);
    }

    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      StrokeWidth = OILabelGetStrokeWidth(series);
      CGContextSetLineWidth(Type, StrokeWidth);
      CGContextStrokePath(Type);
    }
  }

  if (angle < -1.57079633 && thickness > 0.0)
  {
    v26 = __sincos_stret(angle);
    v27 = offset + radius * v26.__cosval;
    v28 = yOffset + radius * v26.__sinval;
    CGContextMoveToPoint(Type, v27, v28);
    CGContextAddLineToPoint(Type, v27, v28 - thickness);
    CGContextAddLineToPoint(Type, offset, yOffset - thickness);
    CGContextAddLineToPoint(Type, offset, yOffset);
    if (TextColor)
    {
      v29 = OICreateDimmedColorFromColor(TextColor, 0.5);
      CGContextSetFillColorWithColor(Type, v29);
      CGContextFillPath(Type);
      CGColorRelease(v29);
    }

    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      v30 = OILabelGetStrokeWidth(series);
      CGContextSetLineWidth(Type, v30);
      CGContextStrokePath(Type);
    }
  }

  if (newAngle > -1.57079633 && thickness > 0.0)
  {
    v31 = __sincos_stret(newAngle);
    v32 = offset + radius * v31.__cosval;
    v33 = yOffset + radius * v31.__sinval;
    CGContextMoveToPoint(Type, v32, v33);
    CGContextAddLineToPoint(Type, v32, v33 - thickness);
    CGContextAddLineToPoint(Type, offset, yOffset - thickness);
    CGContextAddLineToPoint(Type, offset, yOffset);
    if (TextColor)
    {
      v34 = OICreateDimmedColorFromColor(TextColor, 0.5);
      CGContextSetFillColorWithColor(Type, v34);
      CGContextFillPath(Type);
      CGColorRelease(v34);
    }

    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      v35 = OILabelGetStrokeWidth(series);
      CGContextSetLineWidth(Type, v35);
      CGContextStrokePath(Type);
    }
  }

  CGContextMoveToPoint(Type, offset, floor(yOffset) + 0.5);
  v36 = __sincos_stret(angle);
  CGContextAddLineToPoint(Type, offset + radius * v36.__cosval, yOffset + radius * v36.__sinval);
  CGContextAddArc(Type, offset, yOffset, radius, angle, newAngle, 1);
  CGContextAddLineToPoint(Type, offset, yOffset);
  if (TextColor)
  {
    CGContextSetFillColorWithColor(Type, TextColor);
    CGContextFillPath(Type);
  }

  if (StrokeColor)
  {
    CGContextSetStrokeColorWithColor(Type, StrokeColor);
    v37 = OILabelGetStrokeWidth(series);
    CGContextSetLineWidth(Type, v37);

    CGContextStrokePath(Type);
  }
}

@end