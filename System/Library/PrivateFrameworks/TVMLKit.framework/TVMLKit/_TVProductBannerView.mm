@interface _TVProductBannerView
+ (id)productBannerViewWithElement:(id)a3 existingView:(id)a4;
- (CGSize)sizeThatFits:(CGSize)result;
- (_TVProductBannerView)initWithFrame:(CGRect)a3;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)setBackgroundImageView:(id)a3;
- (void)setHeroImageView:(id)a3;
- (void)setInfoListView:(id)a3;
- (void)setStackView:(id)a3;
@end

@implementation _TVProductBannerView

+ (id)productBannerViewWithElement:(id)a3 existingView:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  [v7 tv_height];
  v9 = v8;

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 bounds];
  v12 = v11;

  objc_opt_class();
  v39 = v6;
  if (objc_opt_isKindOfClass())
  {
    v13 = v6;
  }

  else
  {
    v13 = [[_TVProductBannerView alloc] initWithFrame:0.0, 0.0, v12, v9];
  }

  -[_TVProductBannerView setSemanticContentAttribute:](v13, "setSemanticContentAttribute:", [v5 tv_semanticContentAttribute]);
  [(_TVProductBannerView *)v13 setFrame:0.0, 0.0, v12, v9];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = v5;
  v14 = [v5 children];
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    v18 = 0x279D6D000uLL;
    v41 = v14;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        v21 = [v20 tv_elementType];
        if (v21 > 18)
        {
          switch(v21)
          {
            case 19:
              v27 = [*(v18 + 1176) sharedInterfaceFactory];
              v28 = [(_TVProductBannerView *)v13 infoListView];
              v24 = [v27 _viewFromElement:v20 existingView:v28];

              [(_TVProductBannerView *)v13 setInfoListView:v24];
              break;
            case 24:
LABEL_18:
              v25 = [*(v18 + 1176) sharedInterfaceFactory];
              v26 = [(_TVProductBannerView *)v13 heroImageView];
              v24 = [v25 _viewFromElement:v20 existingView:v26];

              [(_TVProductBannerView *)v13 setHeroImageView:v24];
              break;
            case 54:
              v22 = [*(v18 + 1176) sharedInterfaceFactory];
              v23 = [(_TVProductBannerView *)v13 stackView];
              v24 = [v22 _viewFromElement:v20 existingView:v23];

              [(_TVProductBannerView *)v13 setStackView:v24];
              break;
            default:
              continue;
          }

LABEL_32:

          continue;
        }

        if (v21 == 4)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v24 = [v20 children];
          v29 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = v18;
            v32 = *v43;
            while (2)
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v43 != v32)
                {
                  objc_enumerationMutation(v24);
                }

                v34 = *(*(&v42 + 1) + 8 * j);
                if ([v34 tv_elementType] == 16 && !objc_msgSend(v34, "tv_imageType"))
                {
                  v18 = v31;
                  v35 = [*(v31 + 1176) sharedInterfaceFactory];
                  v36 = [(_TVProductBannerView *)v13 backgroundImageView];
                  v37 = [v35 _viewFromElement:v34 existingView:v36];

                  [(_TVProductBannerView *)v13 setBackgroundImageView:v37];
                  goto LABEL_31;
                }
              }

              v30 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v30)
              {
                continue;
              }

              break;
            }

            v18 = v31;
LABEL_31:
            v14 = v41;
          }

          goto LABEL_32;
        }

        if (v21 == 16 && ([v20 tv_imageType] == 3 || !objc_msgSend(v20, "tv_imageType")))
        {
          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v16);
  }

  return v13;
}

- (_TVProductBannerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  v5.receiver = self;
  v5.super_class = _TVProductBannerView;
  result = [(_TVFocusRedirectView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width];
  if (result)
  {
    result->_height = height;
  }

  return result;
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(_TVProductBannerView *)self stackView];
  if (v3)
  {
    v4 = [(_TVProductBannerView *)self stackView];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)setBackgroundImageView:(id)a3
{
  v5 = a3;
  backgroundImageView = self->_backgroundImageView;
  v8 = v5;
  if (backgroundImageView != v5)
  {
    [(UIView *)backgroundImageView removeFromSuperview];
    objc_storeStrong(&self->_backgroundImageView, a3);
    v7 = self->_backgroundImageView;
    if (v7)
    {
      [(_TVProductBannerView *)self insertSubview:v7 atIndex:0];
    }
  }

  [(_TVProductBannerView *)self setNeedsLayout];
}

- (void)setInfoListView:(id)a3
{
  v5 = a3;
  infoListView = self->_infoListView;
  v7 = v5;
  if (infoListView != v5)
  {
    [(UIView *)infoListView removeFromSuperview];
    objc_storeStrong(&self->_infoListView, a3);
    if (self->_infoListView)
    {
      [(_TVProductBannerView *)self addSubview:?];
    }
  }

  [(_TVProductBannerView *)self setNeedsLayout];
}

- (void)setStackView:(id)a3
{
  v5 = a3;
  stackView = self->_stackView;
  v7 = v5;
  if (stackView != v5)
  {
    [(UIView *)stackView removeFromSuperview];
    objc_storeStrong(&self->_stackView, a3);
    if (self->_stackView)
    {
      [(_TVProductBannerView *)self addSubview:?];
    }
  }

  [(_TVProductBannerView *)self setNeedsLayout];
}

- (void)setHeroImageView:(id)a3
{
  v5 = a3;
  heroImageView = self->_heroImageView;
  v7 = v5;
  if (heroImageView != v5)
  {
    [(UIView *)heroImageView removeFromSuperview];
    objc_storeStrong(&self->_heroImageView, a3);
    if (self->_heroImageView)
    {
      [(_TVProductBannerView *)self addSubview:?];
    }
  }

  [(_TVProductBannerView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  height = self->_height;
  result.height = height;
  return result;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = _TVProductBannerView;
  [(_TVFocusRedirectView *)&v46 layoutSubviews];
  [(_TVProductBannerView *)self bounds];
  [(UIView *)self->_backgroundImageView setFrame:?];
  [(UIView *)self->_infoListView tv_margin];
  v45 = v3;
  v5 = v4;
  v7 = v6;
  [(UIView *)self->_stackView tv_margin];
  v44 = v8;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_heroImageView tv_margin];
  v13 = [(UIView *)self->_heroImageView tv_associatedIKViewElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(UIView *)self->_heroImageView tv_associatedIKViewElement];
  }

  else
  {
    v14 = 0;
  }

  if ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[_TVProductBannerView semanticContentAttribute](self, "semanticContentAttribute")}] == 1)
  {
    [(UIView *)self->_stackView tv_itemWidth];
    v16 = v15;
    if (v15 == 0.0)
    {
      [(_TVProductBannerView *)self bounds];
      v16 = CGRectGetWidth(v47) - v10 - v12;
    }

    [(UIView *)self->_stackView tv_itemHeight];
    v41 = v10;
    v42 = v17;
    v18 = fmax(v12, v5) + v10 + v16;
    [(UIView *)self->_infoListView tv_itemWidth];
    v20 = v19;
    [(UIView *)self->_infoListView tv_itemHeight];
    v22 = v21;
  }

  else
  {
    v43 = v12;
    [(UIView *)self->_infoListView tv_itemWidth];
    v24 = v23;
    [(UIView *)self->_infoListView tv_itemHeight];
    v40 = v25;
    v26 = v10;
    v18 = v5;
    v27 = v24;
    v28 = v5 + v24;
    v29 = fmax(v7, v26);
    [(UIView *)self->_stackView tv_itemWidth];
    v16 = v30;
    if (v30 == 0.0)
    {
      [(_TVProductBannerView *)self bounds];
      v16 = CGRectGetWidth(v48) - v26 - v43;
    }

    v41 = v29 + v28;
    [(UIView *)self->_stackView tv_itemHeight];
    v42 = v31;
    v20 = v27;
    v22 = v40;
  }

  [v14 width];
  [v14 height];
  UIRectCenteredXInRect();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [(UIView *)self->_infoListView setFrame:v18, v45, v20, v22];
  [(UIView *)self->_stackView setFrame:v41, v44, v16, v42];
  [(UIView *)self->_heroImageView setFrame:v33, v35, v37, v39];
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(_TVProductBannerView *)self infoListView];
  v8 = [v7 tv_impressionableElementsForDocument:v5];
  [v6 addObjectsFromArray:v8];

  v9 = [(_TVProductBannerView *)self stackView];
  v10 = [v9 tv_impressionableElementsForDocument:v5];
  [v6 addObjectsFromArray:v10];

  v11 = [(_TVProductBannerView *)self heroImageView];
  v12 = [v11 tv_impressionableElementsForDocument:v5];

  [v6 addObjectsFromArray:v12];
  if ([v6 count])
  {
    v13 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end