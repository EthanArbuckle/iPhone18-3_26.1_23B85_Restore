@interface _UITitleContent
+ (id)contentWithTitle:(id)title attributes:(id)attributes button:(id)button;
- (NSString)title;
- (id)description;
- (void)updateWithButton:(id)button;
- (void)updateWithTitleAttributes:(id)attributes button:(id)button;
@end

@implementation _UITitleContent

+ (id)contentWithTitle:(id)title attributes:(id)attributes button:(id)button
{
  titleCopy = title;
  attributesCopy = attributes;
  buttonCopy = button;
  v11 = objc_alloc_init(self);
  v12 = [titleCopy length];
  if (v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:attributesCopy];
  }

  v13 = v11[1];
  v11[1] = v12;

  [v11 updateWithButton:buttonCopy];

  return v11;
}

- (void)updateWithTitleAttributes:(id)attributes button:(id)button
{
  buttonCopy = button;
  if (self->_attributedText)
  {
    v6 = MEMORY[0x1E696AAB0];
    attributesCopy = attributes;
    v8 = [v6 alloc];
    string = [(NSAttributedString *)self->_attributedText string];
    v10 = [v8 initWithString:string attributes:attributesCopy];

    attributedText = self->_attributedText;
    self->_attributedText = v10;
  }

  [(_UITitleContent *)self updateWithButton:buttonCopy];
}

- (void)updateWithButton:(id)button
{
  if (self->_attributedText)
  {
    buttonCopy = button;
    [buttonCopy contentEdgeInsets];
    v6 = v5;
    v8 = v7;
    _visualProvider = [buttonCopy _visualProvider];

    [_visualProvider _intrinsicWidthForAttributedTitle:self->_attributedText];
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
    string = [(NSAttributedString *)attributedText string];
  }

  else
  {
    string = &stru_1EFB14550;
  }

  return string;
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