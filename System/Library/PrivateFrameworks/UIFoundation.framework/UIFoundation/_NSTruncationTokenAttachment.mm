@interface _NSTruncationTokenAttachment
- (CGRect)bounds;
- (CTRunDelegateRef)runDelegate;
- (void)dealloc;
- (void)initWithAttributedString:(const void *)string lineRef:;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  width = selfCopy->_width;
  if (width == 0.0)
  {
    lineRef = selfCopy->_lineRef;
    if (lineRef)
    {
      TypographicBounds = CTLineGetTypographicBounds(lineRef, 0, 0, 0);
    }

    else
    {
      stringDrawingContext = selfCopy->stringDrawingContext;
      if (!stringDrawingContext)
      {
        v7 = objc_alloc_init(NSStringDrawingContext);
        v8 = selfCopy->stringDrawingContext;
        selfCopy->stringDrawingContext = v7;

        [(NSStringDrawingContext *)selfCopy->stringDrawingContext setCachesLayout:1];
        stringDrawingContext = selfCopy->stringDrawingContext;
      }

      [(NSAttributedString *)selfCopy->_attributedString boundingRectWithSize:0 options:stringDrawingContext context:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      TypographicBounds = CGRectGetWidth(v13);
    }

    width = TypographicBounds;
    selfCopy->_width = TypographicBounds;
  }

  objc_sync_exit(selfCopy);

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
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = selfCopy[16];
  if (!v2)
  {
    v2 = CTRunDelegateCreate(&callbacks, selfCopy);
    selfCopy[16] = v2;
  }

  objc_sync_exit(selfCopy);

  return v2;
}

- (void)initWithAttributedString:(const void *)string lineRef:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = _NSTruncationTokenAttachment;
    self = objc_msgSendSuper2(&v9, sel_initWithData_ofType_, 0, 0);
    if (self)
    {
      v6 = [v5 copy];
      v7 = self[18];
      self[18] = v6;

      if (string)
      {
        self[19] = CFRetain(string);
      }
    }
  }

  return self;
}

@end