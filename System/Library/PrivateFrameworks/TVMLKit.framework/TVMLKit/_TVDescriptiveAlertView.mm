@interface _TVDescriptiveAlertView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)preferredFocusEnvironments;
- (void)_scrollDown:(id)down;
- (void)_scrollInDirection:(double)direction;
- (void)_scrollUp:(id)up;
- (void)_setupGestureRecognizers;
- (void)layoutSubviews;
- (void)setBgImage:(id)image;
- (void)setChildViews:(id)views;
@end

@implementation _TVDescriptiveAlertView

- (void)setBgImage:(id)image
{
  imageCopy = image;
  if (self->_bgImage != imageCopy)
  {
    bgImageView = self->_bgImageView;
    if (imageCopy)
    {
      if (bgImageView)
      {
LABEL_8:
        [(UIImageView *)bgImageView setImage:imageCopy];
        goto LABEL_9;
      }
    }

    else if (bgImageView)
    {
      [(UIImageView *)bgImageView removeFromSuperview];
      v6 = self->_bgImageView;
      self->_bgImageView = 0;

      goto LABEL_9;
    }

    v7 = objc_alloc(MEMORY[0x277D755E8]);
    [(_TVDescriptiveAlertView *)self bounds];
    v8 = [v7 initWithFrame:?];
    [(_TVDescriptiveAlertView *)self addSubview:v8];
    [(_TVDescriptiveAlertView *)self sendSubviewToBack:v8];
    v9 = self->_bgImageView;
    self->_bgImageView = v8;

    bgImageView = self->_bgImageView;
    goto LABEL_8;
  }

LABEL_9:
  bgImage = self->_bgImage;
  self->_bgImage = imageCopy;
}

- (void)setChildViews:(id)views
{
  v52 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v44 = [(NSArray *)self->_childViews mutableCopy];
  window = [(_TVDescriptiveAlertView *)self window];
  screen = [window screen];
  focusedView = [screen focusedView];

  if (![(UIView *)focusedView isDescendantOfView:self])
  {

    focusedView = 0;
  }

  v8 = [viewsCopy copy];
  childViews = self->_childViews;
  self->_childViews = v8;

  scrollView = self->_scrollView;
  self->_scrollView = 0;

  defaultFocusView = self->_defaultFocusView;
  self->_defaultFocusView = 0;

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = self->_childViews;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
  v14 = v13 == 0;
  if (!v13)
  {
    v17 = 0;
    v32 = 0;
LABEL_35:

    goto LABEL_37;
  }

  v15 = v13;
  v40 = v13 == 0;
  v41 = viewsCopy;
  v16 = 0;
  v17 = 0;
  obj = v12;
  v46 = *v48;
  v18 = v42;
  do
  {
    v19 = 0;
    v20 = v17;
    do
    {
      if (*v48 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v47 + 1) + 8 * v19);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_scrollView, v21);
      }

      else
      {
        if (self->_scrollView)
        {
          v22 = v43;
        }

        else
        {
          v22 = v18;
        }

        [v22 addObject:v21];
      }

      if (!self->_defaultFocusView)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([v21 canBecomeFocused])
          {
            goto LABEL_19;
          }

          preferredFocusEnvironments = [v21 preferredFocusEnvironments];
          if ([preferredFocusEnvironments count])
          {
            preferredFocusEnvironments2 = [v21 preferredFocusEnvironments];
            firstObject = [preferredFocusEnvironments2 firstObject];

            v26 = firstObject == v21;
            v18 = v42;
            if (v26)
            {
              goto LABEL_21;
            }

LABEL_19:
            v27 = v21;
            preferredFocusEnvironments = self->_defaultFocusView;
            self->_defaultFocusView = v27;
          }
        }
      }

LABEL_21:
      tv_associatedIKViewElement = [v21 tv_associatedIKViewElement];
      autoHighlightIdentifier = [tv_associatedIKViewElement autoHighlightIdentifier];

      if (autoHighlightIdentifier)
      {
        if (!v16)
        {
          v16 = v21;
        }

        tv_associatedIKViewElement2 = [v21 tv_associatedIKViewElement];
        [tv_associatedIKViewElement2 resetProperty:2];
      }

      superview = [v21 superview];

      if (superview == self)
      {
        [v44 removeObject:v21];
      }

      if (v20)
      {
        [(_TVDescriptiveAlertView *)self insertSubview:v21 above:v20];
      }

      else
      {
        [(_TVDescriptiveAlertView *)self insertSubview:v21 atIndex:0];
      }

      v17 = v21;

      ++v19;
      v20 = v17;
    }

    while (v15 != v19);
    v15 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v15);

  if (v16)
  {
    v32 = v16;
    v12 = self->_defaultFocusView;
    self->_defaultFocusView = v32;
    viewsCopy = v41;
    v14 = v40;
    goto LABEL_35;
  }

  v32 = 0;
  v14 = 1;
  viewsCopy = v41;
LABEL_37:
  v33 = [v42 copy];
  viewsAboveScrollView = self->_viewsAboveScrollView;
  self->_viewsAboveScrollView = v33;

  v35 = [v43 copy];
  viewsBelowScrollView = self->_viewsBelowScrollView;
  self->_viewsBelowScrollView = v35;

  [v44 makeObjectsPerformSelector:sel_removeFromSuperview];
  if ([(UIView *)focusedView isDescendantOfView:self])
  {
    if (v14)
    {
      v37 = focusedView;
    }

    else
    {
      v37 = v32;
    }

    objc_storeStrong(&self->_defaultFocusView, v37);
  }

  [(_TVDescriptiveAlertView *)self bounds];
  [(_TVDescriptiveAlertView *)self sizeThatFits:CGRectGetWidth(v53), 0.0];
  v39 = v38;
  [(_TVDescriptiveAlertView *)self bounds];
  if (v39 >= CGRectGetHeight(v54))
  {
    [(_TVDescriptiveAlertView *)self _setupGestureRecognizers];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(UIScrollView *)self->_scrollView _setGradientMaskInsets:90.0, 0.0, 90.0, 0.0];
      [(UIScrollView *)self->_scrollView setContentInset:0.0, 0.0, 90.0, 0.0];
    }
  }

  else
  {
    self->_isCenteredLayout = 1;
    [(UIScrollView *)self->_scrollView setBounces:0];
    [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  }
}

- (void)_setupGestureRecognizers
{
  scrollView = self->_scrollView;
  if (scrollView)
  {
    panGestureRecognizer = [(UIScrollView *)scrollView panGestureRecognizer];
    [panGestureRecognizer setAllowedTouchTypes:&unk_287E48738];

    panGestureRecognizer2 = [(UIScrollView *)self->_scrollView panGestureRecognizer];
    [panGestureRecognizer2 _setHysteresis:240.0];

    panGestureRecognizer3 = [(UIScrollView *)self->_scrollView panGestureRecognizer];
    [(_TVDescriptiveAlertView *)self addGestureRecognizer:panGestureRecognizer3];

    v7 = [objc_alloc(MEMORY[0x277D761B0]) initWithTarget:self action:sel__scrollUp_];
    upButtonGesture = self->_upButtonGesture;
    self->_upButtonGesture = v7;

    [(_UIRepeatingPressGestureRecognizer *)self->_upButtonGesture setAllowedPressTypes:&unk_287E48750];
    [(_TVDescriptiveAlertView *)self addGestureRecognizer:self->_upButtonGesture];
    v9 = [objc_alloc(MEMORY[0x277D761B0]) initWithTarget:self action:sel__scrollDown_];
    downButtonGesture = self->_downButtonGesture;
    self->_downButtonGesture = v9;

    [(_UIRepeatingPressGestureRecognizer *)self->_downButtonGesture setAllowedPressTypes:&unk_287E48768];
    v11 = self->_downButtonGesture;

    [(_TVDescriptiveAlertView *)self addGestureRecognizer:v11];
  }
}

- (void)_scrollUp:(id)up
{
  state = [up state];
  if (state == 2)
  {
    if (!self->_waiting)
    {
      [(_TVDescriptiveAlertView *)self performSelector:sel__scrollUp withObject:0 afterDelay:0.3];
    }

    self->_waiting = 1;
  }

  else if (state == 1)
  {

    [(_TVDescriptiveAlertView *)self _scrollUp];
  }

  else
  {
    self->_waiting = 0;
  }
}

- (void)_scrollDown:(id)down
{
  state = [down state];
  if (state == 2)
  {
    if (!self->_waiting)
    {
      [(_TVDescriptiveAlertView *)self performSelector:sel__scrollDown withObject:0 afterDelay:0.3];
    }

    self->_waiting = 1;
  }

  else if (state == 1)
  {

    [(_TVDescriptiveAlertView *)self _scrollDown];
  }

  else
  {
    self->_waiting = 0;
  }
}

- (void)_scrollInDirection:(double)direction
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self->_scrollView frame];
  v9 = CGRectGetHeight(v18) * 0.85;
  [(UIScrollView *)self->_scrollView contentSize];
  v11 = v10;
  [(UIScrollView *)self->_scrollView contentInset];
  v13 = v8 + direction * (v9 * 0.5);
  v15 = -v14;
  if (v13 >= -v14)
  {
    v15 = v8 + direction * (v9 * 0.5);
    if (v13 > v11 - v9)
    {
      v15 = v11 - v9 + v12;
    }
  }

  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentOffset:1 animated:v6, v15];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  [(_TVDescriptiveAlertView *)self layoutBelowIfNeeded];
  if (self->_defaultFocusView)
  {
    v5[0] = self->_defaultFocusView;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)layoutSubviews
{
  v142 = *MEMORY[0x277D85DE8];
  if (self->_bgImageView)
  {
    [(_TVDescriptiveAlertView *)self sendSubviewToBack:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIScrollView *)self->_scrollView setTextAlignment:4];
  }

  [(_TVDescriptiveAlertView *)self bounds];
  Width = CGRectGetWidth(v143);
  if (self->_isCenteredLayout)
  {
    v134 = 0uLL;
    v135 = 0uLL;
    v132 = 0uLL;
    v133 = 0uLL;
    v4 = self->_viewsAboveScrollView;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v132 objects:v141 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v133;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (*v133 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v132 + 1) + 8 * v10);
          [v12 tv_margin];
          v14 = v13;
          v9 = v15;
          [v12 tv_sizeThatFits:{Width, 0.0}];
          v17 = v16;
          v19 = v18;
          v20 = floor((Width - v16) * 0.5);
          v21 = [(NSArray *)self->_viewsAboveScrollView indexOfObject:v12];
          v22 = fmax(v14, v11);
          if (!v21)
          {
            v22 = 0.0;
          }

          v23 = v8 + v22;
          [v12 setFrame:{v20, v8 + v22, v17, v19}];
          v8 = v19 + v23;
          ++v10;
          v11 = v9;
        }

        while (v6 != v10);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v132 objects:v141 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    [(UIScrollView *)self->_scrollView tv_margin];
    v63 = v62;
    v65 = v64;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    scrollView = self->_scrollView;
    if (isKindOfClass)
    {
      [(UIScrollView *)self->_scrollView tv_itemWidth];
      [(UIScrollView *)scrollView sizeThatFits:?];
    }

    else
    {
      [(UIScrollView *)self->_scrollView contentSize];
    }

    v70 = v68;
    v71 = v69;
    v72 = fmax(v9, v63);
    if (v8 == 0.0)
    {
      v72 = 0.0;
    }

    v73 = v8 + v72;
    v74 = (Width - v70) * 0.5;
    [(UIScrollView *)self->_scrollView setFrame:floorf(v74), v73, v70, v69];
    v75 = v73 + v71;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v76 = self->_viewsBelowScrollView;
    v77 = [(NSArray *)v76 countByEnumeratingWithState:&v128 objects:v140 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v129;
      do
      {
        v80 = 0;
        v81 = v65;
        do
        {
          if (*v129 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v82 = *(*(&v128 + 1) + 8 * v80);
          [v82 tv_margin];
          v84 = v83;
          v65 = v85;
          [v82 tv_sizeThatFits:{Width, 0.0}];
          v87 = v86;
          v89 = v88;
          v90 = v75 + fmax(v84, v81);
          *&v86 = (Width - v86) * 0.5;
          [v82 setFrame:{floorf(*&v86), v90, v87, v88}];
          v75 = v89 + v90;
          ++v80;
          v81 = v65;
        }

        while (v78 != v80);
        v78 = [(NSArray *)v76 countByEnumeratingWithState:&v128 objects:v140 count:16];
      }

      while (v78);
    }

    tv_contentAlignment = [(UIView *)self tv_contentAlignment];
    if (tv_contentAlignment == 3)
    {
      lastObject = [(NSArray *)self->_viewsBelowScrollView lastObject];
      v97 = lastObject;
      if (lastObject || (v97 = self->_scrollView) != 0)
      {
        lastObject2 = v97;
      }

      else
      {
        lastObject2 = [(NSArray *)self->_viewsAboveScrollView lastObject];
      }

      v99 = lastObject2;

      [(_TVDescriptiveAlertView *)self bounds];
      CGRectGetHeight(v145);
      [(UIScrollView *)v99 tv_margin];
    }

    else if (tv_contentAlignment == 1)
    {
      firstObject = [(NSArray *)self->_viewsAboveScrollView firstObject];
      v93 = firstObject;
      if (firstObject || (v93 = self->_scrollView) != 0)
      {
        firstObject2 = v93;
      }

      else
      {
        firstObject2 = [(NSArray *)self->_viewsBelowScrollView firstObject];
      }

      v95 = firstObject2;

      [(UIScrollView *)v95 tv_margin];
    }

    else
    {
      [(_TVDescriptiveAlertView *)self bounds];
      CGRectGetHeight(v146);
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v100 = self->_viewsAboveScrollView;
    v101 = [(NSArray *)v100 countByEnumeratingWithState:&v124 objects:v139 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v125;
      do
      {
        for (i = 0; i != v102; ++i)
        {
          if (*v125 != v103)
          {
            objc_enumerationMutation(v100);
          }

          v105 = *(*(&v124 + 1) + 8 * i);
          [v105 frame];
          [v105 setFrame:?];
        }

        v102 = [(NSArray *)v100 countByEnumeratingWithState:&v124 objects:v139 count:16];
      }

      while (v102);
    }

    [(UIScrollView *)self->_scrollView frame];
    [(UIScrollView *)self->_scrollView setFrame:?];
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v106 = self->_viewsBelowScrollView;
    v107 = [(NSArray *)v106 countByEnumeratingWithState:&v120 objects:v138 count:16];
    if (v107)
    {
      v108 = v107;
      v109 = *v121;
      do
      {
        for (j = 0; j != v108; ++j)
        {
          if (*v121 != v109)
          {
            objc_enumerationMutation(v106);
          }

          v111 = *(*(&v120 + 1) + 8 * j);
          [v111 frame];
          [v111 setFrame:?];
        }

        v108 = [(NSArray *)v106 countByEnumeratingWithState:&v120 objects:v138 count:16];
      }

      while (v108);
    }
  }

  else
  {
    v118 = 0uLL;
    v119 = 0uLL;
    v116 = 0uLL;
    v117 = 0uLL;
    v24 = self->_viewsAboveScrollView;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v116 objects:v137 count:16];
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    if (v25)
    {
      v29 = v25;
      v30 = *v117;
      do
      {
        v31 = 0;
        v32 = v27;
        do
        {
          if (*v117 != v30)
          {
            objc_enumerationMutation(v24);
          }

          v33 = *(*(&v116 + 1) + 8 * v31);
          [v33 tv_margin];
          v35 = v34;
          v27 = v36;
          [v33 tv_sizeThatFits:{Width, 0.0}];
          v38 = v37;
          v39 = v28 + fmax(v35, v32);
          [v33 setFrame:{floor((Width - v40) * 0.5), v39, v40, v37}];
          v28 = v38 + v39;
          ++v31;
          v32 = v27;
        }

        while (v29 != v31);
        v29 = [(NSArray *)v24 countByEnumeratingWithState:&v116 objects:v137 count:16];
      }

      while (v29);
    }

    [(_TVDescriptiveAlertView *)self bounds];
    Height = CGRectGetHeight(v144);
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    reverseObjectEnumerator = [(NSArray *)self->_viewsBelowScrollView reverseObjectEnumerator];
    v43 = [reverseObjectEnumerator countByEnumeratingWithState:&v112 objects:v136 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v113;
      v26 = 0.0;
      do
      {
        v46 = 0;
        v47 = v26;
        do
        {
          if (*v113 != v45)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v48 = *(*(&v112 + 1) + 8 * v46);
          [v48 tv_margin];
          v26 = v49;
          v51 = v50;
          [v48 tv_sizeThatFits:{Width, 0.0}];
          v53 = v52;
          Height = Height - (fmax(v47, v51) + v54);
          *&v52 = (Width - v52) * 0.5;
          [v48 setFrame:{floorf(*&v52), Height, v53, v54}];
          ++v46;
          v47 = v26;
        }

        while (v44 != v46);
        v44 = [reverseObjectEnumerator countByEnumeratingWithState:&v112 objects:v136 count:16];
      }

      while (v44);
    }

    [(UIScrollView *)self->_scrollView tv_margin];
    v56 = fmax(v55, v27);
    v58 = Height - v28 - v56 - fmax(v57, v26);
    [(UIScrollView *)self->_scrollView tv_itemWidth];
    v60 = v59;
    *&v59 = (Width - v59) * 0.5;
    [(UIScrollView *)self->_scrollView setFrame:floorf(*&v59), v28 + v56, v60, v58];
    if (![(NSArray *)self->_viewsBelowScrollView count])
    {
      [(UIScrollView *)self->_scrollView contentInset];
      if (v61 == 0.0)
      {
        [(UIScrollView *)self->_scrollView contentInset];
        [(UIScrollView *)self->_scrollView setContentInset:?];
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v50 = *MEMORY[0x277D85DE8];
  [(_TVDescriptiveAlertView *)self bounds:fits.width];
  v5 = CGRectGetWidth(v52);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_viewsAboveScrollView;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (v7)
  {
    v11 = v7;
    v12 = *v45;
    do
    {
      v13 = 0;
      v14 = v9;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v44 + 1) + 8 * v13);
        [v15 tv_margin];
        v17 = v16;
        v9 = v18;
        [v15 tv_sizeThatFits:{v5, 0.0}];
        v10 = v10 + fmax(v17, v14) + v19;
        ++v13;
        v14 = v9;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v11);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_viewsBelowScrollView reverseObjectEnumerator];
  v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    v8 = 0.0;
    do
    {
      v24 = 0;
      v25 = v8;
      do
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v26 = *(*(&v40 + 1) + 8 * v24);
        [v26 tv_margin];
        v8 = v27;
        v29 = v28;
        [v26 tv_sizeThatFits:{v5, 0.0}];
        v10 = v10 + fmax(v25, v29) + v30;
        ++v24;
        v25 = v8;
      }

      while (v22 != v24);
      v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v22);
  }

  [(UIScrollView *)self->_scrollView tv_margin];
  v32 = v31;
  v34 = v33;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  scrollView = self->_scrollView;
  if (isKindOfClass)
  {
    [(UIScrollView *)scrollView tv_itemWidth];
    [(UIScrollView *)scrollView sizeThatFits:?];
  }

  else
  {
    [(UIScrollView *)scrollView contentSize];
  }

  v38 = v10 + fmax(v9, v32) + fmax(v8, v34) + v37;
  v39 = width;
  result.height = v38;
  result.width = v39;
  return result;
}

@end