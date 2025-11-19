@interface SKUIFilledStarsView
- (SKUIFilledStarsView)initWithFrame:(CGRect)a3;
- (id)_starImageViewWithImage:(id)a3;
- (void)_setupStars;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SKUIFilledStarsView

- (SKUIFilledStarsView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SKUIFilledStarsView;
  v3 = [(SKUIFilledStarsView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    starViews = v3->_starViews;
    v3->_starViews = v4;

    [(SKUIFilledStarsView *)v3 _setupStars];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SKUIFilledStarsView;
  [(SKUIFilledStarsView *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_starViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        [(SKUIFilledStarsView *)self addSubview:v9, v24];
        [v9 sizeToFit];
        [v9 frame];
        v11 = v10;
        [v9 frame];
        v30.origin.y = 0.0;
        v30.origin.x = v7;
        v30.size.width = v11;
        MaxX = CGRectGetMaxX(v30);
        [(SKUIFilledStarsView *)self bounds];
        UIRectCenteredYInRect();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ([(SKUIFilledStarsView *)self _shouldReverseLayoutDirection])
        {
          [(SKUIFilledStarsView *)self bounds];
          v22 = v21 - v18;
          [(SKUIFilledStarsView *)self bounds];
          v14 = v22 - (v14 - v23);
        }

        v7 = MaxX + 1.0;
        [v9 setFrame:{v14, v16, v18, v20}];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (void)_setupStars
{
  v3 = MEMORY[0x277D755D0];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:10.0 newValue:14.0];
  v9 = [v3 configurationWithPointSize:?];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
  v5 = [v4 imageWithSymbolConfiguration:v9];

  v6 = 5;
  do
  {
    starViews = self->_starViews;
    v8 = [(SKUIFilledStarsView *)self _starImageViewWithImage:v5];
    [(NSMutableArray *)starViews addObject:v8];

    --v6;
  }

  while (v6);
}

- (id)_starImageViewWithImage:(id)a3
{
  v3 = [a3 imageWithRenderingMode:2];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  v5 = [MEMORY[0x277D75348] systemOrangeColor];
  [v4 setTintColor:v5];

  return v4;
}

@end