@interface PXSnapStripViewIndicatorInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIndicatorInfo:(id)a3;
- (PXSnapStripViewIndicatorInfo)init;
- (PXSnapStripViewIndicatorInfo)initWithOffset:(double)a3 color:(id)a4 style:(unint64_t)a5;
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

- (BOOL)isEqualToIndicatorInfo:(id)a3
{
  v4 = a3;
  color = self->_color;
  v6 = [v4 color];
  LODWORD(color) = [(UIColor *)color isEqual:v6];

  if (color && (offset = self->_offset, [v4 offset], offset == v8) && (style = self->_style, style == objc_msgSend(v4, "style")))
  {
    disabled = self->_disabled;
    v11 = disabled == [v4 disabled];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualToIndicatorInfo:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXSnapStripViewIndicatorInfo)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSnapStripView.m" lineNumber:251 description:{@"%s is not available as initializer", "-[PXSnapStripViewIndicatorInfo init]"}];

  abort();
}

- (PXSnapStripViewIndicatorInfo)initWithOffset:(double)a3 color:(id)a4 style:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PXSnapStripViewIndicatorInfo;
  v10 = [(PXSnapStripViewIndicatorInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_offset = a3;
    objc_storeStrong(&v10->_color, a4);
    v11->_style = a5;
    v11->_disabled = 0;
  }

  return v11;
}

@end