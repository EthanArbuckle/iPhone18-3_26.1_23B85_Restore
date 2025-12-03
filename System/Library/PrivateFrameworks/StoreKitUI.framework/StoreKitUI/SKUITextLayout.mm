@interface SKUITextLayout
+ (__CFAttributedString)_newAttributedStringWithRequest:(id)request;
+ (__CFAttributedString)newAttributedStringWithText:(id)text;
- (CGSize)textSize;
- (CGSize)truncatedSize;
- (SKUITextLayout)initWithLayoutRequest:(id)request;
- (void)dealloc;
@end

@implementation SKUITextLayout

- (SKUITextLayout)initWithLayoutRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUITextLayout initWithLayoutRequest:];
  }

  v23.receiver = self;
  v23.super_class = SKUITextLayout;
  v5 = [(SKUITextLayout *)&v23 init];
  if (v5)
  {
    attributedText = [requestCopy attributedText];
    if (attributedText || (attributedText = [objc_opt_class() _newAttributedStringWithRequest:requestCopy]) != 0)
    {
      v7 = attributedText;
      [requestCopy width];
      v9 = v8;
      v10 = CTFramesetterCreateWithAttributedString(v7);
      v5->_framesetter = v10;
      v26.height = 1.79769313e308;
      v24.location = 0;
      v24.length = 0;
      v26.width = v9;
      v11 = CTFramesetterSuggestFrameSizeWithConstraints(v10, v24, 0, v26, 0);
      Mutable = CGPathCreateMutable();
      v13 = Mutable;
      height = v11.height;
      if (v9 >= v11.width)
      {
        width = v9;
      }

      else
      {
        width = v11.width;
      }

      v16 = 0;
      v17 = 0;
      CGPathAddRect(Mutable, 0, *(&height - 3));
      v25.location = 0;
      v25.length = 0;
      v5->_textFrame = CTFramesetterCreateFrame(v5->_framesetter, v25, v13, 0);
      CGPathRelease(v13);
      v5->_size = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(v11)));
      Lines = CTFrameGetLines(v5->_textFrame);
      Count = CFArrayGetCount(Lines);
      numberOfLines = [requestCopy numberOfLines];
      if (numberOfLines && numberOfLines < Count)
      {
        v5->_requiresTruncation = 1;
        v5->_truncatedSize.width = SKUITextLayoutSizeForCTFrame(v5->_textFrame, numberOfLines);
        v5->_truncatedSize.height = v21;
      }

      v5->_lineHeight = SKUIAttributedStringGetLineHeight(v7);
      CFRelease(v7);
    }
  }

  return v5;
}

- (void)dealloc
{
  textFrame = self->_textFrame;
  if (textFrame)
  {
    CFRelease(textFrame);
  }

  framesetter = self->_framesetter;
  if (framesetter)
  {
    CFRelease(framesetter);
  }

  v5.receiver = self;
  v5.super_class = SKUITextLayout;
  [(SKUITextLayout *)&v5 dealloc];
}

+ (__CFAttributedString)newAttributedStringWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(SKUITextLayoutRequest);
  [(SKUITextLayoutRequest *)v5 setText:textCopy];

  v6 = [self _newAttributedStringWithRequest:v5];
  return v6;
}

+ (__CFAttributedString)_newAttributedStringWithRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(MEMORY[0x277D74240]);
  [v4 setMinimumLineHeight:16.0];
  [v4 setLineBreakMode:0];
  [v4 setAlignment:{NSTextAlignmentFromCTTextAlignment(objc_msgSend(requestCopy, "textAlignment"))}];
  fontName = 0;
  if ([requestCopy fontWeight] <= 2)
  {
    v6 = MEMORY[0x277D74300];
    [requestCopy fontSize];
    v7 = [v6 systemFontOfSize:? weight:?];
    fontName = [v7 fontName];
  }

  if (UIAccessibilityIsBoldTextEnabled())
  {
    v8 = MEMORY[0x277D74300];
    [requestCopy fontSize];
    v9 = [v8 systemFontOfSize:?];
    fontName2 = [v9 fontName];

    fontName = fontName2;
  }

  [requestCopy fontSize];
  v12 = CTFontCreateWithName(fontName, v11, 0);
  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v14 = [v13 initWithObjectsAndKeys:{v12, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], v4, *MEMORY[0x277D74118], 0}];
  text = [requestCopy text];
  v16 = CFAttributedStringCreate(0, text, v14);

  CFRelease(v12);
  return v16;
}

- (CGSize)textSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)truncatedSize
{
  width = self->_truncatedSize.width;
  height = self->_truncatedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithLayoutRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITextLayout initWithLayoutRequest:]";
}

@end