@interface _UITextFieldCanvasView
- (_UITextFieldCanvasView)init;
- (_UITextFieldCanvasView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation _UITextFieldCanvasView

- (_UITextFieldCanvasView)init
{
  v5.receiver = self;
  v5.super_class = _UITextFieldCanvasView;
  v2 = [(UIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    _UITextFieldCanvasViewCommonInit(v2);
  }

  return v3;
}

- (_UITextFieldCanvasView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UITextFieldCanvasView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _UITextFieldCanvasViewCommonInit(v3);
  }

  return v4;
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  context = [(_UITextCanvasView *)self context];
  layoutManager = [context layoutManager];
  textContainer = [context textContainer];
  [context textContainerOrigin];
  v11 = v10;
  v13 = v12;
  [layoutManager ensureLayoutForBoundingRect:textContainer inTextContainer:{x, y, width, height}];
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v51 = CGRectOffset(v50, -v11, -v13);
  v14 = [layoutManager glyphRangeForBoundingRect:textContainer inTextContainer:{v51.origin.x, v51.origin.y, v51.size.width, v51.size.height}];
  v16 = v15;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  if ([context _isPasscodeStyle])
  {
    CGContextSaveGState(v18);
    _unobscuredSecureRange = [context _unobscuredSecureRange];
    v21 = _unobscuredSecureRange;
    v22 = v20;
    if (v20)
    {
      v23 = _unobscuredSecureRange;
    }

    else
    {
      v23 = v16;
    }

    if (v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = v14;
    }

    v25 = [layoutManager glyphRangeForCharacterRange:v24 actualCharacterRange:{v23, 0}];
    v27 = v26;
    v28 = [layoutManager glyphRangeForCharacterRange:v21 actualCharacterRange:{v22, 0}];
    v30 = v29;
    [context _passcodeStyleAlpha];
    CGContextSetAlpha(v18, v31);
    CGContextSetAlpha(v18, 1.0);
    if (v27)
    {
      [layoutManager drawGlyphsForGlyphRange:v25 atPoint:{v27, v11, v13}];
    }

    CGContextRestoreGState(v18);
    if (v30)
    {
      [layoutManager drawGlyphsForGlyphRange:v28 atPoint:{v30, v11, v13}];
    }
  }

  else if (v16)
  {
    [layoutManager drawBackgroundForGlyphRange:v14 atPoint:{v16, v11, v13}];
    [layoutManager usedRectForTextContainer:textContainer];
    v53 = CGRectOffset(v52, v11, v13);
    v42 = v53.origin.y;
    v43 = v53.origin.x;
    v32 = v53.size.width;
    v33 = v53.size.height;
    [context _clipRectForFadedEdges];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __41___UITextFieldCanvasView_drawTextInRect___block_invoke;
    v44[3] = &unk_1E70F3B20;
    v45 = layoutManager;
    v46 = v14;
    v47 = v16;
    v48 = v11;
    v49 = v13;
    _UITextCanvasDrawWithFadedEdgesInContext(v18, v44, v43, v42, v32, v33, v35, v37, v39, v41);
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  context = [(_UITextCanvasView *)self context];
  v9 = [context drawTextInRectIfNeeded:{x, y, width, height}];

  if ((v9 & 1) == 0)
  {

    [(_UITextFieldCanvasView *)self drawTextInRect:x, y, width, height];
  }
}

@end