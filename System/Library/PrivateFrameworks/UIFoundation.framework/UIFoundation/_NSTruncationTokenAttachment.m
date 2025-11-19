@interface _NSTruncationTokenAttachment
- (CGRect)bounds;
- (CTRunDelegateRef)runDelegate;
- (void)dealloc;
- (void)initWithAttributedString:(const void *)a3 lineRef:;
@end

@implementation _NSTruncationTokenAttachment

- (void)dealloc
{
  lineRef = self->_lineRef;
  if (lineRef)
  {
    CFRelease(lineRef);
  }

  runDelegate = self->_runDelegate;
  if (runDelegate)
  {
    CFRelease(runDelegate);
  }

  v5.receiver = self;
  v5.super_class = _NSTruncationTokenAttachment;
  [(NSTextAttachment *)&v5 dealloc];
}

- (CGRect)bounds
{
  v2 = self;
  objc_sync_enter(v2);
  width = v2->_width;
  if (width == 0.0)
  {
    lineRef = v2->_lineRef;
    if (lineRef)
    {
      TypographicBounds = CTLineGetTypographicBounds(lineRef, 0, 0, 0);
    }

    else
    {
      stringDrawingContext = v2->stringDrawingContext;
      if (!stringDrawingContext)
      {
        v7 = objc_alloc_init(NSStringDrawingContext);
        v8 = v2->stringDrawingContext;
        v2->stringDrawingContext = v7;

        [(NSStringDrawingContext *)v2->stringDrawingContext setCachesLayout:1];
        stringDrawingContext = v2->stringDrawingContext;
      }

      [(NSAttributedString *)v2->_attributedString boundingRectWithSize:0 options:stringDrawingContext context:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      TypographicBounds = CGRectGetWidth(v13);
    }

    width = TypographicBounds;
    v2->_width = TypographicBounds;
  }

  objc_sync_exit(v2);

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = width;
  result.size.height = v11;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CTRunDelegateRef)runDelegate
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[16];
  if (!v2)
  {
    v2 = CTRunDelegateCreate(&callbacks, v1);
    v1[16] = v2;
  }

  objc_sync_exit(v1);

  return v2;
}

- (void)initWithAttributedString:(const void *)a3 lineRef:
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _NSTruncationTokenAttachment;
    a1 = objc_msgSendSuper2(&v9, sel_initWithData_ofType_, 0, 0);
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[18];
      a1[18] = v6;

      if (a3)
      {
        a1[19] = CFRetain(a3);
      }
    }
  }

  return a1;
}

@end