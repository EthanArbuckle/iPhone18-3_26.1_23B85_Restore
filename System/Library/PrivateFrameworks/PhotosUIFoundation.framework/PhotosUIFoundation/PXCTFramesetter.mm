@interface PXCTFramesetter
- (PXCTFramesetter)init;
- (PXCTFramesetter)initWithAttributedString:(id)string context:(CGContext *)context;
- (id)frameWithRect:(CGRect)rect maximumLineCount:(unint64_t)count allowTruncation:(BOOL)truncation;
- (void)dealloc;
- (void)prepare;
@end

@implementation PXCTFramesetter

- (void)prepare
{
  if (!self->_prepared)
  {
    self->_prepared = 1;
    attributedString = [(PXCTFramesetter *)self attributedString];
    self->_framesetter = CTFramesetterCreateWithAttributedString(attributedString);
    if ([(__CFAttributedString *)attributedString length])
    {
      v9 = 0;
      v10 = 0;
      v4 = [(__CFAttributedString *)attributedString attribute:*MEMORY[0x1E69DB6A8] atIndex:0 effectiveRange:&v9];
      if (v4)
      {
        if (v9 || (v5 = v10, v5 != [(__CFAttributedString *)attributedString length]))
        {
          v6 = PFUIGetLog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *v8 = 0;
            _os_log_impl(&dword_1B3F73000, v6, OS_LOG_TYPE_DEFAULT, "Currently only supporting NSShadowAttributeName spanning the whole string", v8, 2u);
          }

          v4 = 0;
        }
      }

      shadow = self->_shadow;
      self->_shadow = v4;
    }
  }
}

- (id)frameWithRect:(CGRect)rect maximumLineCount:(unint64_t)count allowTruncation:(BOOL)truncation
{
  truncationCopy = truncation;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v30[1] = *MEMORY[0x1E69E9840];
  [(PXCTFramesetter *)self prepare];
  framesetter = [(PXCTFramesetter *)self framesetter];
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v13 = CGPathCreateWithRect(v36, 0);
  v32.location = 0;
  v32.length = 0;
  Frame = CTFramesetterCreateFrame(framesetter, v32, v13, 0);
  CFRelease(v13);
  if (Frame)
  {
    v15 = CTFrameGetLines(Frame);
    if ([v15 count])
    {

LABEL_11:
      v23 = [[PXCTFrame alloc] initWithFrame:Frame maximumLineCount:count allowTruncation:truncationCopy framesetter:self];
      CFRelease(Frame);
      [(PXCTFrame *)v23 prepare];
      goto LABEL_13;
    }

    CFRelease(Frame);
    v29 = *MEMORY[0x1E69659F0];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
    v30[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v35.height = 1.79769313e308;
    v33.location = 0;
    v33.length = 0;
    v35.width = width;
    v18 = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, v33, v17, v35, 0).height;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = v18;
    v19 = CGPathCreateWithRect(v37, 0);
    v20 = PFUIGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134218240;
      v26 = height;
      v27 = 2048;
      v28 = v18;
      _os_log_impl(&dword_1B3F73000, v20, OS_LOG_TYPE_DEBUG, "avoid text being clipped in PXCTFramesetter by recalculating maxHeight from %f to %f", &v25, 0x16u);
    }

    v34.location = 0;
    v34.length = 0;
    Frame = CTFramesetterCreateFrame(framesetter, v34, v19, 0);
    CFRelease(v19);
    v21 = CTFrameGetLines(Frame);
    if (![v21 count])
    {
      v22 = PFUIGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1B3F73000, v22, OS_LOG_TYPE_DEFAULT, "text clipped completely during layout", &v25, 2u);
      }
    }

    if (Frame)
    {
      goto LABEL_11;
    }
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (void)dealloc
{
  framesetter = self->_framesetter;
  if (framesetter)
  {
    CFRelease(framesetter);
  }

  v4.receiver = self;
  v4.super_class = PXCTFramesetter;
  [(PXCTFramesetter *)&v4 dealloc];
}

- (PXCTFramesetter)initWithAttributedString:(id)string context:(CGContext *)context
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = PXCTFramesetter;
  v7 = [(PXCTFramesetter *)&v11 init];
  if (v7)
  {
    v8 = [stringCopy copy];
    attributedString = v7->_attributedString;
    v7->_attributedString = v8;

    v7->_context = context;
  }

  return v7;
}

- (PXCTFramesetter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CoreText+PhotosUIFoundation.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXCTFramesetter init]"}];

  abort();
}

@end