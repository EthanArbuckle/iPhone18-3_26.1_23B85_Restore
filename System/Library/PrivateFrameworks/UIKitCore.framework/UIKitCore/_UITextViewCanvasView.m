@interface _UITextViewCanvasView
- (_NSRange)_extendedGlyphRangeForRange:(_NSRange)a3 maxGlyphIndex:(unint64_t)a4;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation _UITextViewCanvasView

- (_NSRange)_extendedGlyphRangeForRange:(_NSRange)a3 maxGlyphIndex:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  v7 = [(_UITextCanvasView *)self context];
  v8 = [v7 layoutManager];
  v9 = [v7 textContainer];
  if (location)
  {
    v20.location = 0;
    v20.length = 0;
    [v8 lineFragmentRectForGlyphAtIndex:location effectiveRange:&v20];
    v21.location = location;
    v21.length = length;
    v10 = NSUnionRange(v21, v20);
    location = v10.location;
    length = v10.length;
    if (v10.location)
    {
      [v8 lineFragmentRectForGlyphAtIndex:v10.location - 1 effectiveRange:&v20];
      v11 = [v8 textContainerForGlyphAtIndex:v20.location effectiveRange:0];

      if (v11 == v9)
      {
        v12 = NSUnionRange(v10, v20);
        location = v12.location;
        length = v12.length;
      }
    }
  }

  if (length)
  {
    if (location + length < a4)
    {
      v20 = 0;
      [v8 lineFragmentRectForGlyphAtIndex:location + length - 1 effectiveRange:&v20];
      v22.location = location;
      v22.length = length;
      v13 = NSUnionRange(v22, v20);
      location = v13.location;
      length = v13.length;
      v14 = v13.location + v13.length;
      if (v13.location + v13.length < a4)
      {
        [v8 lineFragmentRectForGlyphAtIndex:v14 effectiveRange:&v20];
        v15 = [v8 textContainerForGlyphAtIndex:v14 effectiveRange:0];

        if (v15 == v9)
        {
          v16 = NSUnionRange(v13, v20);
          location = v16.location;
          length = v16.length;
        }
      }
    }
  }

  if (location + length <= a4)
  {
    v17 = length;
  }

  else
  {
    v17 = a4 - location;
  }

  v18 = location;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITextCanvasView *)self context];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 layoutManager];
    v11 = [v9 textContainer];
    [v9 _ensureLayoutCompleteForRect:{x, y, width, height}];
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3010000000;
    v28 = 0;
    v29 = 0;
    v27[3] = "";
    [v9 textContainerOrigin];
    v28 = v12;
    v29 = v13;
    v14 = [v10 textStorage];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40___UITextViewCanvasView_drawTextInRect___block_invoke;
    v17[3] = &unk_1E7125AB8;
    v23 = x;
    v24 = y;
    v25 = width;
    v26 = height;
    v22 = v27;
    v15 = v10;
    v18 = v15;
    v16 = v11;
    v19 = v16;
    v20 = v9;
    v21 = self;
    [v14 coordinateReading:v17];

    _Block_object_dispose(v27, 8);
  }
}

@end