@interface WFCircularGlyphView
- (UIImageView)glyphImageView;
- (UIView)backgroundColorView;
- (WFCircularGlyphView)initWithName:(id)a3 glyphColor:(id)a4 backgroundColor:(id)a5;
- (id)glyphImage;
- (void)configureBackgroundColorView;
- (void)configureGlyphImageView;
- (void)configureViews;
- (void)setImagePointSize:(double)a3;
@end

@implementation WFCircularGlyphView

- (void)setImagePointSize:(double)a3
{
  if (self->_imagePointSize != a3)
  {
    self->_imagePointSize = a3 * 0.7;
    [(WFCircularGlyphView *)self configureViews];
    v5 = [(WFCircularGlyphView *)self glyphImageView];
    [v5 frame];
    [(WFCircularGlyphView *)self setFrame:?];
  }
}

- (void)configureBackgroundColorView
{
  v21 = [(WFCircularGlyphView *)self backgroundColorView];
  v3 = [(WFCircularGlyphView *)self glyphImageView];
  v4 = [(WFCircularGlyphView *)self glyphBackgroundColor];
  if (v4)
  {
    [v21 setBackgroundColor:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    [v21 setBackgroundColor:v5];
  }

  [v3 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v3 image];
  [v14 contentInsets];
  [v21 setFrame:{v7 + v18, v9 + v15, v11 - (v18 + v16), v13 - (v15 + v17)}];

  [v21 frame];
  v19 = CGRectGetWidth(v23) * 0.5;
  v20 = [v21 layer];
  [v20 setCornerRadius:v19];
}

- (void)configureGlyphImageView
{
  v11 = [(WFCircularGlyphView *)self glyphImage];
  [v11 size];
  v4 = v3;
  v6 = v5;
  v7 = [(WFCircularGlyphView *)self glyphImageView];
  v8 = [(WFCircularGlyphView *)self glyphImage];
  [v7 setImage:v8];

  v9 = [(WFCircularGlyphView *)self glyphColor];
  if (v9)
  {
    [v7 setTintColor:v9];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] systemWhiteColor];
    [v7 setTintColor:v10];
  }

  [v7 setFrame:{0.0, 0.0, v4, v6}];
}

- (id)glyphImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = [(WFCircularGlyphView *)self glyphName];
  v5 = [v3 systemImageNamed:v4];
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

- (WFCircularGlyphView)initWithName:(id)a3 glyphColor:(id)a4 backgroundColor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = WFCircularGlyphView;
  v11 = [(WFCircularGlyphView *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(WFCircularGlyphView *)v11 setGlyphName:v8];
    [(WFCircularGlyphView *)v12 setGlyphColor:v9];
    [(WFCircularGlyphView *)v12 setGlyphBackgroundColor:v10];
    [(WFCircularGlyphView *)v12 setImagePointSize:35.0];
    v13 = [(WFCircularGlyphView *)v12 backgroundColorView];
    [(WFCircularGlyphView *)v12 addSubview:v13];

    v14 = [(WFCircularGlyphView *)v12 glyphImageView];
    [(WFCircularGlyphView *)v12 addSubview:v14];

    v15 = v12;
  }

  return v12;
}

@end