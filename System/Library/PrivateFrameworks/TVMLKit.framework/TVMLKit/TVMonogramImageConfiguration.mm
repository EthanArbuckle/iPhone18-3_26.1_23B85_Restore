@interface TVMonogramImageConfiguration
- (TVMonogramImageConfiguration)initWithStyle:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TVMonogramImageConfiguration

- (TVMonogramImageConfiguration)initWithStyle:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = TVMonogramImageConfiguration;
  v4 = [(TVMonogramImageConfiguration *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = [MEMORY[0x277D74300] systemFontOfSize:106.0 weight:*MEMORY[0x277D74408]];
    font = v5->_font;
    v5->_font = v6;

    *&v5->_diameter = xmmword_26CE87B90;
    if (a3 == 1)
    {
      v8 = 0.9;
      goto LABEL_6;
    }

    if (a3 == 2)
    {
      v8 = 0.6;
LABEL_6:
      v9 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:v8];
      bgColor = v5->_bgColor;
      v5->_bgColor = v9;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_firstName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_lastName copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 8) = self->_style;
  v12 = [(UIFont *)self->_font copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 56) = self->_diameter;
  *(v5 + 64) = self->_focusedSizeIncrease;
  v14 = [(UIColor *)self->_bgColor copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(UIColor *)self->_textColor copyWithZone:a3];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  return v5;
}

@end