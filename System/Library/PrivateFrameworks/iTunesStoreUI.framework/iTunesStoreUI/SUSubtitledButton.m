@interface SUSubtitledButton
- (CGRect)subtitleRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)currentSubtitle;
- (UIColor)currentSubtitleColor;
- (UIColor)currentSubtitleShadowColor;
- (UILabel)subtitleLabel;
- (id)_subtitleFont;
- (id)_subtitledContentForState:(unint64_t)a3;
- (id)subtitleColorForState:(unint64_t)a3;
- (id)subtitleForState:(unint64_t)a3;
- (id)subtitleShadowColorForState:(unint64_t)a3;
- (int64_t)_subtitleLineBreakMode;
- (void)_setupSubtitleView;
- (void)configureFromScriptButton:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSubtitle:(id)a3 forState:(unint64_t)a4;
- (void)setSubtitleColor:(id)a3 forState:(unint64_t)a4;
- (void)setSubtitleShadowColor:(id)a3 forState:(unint64_t)a4;
@end

@implementation SUSubtitledButton

- (void)dealloc
{
  subtitleContentLookup = self->_subtitleContentLookup;
  if (subtitleContentLookup)
  {
    CFRelease(subtitleContentLookup);
    self->_subtitleContentLookup = 0;
  }

  self->_subtitleView = 0;
  v4.receiver = self;
  v4.super_class = SUSubtitledButton;
  [(SUSubtitledButton *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUSubtitledButton;
  [(SUSubtitledButton *)&v5 layoutSubviews];
  v3 = [(SUSubtitledButton *)self currentSubtitle];
  if ([(NSString *)v3 length])
  {
    [(SUSubtitledButton *)self _setupSubtitleView];
    [(UILabel *)self->_subtitleView setHidden:0];
    [(UILabel *)self->_subtitleView setShadowColor:[(SUSubtitledButton *)self currentSubtitleShadowColor]];
    [(UILabel *)self->_subtitleView setText:v3];
    [(UILabel *)self->_subtitleView setTextColor:[(SUSubtitledButton *)self currentSubtitleColor]];
    subtitleView = self->_subtitleView;
    [(SUSubtitledButton *)self bounds];
    [(SUSubtitledButton *)self contentRectForBounds:?];
    [(SUSubtitledButton *)self subtitleRectForContentRect:?];
    [(UILabel *)subtitleView setFrame:?];
  }

  else
  {
    [(UILabel *)self->_subtitleView setHidden:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v17.receiver = self;
  v17.super_class = SUSubtitledButton;
  [(SUSubtitledButton *)&v17 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(SUSubtitledButton *)self currentSubtitle];
  if ([(NSString *)v8 length])
  {
    [(NSString *)v8 _legacy_sizeWithFont:[(SUSubtitledButton *)self _subtitleFont] forWidth:[(SUSubtitledButton *)self _subtitleLineBreakMode] lineBreakMode:3.40282347e38];
    v10 = v9;
    v12 = v11;
    [(SUSubtitledButton *)self contentEdgeInsets];
    v7 = v7 + v12;
    if (v5 < v10 + v13 + v14)
    {
      v5 = v10 + v13 + v14;
    }
  }

  v15 = v5;
  v16 = v7;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)configureFromScriptButton:(id)a3
{
  [a3 subtitle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v5 = [a3 subtitle];
  }

  [(SUSubtitledButton *)self setSubtitle:v5 forState:0];
  v6.receiver = self;
  v6.super_class = SUSubtitledButton;
  [(UIButton *)&v6 configureFromScriptButton:a3];
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v33.receiver = self;
  v33.super_class = SUSubtitledButton;
  [(SUSubtitledButton *)&v33 titleRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SUSubtitledButton *)self currentSubtitle];
  if ([(NSString *)v16 length])
  {
    [(SUSubtitledButton *)self titleEdgeInsets];
    v18 = x + v17;
    v20 = y + v19;
    v22 = width - (v17 + v21);
    v24 = height - (v19 + v23);
    v25 = [(SUSubtitledButton *)self _subtitleFont];
    v34.origin.x = v18;
    v34.origin.y = v20;
    v34.size.width = v22;
    v34.size.height = v24;
    [(NSString *)v16 _legacy_sizeWithFont:v25 forWidth:[(SUSubtitledButton *)self _subtitleLineBreakMode] lineBreakMode:CGRectGetWidth(v34)];
    v27 = v26;
    v28 = [(SUSubtitledButton *)self contentVerticalAlignment];
    if (v28 != 1 && v28 != 3)
    {
      if (v28 == 2)
      {
        v11 = v11 - (v27 + 1.0);
      }

      else
      {
        v11 = v20 + floor((v24 - (v15 + v27 + 1.0)) * 0.5);
      }
    }
  }

  v29 = v9;
  v30 = v11;
  v31 = v13;
  v32 = v15;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (NSString)currentSubtitle
{
  v3 = [(SUSubtitledButton *)self state];

  return [(SUSubtitledButton *)self subtitleForState:v3];
}

- (UIColor)currentSubtitleColor
{
  v3 = [(SUSubtitledButton *)self state];

  return [(SUSubtitledButton *)self subtitleColorForState:v3];
}

- (UIColor)currentSubtitleShadowColor
{
  v3 = [(SUSubtitledButton *)self state];

  return [(SUSubtitledButton *)self subtitleShadowColorForState:v3];
}

- (void)setSubtitle:(id)a3 forState:(unint64_t)a4
{
  [-[SUSubtitledButton _subtitledContentForState:](self _subtitledContentForState:{a4), "setSubtitle:", a3}];
  if ([(SUSubtitledButton *)self autosizesToFit])
  {
    [(SUSubtitledButton *)self sizeToFit];
  }

  [(SUSubtitledButton *)self setNeedsLayout];
  if (a4 && [(SUSubtitledButton *)self state]== a4)
  {

    [(SUSubtitledButton *)self layoutIfNeeded];
  }
}

- (void)setSubtitleColor:(id)a3 forState:(unint64_t)a4
{
  [-[SUSubtitledButton _subtitledContentForState:](self _subtitledContentForState:{a4), "setSubtitleColor:", a3}];
  [(SUSubtitledButton *)self setNeedsLayout];
  if (a4 && [(SUSubtitledButton *)self state]== a4)
  {

    [(SUSubtitledButton *)self layoutIfNeeded];
  }
}

- (void)setSubtitleShadowColor:(id)a3 forState:(unint64_t)a4
{
  [-[SUSubtitledButton _subtitledContentForState:](self _subtitledContentForState:{a4), "setSubtitleShadowColor:", a3}];
  [(SUSubtitledButton *)self setNeedsLayout];
  if (a4 && [(SUSubtitledButton *)self state]== a4)
  {

    [(SUSubtitledButton *)self layoutIfNeeded];
  }
}

- (id)subtitleColorForState:(unint64_t)a3
{
  result = [-[SUSubtitledButton _subtitledContentForState:](self _subtitledContentForState:{a3), "subtitleColor"}];
  if (!result)
  {
    v5 = [(SUSubtitledButton *)self _subtitledContentForState:0];

    return [v5 subtitleColor];
  }

  return result;
}

- (id)subtitleForState:(unint64_t)a3
{
  result = [-[SUSubtitledButton _subtitledContentForState:](self _subtitledContentForState:{a3), "subtitle"}];
  if (!result)
  {
    v5 = [(SUSubtitledButton *)self _subtitledContentForState:0];

    return [v5 subtitle];
  }

  return result;
}

- (UILabel)subtitleLabel
{
  [(SUSubtitledButton *)self _setupSubtitleView];
  [(SUSubtitledButton *)self layoutIfNeeded];
  return self->_subtitleView;
}

- (CGRect)subtitleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SUSubtitledButton *)self currentSubtitle];
  if ([(NSString *)v8 length])
  {
    [(SUSubtitledButton *)self titleEdgeInsets];
    v10 = x + v9;
    v12 = y + v11;
    v14 = width - (v9 + v13);
    v16 = height - (v11 + v15);
    v17 = [(SUSubtitledButton *)self _subtitleFont];
    v36.origin.x = v10;
    v36.origin.y = v12;
    v33 = v16;
    v34 = v14;
    v36.size.width = v14;
    v36.size.height = v16;
    [(NSString *)v8 _legacy_sizeWithFont:v17 forWidth:[(SUSubtitledButton *)self _subtitleLineBreakMode] lineBreakMode:CGRectGetWidth(v36)];
    v19 = v18;
    v35 = v20;
    v21 = [(SUSubtitledButton *)self contentHorizontalAlignment];
    v22 = v10;
    if (v21 != 1 && v21 != 3)
    {
      if (v21 == 2)
      {
        v37.origin.x = v10;
        v37.origin.y = v12;
        v37.size.height = v33;
        v37.size.width = v34;
        v22 = CGRectGetMaxX(v37) - v19;
      }

      else
      {
        v22 = v10 + floor((v34 - v19) * 0.5);
      }
    }

    [(SUSubtitledButton *)self titleRectForContentRect:x, y, width, height];
    if (v27 <= 0.00000011920929)
    {
      v32 = [(SUSubtitledButton *)self contentVerticalAlignment];
      v23 = v35;
      if (v32 != 1 && v32 != 3)
      {
        if (v32 == 2)
        {
          v38.origin.x = v10;
          v38.origin.y = v12;
          v38.size.height = v33;
          v38.size.width = v34;
          v12 = CGRectGetMaxY(v38) - v35;
        }

        else
        {
          v12 = v12 + floor((v33 - v35) * 0.5);
        }
      }
    }

    else
    {
      v12 = CGRectGetMaxY(*&v24) + 1.0;
      v23 = v35;
    }
  }

  else
  {
    v22 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
  }

  v28 = v22;
  v29 = v12;
  v30 = v19;
  v31 = v23;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)subtitleShadowColorForState:(unint64_t)a3
{
  result = [-[SUSubtitledButton _subtitledContentForState:](self _subtitledContentForState:{a3), "subtitleShadowColor"}];
  if (!result)
  {
    v5 = [(SUSubtitledButton *)self _subtitledContentForState:0];

    return [v5 subtitleShadowColor];
  }

  return result;
}

- (void)_setupSubtitleView
{
  if (!self->_subtitleView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    self->_subtitleView = v3;
    -[UILabel setBackgroundColor:](v3, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    -[UILabel setFont:](self->_subtitleView, "setFont:", [MEMORY[0x1E69DB878] systemFontOfSize:14.0]);
    [(UILabel *)self->_subtitleView setEnabled:1];
    [(UILabel *)self->_subtitleView setClipsToBounds:1];
    [(UILabel *)self->_subtitleView setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(UILabel *)self->_subtitleView setTextAlignment:2 * ([(SUSubtitledButton *)self contentHorizontalAlignment]== 2)];
    [(SUSubtitledButton *)self addSubview:self->_subtitleView];

    [(SUSubtitledButton *)self setNeedsLayout];
  }
}

- (id)_subtitledContentForState:(unint64_t)a3
{
  subtitleContentLookup = self->_subtitleContentLookup;
  if (!subtitleContentLookup)
  {
    subtitleContentLookup = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    self->_subtitleContentLookup = subtitleContentLookup;
  }

  Value = CFDictionaryGetValue(subtitleContentLookup, a3);
  if (!Value)
  {
    Value = objc_alloc_init(SUSubtitledButtonContent);
    CFDictionarySetValue(self->_subtitleContentLookup, a3, Value);
  }

  return Value;
}

- (id)_subtitleFont
{
  subtitleView = self->_subtitleView;
  if (subtitleView)
  {
    return [(UILabel *)subtitleView font];
  }

  else
  {
    return [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  }
}

- (int64_t)_subtitleLineBreakMode
{
  subtitleView = self->_subtitleView;
  if (subtitleView)
  {
    return [(UILabel *)subtitleView lineBreakMode];
  }

  else
  {
    return 4;
  }
}

@end