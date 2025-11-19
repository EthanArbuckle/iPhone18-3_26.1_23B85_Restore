@interface _TVListTemplateView
- (_TVListTemplateView)initWithFrame:(CGRect)a3;
- (id)preferredFocusEnvironments;
- (int64_t)listAlignment;
- (void)adjustScrollForListView:(id)a3;
- (void)layoutSubviews;
- (void)setBackdropEnabled:(BOOL)a3;
- (void)setBannerView:(id)a3;
- (void)setBgImageView:(id)a3;
- (void)setListView:(id)a3;
- (void)setOverlayBlurOffset:(double)a3;
- (void)setPreviewView:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
@end

@implementation _TVListTemplateView

- (_TVListTemplateView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _TVListTemplateView;
  v3 = [(_TVListTemplateView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setSemanticContentAttribute:(int64_t)a3
{
  bannerView = self->_bannerView;
  if (bannerView)
  {
    [(UIView *)bannerView setSemanticContentAttribute:a3];
  }

  bgImageView = self->_bgImageView;
  if (bgImageView)
  {
    [(UIView *)bgImageView setSemanticContentAttribute:a3];
  }

  listView = self->_listView;
  if (listView)
  {
    [(UIView *)listView setSemanticContentAttribute:a3];
  }

  previewView = self->_previewView;
  if (previewView)
  {
    [(UIView *)previewView setSemanticContentAttribute:a3];
  }

  v9.receiver = self;
  v9.super_class = _TVListTemplateView;
  [(_TVListTemplateView *)&v9 setSemanticContentAttribute:a3];
}

- (void)setBgImageView:(id)a3
{
  v5 = a3;
  bgImageView = self->_bgImageView;
  v8 = v5;
  if (bgImageView != v5)
  {
    [(UIView *)bgImageView removeFromSuperview];
    objc_storeStrong(&self->_bgImageView, a3);
    v7 = self->_bgImageView;
    if (v7)
    {
      [(UIView *)v7 setSemanticContentAttribute:[(_TVListTemplateView *)self semanticContentAttribute]];
      [(_TVListTemplateView *)self insertSubview:self->_bgImageView atIndex:0];
    }
  }

  [(_TVListTemplateView *)self setNeedsLayout];
}

- (void)setBannerView:(id)a3
{
  v5 = a3;
  bannerView = self->_bannerView;
  v9 = v5;
  if (bannerView != v5)
  {
    [(UIView *)bannerView removeFromSuperview];
    objc_storeStrong(&self->_bannerView, a3);
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

- (void)setListView:(id)a3
{
  v5 = a3;
  listView = self->_listView;
  v8 = v5;
  if (listView != v5)
  {
    [(UIView *)listView removeFromSuperview];
    objc_storeStrong(&self->_listView, a3);
    v7 = self->_listView;
    if (v7)
    {
      [(UIView *)v7 setSemanticContentAttribute:[(_TVListTemplateView *)self semanticContentAttribute]];
      [(_TVListTemplateView *)self addSubview:self->_listView];
    }
  }

  [(_TVListTemplateView *)self setNeedsLayout];
}

- (void)setPreviewView:(id)a3
{
  v5 = a3;
  previewView = self->_previewView;
  if (previewView != v5)
  {
    v7 = previewView;
    objc_storeStrong(&self->_previewView, a3);
    [(UIView *)v5 setAlpha:0.0];
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

- (void)setBackdropEnabled:(BOOL)a3
{
  if (self->_backdropEnabled != a3)
  {
    self->_backdropEnabled = a3;
    backdropView = self->_backdropView;
    if (a3)
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

- (void)setOverlayBlurOffset:(double)a3
{
  self->_bgVisualEffectOffset = a3;
  bgVisualEffectView = self->_bgVisualEffectView;
  if (a3 == 0.0)
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

- (void)adjustScrollForListView:(id)a3
{
  if (!self->_floatingBanner)
  {
    bannerView = self->_bannerView;
    v6 = a3;
    [(UIView *)bannerView tv_margin];
    v8 = v7;
    [(UIView *)self->_bannerView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 contentOffset];
    v16 = v15;
    [v6 contentInset];
    v18 = v17;

    v19 = self->_bannerView;

    [(UIView *)v19 setFrame:v10, v8 - (v16 + v18), v12, v14];
  }
}

- (int64_t)listAlignment
{
  v2 = [(_TVListTemplateView *)self listView];
  v3 = [v2 tv_alignment];

  if ((v3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return v3;
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
  v6 = [(_TVListTemplateView *)self bannerView];
  [v6 tv_margin];
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

  v18 = [(_TVListTemplateView *)self bannerView];
  [v18 sizeThatFits:{v17, 0.0}];
  v20 = v19;

  if (!self->_floatingBanner)
  {
    v21 = [(_TVListTemplateView *)self listView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [(_TVListTemplateView *)self listView];
      v24 = [v23 collectionView];

      [v24 contentOffset];
      v26 = v25;
      [v24 contentInset];
      v14 = v8 - (v26 + v27);
    }
  }

  v28 = [(_TVListTemplateView *)self bannerView];
  [v28 setFrame:{v10, v14, v17, v20}];

  v29 = [(_TVListTemplateView *)self listView];
  [v29 tv_margin];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = [(_TVListTemplateView *)self listAlignment];
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
  v44 = [(_TVListTemplateView *)self listView];
  [v44 tv_itemWidth];
  Width = v45;

  if (Width == 0.0)
  {
    [(_TVListTemplateView *)self bounds];
    Width = CGRectGetWidth(v118);
  }

  v109 = v113 - Width - v37;
  if (v38 == 1)
  {
    v47 = v33;
  }

  else
  {
    v47 = v113 - Width - v37;
  }

  v48 = [(_TVListTemplateView *)self listView];
  v107 = v47;
  v110 = Width;
  [v48 setFrame:{v47, v42, Width, v43}];

  v49 = [(UIVisualEffectView *)self->_backdropView layer];
  [v49 setCornerRadius:40.0];

  v50 = [(UIVisualEffectView *)self->_backdropView layer];
  [v50 setMasksToBounds:1];

  v111 = v37;
  if (v38 == 3)
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

  if (v38 == 1)
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
  v55 = [(_TVListTemplateView *)self previewView];
  [v55 tv_margin];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v64 = [(_TVListTemplateView *)self previewView];
  [v64 tv_itemWidth];
  v66 = v65;

  v67 = self->_bgVisualEffectOffset;
  v68 = v112 + v57;
  if (v67 != 0.0)
  {
    v68 = v57;
  }

  v69 = v113 - (v63 + v33 + Width + fmax(v111, v59));
  v114 = fmax(v63, v33);
  if (v38 == 3)
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

  v74 = [(_TVListTemplateView *)self previewView];
  v75 = v74;
  if (v66 >= v70 || v66 <= 0.0)
  {
    v77 = v70;
  }

  else
  {
    v77 = v66;
  }

  [v74 sizeThatFits:{v77, 0.0}];
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
    v86 = [(_TVListTemplateView *)self previewView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [(_TVListTemplateView *)self previewView];
      v88 = [v87 collectionView];
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

  v90 = [(_TVListTemplateView *)self previewView];
  v91 = [v90 tv_alignment];

  if (v91 == 2)
  {
    v92 = (v70 - v83) * 0.5;
    v93 = floorf(v92);
    if (v38 == 3)
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
    if (v38 != 3)
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

  v96 = [(_TVListTemplateView *)self previewView];
  [v96 setFrame:{v59, v71, v83, v85}];

  [(UIFocusContainerGuide *)self->_previewFocusGuide _setManualLayoutFrame:v59, 0.0, v83, v115];
  v97 = [(_TVListTemplateView *)self listView];

  if (v97)
  {
    v98 = self->_backdropView;
    if (v98)
    {
      v99 = [(UIVisualEffectView *)v98 superview];

      if (v99 != self)
      {
        v100 = self->_backdropView;
        v101 = [(_TVListTemplateView *)self listView];
        [(_TVListTemplateView *)self insertSubview:v100 belowSubview:v101];
      }
    }

    previewView = self->_previewView;
    if (previewView)
    {
      v103 = [(UIView *)previewView superview];

      if (v103 != self)
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