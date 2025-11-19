@interface SUTextContentView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (void)dealloc;
- (void)keyboardInputChangedSelection:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setPlaceholder:(id)a3;
- (void)setText:(id)a3;
@end

@implementation SUTextContentView

- (void)dealloc
{
  self->_placeholderLabel = 0;
  v3.receiver = self;
  v3.super_class = SUTextContentView;
  [(UITextContentView *)&v3 dealloc];
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = SUTextContentView;
  v3 = [(UITextContentView *)&v5 becomeFirstResponder];
  if (v3)
  {
    [(UILabel *)self->_placeholderLabel removeFromSuperview];
  }

  return v3;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  [(UILabel *)self->_placeholderLabel removeFromSuperview];
  v5.receiver = self;
  v5.super_class = SUTextContentView;
  [(UITextContentView *)&v5 keyboardInputChangedSelection:a3];
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = SUTextContentView;
  v3 = [(UITextContentView *)&v5 resignFirstResponder];
  if (v3 && self->_placeholderLabel && ![(NSString *)[(UITextContentView *)self text] length])
  {
    [(SUTextContentView *)self addSubview:self->_placeholderLabel];
  }

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  [(UILabel *)self->_placeholderLabel setBackgroundColor:?];
  v5.receiver = self;
  v5.super_class = SUTextContentView;
  [(SUTextContentView *)&v5 setBackgroundColor:a3];
}

- (void)setText:(id)a3
{
  if (!self->_placeholderLabel)
  {
    placeholderLabel = 0;
    goto LABEL_5;
  }

  v5 = [a3 length];
  placeholderLabel = self->_placeholderLabel;
  if (v5)
  {
LABEL_5:
    [(UILabel *)placeholderLabel removeFromSuperview];
    goto LABEL_6;
  }

  [(SUTextContentView *)self addSubview:placeholderLabel];
LABEL_6:
  v7.receiver = self;
  v7.super_class = SUTextContentView;
  [(UITextContentView *)&v7 setText:a3];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUTextContentView;
  [(SUTextContentView *)&v5 layoutSubviews];
  if (self->_placeholderLabel)
  {
    [(SUTextContentView *)self bounds];
    v4 = v3;
    [(UILabel *)self->_placeholderLabel frame];
    [(UILabel *)self->_placeholderLabel setFrame:8.0, 8.0, v4 + -8.0 + -15.0];
  }
}

- (void)setPlaceholder:(id)a3
{
  if ([a3 length] || (placeholderLabel = self->_placeholderLabel) == 0)
  {
    if ([a3 length])
    {
      if (!self->_placeholderLabel)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        self->_placeholderLabel = v5;
        [(UILabel *)v5 setBackgroundColor:[(SUTextContentView *)self backgroundColor]];
        -[UILabel setTextColor:](self->_placeholderLabel, "setTextColor:", [MEMORY[0x1E69DC888] placeholderTextColor]);
        [(UILabel *)self->_placeholderLabel setUserInteractionEnabled:0];
      }

      if (![(UITextContentView *)self isFirstResponder]&& [(UILabel *)self->_placeholderLabel superview]!= self && ![(NSString *)[(UITextContentView *)self text] length])
      {
        [(SUTextContentView *)self addSubview:self->_placeholderLabel];
      }

      [(UILabel *)self->_placeholderLabel setFont:[(UITextContentView *)self font]];
      [(UILabel *)self->_placeholderLabel setText:a3];
      [(UILabel *)self->_placeholderLabel sizeToFit];
      if ([(UILabel *)self->_placeholderLabel superview]== self)
      {

        [(SUTextContentView *)self setNeedsLayout];
      }
    }
  }

  else
  {
    [(UILabel *)placeholderLabel removeFromSuperview];

    self->_placeholderLabel = 0;
  }
}

@end