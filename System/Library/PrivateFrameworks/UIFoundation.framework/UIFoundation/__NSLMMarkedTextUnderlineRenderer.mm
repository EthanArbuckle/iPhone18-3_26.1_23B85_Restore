@interface __NSLMMarkedTextUnderlineRenderer
- (double)renderUnderline;
- (void)_renderUnderlineStartX:(double)a3 endX:(double)a4 yPosition:(double)a5 alphaValue:(double)a6;
- (void)dealloc;
- (void)processMarkedTextUnderlineStartX:(int)a3 endX:(double)a4 yPosition:(double)a5 underlineColor:(double)a6 selected:;
@end

@implementation __NSLMMarkedTextUnderlineRenderer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = __NSLMMarkedTextUnderlineRenderer;
  [(__NSLMMarkedTextUnderlineRenderer *)&v3 dealloc];
}

- (void)_renderUnderlineStartX:(double)a3 endX:(double)a4 yPosition:(double)a5 alphaValue:(double)a6
{
  if (a4 > a3)
  {
    v9 = a4;
    v10 = a3;
    CGContextSaveGState(self->_cgContextRef);
    [(UIColor *)self->_underlineColor set];
    if (v9 - v10 > 1.0)
    {
      v10 = v10 + 1.0;
    }

    if (v9 - v10 > 1.0)
    {
      v9 = v9 + -1.0;
    }

    CGContextSetLineWidth(self->_cgContextRef, 2.0);
    CGContextSetLineCap(self->_cgContextRef, kCGLineCapRound);
    CGContextSetAlpha(self->_cgContextRef, a6);
    CGContextMoveToPoint(self->_cgContextRef, v10, a5);
    CGContextAddLineToPoint(self->_cgContextRef, v9, a5);
    CGContextStrokePath(self->_cgContextRef);
    cgContextRef = self->_cgContextRef;

    CGContextRestoreGState(cgContextRef);
  }
}

- (void)processMarkedTextUnderlineStartX:(int)a3 endX:(double)a4 yPosition:(double)a5 underlineColor:(double)a6 selected:
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 24) != 1)
  {
    goto LABEL_34;
  }

  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15 = *(a1 + 56);
  v14 = *(a1 + 64);
  if (v12 > v13)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0;
  }

  if (v14 <= v15)
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = *(a1 + 40);
  }

  else
  {
    v17 = *(a1 + 56);
  }

  v21 = v17;
  if (v16)
  {
    v18 = *(a1 + 48);
  }

  else
  {
    v18 = *(a1 + 64);
  }

  if (![*(a1 + 16) isEqual:a2] || *(a1 + 32) != a6 || vabdd_f64(a4, v18) > 0.001 && vabdd_f64(a5, v21) > 0.001)
  {
    [(__NSLMMarkedTextUnderlineRenderer *)a1 renderUnderline];
    goto LABEL_34;
  }

  if (!a3)
  {
    if (v14 <= v15)
    {
      *(a1 + 56) = a4;
LABEL_32:
      *(a1 + 64) = a5;
      goto LABEL_34;
    }

LABEL_29:
    if (*(a1 + 56) > a4)
    {
      *(a1 + 56) = a4;
    }

    if (*(a1 + 64) >= a5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v12 <= v13)
  {
    *(a1 + 40) = a4;
LABEL_27:
    *(a1 + 48) = a5;
    goto LABEL_28;
  }

  if (*(a1 + 40) > a4)
  {
    *(a1 + 40) = a4;
  }

  if (*(a1 + 48) < a5)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v14 > v15)
  {
    goto LABEL_29;
  }

LABEL_34:
  if (a5 > a4 && (*(a1 + 24) & 1) == 0)
  {
    *(a1 + 16) = a2;
    *(a1 + 32) = a6;
    v19 = 56;
    if (a3)
    {
      v19 = 40;
    }

    v20 = 64;
    if (a3)
    {
      v20 = 48;
    }

    *(a1 + v19) = a4;
    *(a1 + v20) = a5;
    *(a1 + 24) = 1;
  }
}

- (double)renderUnderline
{
  if (a1 && *(a1 + 24) == 1)
  {
    v2 = 0.35;
    if (*(a1 + 40) == *(a1 + 48))
    {
      v2 = 1.0;
    }

    [a1 _renderUnderlineStartX:*(a1 + 56) endX:*(a1 + 64) yPosition:*(a1 + 32) alphaValue:v2];
    [a1 _renderUnderlineStartX:*(a1 + 40) endX:*(a1 + 48) yPosition:*(a1 + 32) alphaValue:1.0];
    *(a1 + 24) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  return result;
}

@end