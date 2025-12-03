@interface VUIMonogramImageConfiguration
- (VUIMonogramImageConfiguration)initWithStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VUIMonogramImageConfiguration

- (VUIMonogramImageConfiguration)initWithStyle:(int64_t)style
{
  v12.receiver = self;
  v12.super_class = VUIMonogramImageConfiguration;
  v4 = [(VUIMonogramImageConfiguration *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:106.0 weight:3.0];
    font = v5->_font;
    v5->_font = v6;

    *&v5->_diameter = xmmword_1E4297240;
    if (style == 1)
    {
      v8 = 0.9;
      goto LABEL_6;
    }

    if (style == 2)
    {
      v8 = 0.6;
LABEL_6:
      v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:v8];
      bgColor = v5->_bgColor;
      v5->_bgColor = v9;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_style;
  v8 = [(UIFont *)self->_font copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 40) = self->_diameter;
  *(v5 + 48) = self->_focusedSizeIncrease;
  v10 = [(UIColor *)self->_bgColor copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(UIColor *)self->_textColor copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  return v5;
}

@end