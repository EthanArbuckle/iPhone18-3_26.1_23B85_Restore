@interface UIButtonContent
- (BOOL)updateVariableLengthStringForView:(id)view;
- (UIButtonContent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setTitle:(id)title;
@end

@implementation UIButtonContent

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  title = [(UIButtonContent *)self title];
  [v4 setTitle:title];

  attributedTitle = [(UIButtonContent *)self attributedTitle];
  [v4 setAttributedTitle:attributedTitle];

  image = [(UIButtonContent *)self image];
  [v4 setImage:image];

  background = [(UIButtonContent *)self background];
  [v4 setBackground:background];

  titleColor = [(UIButtonContent *)self titleColor];
  [v4 setTitleColor:titleColor];

  imageColor = [(UIButtonContent *)self imageColor];
  [v4 setImageColor:imageColor];

  shadowColor = [(UIButtonContent *)self shadowColor];
  [v4 setShadowColor:shadowColor];

  drawingStroke = [(UIButtonContent *)self drawingStroke];
  [v4 setDrawingStroke:drawingStroke];

  preferredSymbolConfiguration = [(UIButtonContent *)self preferredSymbolConfiguration];
  [v4 setPreferredSymbolConfiguration:preferredSymbolConfiguration];

  return v4;
}

- (UIButtonContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = UIButtonContent;
  v5 = [(UIButtonContent *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITitle"];
    v7 = [v6 length];
    if (v7)
    {
      v7 = [v6 copy];
    }

    title = v5->title;
    v5->title = v7;

    v9 = [coderCopy decodeObjectForKey:@"UIAttributedTitle"];
    string = [v9 string];
    v11 = [string length];
    if (v11)
    {
      v11 = [v9 copy];
    }

    attributedTitle = v5->attributedTitle;
    v5->attributedTitle = v11;

    v13 = [coderCopy decodeObjectForKey:@"UIImage"];
    image = v5->image;
    v5->image = v13;

    v15 = [coderCopy decodeObjectForKey:@"UIImageSymbolConfiguration"];
    preferredSymbolConfiguration = v5->preferredSymbolConfiguration;
    v5->preferredSymbolConfiguration = v15;

    v17 = [coderCopy decodeObjectForKey:@"UIBackgroundImage"];
    background = v5->background;
    v5->background = v17;

    v19 = [coderCopy decodeObjectForKey:@"UITitleColor"];
    titleColor = v5->titleColor;
    v5->titleColor = v19;

    v21 = [coderCopy decodeObjectForKey:@"UIImageColor"];
    imageColor = v5->imageColor;
    v5->imageColor = v21;

    v23 = [coderCopy decodeObjectForKey:@"UIShadowColor"];
    shadowColor = v5->shadowColor;
    v5->shadowColor = v23;

    v25 = [coderCopy decodeObjectForKey:@"UIDrawingStroke"];
    drawingStroke = v5->drawingStroke;
    v5->drawingStroke = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = self->title;
  v14 = coderCopy;
  if (title)
  {
    [coderCopy encodeObject:title forKey:@"UITitle"];
    coderCopy = v14;
  }

  attributedTitle = self->attributedTitle;
  if (attributedTitle)
  {
    [v14 encodeObject:attributedTitle forKey:@"UIAttributedTitle"];
    coderCopy = v14;
  }

  image = self->image;
  if (image)
  {
    [v14 encodeObject:image forKey:@"UIImage"];
    coderCopy = v14;
  }

  preferredSymbolConfiguration = self->preferredSymbolConfiguration;
  if (preferredSymbolConfiguration)
  {
    [v14 encodeObject:preferredSymbolConfiguration forKey:@"UIImageSymbolConfiguration"];
    coderCopy = v14;
  }

  background = self->background;
  if (background)
  {
    [v14 encodeObject:background forKey:@"UIBackgroundImage"];
    coderCopy = v14;
  }

  titleColor = self->titleColor;
  if (titleColor)
  {
    [v14 encodeObject:titleColor forKey:@"UITitleColor"];
    coderCopy = v14;
  }

  imageColor = self->imageColor;
  if (imageColor)
  {
    [v14 encodeObject:imageColor forKey:@"UIImageColor"];
    coderCopy = v14;
  }

  shadowColor = self->shadowColor;
  if (shadowColor)
  {
    [v14 encodeObject:shadowColor forKey:@"UIShadowColor"];
    coderCopy = v14;
  }

  drawingStroke = self->drawingStroke;
  if (drawingStroke)
  {
    [v14 encodeObject:drawingStroke forKey:@"UIDrawingStroke"];
    coderCopy = v14;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->title != titleCopy)
  {
    v7 = titleCopy;
    objc_storeStrong(&self->title, title);
    IsWidthVariant = _NSStringIsWidthVariant(self->title);
    titleCopy = v7;
    self->isWidthVariant = IsWidthVariant;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p Title = %@, AttributedTitle = %@, Image = %@, Background = %@, TitleColor = %@, ImageColor = %@, ShadowColor = %@, DrawingStroke = %@>", v5, self, self->title, self->attributedTitle, self->image, self->background, self->titleColor, self->imageColor, self->shadowColor, self->drawingStroke];

  return v6;
}

- (BOOL)updateVariableLengthStringForView:(id)view
{
  if (!self->isWidthVariant)
  {
    return 0;
  }

  v4 = _UIAdaptLocalizedStringForView(self->title, view);
  v5 = [(NSString *)self->title isEqualToString:v4];
  if (!v5)
  {
    title = self->title;
    self->title = v4;
    v4 = title;
  }

  v7 = !v5;

  return v7;
}

@end