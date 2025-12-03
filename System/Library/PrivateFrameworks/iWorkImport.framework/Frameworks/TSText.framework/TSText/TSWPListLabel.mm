@interface TSWPListLabel
- (BOOL)isEqualToListLabel:(id)label;
- (CGSize)naturalImageSize;
- (CGSize)size;
- (TSWPListLabel)initWithType:(unint64_t)type imageProvider:(id)provider size:(CGSize)size baselineOffset:(double)offset;
- (TSWPListLabel)initWithType:(unint64_t)type labelString:(id)string textLine:(__CTLine *)line listNumber:(unint64_t)number isTateChuYoko:(BOOL)yoko baselineOffset:(double)offset;
- (__CTFont)labelFont;
- (void)dealloc;
@end

@implementation TSWPListLabel

- (TSWPListLabel)initWithType:(unint64_t)type imageProvider:(id)provider size:(CGSize)size baselineOffset:(double)offset
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = TSWPListLabel;
  v13 = [(TSWPListLabel *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_labelType = type;
    objc_storeStrong(&v13->_imageProvider, provider);
    v14->_size.width = width;
    v14->_size.height = height;
    v14->_baselineOffset = offset;
  }

  return v14;
}

- (TSWPListLabel)initWithType:(unint64_t)type labelString:(id)string textLine:(__CTLine *)line listNumber:(unint64_t)number isTateChuYoko:(BOOL)yoko baselineOffset:(double)offset
{
  yokoCopy = yoko;
  stringCopy = string;
  v22.receiver = self;
  v22.super_class = TSWPListLabel;
  v16 = [(TSWPListLabel *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_labelType = type;
    objc_storeStrong(&v16->_labelString, string);
    v17->_textLine = line;
    CFRetain(line);
    v17->_listNumber = number;
    leading = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v17->_textLine, &v17->_ascent, &v17->_descent, &leading);
    v19 = v17->_ascent + v17->_descent;
    v17->_size.width = TypographicBounds;
    v17->_size.height = v19;
    v17->_isLabelTateChuYoko = yokoCopy;
    if (yokoCopy)
    {
      v17->_size.width = v19 + leading;
      v17->_size.height = TypographicBounds;
    }

    v17->_baselineOffset = offset;
  }

  return v17;
}

- (void)dealloc
{
  textLine = self->_textLine;
  if (textLine)
  {
    CFRelease(textLine);
  }

  v4.receiver = self;
  v4.super_class = TSWPListLabel;
  [(TSWPListLabel *)&v4 dealloc];
}

- (BOOL)isEqualToListLabel:(id)label
{
  labelCopy = label;
  v7 = labelCopy;
  if (!labelCopy)
  {
    goto LABEL_31;
  }

  v8 = self->_size.width == labelCopy[13] && self->_size.height == labelCopy[14];
  if (!v8 || self->_baselineOffset != labelCopy[3] || self->_labelType != *(labelCopy + 2) || self->_labelIndent != labelCopy[5] || self->_isLabelTateChuYoko != *(labelCopy + 9) || self->_listNumber != *(labelCopy + 11))
  {
    goto LABEL_31;
  }

  imageProvider = self->_imageProvider;
  if (!self->_textLine)
  {
    if (imageProvider)
    {
      if (imageProvider == *(v7 + 7))
      {
        v22 = 1;
        objc_msgSend_imageData(imageProvider, v5, v6);
      }

      else
      {
        v18 = objc_msgSend_imageData(imageProvider, v5, v6);
        v21 = objc_msgSend_imageData(*(v7 + 7), v19, v20);
        v22 = v18 == v21;

        objc_msgSend_imageData(self->_imageProvider, v23, v24);
      }
      v25 = ;

      if (v25)
      {
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPListLabel isEqualToListLabel:]");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListLabel.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 76, 0, "we assume that imageData will be non-nil and then compare by pointer, and so may end up with a false-positive here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (!*(v7 + 8) && !*(v7 + 7))
    {
      goto LABEL_27;
    }

LABEL_31:
    isEqual = 0;
    goto LABEL_32;
  }

  if (imageProvider)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPListLabel isEqualToListLabel:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPListLabel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 70, 0, "shouldn't have a text line and an image provider");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = *(v7 + 8);
  if (!v17 || !CFEqual(self->_textLine, v17))
  {
    goto LABEL_31;
  }

LABEL_27:
  shadow = self->_shadow;
  v27 = *(v7 + 4);
  if (shadow == v27)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(shadow, v5, v27);
  }

LABEL_32:

  return isEqual;
}

- (CGSize)naturalImageSize
{
  imageProvider = self->_imageProvider;
  if (imageProvider)
  {
    objc_msgSend_naturalSize(imageProvider, a2, v2);
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (__CTFont)labelFont
{
  v2 = CTLineGetGlyphRuns(self->_textLine);
  if (objc_msgSend_count(v2, v3, v4))
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v2, v5, 0);

    Attributes = CTRunGetAttributes(v6);
    Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
  }

  else
  {
    Value = 0;
  }

  return Value;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end