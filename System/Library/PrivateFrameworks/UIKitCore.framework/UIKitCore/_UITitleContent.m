@interface _UITitleContent
+ (id)contentWithTitle:(id)a3 attributes:(id)a4 button:(id)a5;
- (NSString)title;
- (id)description;
- (void)updateWithButton:(id)a3;
- (void)updateWithTitleAttributes:(id)a3 button:(id)a4;
@end

@implementation _UITitleContent

+ (id)contentWithTitle:(id)a3 attributes:(id)a4 button:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(a1);
  v12 = [v8 length];
  if (v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v9];
  }

  v13 = v11[1];
  v11[1] = v12;

  [v11 updateWithButton:v10];

  return v11;
}

- (void)updateWithTitleAttributes:(id)a3 button:(id)a4
{
  v12 = a4;
  if (self->_attributedText)
  {
    v6 = MEMORY[0x1E696AAB0];
    v7 = a3;
    v8 = [v6 alloc];
    v9 = [(NSAttributedString *)self->_attributedText string];
    v10 = [v8 initWithString:v9 attributes:v7];

    attributedText = self->_attributedText;
    self->_attributedText = v10;
  }

  [(_UITitleContent *)self updateWithButton:v12];
}

- (void)updateWithButton:(id)a3
{
  if (self->_attributedText)
  {
    v4 = a3;
    [v4 contentEdgeInsets];
    v6 = v5;
    v8 = v7;
    v10 = [v4 _visualProvider];

    [v10 _intrinsicWidthForAttributedTitle:self->_attributedText];
    self->_width = v9 - v6 - v8;
  }

  else
  {
    self->_width = 0.0;
  }
}

- (NSString)title
{
  attributedText = self->_attributedText;
  if (attributedText)
  {
    v4 = [(NSAttributedString *)attributedText string];
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = _UITitleContent;
  v4 = [(_UITitleContent *)&v9 description];
  v5 = v4;
  attributedText = self->_attributedText;
  if (!attributedText)
  {
    attributedText = &stru_1EFB14550;
  }

  v7 = [v3 stringWithFormat:@"%@ '%@' (%f)", v4, attributedText, *&self->_width];

  return v7;
}

@end