@interface _TVProductStackView
+ (id)productStackViewWithElement:(id)a3 existingView:(id)a4;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setButtonsRowView:(id)a3;
- (void)setDescriptionView:(id)a3;
- (void)setInitialFocusView:(id)a3;
- (void)setTitleView:(id)a3;
- (void)setViewsAboveDescription:(id)a3;
- (void)setViewsBelowDescription:(id)a3;
@end

@implementation _TVProductStackView

+ (id)productStackViewWithElement:(id)a3 existingView:(id)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v78 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = [_TVProductStackView alloc];
    v7 = [(_TVFocusRedirectView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v6];
  }

  v9 = v7;
  v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [v5 children];
  v11 = [v10 count];

  v12 = v11 - 1;
  v83 = v9;
  if (v11 - 1 < 0)
  {
    v22 = 0;
  }

  else
  {
    do
    {
      v13 = [v5 children];
      v14 = [v13 objectAtIndexedSubscript:v12];

      if ([v14 tv_elementType] == 44)
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v15 = [v14 children];
        v16 = [v15 countByEnumeratingWithState:&v109 objects:v117 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v110;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v110 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v109 + 1) + 8 * i);
              if ([v20 tv_elementType] == 7 || objc_msgSend(v20, "tv_elementType") == 6)
              {
                v21 = v14;
                v9 = v83;
                goto LABEL_19;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v109 objects:v117 count:16];
            v21 = 0;
            v9 = v83;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v21 = 0;
        }

LABEL_19:

        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v12-- < 1;
    }

    while (!v23 && !v22);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v24 = [v22 children];
  v25 = [v24 countByEnumeratingWithState:&v105 objects:v116 count:16];
  v81 = v22;
  if (v25)
  {
    v26 = v25;
    v27 = *v106;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v106 != v27)
        {
          objc_enumerationMutation(v24);
        }

        if ([*(*(&v105 + 1) + 8 * j) tv_elementType] == 7)
        {
          v82 = 0;
          goto LABEL_34;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v105 objects:v116 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

    v82 = 1;
LABEL_34:
    v22 = v81;
  }

  else
  {
    v82 = 1;
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = [v5 children];
  v29 = [obj countByEnumeratingWithState:&v101 objects:v115 count:16];
  if (!v29)
  {
    v87 = 0;
    v88 = 0;
    v84 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    goto LABEL_110;
  }

  v30 = v29;
  v87 = 0;
  v88 = 0;
  v84 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v31 = *v102;
  v80 = v5;
  do
  {
    for (k = 0; k != v30; ++k)
    {
      if (*v102 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v101 + 1) + 8 * k);
      v34 = [v33 tv_elementType];
      if (v34 != 55)
      {
        if (v34 == 16)
        {
          if (!v91)
          {
            if ([v33 tv_imageType])
            {
              v91 = 0;
            }

            else
            {
              v91 = v33;
            }
          }

          continue;
        }

LABEL_51:
        if ([v5 updateType] == 1)
        {
          if (v33 == v22)
          {
            v39 = [(_TVProductStackView *)v9 buttonsRowView];
          }

          else
          {
            if ([v33 updateType])
            {
              goto LABEL_54;
            }

            v40 = [(_TVProductStackView *)v9 descriptionView];
            v41 = [v40 tv_associatedIKViewElement];

            if (v41 != v33 || ([(_TVProductStackView *)v9 descriptionView], (v39 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v42 = [(_TVProductStackView *)v9 viewsAboveDescription];
              v43 = [v42 countByEnumeratingWithState:&v97 objects:v114 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v98;
LABEL_60:
                v46 = 0;
                while (1)
                {
                  if (*v98 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v97 + 1) + 8 * v46);
                  v48 = [v47 tv_associatedIKViewElement];

                  if (v48 == v33)
                  {
                    break;
                  }

                  if (v44 == ++v46)
                  {
                    v44 = [v42 countByEnumeratingWithState:&v97 objects:v114 count:16];
                    v22 = v81;
                    if (v44)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_66;
                  }
                }

                v38 = v47;

                v22 = v81;
                if (!v38)
                {
                  goto LABEL_70;
                }

                v5 = v80;
                v9 = v83;
              }

              else
              {
LABEL_66:

LABEL_70:
                v95 = 0u;
                v96 = 0u;
                v93 = 0u;
                v94 = 0u;
                v9 = v83;
                v49 = [(_TVProductStackView *)v83 viewsBelowDescription];
                v38 = [v49 countByEnumeratingWithState:&v93 objects:v113 count:16];
                if (v38)
                {
                  v50 = *v94;
                  while (2)
                  {
                    for (m = 0; m != v38; m = m + 1)
                    {
                      if (*v94 != v50)
                      {
                        objc_enumerationMutation(v49);
                      }

                      v52 = *(*(&v93 + 1) + 8 * m);
                      v53 = [v52 tv_associatedIKViewElement];

                      if (v53 == v33)
                      {
                        v38 = v52;
                        goto LABEL_82;
                      }
                    }

                    v38 = [v49 countByEnumeratingWithState:&v93 objects:v113 count:16];
                    if (v38)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_82:
                  v9 = v83;
                  v22 = v81;
                }

                v5 = v80;
              }

              goto LABEL_84;
            }
          }

          v38 = v39;
        }

        else
        {
LABEL_54:
          v38 = 0;
        }

LABEL_84:
        v54 = +[TVInterfaceFactory sharedInterfaceFactory];
        v55 = [v54 _viewFromElement:v33 existingView:v38];

        if (v55)
        {
          if ([v33 tv_elementType] == 44)
          {
            if (!v87)
            {
              if ([v55 canBecomeFocused])
              {
                v87 = v55;
              }

              else
              {
                v87 = 0;
              }
            }

            v56 = [v33 style];
            [v56 tv_height];
            v58 = v57;

            v59 = [v33 style];
            [v59 tv_interitemSpacing];
            v61 = v60;

            if (v33 == v22)
            {
              v62 = v55;

              [v62 setContentVerticalAlignment:1];
              [v62 _setSpeedBumpEdges:5];
              v84 = v62;
            }

            if (v58 == 0.0 || v61 == 0.0)
            {
              v63 = v82;
              if (v33 != v22)
              {
                v63 = 1;
              }

              if (v63)
              {
                v64 = &unk_287E48878;
              }

              else
              {
                v64 = &unk_287E48858;
              }

              [v55 setValue:v64 forTVViewStyle:@"height"];
              [v55 setValue:&unk_287E48868 forTVViewStyle:@"tv-interitem-spacing"];
            }
          }

          if (v90)
          {
            v65 = v86;
          }

          else
          {
            v65 = v85;
          }

          [v65 addObject:v55];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v66 = v55;

            v89 = v66;
          }
        }

        continue;
      }

      if ([v33 tv_textStyle] != 1)
      {
        if ([v33 tv_textStyle] == 3)
        {
          v35 = +[TVInterfaceFactory sharedInterfaceFactory];
          v36 = [(_TVProductStackView *)v9 descriptionView];
          v37 = [v35 _viewFromElement:v33 existingView:v36];

          v90 = v37;
          continue;
        }

        goto LABEL_51;
      }

      if (!v88)
      {
        v88 = v33;
      }
    }

    v30 = [obj countByEnumeratingWithState:&v101 objects:v115 count:16];
  }

  while (v30);
LABEL_110:

  v67 = +[TVInterfaceFactory sharedInterfaceFactory];
  if (v91)
  {
    v68 = v91;
  }

  else
  {
    v68 = v88;
  }

  v69 = [(_TVProductStackView *)v9 titleView];
  v70 = [v67 _viewFromElement:v68 existingView:v69];

  [(_TVProductStackView *)v9 setTitleView:v70];
  [(_TVProductStackView *)v9 setButtonsRowView:v84];
  [(_TVProductStackView *)v9 setViewsAboveDescription:v85];
  [(_TVProductStackView *)v9 setDescriptionView:v90];
  [(_TVProductStackView *)v9 setViewsBelowDescription:v86];
  v71 = v87;
  if (v89)
  {
    v71 = v89;
  }

  if (v84)
  {
    v72 = v84;
  }

  else
  {
    v72 = v71;
  }

  [(_TVProductStackView *)v9 setInitialFocusView:v72];
  [(_TVProductStackView *)v9 setStackElement:v5];
  v73 = [(_TVProductStackView *)v9 initialFocusView];
  v74 = v73 | v90;

  if (!v74)
  {
    v75 = [(_TVFocusRedirectView *)v9 containerGuide];
    [v75 setEnabled:0];
  }

  v76 = v9;

  return v9;
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  lastFocusedView = self->_lastFocusedView;
  if (lastFocusedView)
  {
    goto LABEL_5;
  }

  initialFocusView = self->_initialFocusView;
  if (!initialFocusView)
  {
    initialFocusView = self->_descriptionView;
  }

  objc_storeStrong(&self->_lastFocusedView, initialFocusView);
  lastFocusedView = self->_lastFocusedView;
  if (lastFocusedView)
  {
LABEL_5:
    v7[0] = lastFocusedView;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9 = [a3 nextFocusedView];
  v5 = [(UIView *)v9 isDescendantOfView:self];
  v6 = v9;
  if (v5)
  {
    v7 = [(UIView *)v9 isDescendantOfView:self->_buttonsRowView];
    buttonsRowView = v9;
    if (v7)
    {
      buttonsRowView = self->_buttonsRowView;
    }

    objc_storeStrong(&self->_lastFocusedView, buttonsRowView);
    v6 = v9;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setTitleView:(id)a3
{
  v5 = a3;
  titleView = self->_titleView;
  v7 = v5;
  if (titleView != v5)
  {
    [(UIView *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, a3);
    if (self->_titleView)
    {
      [(_TVProductStackView *)self addSubview:?];
    }
  }

  [(_TVProductStackView *)self setNeedsLayout];
}

- (void)setViewsAboveDescription:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSArray *)self->_viewsAboveDescription isEqualToArray:v5])
  {
    [(NSArray *)self->_viewsAboveDescription makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_viewsAboveDescription, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_viewsAboveDescription;
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

          [(_TVProductStackView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(_TVProductStackView *)self setNeedsLayout];
}

- (void)setDescriptionView:(id)a3
{
  v5 = a3;
  descriptionView = self->_descriptionView;
  if (descriptionView != v5)
  {
    v8 = v5;
    if (descriptionView)
    {
      v7 = self->_lastFocusedView == descriptionView;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      objc_storeStrong(&self->_lastFocusedView, a3);
      [(_TVProductStackView *)self setNeedsFocusUpdate];
      descriptionView = self->_descriptionView;
    }

    [(UIView *)descriptionView removeFromSuperview];
    objc_storeStrong(&self->_descriptionView, a3);
    if (self->_descriptionView)
    {
      [(_TVProductStackView *)self addSubview:?];
    }

    descriptionView = [(_TVProductStackView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](descriptionView, v5);
}

- (void)setViewsBelowDescription:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSArray *)self->_viewsBelowDescription isEqualToArray:v5])
  {
    [(NSArray *)self->_viewsBelowDescription makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&self->_viewsBelowDescription, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_viewsBelowDescription;
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

          [(_TVProductStackView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(_TVProductStackView *)self setNeedsLayout];
}

- (void)setButtonsRowView:(id)a3
{
  v5 = a3;
  buttonsRowView = self->_buttonsRowView;
  if (self->_lastFocusedView == buttonsRowView && buttonsRowView != 0)
  {
    objc_storeStrong(&self->_lastFocusedView, a3);
    [(_TVProductStackView *)self setNeedsFocusUpdate];
  }

  v8 = self->_buttonsRowView;
  self->_buttonsRowView = v5;
}

- (void)setInitialFocusView:(id)a3
{
  v5 = a3;
  initialFocusView = self->_initialFocusView;
  if (initialFocusView != v5)
  {
    v9 = v5;
    lastFocusedView = self->_lastFocusedView;
    if (initialFocusView)
    {
      v8 = lastFocusedView == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8 && (lastFocusedView == initialFocusView || [(UIView *)lastFocusedView isDescendantOfView:?]))
    {
      objc_storeStrong(&self->_lastFocusedView, a3);
      [(_TVProductStackView *)self setNeedsFocusUpdate];
    }

    objc_storeStrong(&self->_initialFocusView, a3);
    v5 = v9;
  }
}

- (void)layoutSubviews
{
  v70 = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = _TVProductStackView;
  [(_TVFocusRedirectView *)&v67 layoutSubviews];
  [(_TVProductStackView *)self bounds];
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  v7 = CGRectGetHeight(v71);
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v8 = CGRectGetWidth(v72);
  [(UIView *)self->_titleView tv_itemHeight];
  v10 = v9;
  [(UIView *)self->_titleView tv_margin];
  v12 = v11;
  v58 = v13;
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v14 = CGRectGetWidth(v73);
  v15 = [(UIView *)self->_titleView tv_associatedIKViewElement];
  v16 = [v15 tv_elementType];

  v17 = 0.0;
  if (v16 == 55)
  {
    [(UIView *)self->_titleView sizeThatFits:v14, v10];
    v19 = v18;
    v20 = fmax(v10 - v18, 0.0);
    v21 = fmin(v10, v19);
  }

  else
  {
    v21 = v10;
    v20 = 0.0;
  }

  [(UIView *)self->_titleView setFrame:v12, v20, v14, v21];
  v22 = v58 + v10 + v12;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v23 = self->_viewsAboveDescription;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v64;
    do
    {
      v27 = 0;
      v28 = v17;
      do
      {
        if (*v64 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v63 + 1) + 8 * v27);
        [v29 tv_itemHeight];
        v31 = v30;
        [v29 tv_margin];
        v17 = v32;
        v34 = v22 + fmax(v28, v33);
        [v29 sizeThatFits:{v8, v31}];
        if (v31 == 0.0)
        {
          v31 = v35;
        }

        [v29 setFrame:{0.0, v34, v8, v31}];
        v22 = v34 + v31;
        ++v27;
        v28 = v17;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v25);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = [(NSArray *)self->_viewsBelowDescription reverseObjectEnumerator];
  v37 = [v36 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v60;
    v40 = 0.0;
    do
    {
      v41 = 0;
      v42 = v40;
      do
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v43 = *(*(&v59 + 1) + 8 * v41);
        [v43 tv_itemHeight];
        v45 = v44;
        [v43 tv_margin];
        v40 = v46;
        v48 = v47;
        [v43 sizeThatFits:{v8, v45}];
        if (v45 == 0.0)
        {
          v50 = v49;
        }

        else
        {
          v50 = v45;
        }

        v7 = v7 - (fmax(v42, v48) + v50);
        [v43 setFrame:{0.0, v7, v8}];
        ++v41;
        v42 = v40;
      }

      while (v38 != v41);
      v38 = [v36 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v38);
  }

  else
  {
    v40 = 0.0;
  }

  [(UIView *)self->_descriptionView tv_margin];
  v52 = fmax(v51, v17);
  v54 = v7 - v40 - v22 - v52 - fmax(v53, v40);
  v55 = *MEMORY[0x277CBF3A0];
  [(UIView *)self->_descriptionView sizeThatFits:v8, v54];
  [(UIView *)self->_descriptionView setFrame:v55, v22 + v52, v56, v57];
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_TVProductStackView *)self stackElement];
  v6 = [v5 appDocument];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [(_TVProductStackView *)self titleView];
    v10 = [v9 tv_impressionableElementsForDocument:v4];
    [v8 addObjectsFromArray:v10];

    v11 = [(_TVProductStackView *)self descriptionView];
    v12 = [v11 tv_impressionableElementsForDocument:v4];
    [v8 addObjectsFromArray:v12];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [(_TVProductStackView *)self viewsAboveDescription];
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v31 + 1) + 8 * i) tv_impressionableElementsForDocument:v4];
          [v8 addObjectsFromArray:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v15);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [(_TVProductStackView *)self viewsBelowDescription];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v27 + 1) + 8 * j) tv_impressionableElementsForDocument:v4];
          [v8 addObjectsFromArray:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    if ([v8 count])
    {
      v25 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end