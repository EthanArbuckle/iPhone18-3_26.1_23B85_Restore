@interface TSWPEquationLayout
- (CGRect)frameForCulling;
- (double)inlineCenteredAlignmentOffset;
- (double)inlineVerticalOffset;
- (id)computeLayoutGeometry;
- (void)dealloc;
- (void)validate;
- (void)willLayoutInlineWithTextAttributes:(__CFDictionary *)attributes columnWidth:(double)width;
@end

@implementation TSWPEquationLayout

- (void)dealloc
{
  CGColorRelease(self->_textColor);

  v3.receiver = self;
  v3.super_class = TSWPEquationLayout;
  [(TSDLayout *)&v3 dealloc];
}

- (void)validate
{
  if (!self->_equationLayoutContext)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationLayout validate]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationLayout.m"), 61, @"willLayoutInlineWithTextAttributes:columnWidth: should have been called before validate"}];
  }

  if (!self->_equationLayout && self->_equationLayoutContext)
  {
    v5 = [-[TSDInfo equation](-[TSDLayout info](self "info")];
    self->_equationLayout = v5;
    [(EQKitLayout *)v5 layoutWithContext:self->_equationLayoutContext];
    [(EQKitLayout *)self->_equationLayout width];
    if (v6 <= 0.0 || ([(EQKitLayout *)self->_equationLayout vsize], v7 <= 0.0) || ([(EQKitLayout *)self->_equationLayout erasableBounds], CGRectGetWidth(v10) <= 0.0))
    {
      v8 = 0;
    }

    else
    {
      [(EQKitLayout *)self->_equationLayout erasableBounds];
      v8 = CGRectGetHeight(v11) > 0.0;
    }

    self->_equationIsValid = v8;
  }

  v9.receiver = self;
  v9.super_class = TSWPEquationLayout;
  [(TSDLayout *)&v9 validate];
}

- (id)computeLayoutGeometry
{
  if (!self->_equationLayout || (equationLayoutContext = self->_equationLayoutContext) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationLayout computeLayoutGeometry]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationLayout.m"), 86, @"can't compute layout geometry before being validated"}];
    equationLayoutContext = self->_equationLayoutContext;
  }

  [(EQKitLayoutContext *)equationLayoutContext baseFontSize];
  v7 = v6;
  [(EQKitLayoutContext *)self->_equationLayoutContext baseFontSize];
  if (self->_equationIsValid)
  {
    [(EQKitLayout *)self->_equationLayout width];
    v7 = v9;
    [(EQKitLayout *)self->_equationLayout vsize];
  }

  v10 = v8;
  v11 = [TSDLayoutGeometry alloc];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v12;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [(TSDLayoutGeometry *)v11 initWithSize:v14 transform:v7, v10];
}

- (CGRect)frameForCulling
{
  [(EQKitLayout *)self->_equationLayout erasableBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDAbstractLayout *)self transform];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v24 = CGRectApplyAffineTransform(v23, &v22);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  [(EQKitLayout *)self->_equationLayout height];
  v15 = x + 0.0;
  v17 = y + v16;
  if ([(TSDShadow *)self->_textShadow isEnabled])
  {
    [(TSDShadow *)self->_textShadow shadowBoundsForRect:v15, v17, width, height];
    v15 = v18;
    v17 = v19;
    width = v20;
    height = v21;
  }

  v25.origin.x = v15;
  v25.origin.y = v17;
  v25.size.width = width;
  v25.size.height = height;
  return CGRectIntegral(v25);
}

- (double)inlineVerticalOffset
{
  if (!self->_equationLayout)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationLayout inlineVerticalOffset]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationLayout.m"), 117, @"can't compute vertical offset before being validated"}];
  }

  if (!self->_equationIsValid)
  {
    return 0.0;
  }

  equationLayout = self->_equationLayout;

  [(EQKitLayout *)equationLayout depth];
  return result;
}

- (double)inlineCenteredAlignmentOffset
{
  if (!self->_equationLayout)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationLayout inlineCenteredAlignmentOffset]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationLayout.m"), 131, @"can't compute vertical offset before being validated"}];
  }

  if (!self->_equationLayoutContext)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationLayout inlineCenteredAlignmentOffset]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationLayout.m"), 132, @"can't compute vertical offset without a layout context"}];
  }

  result = 0.0;
  if (self->_equationIsValid)
  {
    [(EQKitLayout *)self->_equationLayout naturalAlignmentOffset];
    v9 = v8;
    v10 = 0.0;
    if (v8 != 1.79769313e308)
    {
      [(EQKitLayout *)self->_equationLayout width];
      v10 = v11 * 0.5 - v9;
    }

    [(EQKitLayoutContext *)self->_equationLayoutContext containerWidth];
    v13 = v12;
    [(EQKitLayout *)self->_equationLayout width];
    if (fabs(v10) <= (v13 - v14) * 0.5)
    {
      return v10;
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (void)willLayoutInlineWithTextAttributes:(__CFDictionary *)attributes columnWidth:(double)width
{
  v8 = [[TSWPEquationLayoutContext alloc] initWithTextAttributes:attributes columnWidth:width];
  Value = CFDictionaryGetValue(attributes, *MEMORY[0x277CC49C0]);
  v7 = CFDictionaryGetValue(attributes, @"TSWPShadow");
  if (![(TSWPEquationLayoutContext *)v8 isEqual:self->_equationLayoutContext])
  {

    self->_equationLayoutContext = v8;
    self->_equationLayout = 0;
    [(TSDLayout *)self invalidateSize];
    [(TSDLayout *)self setNeedsDisplay];
  }

  if (!CGColorEqualToColor(Value, self->_textColor))
  {
    CGColorRelease(self->_textColor);
    self->_textColor = CGColorRetain(Value);
    [(TSDLayout *)self setNeedsDisplay];
  }

  if (v7 != self->_textShadow && ![(TSDShadow *)v7 isEqual:?])
  {

    self->_textShadow = v7;
    [(TSDLayout *)self setNeedsDisplay];
  }
}

@end