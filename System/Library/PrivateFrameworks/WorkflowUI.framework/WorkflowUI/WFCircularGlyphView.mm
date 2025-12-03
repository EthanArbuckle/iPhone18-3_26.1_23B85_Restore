@interface WFCircularGlyphView
- (UIImageView)glyphImageView;
- (UIView)backgroundColorView;
- (WFCircularGlyphView)initWithName:(id)name glyphColor:(id)color backgroundColor:(id)backgroundColor;
- (id)glyphImage;
- (void)configureBackgroundColorView;
- (void)configureGlyphImageView;
- (void)configureViews;
- (void)setImagePointSize:(double)size;
@end

@implementation WFCircularGlyphView

- (void)setImagePointSize:(double)size
{
  if (self->_imagePointSize != size)
  {
    self->_imagePointSize = size * 0.7;
    [(WFCircularGlyphView *)self configureViews];
    glyphImageView = [(WFCircularGlyphView *)self glyphImageView];
    [glyphImageView frame];
    [(WFCircularGlyphView *)self setFrame:?];
  }
}

- (void)configureBackgroundColorView
{
  backgroundColorView = [(WFCircularGlyphView *)self backgroundColorView];
  glyphImageView = [(WFCircularGlyphView *)self glyphImageView];
  glyphBackgroundColor = [(WFCircularGlyphView *)self glyphBackgroundColor];
  if (glyphBackgroundColor)
  {
    [backgroundColorView setBackgroundColor:glyphBackgroundColor];
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [backgroundColorView setBackgroundColor:systemBlueColor];
  }

  [glyphImageView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  image = [glyphImageView image];
  [image contentInsets];
  [backgroundColorView setFrame:{v7 + v18, v9 + v15, v11 - (v18 + v16), v13 - (v15 + v17)}];

  [backgroundColorView frame];
  v19 = CGRectGetWidth(v23) * 0.5;
  layer = [backgroundColorView layer];
  [layer setCornerRadius:v19];
}

- (void)configureGlyphImageView
{
  glyphImage = [(WFCircularGlyphView *)self glyphImage];
  [glyphImage size];
  v4 = v3;
  v6 = v5;
  glyphImageView = [(WFCircularGlyphView *)self glyphImageView];
  glyphImage2 = [(WFCircularGlyphView *)self glyphImage];
  [glyphImageView setImage:glyphImage2];

  glyphColor = [(WFCircularGlyphView *)self glyphColor];
  if (glyphColor)
  {
    [glyphImageView setTintColor:glyphColor];
  }

  else
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [glyphImageView setTintColor:systemWhiteColor];
  }

  [glyphImageView setFrame:{0.0, 0.0, v4, v6}];
}

- (id)glyphImage
{
  v3 = MEMORY[0x277D755B8];
  glyphName = [(WFCircularGlyphView *)self glyphName];
  v5 = [v3 systemImageNamed:glyphName];
  v6 = MEMORY[0x277D755D0];
  [(WFCircularGlyphView *)self imagePointSize];
  v7 = [v6 configurationWithPointSize:?];
  v8 = [v5 imageWithConfiguration:v7];

  return v8;
}

- (UIView)backgroundColorView
{
  backgroundColorView = self->_backgroundColorView;
  if (!backgroundColorView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_backgroundColorView;
    self->_backgroundColorView = v4;

    backgroundColorView = self->_backgroundColorView;
  }

  v6 = backgroundColorView;

  return v6;
}

- (UIImageView)glyphImageView
{
  glyphImageView = self->_glyphImageView;
  if (!glyphImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    v5 = self->_glyphImageView;
    self->_glyphImageView = v4;

    glyphImageView = self->_glyphImageView;
  }

  v6 = glyphImageView;

  return v6;
}

- (void)configureViews
{
  [(WFCircularGlyphView *)self configureGlyphImageView];

  [(WFCircularGlyphView *)self configureBackgroundColorView];
}

- (WFCircularGlyphView)initWithName:(id)name glyphColor:(id)color backgroundColor:(id)backgroundColor
{
  nameCopy = name;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v17.receiver = self;
  v17.super_class = WFCircularGlyphView;
  v11 = [(WFCircularGlyphView *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(WFCircularGlyphView *)v11 setGlyphName:nameCopy];
    [(WFCircularGlyphView *)v12 setGlyphColor:colorCopy];
    [(WFCircularGlyphView *)v12 setGlyphBackgroundColor:backgroundColorCopy];
    [(WFCircularGlyphView *)v12 setImagePointSize:35.0];
    backgroundColorView = [(WFCircularGlyphView *)v12 backgroundColorView];
    [(WFCircularGlyphView *)v12 addSubview:backgroundColorView];

    glyphImageView = [(WFCircularGlyphView *)v12 glyphImageView];
    [(WFCircularGlyphView *)v12 addSubview:glyphImageView];

    v15 = v12;
  }

  return v12;
}

@end