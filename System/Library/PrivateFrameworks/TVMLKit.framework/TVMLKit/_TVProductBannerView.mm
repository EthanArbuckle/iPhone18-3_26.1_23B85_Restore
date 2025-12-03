@interface _TVProductBannerView
+ (id)productBannerViewWithElement:(id)element existingView:(id)view;
- (CGSize)sizeThatFits:(CGSize)result;
- (_TVProductBannerView)initWithFrame:(CGRect)frame;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)setBackgroundImageView:(id)view;
- (void)setHeroImageView:(id)view;
- (void)setInfoListView:(id)view;
- (void)setStackView:(id)view;
@end

@implementation _TVProductBannerView

+ (id)productBannerViewWithElement:(id)element existingView:(id)view
{
  v52 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  viewCopy = view;
  style = [elementCopy style];
  [style tv_height];
  v9 = v8;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v12 = v11;

  objc_opt_class();
  v39 = viewCopy;
  if (objc_opt_isKindOfClass())
  {
    v13 = viewCopy;
  }

  else
  {
    v13 = [[_TVProductBannerView alloc] initWithFrame:0.0, 0.0, v12, v9];
  }

  -[_TVProductBannerView setSemanticContentAttribute:](v13, "setSemanticContentAttribute:", [elementCopy tv_semanticContentAttribute]);
  [(_TVProductBannerView *)v13 setFrame:0.0, 0.0, v12, v9];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = elementCopy;
  children = [elementCopy children];
  v15 = [children countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    v18 = 0x279D6D000uLL;
    v41 = children;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(children);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        tv_elementType = [v20 tv_elementType];
        if (tv_elementType > 18)
        {
          switch(tv_elementType)
          {
            case 19:
              sharedInterfaceFactory = [*(v18 + 1176) sharedInterfaceFactory];
              infoListView = [(_TVProductBannerView *)v13 infoListView];
              children2 = [sharedInterfaceFactory _viewFromElement:v20 existingView:infoListView];

              [(_TVProductBannerView *)v13 setInfoListView:children2];
              break;
            case 24:
LABEL_18:
              sharedInterfaceFactory2 = [*(v18 + 1176) sharedInterfaceFactory];
              heroImageView = [(_TVProductBannerView *)v13 heroImageView];
              children2 = [sharedInterfaceFactory2 _viewFromElement:v20 existingView:heroImageView];

              [(_TVProductBannerView *)v13 setHeroImageView:children2];
              break;
            case 54:
              sharedInterfaceFactory3 = [*(v18 + 1176) sharedInterfaceFactory];
              stackView = [(_TVProductBannerView *)v13 stackView];
              children2 = [sharedInterfaceFactory3 _viewFromElement:v20 existingView:stackView];

              [(_TVProductBannerView *)v13 setStackView:children2];
              break;
            default:
              continue;
          }

LABEL_32:

          continue;
        }

        if (tv_elementType == 4)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          children2 = [v20 children];
          v29 = [children2 countByEnumeratingWithState:&v42 objects:v50 count:16];
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
                  objc_enumerationMutation(children2);
                }

                v34 = *(*(&v42 + 1) + 8 * j);
                if ([v34 tv_elementType] == 16 && !objc_msgSend(v34, "tv_imageType"))
                {
                  v18 = v31;
                  sharedInterfaceFactory4 = [*(v31 + 1176) sharedInterfaceFactory];
                  backgroundImageView = [(_TVProductBannerView *)v13 backgroundImageView];
                  v37 = [sharedInterfaceFactory4 _viewFromElement:v34 existingView:backgroundImageView];

                  [(_TVProductBannerView *)v13 setBackgroundImageView:v37];
                  goto LABEL_31;
                }
              }

              v30 = [children2 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v30)
              {
                continue;
              }

              break;
            }

            v18 = v31;
LABEL_31:
            children = v41;
          }

          goto LABEL_32;
        }

        if (tv_elementType == 16 && ([v20 tv_imageType] == 3 || !objc_msgSend(v20, "tv_imageType")))
        {
          goto LABEL_18;
        }
      }

      v16 = [children countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v16);
  }

  return v13;
}

- (_TVProductBannerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  v5.receiver = self;
  v5.super_class = _TVProductBannerView;
  result = [(_TVFocusRedirectView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width];
  if (result)
  {
    result->_height = height;
  }

  return result;
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  stackView = [(_TVProductBannerView *)self stackView];
  if (stackView)
  {
    stackView2 = [(_TVProductBannerView *)self stackView];
    v7[0] = stackView2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)setBackgroundImageView:(id)view
{
  viewCopy = view;
  backgroundImageView = self->_backgroundImageView;
  v8 = viewCopy;
  if (backgroundImageView != viewCopy)
  {
    [(UIView *)backgroundImageView removeFromSuperview];
    objc_storeStrong(&self->_backgroundImageView, view);
    v7 = self->_backgroundImageView;
    if (v7)
    {
      [(_TVProductBannerView *)self insertSubview:v7 atIndex:0];
    }
  }

  [(_TVProductBannerView *)self setNeedsLayout];
}

- (void)setInfoListView:(id)view
{
  viewCopy = view;
  infoListView = self->_infoListView;
  v7 = viewCopy;
  if (infoListView != viewCopy)
  {
    [(UIView *)infoListView removeFromSuperview];
    objc_storeStrong(&self->_infoListView, view);
    if (self->_infoListView)
    {
      [(_TVProductBannerView *)self addSubview:?];
    }
  }

  [(_TVProductBannerView *)self setNeedsLayout];
}

- (void)setStackView:(id)view
{
  viewCopy = view;
  stackView = self->_stackView;
  v7 = viewCopy;
  if (stackView != viewCopy)
  {
    [(UIView *)stackView removeFromSuperview];
    objc_storeStrong(&self->_stackView, view);
    if (self->_stackView)
    {
      [(_TVProductBannerView *)self addSubview:?];
    }
  }

  [(_TVProductBannerView *)self setNeedsLayout];
}

- (void)setHeroImageView:(id)view
{
  viewCopy = view;
  heroImageView = self->_heroImageView;
  v7 = viewCopy;
  if (heroImageView != viewCopy)
  {
    [(UIView *)heroImageView removeFromSuperview];
    objc_storeStrong(&self->_heroImageView, view);
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
  tv_associatedIKViewElement = [(UIView *)self->_heroImageView tv_associatedIKViewElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tv_associatedIKViewElement2 = [(UIView *)self->_heroImageView tv_associatedIKViewElement];
  }

  else
  {
    tv_associatedIKViewElement2 = 0;
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

  [tv_associatedIKViewElement2 width];
  [tv_associatedIKViewElement2 height];
  UIRectCenteredXInRect();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [(UIView *)self->_infoListView setFrame:v18, v45, v20, v22];
  [(UIView *)self->_stackView setFrame:v41, v44, v16, v42];
  [(UIView *)self->_heroImageView setFrame:v33, v35, v37, v39];
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v4 = MEMORY[0x277CBEB18];
  documentCopy = document;
  array = [v4 array];
  infoListView = [(_TVProductBannerView *)self infoListView];
  v8 = [infoListView tv_impressionableElementsForDocument:documentCopy];
  [array addObjectsFromArray:v8];

  stackView = [(_TVProductBannerView *)self stackView];
  v10 = [stackView tv_impressionableElementsForDocument:documentCopy];
  [array addObjectsFromArray:v10];

  heroImageView = [(_TVProductBannerView *)self heroImageView];
  v12 = [heroImageView tv_impressionableElementsForDocument:documentCopy];

  [array addObjectsFromArray:v12];
  if ([array count])
  {
    v13 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end