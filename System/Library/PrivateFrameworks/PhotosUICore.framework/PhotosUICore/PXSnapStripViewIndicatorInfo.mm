@interface PXSnapStripViewIndicatorInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIndicatorInfo:(id)info;
- (PXSnapStripViewIndicatorInfo)init;
- (PXSnapStripViewIndicatorInfo)initWithOffset:(double)offset color:(id)color style:(unint64_t)style;
- (unint64_t)hash;
@end

@implementation PXSnapStripViewIndicatorInfo

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PXSnapStripViewIndicatorInfo;
  v3 = [(PXSnapStripViewIndicatorInfo *)&v5 hash];
  return [(UIColor *)self->_color hash]^ v3 ^ (1000 * self->_disabled) ^ (self->_offset * 1000.0) ^ (16 * self->_style);
}

- (BOOL)isEqualToIndicatorInfo:(id)info
{
  infoCopy = info;
  color = self->_color;
  color = [infoCopy color];
  LODWORD(color) = [(UIColor *)color isEqual:color];

  if (color && (offset = self->_offset, [infoCopy offset], offset == v8) && (style = self->_style, style == objc_msgSend(infoCopy, "style")))
  {
    disabled = self->_disabled;
    v11 = disabled == [infoCopy disabled];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToIndicatorInfo:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXSnapStripViewIndicatorInfo)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSnapStripView.m" lineNumber:251 description:{@"%s is not available as initializer", "-[PXSnapStripViewIndicatorInfo init]"}];

  abort();
}

- (PXSnapStripViewIndicatorInfo)initWithOffset:(double)offset color:(id)color style:(unint64_t)style
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = PXSnapStripViewIndicatorInfo;
  v10 = [(PXSnapStripViewIndicatorInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_offset = offset;
    objc_storeStrong(&v10->_color, color);
    v11->_style = style;
    v11->_disabled = 0;
  }

  return v11;
}

@end