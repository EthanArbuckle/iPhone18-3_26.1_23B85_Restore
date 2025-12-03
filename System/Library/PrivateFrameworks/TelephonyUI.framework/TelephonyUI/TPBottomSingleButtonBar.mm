@interface TPBottomSingleButtonBar
- (double)buttonWidth;
- (void)setButton:(id)button andStyle:(BOOL)style;
@end

@implementation TPBottomSingleButtonBar

- (double)buttonWidth
{
  style = self->super._style;
  result = 0.0;
  if (style <= 3)
  {
    return dbl_1B48EB850[style];
  }

  return result;
}

- (void)setButton:(id)button andStyle:(BOOL)style
{
  styleCopy = style;
  buttonCopy = button;
  button = self->_button;
  v9 = buttonCopy;
  v26 = buttonCopy;
  if (button != buttonCopy)
  {
    [(TPButton *)button removeFromSuperview];
    objc_storeStrong(&self->_button, button);
    v9 = self->_button;
  }

  if (v9)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if (styleCopy)
      {
        [(TPBottomSingleButtonBar *)self bounds];
        v13 = v12;
        v15 = v14;
        [(TPButton *)self->_button frame];
        [objc_opt_class() defaultHeightForColor:{-[TPButton buttonColor](self->_button, "buttonColor")}];
        v17 = v16;
        v18 = floor((v15 - v16) * 0.5) + 2.0;
        v19 = v13 + -4.0;
        v20 = self->_button;
        v21 = 2.0;
LABEL_9:
        [(TPButton *)v20 setFrame:v21, v18, v19, v17];
      }
    }

    else if (styleCopy)
    {
      [(TPBottomSingleButtonBar *)self bounds];
      v23 = v22;
      v24 = self->_button;
      [objc_opt_class() defaultHeightForColor:{-[TPButton buttonColor](v24, "buttonColor")}];
      v17 = v25;
      v20 = self->_button;
      v21 = 0.0;
      v18 = 0.0;
      v19 = v23;
      goto LABEL_9;
    }

    [(TPBottomSingleButtonBar *)self addSubview:self->_button];
  }

  [(TPBottomSingleButtonBar *)self setNeedsLayout];
}

@end