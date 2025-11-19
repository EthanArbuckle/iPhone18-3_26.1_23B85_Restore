@interface UIButtonContent
- (BOOL)updateVariableLengthStringForView:(id)a3;
- (UIButtonContent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation UIButtonContent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(UIButtonContent *)self title];
  [v4 setTitle:v5];

  v6 = [(UIButtonContent *)self attributedTitle];
  [v4 setAttributedTitle:v6];

  v7 = [(UIButtonContent *)self image];
  [v4 setImage:v7];

  v8 = [(UIButtonContent *)self background];
  [v4 setBackground:v8];

  v9 = [(UIButtonContent *)self titleColor];
  [v4 setTitleColor:v9];

  v10 = [(UIButtonContent *)self imageColor];
  [v4 setImageColor:v10];

  v11 = [(UIButtonContent *)self shadowColor];
  [v4 setShadowColor:v11];

  v12 = [(UIButtonContent *)self drawingStroke];
  [v4 setDrawingStroke:v12];

  v13 = [(UIButtonContent *)self preferredSymbolConfiguration];
  [v4 setPreferredSymbolConfiguration:v13];

  return v4;
}

- (UIButtonContent)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = UIButtonContent;
  v5 = [(UIButtonContent *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UITitle"];
    v7 = [v6 length];
    if (v7)
    {
      v7 = [v6 copy];
    }

    title = v5->title;
    v5->title = v7;

    v9 = [v4 decodeObjectForKey:@"UIAttributedTitle"];
    v10 = [v9 string];
    v11 = [v10 length];
    if (v11)
    {
      v11 = [v9 copy];
    }

    attributedTitle = v5->attributedTitle;
    v5->attributedTitle = v11;

    v13 = [v4 decodeObjectForKey:@"UIImage"];
    image = v5->image;
    v5->image = v13;

    v15 = [v4 decodeObjectForKey:@"UIImageSymbolConfiguration"];
    preferredSymbolConfiguration = v5->preferredSymbolConfiguration;
    v5->preferredSymbolConfiguration = v15;

    v17 = [v4 decodeObjectForKey:@"UIBackgroundImage"];
    background = v5->background;
    v5->background = v17;

    v19 = [v4 decodeObjectForKey:@"UITitleColor"];
    titleColor = v5->titleColor;
    v5->titleColor = v19;

    v21 = [v4 decodeObjectForKey:@"UIImageColor"];
    imageColor = v5->imageColor;
    v5->imageColor = v21;

    v23 = [v4 decodeObjectForKey:@"UIShadowColor"];
    shadowColor = v5->shadowColor;
    v5->shadowColor = v23;

    v25 = [v4 decodeObjectForKey:@"UIDrawingStroke"];
    drawingStroke = v5->drawingStroke;
    v5->drawingStroke = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  title = self->title;
  v14 = v4;
  if (title)
  {
    [v4 encodeObject:title forKey:@"UITitle"];
    v4 = v14;
  }

  attributedTitle = self->attributedTitle;
  if (attributedTitle)
  {
    [v14 encodeObject:attributedTitle forKey:@"UIAttributedTitle"];
    v4 = v14;
  }

  image = self->image;
  if (image)
  {
    [v14 encodeObject:image forKey:@"UIImage"];
    v4 = v14;
  }

  preferredSymbolConfiguration = self->preferredSymbolConfiguration;
  if (preferredSymbolConfiguration)
  {
    [v14 encodeObject:preferredSymbolConfiguration forKey:@"UIImageSymbolConfiguration"];
    v4 = v14;
  }

  background = self->background;
  if (background)
  {
    [v14 encodeObject:background forKey:@"UIBackgroundImage"];
    v4 = v14;
  }

  titleColor = self->titleColor;
  if (titleColor)
  {
    [v14 encodeObject:titleColor forKey:@"UITitleColor"];
    v4 = v14;
  }

  imageColor = self->imageColor;
  if (imageColor)
  {
    [v14 encodeObject:imageColor forKey:@"UIImageColor"];
    v4 = v14;
  }

  shadowColor = self->shadowColor;
  if (shadowColor)
  {
    [v14 encodeObject:shadowColor forKey:@"UIShadowColor"];
    v4 = v14;
  }

  drawingStroke = self->drawingStroke;
  if (drawingStroke)
  {
    [v14 encodeObject:drawingStroke forKey:@"UIDrawingStroke"];
    v4 = v14;
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (self->title != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->title, a3);
    IsWidthVariant = _NSStringIsWidthVariant(self->title);
    v5 = v7;
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

- (BOOL)updateVariableLengthStringForView:(id)a3
{
  if (!self->isWidthVariant)
  {
    return 0;
  }

  v4 = _UIAdaptLocalizedStringForView(self->title, a3);
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