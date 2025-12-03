@interface TVAppStyle
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)borderRadius;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)fontSize;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)height;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)interitemSpacing;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)margin;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)maxHeight;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)maxWidth;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)minHeight;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)minWidth;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)padding;
- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)width;
- (void)_setValue:(id)value forStyle:(id)style;
- (void)setBorderRadius:(id *)radius;
- (void)setFontSize:(id *)size;
- (void)setHeight:(id *)height;
- (void)setInteritemSpacing:(id *)spacing;
- (void)setMargin:(id *)margin;
- (void)setMaxHeight:(id *)height;
- (void)setMaxWidth:(id *)width;
- (void)setMinHeight:(id *)height;
- (void)setMinWidth:(id *)width;
- (void)setPadding:(id *)padding;
- (void)setPrototype:(id)prototype;
- (void)setWidth:(id *)width;
@end

@implementation TVAppStyle

- (void)setWidth:(id *)width
{
  v4 = *&width->var0.var0.top;
  v5 = *(&width->var0.var1 + 1);
  *&self->_width.isValueSet = *&width->var1;
  *&self->_width.var0.insetValue.top = v4;
  *(&self->_width.var0.doubleValue + 1) = v5;
  self->_width.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:width->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"width"];
}

- (void)setMinWidth:(id *)width
{
  v4 = *&width->var0.var0.top;
  v5 = *(&width->var0.var1 + 1);
  *&self->_minWidth.isValueSet = *&width->var1;
  *(&self->_minWidth.var0.doubleValue + 1) = v5;
  *&self->_minWidth.var0.insetValue.top = v4;
  self->_minWidth.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:width->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"min-width"];
}

- (void)setMaxWidth:(id *)width
{
  v4 = *&width->var0.var0.top;
  v5 = *(&width->var0.var1 + 1);
  *&self->_maxWidth.isValueSet = *&width->var1;
  *&self->_maxWidth.var0.insetValue.top = v4;
  *(&self->_maxWidth.var0.doubleValue + 1) = v5;
  self->_maxWidth.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:width->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"max-width"];
}

- (void)setHeight:(id *)height
{
  v4 = *&height->var0.var0.top;
  v5 = *(&height->var0.var1 + 1);
  *&self->_height.isValueSet = *&height->var1;
  *(&self->_height.var0.doubleValue + 1) = v5;
  *&self->_height.var0.insetValue.top = v4;
  self->_height.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:height->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"height"];
}

- (void)setMinHeight:(id *)height
{
  v4 = *&height->var0.var0.top;
  v5 = *(&height->var0.var1 + 1);
  *&self->_minHeight.isValueSet = *&height->var1;
  *&self->_minHeight.var0.insetValue.top = v4;
  *(&self->_minHeight.var0.doubleValue + 1) = v5;
  self->_minHeight.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:height->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"min-height"];
}

- (void)setMaxHeight:(id *)height
{
  v4 = *&height->var0.var0.top;
  v5 = *(&height->var0.var1 + 1);
  *&self->_maxHeight.isValueSet = *&height->var1;
  *(&self->_maxHeight.var0.doubleValue + 1) = v5;
  *&self->_maxHeight.var0.insetValue.top = v4;
  self->_maxHeight.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:height->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"max-height"];
}

- (void)setPadding:(id *)padding
{
  v4 = *&padding->var0.var0.top;
  v5 = *(&padding->var0.var1 + 1);
  *&self->_padding.isValueSet = *&padding->var1;
  *&self->_padding.var0.insetValue.top = v4;
  *(&self->_padding.var0.doubleValue + 1) = v5;
  self->_padding.isValueSet = 1;
  v6 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{padding->var0.var0.top, padding->var0.var0.left, padding->var0.var0.bottom, padding->var0.var0.right}];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"padding"];
}

- (void)setMargin:(id *)margin
{
  v4 = *&margin->var0.var0.top;
  v5 = *(&margin->var0.var1 + 1);
  *&self->_margin.isValueSet = *&margin->var1;
  *&self->_margin.var0.insetValue.top = v4;
  *(&self->_margin.var0.doubleValue + 1) = v5;
  self->_margin.isValueSet = 1;
  v6 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{margin->var0.var0.top, margin->var0.var0.left, margin->var0.var0.bottom, margin->var0.var0.right}];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"margin"];
}

- (void)setInteritemSpacing:(id *)spacing
{
  v4 = *&spacing->var0.var0.top;
  v5 = *(&spacing->var0.var1 + 1);
  *&self->_interitemSpacing.isValueSet = *&spacing->var1;
  *&self->_interitemSpacing.var0.insetValue.top = v4;
  *(&self->_interitemSpacing.var0.doubleValue + 1) = v5;
  self->_interitemSpacing.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:spacing->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"tv-interitem-spacing"];
}

- (void)setFontSize:(id *)size
{
  v4 = *&size->var0.var0.top;
  v5 = *(&size->var0.var1 + 1);
  *&self->_fontSize.isValueSet = *&size->var1;
  *&self->_fontSize.var0.insetValue.top = v4;
  *(&self->_fontSize.var0.doubleValue + 1) = v5;
  self->_fontSize.isValueSet = 1;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:size->var0.var0.top];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"font-size"];
}

- (void)setBorderRadius:(id *)radius
{
  v4 = *&radius->var0.var0.top;
  v5 = *(&radius->var0.var1 + 1);
  *&self->_borderRadius.isValueSet = *&radius->var1;
  *&self->_borderRadius.var0.insetValue.top = v4;
  *(&self->_borderRadius.var0.doubleValue + 1) = v5;
  self->_borderRadius.isValueSet = 1;
  v6 = [objc_alloc(MEMORY[0x277D1B098]) initWithCornerRadii:{radius->var0.var0.left, radius->var0.var0.bottom, radius->var0.var0.top, radius->var0.var0.right}];
  [(TVAppStyle *)self _setValue:v6 forStyle:@"border-radius"];
}

- (void)setPrototype:(id)prototype
{
  objc_storeStrong(&self->_prototype, prototype);
  prototypeCopy = prototype;
  [(TVAppStyle *)self _setValue:prototypeCopy forStyle:*MEMORY[0x277D1AFF8]];
}

- (void)_setValue:(id)value forStyle:(id)style
{
  valueCopy = value;
  styleCopy = style;
  if (!self->_valuesByStyle)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    valuesByStyle = self->_valuesByStyle;
    self->_valuesByStyle = v7;
  }

  v9 = self->_valuesByStyle;
  if (valueCopy)
  {
    [(NSMutableDictionary *)v9 setObject:valueCopy forKeyedSubscript:styleCopy];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:styleCopy];
  }
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)width
{
  v3 = *(&self[1].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self->var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[1].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)minWidth
{
  v3 = *(&self[2].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[1].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[2].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)maxWidth
{
  v3 = *(&self[3].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[2].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[3].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)height
{
  v3 = *(&self[4].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[3].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[4].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)minHeight
{
  v3 = *(&self[5].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[4].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[5].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)maxHeight
{
  v3 = *(&self[6].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[5].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[6].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)padding
{
  v3 = *(&self[7].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[6].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[7].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)margin
{
  *&retstr->var1 = self[8].var0.var0.right;
  v3 = *(&self[8].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[7].var1;
  *(&retstr->var0.var1 + 1) = v3;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)interitemSpacing
{
  v3 = *(&self[9].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[8].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[9].var0.var0.right;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)fontSize
{
  *&retstr->var1 = self[10].var0.var0.right;
  v3 = *(&self[10].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[9].var1;
  *(&retstr->var0.var1 + 1) = v3;
  return self;
}

- ($BCB5E206A2CD1D5B9AA7F715AE7C6270)borderRadius
{
  v3 = *(&self[11].var0.var1 + 1);
  *&retstr->var0.var0.top = *&self[10].var1;
  *(&retstr->var0.var1 + 1) = v3;
  *&retstr->var1 = self[11].var0.var0.right;
  return self;
}

@end