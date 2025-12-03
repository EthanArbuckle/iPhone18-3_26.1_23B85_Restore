@interface _TVListTemplateView
- (_TVListTemplateView)initWithFrame:(CGRect)frame;
- (id)preferredFocusEnvironments;
- (int64_t)listAlignment;
- (void)adjustScrollForListView:(id)view;
- (void)layoutSubviews;
- (void)setBackdropEnabled:(BOOL)enabled;
- (void)setBannerView:(id)view;
- (void)setBgImageView:(id)view;
- (void)setListView:(id)view;
- (void)setOverlayBlurOffset:(double)offset;
- (void)setPreviewView:(id)view;
- (void)setSemanticContentAttribute:(int64_t)attribute;
@end

@implementation _TVListTemplateView

- (_TVListTemplateView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _TVListTemplateView;
  v3 = [(_TVListTemplateView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D754F8]);
    previewFocusGuide = v3->_previewFocusGuide;
    v3->_previewFocusGuide = v4;

    [(_TVListTemplateView *)v3 addLayoutGuide:v3->_previewFocusGuide];
    v6 = objc_alloc_init(MEMORY[0x277D754F8]);
    overallFocusGuide = v3->_overallFocusGuide;
    v3->_overallFocusGuide = v6;

    [(_TVListTemplateView *)v3 addLayoutGuide:v3->_overallFocusGuide];
    v3->_floatingBanner = 1;
  }

  return v3;
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  bannerView = self->_bannerView;
  if (bannerView)
  {
    [(UIView *)bannerView setSemanticContentAttribute:attribute];
  }

  bgImageView = self->_bgImageView;
  if (bgImageView)
  {
    [(UIView *)bgImageView setSemanticContentAttribute:attribute];
  }

  listView = self->_listView;
  if (listView)
  {
    [(UIView *)listView setSemanticContentAttribute:attribute];
  }

  previewView = self->_previewView;
  if (previewView)
  {
    [(UIView *)previewView setSemanticContentAttribute:attribute];
  }

  v9.receiver = self;
  v9.super_class = _TVListTemplateView;
  [(_TVListTemplateView *)&v9 setSemanticContentAttribute:attribute];
}

- (void)setBgImageView:(id)view
{
  viewCopy = view;
  bgImageView = self->_bgImageView;
  v8 = viewCopy;
  if (bgImageView != viewCopy)
  {
    [(UIView *)bgImageView removeFromSuperview];
    objc_storeStrong(&self->_bgImageView, view);
    v7 = self->_bgImageView;
    if (v7)
    {
      [(UIView *)v7 setSemanticContentAttribute:[(_TVListTemplateView *)self semanticContentAttribute]];
      [(_TVListTemplateView *)self insertSubview:self->_bgImageView atIndex:0];
    }
  }

  [(_TVListTemplateView *)self setNeedsLayout];
}

- (void)setBannerView:(id)view
{
  viewCopy = view;
  bannerView = self->_bannerView;
  v9 = viewCopy;
  if (bannerView != viewCopy)
  {
    [(UIView *)bannerView removeFromSuperview];
    objc_storeStrong(&self->_bannerView, view);
    v7 = self->_bannerView;
    if (v7)
    {
      [(UIView *)v7 setSemanticContentAttribute:[(_TVListTemplateView *)self semanticContentAttribute]];
      v8 = self->_bannerView;
      if (self->_bgImageView)
      {
        [(_TVListTemplateView *)self insertSubview:v8 aboveSubview:?];
      }

      else
      {
        [(_TVListTemplateView *)self insertSubview:v8 atIndex:?];
      }
    }
  }

  [(_TVListTemplateView *)self setNeedsLayout];
}

- (void)setListView:(id)view
{
  viewCopy = view;
  listView = self->_listView;
  v8 = viewCopy;
  if (listView != viewCopy)
  {
    [(UIView *)listView removeFromSuperview];
    objc_storeStrong(&self->_listView, view);
    v7 = self->_listView;
    if (v7)
    {
      [(UIView *)v7 setSemanticContentAttribute:[(_TVListTemplateView *)self semanticContentAttribute]];
      [(_TVListTemplateView *)self addSubview:self->_listView];
    }
  }

  [(_TVListTemplateView *)self setNeedsLayout];
}

- (void)setPreviewView:(id)view
{
  viewCopy = view;
  previewView = self->_previewView;
  if (previewView != viewCopy)
  {
    v7 = previewView;
    objc_storeStrong(&self->_previewView, view);
    [(UIView *)viewCopy setAlpha:0.0];
    v8 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38___TVListTemplateView_setPreviewView___block_invoke;
    v16[3] = &unk_279D6E7F8;
    v17 = v7;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38___TVListTemplateView_setPreviewView___block_invoke_2;
    v14 = &unk_279D6EBD0;
    v9 = v17;
    v15 = v9;
    [v8 animateWithDuration:v16 animations:&v11 completion:0.2];
    v10 = self->_previewView;
    if (v10)
    {
      [(UIView *)v10 setSemanticContentAttribute:[(_TVListTemplateView *)self semanticContentAttribute:v11]];
    }
  }

  [(_TVListTemplateView *)self setNeedsLayout:v11];
}

- (void)setBackdropEnabled:(BOOL)enabled
{
  if (self->_backdropEnabled != enabled)
  {
    self->_backdropEnabled = enabled;
    backdropView = self->_backdropView;
    if (enabled)
    {
      if (!backdropView)
      {
        v5 = objc_alloc(MEMORY[0x277D75D68]);
        v6 = [MEMORY[0x277D75210] effectWithStyle:5003];
        v7 = [v5 initWithEffect:v6];
        v8 = self->_backdropView;
        self->_backdropView = v7;
      }

      [(_TVListTemplateView *)self setNeedsLayout];
    }

    else
    {
      [(UIVisualEffectView *)backdropView removeFromSuperview];
      v9 = self->_backdropView;
      self->_backdropView = 0;
    }
  }
}

- (void)setOverlayBlurOffset:(double)offset
{
  self->_bgVisualEffectOffset = offset;
  bgVisualEffectView = self->_bgVisualEffectView;
  if (offset == 0.0)
  {
    [(UIVisualEffectView *)bgVisualEffectView removeFromSuperview];
    v10 = self->_bgVisualEffectView;
    self->_bgVisualEffectView = 0;
  }

  else
  {
    if (!bgVisualEffectView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D68]);
      v6 = [MEMORY[0x277D75210] effectWithStyle:5000];
      v7 = [v5 initWithEffect:v6];
      v8 = self->_bgVisualEffectView;
      self->_bgVisualEffectView = v7;

      v9 = self->_bgVisualEffectView;
      if (self->_bgImageView)
      {
        [(_TVListTemplateView *)self insertSubview:v9 aboveSubview:?];
      }

      else
      {
        [(_TVListTemplateView *)self insertSubview:v9 atIndex:?];
      }
    }

    [(_TVListTemplateView *)self bounds];
    v11 = self->_bgVisualEffectView;

    [(UIVisualEffectView *)v11 setFrame:?];
  }
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_listView)
  {
    v4[0] = self->_listView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)adjustScrollForListView:(id)view
{
  if (!self->_floatingBanner)
  {
    bannerView = self->_bannerView;
    viewCopy = view;
    [(UIView *)bannerView tv_margin];
    v8 = v7;
    [(UIView *)self->_bannerView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [viewCopy contentOffset];
    v16 = v15;
    [viewCopy contentInset];
    v18 = v17;

    v19 = self->_bannerView;

    [(UIView *)v19 setFrame:v10, v8 - (v16 + v18), v12, v14];
  }
}

- (int64_t)listAlignment
{
  listView = [(_TVListTemplateView *)self listView];
  tv_alignment = [listView tv_alignment];

  if ((tv_alignment & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return tv_alignment;
  }

  else
  {
    return 3;
  }
}

- (void)layoutSubviews
{
  v117.receiver = self;
  v117.super_class = _TVListTemplateView;
  [(_TVListTemplateView *)&v117 layoutSubviews];
  [(_TVListTemplateView *)self bounds];
  v4 = v3;
  v115 = v5;
  bannerView = [(_TVListTemplateView *)self bannerView];
  [bannerView tv_margin];
  v8 = v7;
  v10 = v9;
  v112 = v11;
  v13 = v12;
  v14 = v7;

  bgImageView = self->_bgImageView;
  [(_TVListTemplateView *)self bounds];
  [(UIView *)bgImageView setFrame:?];
  overallFocusGuide = self->_overallFocusGuide;
  [(_TVListTemplateView *)self bounds];
  [(UIFocusContainerGuide *)overallFocusGuide _setManualLayoutFrame:?];
  v113 = v4;
  if (v4 - (v10 + v13) >= 0.0)
  {
    v17 = v4 - (v10 + v13);
  }

  else
  {
    v17 = 0.0;
  }

  bannerView2 = [(_TVListTemplateView *)self bannerView];
  [bannerView2 sizeThatFits:{v17, 0.0}];
  v20 = v19;

  if (!self->_floatingBanner)
  {
    listView = [(_TVListTemplateView *)self listView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      listView2 = [(_TVListTemplateView *)self listView];
      collectionView = [listView2 collectionView];

      [collectionView contentOffset];
      v26 = v25;
      [collectionView contentInset];
      v14 = v8 - (v26 + v27);
    }
  }

  bannerView3 = [(_TVListTemplateView *)self bannerView];
  [bannerView3 setFrame:{v10, v14, v17, v20}];

  listView3 = [(_TVListTemplateView *)self listView];
  [listView3 tv_margin];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  listAlignment = [(_TVListTemplateView *)self listAlignment];
  bgVisualEffectOffset = self->_bgVisualEffectOffset;
  if (bgVisualEffectOffset == 0.0)
  {
    v31 = v112 + v31;
  }

  v108 = v8 + v20;
  if (bgVisualEffectOffset == 0.0)
  {
    v40 = v8 + v20;
  }

  else
  {
    v40 = self->_bgVisualEffectOffset;
  }

  if ([(_TVListTemplateView *)self shouldAdjustListForTabBar])
  {
    [(_TVListTemplateView *)self safeAreaInsets];
    v42 = v41 + 17.0;
  }

  else
  {
    v42 = v40 + v31;
  }

  v43 = v115 - (v35 + v42);
  listView4 = [(_TVListTemplateView *)self listView];
  [listView4 tv_itemWidth];
  Width = v45;

  if (Width == 0.0)
  {
    [(_TVListTemplateView *)self bounds];
    Width = CGRectGetWidth(v118);
  }

  v109 = v113 - Width - v37;
  if (listAlignment == 1)
  {
    v47 = v33;
  }

  else
  {
    v47 = v113 - Width - v37;
  }

  listView5 = [(_TVListTemplateView *)self listView];
  v107 = v47;
  v110 = Width;
  [listView5 setFrame:{v47, v42, Width, v43}];

  layer = [(UIVisualEffectView *)self->_backdropView layer];
  [layer setCornerRadius:40.0];

  layer2 = [(UIVisualEffectView *)self->_backdropView layer];
  [layer2 setMasksToBounds:1];

  v111 = v37;
  if (listAlignment == 3)
  {
    [(UIView *)self->_listView frame];
    MinX = CGRectGetMinX(v119) - v33;
    backdropView = self->_backdropView;
    v53 = v113 - MinX - v37;
LABEL_24:
    [(UIVisualEffectView *)backdropView setFrame:MinX, v42, v53, v115 - v42 - v106];
    v54 = 0;
    goto LABEL_26;
  }

  if (listAlignment == 1)
  {
    [(UIView *)self->_listView frame];
    MinX = CGRectGetMinX(v120);
    backdropView = self->_backdropView;
    [(UIView *)self->_listView frame];
    v53 = v37 + CGRectGetMaxX(v121) - v33;
    goto LABEL_24;
  }

  v54 = 1;
LABEL_26:
  [(UIVisualEffectView *)self->_backdropView setHidden:v54];
  previewView = [(_TVListTemplateView *)self previewView];
  [previewView tv_margin];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  previewView2 = [(_TVListTemplateView *)self previewView];
  [previewView2 tv_itemWidth];
  v66 = v65;

  v67 = self->_bgVisualEffectOffset;
  v68 = v112 + v57;
  if (v67 != 0.0)
  {
    v68 = v57;
  }

  v69 = v113 - (v63 + v33 + Width + fmax(v111, v59));
  v114 = fmax(v63, v33);
  if (listAlignment == 3)
  {
    v70 = v109 - (v59 + v114);
  }

  else
  {
    v70 = v69;
  }

  if (v67 == 0.0)
  {
    v67 = v108;
  }

  v71 = v67 + v68;
  v72 = v115 - (v61 + v67 + v68);
  if (v72 > 0.0)
  {
    v73 = v72;
  }

  else
  {
    v73 = 0.0;
  }

  previewView3 = [(_TVListTemplateView *)self previewView];
  v75 = previewView3;
  if (v66 >= v70 || v66 <= 0.0)
  {
    v77 = v70;
  }

  else
  {
    v77 = v66;
  }

  [previewView3 sizeThatFits:{v77, 0.0}];
  v79 = v78;
  v81 = v80;

  v82 = fmin(v79, v70);
  if (v79 > 0.0)
  {
    v83 = v82;
  }

  else
  {
    v83 = v70;
  }

  v84 = fmin(v81, v73);
  if (v81 > 0.0)
  {
    v85 = v84;
  }

  else
  {
    v85 = v73;
  }

  if (v85 < v73)
  {
    previewView4 = [(_TVListTemplateView *)self previewView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      previewView5 = [(_TVListTemplateView *)self previewView];
      collectionView2 = [previewView5 collectionView];
      objc_opt_class();
      v89 = objc_opt_isKindOfClass();

      if (v89)
      {
        v85 = v73;
      }
    }

    else
    {
    }
  }

  previewView6 = [(_TVListTemplateView *)self previewView];
  tv_alignment = [previewView6 tv_alignment];

  if (tv_alignment == 2)
  {
    v92 = (v70 - v83) * 0.5;
    v93 = floorf(v92);
    if (listAlignment == 3)
    {
      v59 = v109 - v83 - v114 - v93;
    }

    else
    {
      v59 = v110 + v107 + fmax(v59, v111) + v93;
    }
  }

  else
  {
    v94 = fmax(v59, v111);
    if (listAlignment != 3)
    {
      v59 = v110 + v107 + v94;
    }
  }

  if ([(_TVListTemplateView *)self shouldAdjustPreviewForTabBar])
  {
    [(_TVListTemplateView *)self safeAreaInsets];
    if (v71 < v95)
    {
      v71 = v95;
    }

    v85 = v85 - v71;
  }

  previewView7 = [(_TVListTemplateView *)self previewView];
  [previewView7 setFrame:{v59, v71, v83, v85}];

  [(UIFocusContainerGuide *)self->_previewFocusGuide _setManualLayoutFrame:v59, 0.0, v83, v115];
  listView6 = [(_TVListTemplateView *)self listView];

  if (listView6)
  {
    v98 = self->_backdropView;
    if (v98)
    {
      superview = [(UIVisualEffectView *)v98 superview];

      if (superview != self)
      {
        v100 = self->_backdropView;
        listView7 = [(_TVListTemplateView *)self listView];
        [(_TVListTemplateView *)self insertSubview:v100 belowSubview:listView7];
      }
    }

    previewView = self->_previewView;
    if (previewView)
    {
      superview2 = [(UIView *)previewView superview];

      if (superview2 != self)
      {
        v104 = self->_previewView;
        if (self->_backdropView)
        {
          [(_TVListTemplateView *)self insertSubview:v104 belowSubview:?];
        }

        else
        {
          [(_TVListTemplateView *)self insertSubview:v104 above:self->_listView];
        }

        [(UIView *)self->_previewView alpha];
        if (v105 < 1.0)
        {
          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __37___TVListTemplateView_layoutSubviews__block_invoke;
          v116[3] = &unk_279D6E7F8;
          v116[4] = self;
          [MEMORY[0x277D75D18] animateWithDuration:6 delay:v116 options:0 animations:0.2 completion:0.0];
        }
      }
    }
  }
}

@end