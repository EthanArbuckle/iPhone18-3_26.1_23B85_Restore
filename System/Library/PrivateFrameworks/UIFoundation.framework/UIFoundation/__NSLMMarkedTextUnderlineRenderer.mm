@interface __NSLMMarkedTextUnderlineRenderer
- (double)renderUnderline;
- (void)_renderUnderlineStartX:(double)x endX:(double)endX yPosition:(double)position alphaValue:(double)value;
- (void)dealloc;
- (void)processMarkedTextUnderlineStartX:(int)x endX:(double)endX yPosition:(double)position underlineColor:(double)color selected:;
@end

@implementation __NSLMMarkedTextUnderlineRenderer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = __NSLMMarkedTextUnderlineRenderer;
  [(__NSLMMarkedTextUnderlineRenderer *)&v3 dealloc];
}

- (void)_renderUnderlineStartX:(double)x endX:(double)endX yPosition:(double)position alphaValue:(double)value
{
  if (endX > x)
  {
    endXCopy = endX;
    xCopy = x;
    CGContextSaveGState(self->_cgContextRef);
    [(UIColor *)self->_underlineColor set];
    if (endXCopy - xCopy > 1.0)
    {
      xCopy = xCopy + 1.0;
    }

    if (endXCopy - xCopy > 1.0)
    {
      endXCopy = endXCopy + -1.0;
    }

    CGContextSetLineWidth(self->_cgContextRef, 2.0);
    CGContextSetLineCap(self->_cgContextRef, kCGLineCapRound);
    CGContextSetAlpha(self->_cgContextRef, value);
    CGContextMoveToPoint(self->_cgContextRef, xCopy, position);
    CGContextAddLineToPoint(self->_cgContextRef, endXCopy, position);
    CGContextStrokePath(self->_cgContextRef);
    cgContextRef = self->_cgContextRef;

    CGContextRestoreGState(cgContextRef);
  }
}

- (void)processMarkedTextUnderlineStartX:(int)x endX:(double)endX yPosition:(double)position underlineColor:(double)color selected:
{
  if (!self)
  {
    return;
  }

  if (*(self + 24) != 1)
  {
    goto LABEL_34;
  }

  v13 = *(self + 40);
  v12 = *(self + 48);
  v15 = *(self + 56);
  v14 = *(self + 64);
  if (v12 > v13)
  {
    xCopy = x;
  }

  else
  {
    xCopy = 0;
  }

  if (v14 <= v15)
  {
    xCopy = 1;
  }

  if (xCopy)
  {
    v17 = *(self + 40);
  }

  else
  {
    v17 = *(self + 56);
  }

  v21 = v17;
  if (xCopy)
  {
    v18 = *(self + 48);
  }

  else
  {
    v18 = *(self + 64);
  }

  if (![*(self + 16) isEqual:a2] || *(self + 32) != color || vabdd_f64(endX, v18) > 0.001 && vabdd_f64(position, v21) > 0.001)
  {
    [(__NSLMMarkedTextUnderlineRenderer *)self renderUnderline];
    goto LABEL_34;
  }

  if (!x)
  {
    if (v14 <= v15)
    {
      *(self + 56) = endX;
LABEL_32:
      *(self + 64) = position;
      goto LABEL_34;
    }

LABEL_29:
    if (*(self + 56) > endX)
    {
      *(self + 56) = endX;
    }

    if (*(self + 64) >= position)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v12 <= v13)
  {
    *(self + 40) = endX;
LABEL_27:
    *(self + 48) = position;
    goto LABEL_28;
  }

  if (*(self + 40) > endX)
  {
    *(self + 40) = endX;
  }

  if (*(self + 48) < position)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v14 > v15)
  {
    goto LABEL_29;
  }

LABEL_34:
  if (position > endX && (*(self + 24) & 1) == 0)
  {
    *(self + 16) = a2;
    *(self + 32) = color;
    v19 = 56;
    if (x)
    {
      v19 = 40;
    }

    v20 = 64;
    if (x)
    {
      v20 = 48;
    }

    *(self + v19) = endX;
    *(self + v20) = position;
    *(self + 24) = 1;
  }
}

- (double)renderUnderline
{
  if (self && *(self + 24) == 1)
  {
    v2 = 0.35;
    if (*(self + 40) == *(self + 48))
    {
      v2 = 1.0;
    }

    [self _renderUnderlineStartX:*(self + 56) endX:*(self + 64) yPosition:*(self + 32) alphaValue:v2];
    [self _renderUnderlineStartX:*(self + 40) endX:*(self + 48) yPosition:*(self + 32) alphaValue:1.0];
    *(self + 24) = 0;
    result = 0.0;
    *(self + 32) = 0u;
    *(self + 48) = 0u;
    *(self + 64) = 0;
  }

  return result;
}

@end