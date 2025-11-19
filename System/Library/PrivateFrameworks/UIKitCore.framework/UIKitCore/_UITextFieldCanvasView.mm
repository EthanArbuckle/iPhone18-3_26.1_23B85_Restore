@interface _UITextFieldCanvasView
- (_UITextFieldCanvasView)init;
- (_UITextFieldCanvasView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
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

- (_UITextFieldCanvasView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UITextFieldCanvasView;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _UITextFieldCanvasViewCommonInit(v3);
  }

  return v4;
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UITextCanvasView *)self context];
  v8 = [v7 layoutManager];
  v9 = [v7 textContainer];
  [v7 textContainerOrigin];
  v11 = v10;
  v13 = v12;
  [v8 ensureLayoutForBoundingRect:v9 inTextContainer:{x, y, width, height}];
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v51 = CGRectOffset(v50, -v11, -v13);
  v14 = [v8 glyphRangeForBoundingRect:v9 inTextContainer:{v51.origin.x, v51.origin.y, v51.size.width, v51.size.height}];
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

  if ([v7 _isPasscodeStyle])
  {
    CGContextSaveGState(v18);
    v19 = [v7 _unobscuredSecureRange];
    v21 = v19;
    v22 = v20;
    if (v20)
    {
      v23 = v19;
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

    v25 = [v8 glyphRangeForCharacterRange:v24 actualCharacterRange:{v23, 0}];
    v27 = v26;
    v28 = [v8 glyphRangeForCharacterRange:v21 actualCharacterRange:{v22, 0}];
    v30 = v29;
    [v7 _passcodeStyleAlpha];
    CGContextSetAlpha(v18, v31);
    CGContextSetAlpha(v18, 1.0);
    if (v27)
    {
      [v8 drawGlyphsForGlyphRange:v25 atPoint:{v27, v11, v13}];
    }

    CGContextRestoreGState(v18);
    if (v30)
    {
      [v8 drawGlyphsForGlyphRange:v28 atPoint:{v30, v11, v13}];
    }
  }

  else if (v16)
  {
    [v8 drawBackgroundForGlyphRange:v14 atPoint:{v16, v11, v13}];
    [v8 usedRectForTextContainer:v9];
    v53 = CGRectOffset(v52, v11, v13);
    v42 = v53.origin.y;
    v43 = v53.origin.x;
    v32 = v53.size.width;
    v33 = v53.size.height;
    [v7 _clipRectForFadedEdges];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __41___UITextFieldCanvasView_drawTextInRect___block_invoke;
    v44[3] = &unk_1E70F3B20;
    v45 = v8;
    v46 = v14;
    v47 = v16;
    v48 = v11;
    v49 = v13;
    _UITextCanvasDrawWithFadedEdgesInContext(v18, v44, v43, v42, v32, v33, v35, v37, v39, v41);
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITextCanvasView *)self context];
  v9 = [v8 drawTextInRectIfNeeded:{x, y, width, height}];

  if ((v9 & 1) == 0)
  {

    [(_UITextFieldCanvasView *)self drawTextInRect:x, y, width, height];
  }
}

@end