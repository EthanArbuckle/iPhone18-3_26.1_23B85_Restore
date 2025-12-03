@interface _TVProductInfoView
+ (id)productInfoViewWithElement:(id)element existingView:(id)view;
- (BOOL)canBecomeFocused;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)setInfoSectionViews:(id)views;
- (void)setViewsAboveInfoSection:(id)section;
- (void)setViewsBelowInfoSection:(id)section;
@end

@implementation _TVProductInfoView

+ (id)productInfoViewWithElement:(id)element existingView:(id)view
{
  v32 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
  }

  else
  {
    v8 = [_TVProductInfoView alloc];
    v7 = [(_TVFocusRedirectView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v23 = v7;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = elementCopy;
  children = [elementCopy children];
  v11 = [children countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v25 = 0;
    v26 = 0;
    v13 = 0;
    v14 = *v28;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(children);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 tv_elementType] - 19;
        v18 = +[TVInterfaceFactory sharedInterfaceFactory];
        v19 = [v18 _viewFromElement:v16 existingView:0];

        if (v17 > 1)
        {
          if (!v19)
          {
            goto LABEL_27;
          }

          if (!v13)
          {
            if ([v19 canBecomeFocused])
            {
              v13 = v19;
            }

            else
            {
              v13 = 0;
            }
          }

          if ([v9 count])
          {
            v20 = v26;
            if (!v26)
            {
              v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v26 = v20;
            }
          }

          else
          {
            v20 = v25;
            if (!v25)
            {
              v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v25 = v20;
            }
          }
        }

        else
        {
          if (!v19)
          {
            goto LABEL_27;
          }

          if (!v13)
          {
            if ([v19 canBecomeFocused])
            {
              v13 = v19;
            }

            else
            {
              v13 = 0;
            }
          }

          v20 = v9;
        }

        [v20 addObject:v19];
LABEL_27:
      }

      v12 = [children countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  v25 = 0;
  v26 = 0;
  v13 = 0;
LABEL_31:

  [(_TVProductInfoView *)v23 setViewsAboveInfoSection:v25];
  [(_TVProductInfoView *)v23 setInfoSectionViews:v9];
  [(_TVProductInfoView *)v23 setViewsBelowInfoSection:v26];
  [(_TVProductInfoView *)v23 setDefaultFocusView:v13];
  v21 = v23;

  return v23;
}

- (void)setViewsAboveInfoSection:(id)section
{
  v16 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  if (sectionCopy && ![(NSArray *)self->_viewsAboveInfoSection isEqualToArray:sectionCopy])
  {
    [(NSArray *)self->_viewsAboveInfoSection makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_viewsAboveInfoSection, section);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_viewsAboveInfoSection;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(_TVProductInfoView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(_TVProductInfoView *)self setNeedsLayout];
}

- (void)setInfoSectionViews:(id)views
{
  v16 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (![(NSArray *)self->_infoSectionViews isEqualToArray:viewsCopy])
  {
    [(NSArray *)self->_infoSectionViews makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_infoSectionViews, views);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_infoSectionViews;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(_TVProductInfoView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(_TVProductInfoView *)self setNeedsLayout];
}

- (void)setViewsBelowInfoSection:(id)section
{
  v16 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  if (sectionCopy && ![(NSArray *)self->_viewsBelowInfoSection isEqualToArray:sectionCopy])
  {
    [(NSArray *)self->_viewsBelowInfoSection makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_viewsBelowInfoSection, section);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_viewsBelowInfoSection;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(_TVProductInfoView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(_TVProductInfoView *)self setNeedsLayout];
}

- (BOOL)canBecomeFocused
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  defaultFocusView = [(_TVProductInfoView *)self defaultFocusView];
  if (defaultFocusView)
  {
    v6 = [focusedView isDescendantOfView:self] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  defaultFocusView = [(_TVProductInfoView *)self defaultFocusView];

  if (defaultFocusView)
  {
    [(_TVProductInfoView *)self layoutIfNeeded];
  }

  defaultFocusView2 = [(_TVProductInfoView *)self defaultFocusView];
  if (defaultFocusView2)
  {
    defaultFocusView3 = [(_TVProductInfoView *)self defaultFocusView];
    v8[0] = defaultFocusView3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v86 = *MEMORY[0x277D85DE8];
  [(UIView *)self tv_padding];
  v7 = v6;
  v70 = v8;
  v66 = v10;
  v67 = v9;
  [(UIView *)self tv_lineSpacing];
  v69 = v11;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v12 = self->_viewsAboveInfoSection;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v79 objects:v85 count:16];
  v14 = v13;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v13)
  {
    v18 = 0;
    v19 = *v80;
    v20 = v13;
    do
    {
      v21 = 0;
      v22 = v16;
      do
      {
        if (*v80 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v79 + 1) + 8 * v21);
        [v23 tv_margin];
        v16 = v24;
        v25 = fmax(v24, v22);
        v26 = fmax(v7, v16);
        if ((v18 & 1) == 0)
        {
          v25 = v26;
        }

        v27 = v17 + v25;
        [v23 sizeThatFits:{width, height}];
        v17 = v28 + v27;
        ++v21;
        v18 = 1;
        v22 = v16;
      }

      while (v20 != v21);
      v20 = [(NSArray *)v12 countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v20);
  }

  firstObject = [(NSArray *)self->_infoSectionViews firstObject];
  [firstObject tv_margin];
  v31 = v30;
  v33 = v32;

  v34 = fmax(v31, v16);
  v35 = fmax(v7, v31);
  if (!v14)
  {
    v34 = v35;
  }

  v36 = v17 + v34;
  [(UIView *)self tv_interitemSpacing];
  v38 = v37;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v39 = self->_infoSectionViews;
  v40 = [(NSArray *)v39 countByEnumeratingWithState:&v75 objects:v84 count:16];
  v68 = width;
  if (v40)
  {
    v41 = v40;
    v42 = *v76;
    v43 = fmax(width - v70 - v66, 0.0);
    v44 = width - v66;
    v15 = 0.0;
    v45 = v70;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v76 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [*(*(&v75 + 1) + 8 * i) tv_sizeThatFits:{v43, 0.0}];
        v49 = v70;
        v50 = 0.0;
        if (v45 + v47 > v44)
        {
          v36 = v69 + v15 + v36;
        }

        else
        {
          v50 = v15;
          v49 = v45;
        }

        v15 = fmax(v50, v48);
        v45 = v38 + v47 + v49;
      }

      v41 = [(NSArray *)v39 countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v41);
  }

  v51 = v15 + v36;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v52 = self->_viewsBelowInfoSection;
  v53 = [(NSArray *)v52 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v72;
    v56 = v68;
    do
    {
      v57 = 0;
      v58 = v33;
      do
      {
        if (*v72 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v59 = *(*(&v71 + 1) + 8 * v57);
        [v59 tv_margin];
        v61 = v60;
        v33 = v62;
        [v59 sizeThatFits:{v68, height}];
        v51 = v51 + v63 + fmax(v58, v61);
        ++v57;
        v58 = v33;
      }

      while (v54 != v57);
      v54 = [(NSArray *)v52 countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v54);
  }

  else
  {
    v56 = v68;
  }

  v64 = v51 + fmax(v33, v67);
  v65 = v56;
  result.height = v64;
  result.width = v65;
  return result;
}

- (void)layoutSubviews
{
  v106 = *MEMORY[0x277D85DE8];
  v102.receiver = self;
  v102.super_class = _TVProductInfoView;
  [(_TVFocusRedirectView *)&v102 layoutSubviews];
  [(_TVProductInfoView *)self bounds];
  Width = CGRectGetWidth(v107);
  [(UIView *)self tv_padding];
  v87 = v3;
  v5 = v4;
  v84 = v6;
  [(UIView *)self tv_lineSpacing];
  v86 = v7;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v8 = self->_viewsAboveInfoSection;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v98 objects:v105 count:16];
  v10 = v9;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v89 = v5;
  if (v9)
  {
    v14 = 0;
    v15 = *v99;
    v16 = Width - v5 - v84;
    v17 = v9;
    do
    {
      v18 = 0;
      v19 = v12;
      do
      {
        if (*v99 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(*(&v98 + 1) + 8 * v18);
        [v20 tv_margin];
        v12 = v21;
        v23 = v22;
        v25 = v16 - v22 - v24;
        [v20 sizeThatFits:{v25, 0.0}];
        v27 = v26;
        v28 = v13 + fmax(v12, v19);
        v29 = fmax(v87, v12);
        if (v14)
        {
          v30 = v28;
        }

        else
        {
          v30 = v29;
        }

        v31 = v89 + v23;
        v5 = v89;
        [v20 setFrame:{v31, v30, v25, v27}];
        v13 = v27 + v30;
        ++v18;
        v14 = 1;
        v19 = v12;
      }

      while (v17 != v18);
      v17 = [(NSArray *)v8 countByEnumeratingWithState:&v98 objects:v105 count:16];
    }

    while (v17);
  }

  firstObject = [(NSArray *)self->_infoSectionViews firstObject];
  [firstObject tv_margin];
  v34 = v33;
  v82 = v35;

  v36 = v13 + fmax(v34, v12);
  v37 = fmax(v87, v34);
  if (v10)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  effectiveUserInterfaceLayoutDirection = [(_TVProductInfoView *)self effectiveUserInterfaceLayoutDirection];
  [(UIView *)self tv_interitemSpacing];
  v41 = v40;
  v88 = Width - v84;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v42 = Width - v84;
  }

  else
  {
    v42 = v5;
  }

  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v43 = self->_infoSectionViews;
  v44 = [(NSArray *)v43 countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v95;
    v47 = fmax(Width - v5 - v84, 0.0);
    v48 = v42;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v95 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v50 = *(*(&v94 + 1) + 8 * i);
        [v50 tv_sizeThatFits:{v47, 0.0}];
        v52 = v51;
        v54 = v53;
        v55 = v48 - v51 < v5;
        if (effectiveUserInterfaceLayoutDirection != 1)
        {
          v55 = v48 + v51 > v88;
        }

        v56 = v38 + v86 + v11;
        if (effectiveUserInterfaceLayoutDirection == 1)
        {
          v57 = -(v41 + v52);
        }

        else
        {
          v57 = v41 + v52;
        }

        if (v55)
        {
          v48 = v42;
          v11 = 0.0;
          v38 = v56;
        }

        v58 = v48 - v52;
        if (effectiveUserInterfaceLayoutDirection != 1)
        {
          v58 = v48;
        }

        [v50 setFrame:{v58, v38}];
        v48 = v57 + v48;
        v5 = v89;
        v11 = fmax(v11, v54);
      }

      v45 = [(NSArray *)v43 countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v45);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v59 = self->_viewsBelowInfoSection;
  v60 = [(NSArray *)v59 countByEnumeratingWithState:&v90 objects:v103 count:16];
  v61 = v83;
  if (v60)
  {
    v62 = v60;
    v63 = v11 + v38;
    v64 = *v91;
    do
    {
      v65 = 0;
      v66 = v61;
      do
      {
        if (*v91 != v64)
        {
          objc_enumerationMutation(v59);
        }

        v67 = *(*(&v90 + 1) + 8 * v65);
        [v67 tv_margin];
        v69 = v68;
        v61 = v70;
        v72 = Width - v5 - v84 - v68 - v71;
        v74 = v63 + fmax(v66, v73);
        [v67 sizeThatFits:{v72, 0.0}];
        v76 = v75;
        if (effectiveUserInterfaceLayoutDirection == 1)
        {
          v77 = v88 - v5 - v72;
        }

        else
        {
          v77 = v5 + v69;
        }

        if ([v67 tv_alignment] == 2)
        {
          [(_TVProductInfoView *)self bounds];
          UIRectCenteredXInRect();
          v77 = v80;
          v72 = v81;
        }

        else
        {
          v78 = v74;
          v79 = v76;
        }

        [v67 setFrame:{v77, v78, v72, v79}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v67 setComponentsNeedUpdate];
        }

        v63 = v76 + v74;
        ++v65;
        v66 = v61;
      }

      while (v62 != v65);
      v62 = [(NSArray *)v59 countByEnumeratingWithState:&v90 objects:v103 count:16];
    }

    while (v62);
  }
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v41 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  viewsAboveInfoSection = [(_TVProductInfoView *)self viewsAboveInfoSection];
  v7 = [viewsAboveInfoSection countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(viewsAboveInfoSection);
        }

        v11 = [*(*(&v34 + 1) + 8 * i) tv_impressionableElementsForDocument:documentCopy];
        [array addObjectsFromArray:v11];
      }

      v8 = [viewsAboveInfoSection countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  infoSectionViews = [(_TVProductInfoView *)self infoSectionViews];
  v13 = [infoSectionViews countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(infoSectionViews);
        }

        v17 = [*(*(&v30 + 1) + 8 * j) tv_impressionableElementsForDocument:documentCopy];
        [array addObjectsFromArray:v17];
      }

      v14 = [infoSectionViews countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  viewsAboveInfoSection2 = [(_TVProductInfoView *)self viewsAboveInfoSection];
  v19 = [viewsAboveInfoSection2 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(viewsAboveInfoSection2);
        }

        v23 = [*(*(&v26 + 1) + 8 * k) tv_impressionableElementsForDocument:documentCopy];
        [array addObjectsFromArray:v23];
      }

      v20 = [viewsAboveInfoSection2 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v20);
  }

  if ([array count])
  {
    v24 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end