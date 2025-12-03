@interface _TVOrganizerView
- (CGSize)_contentSizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)tv_alignmentInsetsForExpectedWidth:(double)width;
- (UIView)preferredFocusedComponent;
- (_TVOrganizerView)initWithFrame:(CGRect)frame;
- (double)cornerRadius;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)preferredFocusEnvironments;
- (int64_t)_positionFromView:(id)view;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setBackgroundImageView:(id)view;
- (void)setColumnDividersEnabled:(BOOL)enabled;
- (void)setComponents:(id)components;
- (void)setComponentsNeedUpdate;
- (void)setCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRemembersLastFocusedItem:(BOOL)item;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
@end

@implementation _TVOrganizerView

- (_TVOrganizerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _TVOrganizerView;
  v3 = [(_TVFocusRedirectView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_TVOrganizerView *)v3 setBackgroundColor:clearColor];

    [(_TVOrganizerView *)v3 setOpaque:0];
    containerGuide = [(_TVFocusRedirectView *)v3 containerGuide];
    [containerGuide setEnabled:0];

    v3->_remembersLastFocusedItem = 0;
  }

  return v3;
}

- (UIView)preferredFocusedComponent
{
  WeakRetained = objc_loadWeakRetained(&self->_lastFocusedView);

  return WeakRetained;
}

- (void)setComponentsNeedUpdate
{
  v35 = *MEMORY[0x277D85DE8];
  divsByPosition = [(_TVOrganizerView *)self divsByPosition];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v5 = MEMORY[0x277CCAE60];
  v6 = [divsByPosition objectForKeyedSubscript:&unk_287E47F58];
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  [v6 sizeThatFits:{*MEMORY[0x277CBF3A8], v8}];
  v9 = [v5 valueWithCGSize:?];
  [v4 setObject:v9 forKeyedSubscript:&unk_287E47F58];

  v10 = MEMORY[0x277CCAE60];
  v11 = [divsByPosition objectForKeyedSubscript:&unk_287E47F70];
  [v11 sizeThatFits:{v7, v8}];
  v12 = [v10 valueWithCGSize:?];
  [v4 setObject:v12 forKeyedSubscript:&unk_287E47F70];

  v13 = MEMORY[0x277CCAE60];
  v14 = [divsByPosition objectForKeyedSubscript:&unk_287E47F88];
  [v14 sizeThatFits:{v7, v8}];
  v15 = [v13 valueWithCGSize:?];
  [v4 setObject:v15 forKeyedSubscript:&unk_287E47F88];

  v16 = MEMORY[0x277CCAE60];
  v17 = [divsByPosition objectForKeyedSubscript:&unk_287E47FA0];
  [v17 sizeThatFits:{v7, v8}];
  v18 = [v16 valueWithCGSize:?];
  [v4 setObject:v18 forKeyedSubscript:&unk_287E47FA0];

  v19 = MEMORY[0x277CCAE60];
  v20 = [divsByPosition objectForKeyedSubscript:&unk_287E47FB8];
  [v20 sizeThatFits:{v7, v8}];
  v21 = [v19 valueWithCGSize:?];
  [v4 setObject:v21 forKeyedSubscript:&unk_287E47FB8];

  v22 = MEMORY[0x277CCAE60];
  v23 = [divsByPosition objectForKeyedSubscript:&unk_287E47FD0];
  [v23 sizeThatFits:{v7, v8}];
  v24 = [v22 valueWithCGSize:?];
  [v4 setObject:v24 forKeyedSubscript:&unk_287E47FD0];

  [(_TVOrganizerView *)self setDivSizesByPosition:v4];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allValues = [divsByPosition allValues];
  v26 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v30 + 1) + 8 * i) setComponentsNeedUpdate];
      }

      v27 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v27);
  }

  [(_TVOrganizerView *)self setNeedsLayout];
}

- (double)cornerRadius
{
  layer = [(_TVOrganizerView *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(_TVOrganizerView *)self layer];
  [layer setCornerRadius:radius];
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
      [(_TVOrganizerView *)self insertSubview:v7 atIndex:0];
    }
  }

  [(_TVOrganizerView *)self setNeedsLayout];
}

- (void)setRemembersLastFocusedItem:(BOOL)item
{
  itemCopy = item;
  self->_remembersLastFocusedItem = item;
  containerGuide = [(_TVFocusRedirectView *)self containerGuide];
  [containerGuide setEnabled:itemCopy];
}

- (void)setComponents:(id)components
{
  v79 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  objc_storeStrong(&self->_components, components);
  v68 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:9];
  v6 = MEMORY[0x277CBEB18];
  selfCopy = self;
  divsByPosition = [(_TVOrganizerView *)self divsByPosition];
  allKeys = [divsByPosition allKeys];
  v9 = [v6 arrayWithArray:allKeys];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = componentsCopy;
  v10 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v74;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
          v16 = [(_TVOrganizerView *)selfCopy _positionFromView:v15];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
          v18 = [v68 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
            v19 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
            [v68 setObject:v18 forKeyedSubscript:v19];
          }

          [v18 addObject:v15];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
          [v9 removeObject:v20];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v11);
  }

  v67 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v68, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  allKeys2 = [v68 allKeys];
  v22 = [allKeys2 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v70;
    v26 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v28 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
    v30 = selfCopy;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v70 != v25)
        {
          objc_enumerationMutation(allKeys2);
        }

        v32 = *(*(&v69 + 1) + 8 * j);
        if (([v9 containsObject:v32] & 1) != 0 || (-[_TVOrganizerView divsByPosition](v30, "divsByPosition"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "objectForKeyedSubscript:", v32), v34 = objc_claimAutoreleasedReturnValue(), v33, !v34))
        {
          if (v24 >= [v9 count])
          {
            v34 = [[_TVOrganizerCellView alloc] initWithFrame:v26, v27, v28, v29];
          }

          else
          {
            divsByPosition2 = [(_TVOrganizerView *)v30 divsByPosition];
            v36 = v24 + 1;
            v37 = [v9 objectAtIndexedSubscript:v24];
            v34 = [divsByPosition2 objectForKeyedSubscript:v37];

            v24 = v36;
            v30 = selfCopy;
          }
        }

        v38 = [v68 objectForKeyedSubscript:v32];
        [(_TVOrganizerCellView *)v34 setComponents:v38];

        v39 = [v32 integerValue] - 1;
        if (v39 <= 0xA)
        {
          [(_TVOrganizerCellView *)v34 setContentVerticalAlignment:qword_26CE87F90[v39]];
        }

        [v67 setObject:v34 forKeyedSubscript:v32];
      }

      v23 = [allKeys2 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
    v30 = selfCopy;
  }

  v40 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v41 = MEMORY[0x277CCAE60];
  v42 = [v67 objectForKeyedSubscript:&unk_287E47F58];
  v43 = *MEMORY[0x277CBF3A8];
  v44 = *(MEMORY[0x277CBF3A8] + 8);
  [v42 sizeThatFits:{*MEMORY[0x277CBF3A8], v44}];
  v45 = [v41 valueWithCGSize:?];
  [v40 setObject:v45 forKeyedSubscript:&unk_287E47F58];

  v46 = MEMORY[0x277CCAE60];
  v47 = [v67 objectForKeyedSubscript:&unk_287E47F70];
  [v47 sizeThatFits:{v43, v44}];
  v48 = [v46 valueWithCGSize:?];
  [v40 setObject:v48 forKeyedSubscript:&unk_287E47F70];

  v49 = MEMORY[0x277CCAE60];
  v50 = [v67 objectForKeyedSubscript:&unk_287E47F88];
  [v50 sizeThatFits:{v43, v44}];
  v51 = [v49 valueWithCGSize:?];
  [v40 setObject:v51 forKeyedSubscript:&unk_287E47F88];

  v52 = MEMORY[0x277CCAE60];
  v53 = [v67 objectForKeyedSubscript:&unk_287E47FA0];
  [v53 sizeThatFits:{v43, v44}];
  v54 = [v52 valueWithCGSize:?];
  [v40 setObject:v54 forKeyedSubscript:&unk_287E47FA0];

  v55 = MEMORY[0x277CCAE60];
  v56 = [v67 objectForKeyedSubscript:&unk_287E47FB8];
  [v56 sizeThatFits:{v43, v44}];
  v57 = [v55 valueWithCGSize:?];
  [v40 setObject:v57 forKeyedSubscript:&unk_287E47FB8];

  v58 = MEMORY[0x277CCAE60];
  v59 = [v67 objectForKeyedSubscript:&unk_287E47FD0];
  [v59 sizeThatFits:{v43, v44}];
  v60 = [v58 valueWithCGSize:?];
  [v40 setObject:v60 forKeyedSubscript:&unk_287E47FD0];

  while (v24 < [v9 count])
  {
    divsByPosition3 = [(_TVOrganizerView *)v30 divsByPosition];
    v62 = [v9 objectAtIndexedSubscript:v24];
    v63 = [divsByPosition3 objectForKeyedSubscript:v62];
    [v63 removeFromSuperview];

    ++v24;
  }

  constraints = [(_TVOrganizerView *)v30 constraints];
  [(_TVOrganizerView *)v30 removeConstraints:constraints];

  [(_TVOrganizerView *)v30 setDivsByPosition:v67];
  [(_TVOrganizerView *)v30 setDivSizesByPosition:v40];
  [(_TVOrganizerView *)v30 setNeedsLayout];
}

- (void)setColumnDividersEnabled:(BOOL)enabled
{
  self->_columnDividersEnabled = enabled;
  rightColumnDivider = self->_rightColumnDivider;
  if (enabled)
  {
    if (rightColumnDivider)
    {
      return;
    }

    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    leftColumnDivider = self->_leftColumnDivider;
    self->_leftColumnDivider = v8;

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    v7 = self->_rightColumnDivider;
    self->_rightColumnDivider = v6;
  }

  else
  {
    [(UIView *)rightColumnDivider removeFromSuperview];
    [(UIView *)self->_leftColumnDivider removeFromSuperview];
    v5 = self->_rightColumnDivider;
    self->_rightColumnDivider = 0;

    v7 = self->_leftColumnDivider;
    self->_leftColumnDivider = 0;
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (UIEdgeInsets)tv_alignmentInsetsForExpectedWidth:(double)width
{
  v152[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D768C8];
  [(UIView *)self tv_padding];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = width - (v8 + v12);
  divsByPosition = [(_TVOrganizerView *)self divsByPosition];
  v16 = [divsByPosition objectForKeyedSubscript:&unk_287E47FE8];

  divsByPosition2 = [(_TVOrganizerView *)self divsByPosition];
  v18 = [divsByPosition2 objectForKeyedSubscript:&unk_287E47F58];

  divsByPosition3 = [(_TVOrganizerView *)self divsByPosition];
  v20 = [divsByPosition3 objectForKeyedSubscript:&unk_287E48000];

  divsByPosition4 = [(_TVOrganizerView *)self divsByPosition];
  v22 = [divsByPosition4 objectForKeyedSubscript:&unk_287E47FA0];

  divsByPosition5 = [(_TVOrganizerView *)self divsByPosition];
  v145 = [divsByPosition5 objectForKeyedSubscript:&unk_287E47F70];

  divsByPosition6 = [(_TVOrganizerView *)self divsByPosition];
  v25 = [divsByPosition6 objectForKeyedSubscript:&unk_287E48018];

  divsByPosition7 = [(_TVOrganizerView *)self divsByPosition];
  v144 = [divsByPosition7 objectForKeyedSubscript:&unk_287E47FB8];

  divsByPosition8 = [(_TVOrganizerView *)self divsByPosition];
  v143 = [divsByPosition8 objectForKeyedSubscript:&unk_287E47F88];

  divsByPosition9 = [(_TVOrganizerView *)self divsByPosition];
  v146 = [divsByPosition9 objectForKeyedSubscript:&unk_287E48030];

  divsByPosition10 = [(_TVOrganizerView *)self divsByPosition];
  v142 = [divsByPosition10 objectForKeyedSubscript:&unk_287E47FD0];

  divsByPosition11 = [(_TVOrganizerView *)self divsByPosition];
  v31 = [divsByPosition11 objectForKeyedSubscript:&unk_287E48048];

  if (v16)
  {
    components = [v16 components];
    firstObject = [components firstObject];

    [firstObject tv_alignmentInsetsForExpectedWidth:v14];
    v35 = v34;
    [firstObject tv_margin];
    v37 = v35 + v36;
  }

  else
  {
    v37 = *v5;
  }

  v38 = v5[2];
  if (!v31 || ([v31 components], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "lastObject"), v40 = objc_claimAutoreleasedReturnValue(), v39, objc_msgSend(v40, "tv_alignmentInsetsForExpectedWidth:", v14), v42 = v41, objc_msgSend(v40, "tv_margin"), v37 = v42 + v43, v40, !v16))
  {
    v131 = v37;
    v132 = v38;
    v134 = v13;
    v135 = v9;
    v136 = v7;
    v137 = v11;
    divSizesByPosition = [(_TVOrganizerView *)self divSizesByPosition];
    v45 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F58];
    [v45 CGSizeValue];
    v47 = v46;
    v129 = v48;

    v49 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F70];
    [v49 CGSizeValue];
    v141 = v50;
    v127 = v51;

    v52 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F88];
    [v52 CGSizeValue];
    v139 = v53;
    v128 = v54;

    v55 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FD0];
    [v55 CGSizeValue];
    v56 = v14;
    v58 = v57;
    v60 = v59;

    v61 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FB8];
    [v61 CGSizeValue];
    v63 = v62;
    v65 = v64;

    v66 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FA0];
    [v66 CGSizeValue];
    v68 = v67;
    v70 = v69;

    v71 = fmax(v63, v58);
    v72 = v60;
    v73 = v56 - (fmax(v47, fmax(v141, v139)) + fmax(v68, v71));
    if (v73 >= 0.0)
    {
      v74 = v73;
    }

    else
    {
      v74 = 0.0;
    }

    [v20 sizeThatFits:v74];
    v76 = v75;
    [v25 sizeThatFits:{v74, 0.0}];
    v78 = v77;
    [v146 sizeThatFits:{v74, 0.0}];
    v123 = v78;
    v124 = v70;
    v79 = v76 + v78;
    v81 = v80;
    v125 = v72;
    v126 = v65;
    v82 = fmax(v129 + v127 + v128, fmax(v79 + v80, v72 + v65 + v70));
    null = [MEMORY[0x277CBEB68] null];
    v84 = null;
    v138 = v22;
    v140 = v20;
    v133 = v18;
    if (v18 || v145 || v143)
    {
      if (v18)
      {
        v86 = v18;
      }

      else
      {
        v86 = null;
      }

      v87 = v145;
      if (!v145)
      {
        v87 = null;
      }

      v152[0] = v86;
      v152[1] = v87;
      v88 = v143;
      if (!v143)
      {
        v88 = null;
      }

      v152[2] = v88;
      v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:3];
      v90 = [MEMORY[0x277CCABB0] numberWithDouble:v129];
      v151[0] = v90;
      v91 = [MEMORY[0x277CCABB0] numberWithDouble:v127];
      v151[1] = v91;
      v92 = [MEMORY[0x277CCABB0] numberWithDouble:v128];
      v151[2] = v92;
      v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:3];
      v130 = __55___TVOrganizerView_tv_alignmentInsetsForExpectedWidth___block_invoke(v82, v93, v89, v93);
      v85 = v94;

      v20 = v140;
    }

    else
    {
      v85 = 1.79769313e308;
      v130 = 1.79769313e308;
    }

    v37 = v131;
    if (v20 || v25 || v146)
    {
      if (v20)
      {
        v97 = v20;
      }

      else
      {
        v97 = v84;
      }

      v98 = v25;
      if (!v25)
      {
        v98 = v84;
      }

      v150[0] = v97;
      v150[1] = v98;
      v99 = v146;
      if (!v146)
      {
        v99 = v84;
      }

      v150[2] = v99;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:3];
      v101 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
      v149[0] = v101;
      v102 = [MEMORY[0x277CCABB0] numberWithDouble:v123];
      v149[1] = v102;
      v103 = [MEMORY[0x277CCABB0] numberWithDouble:v81];
      v149[2] = v103;
      v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
      v96 = __55___TVOrganizerView_tv_alignmentInsetsForExpectedWidth___block_invoke(v82, v104, v100, v104);
      v95 = v105;
    }

    else
    {
      v95 = 1.79769313e308;
      v96 = 1.79769313e308;
    }

    v22 = v138;
    if (v138 || v144 || v142)
    {
      if (v138)
      {
        v108 = v138;
      }

      else
      {
        v108 = v84;
      }

      v109 = v144;
      if (!v144)
      {
        v109 = v84;
      }

      v148[0] = v108;
      v148[1] = v109;
      v110 = v142;
      if (!v142)
      {
        v110 = v84;
      }

      v148[2] = v110;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:3];
      v112 = [MEMORY[0x277CCABB0] numberWithDouble:v124];
      v147[0] = v112;
      v113 = [MEMORY[0x277CCABB0] numberWithDouble:v126];
      v147[1] = v113;
      v114 = [MEMORY[0x277CCABB0] numberWithDouble:v125];
      v147[2] = v114;
      v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:3];
      v107 = __55___TVOrganizerView_tv_alignmentInsetsForExpectedWidth___block_invoke(v82, v115, v111, v115);
      v106 = v116;

      v22 = v138;
    }

    else
    {
      v106 = 1.79769313e308;
      v107 = 1.79769313e308;
    }

    v5 = MEMORY[0x277D768C8];
    v18 = v133;
    v20 = v140;
    v117 = fmin(v130, fmin(v96, v107));
    if (!v16)
    {
      v37 = v117;
    }

    v118 = fmin(v85, fmin(v95, v106));
    v38 = v132;
    if (!v31)
    {
      v38 = v118;
    }

    v7 = v136;
    v11 = v137;
    v13 = v134;
    v9 = v135;
  }

  v119 = v7 + v37;
  v120 = v5[1] + v9;
  v121 = v5[3] + v13;
  v122 = v11 + v38;
  result.right = v121;
  result.bottom = v122;
  result.left = v120;
  result.top = v119;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIView *)self tv_itemWidth];
  v7 = v6;
  [(UIView *)self tv_itemHeight];
  v9 = v8;
  if (v7 > 0.0)
  {
    width = v7;
  }

  if (v8 > 0.0)
  {
    height = v8;
  }

  backgroundImageView = [(_TVOrganizerView *)self backgroundImageView];

  if (backgroundImageView)
  {
    backgroundImageView2 = [(_TVOrganizerView *)self backgroundImageView];
    [backgroundImageView2 sizeThatFits:{width, height}];
    v28 = v13;
    v30 = v12;
  }

  else
  {
    v28 = *(MEMORY[0x277CBF3A8] + 8);
    v30 = *MEMORY[0x277CBF3A8];
  }

  [(UIView *)self tv_padding:v28];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = width - (v16 + v20);
  v23 = height - (v15 + v18);
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  if (v23 < 0.0)
  {
    v23 = 0.0;
  }

  [(_TVOrganizerView *)self _contentSizeThatFits:v22, v23];
  v26 = fmax(v21 + v17 + v24, v31);
  v27 = fmax(v19 + v15 + v25, v29);
  if (v7 > 0.0)
  {
    v26 = v7;
  }

  if (v9 > 0.0)
  {
    v27 = v9;
  }

  result.height = v27;
  result.width = v26;
  return result;
}

- (void)layoutSubviews
{
  v120.receiver = self;
  v120.super_class = _TVOrganizerView;
  [(_TVFocusRedirectView *)&v120 layoutSubviews];
  [(_TVOrganizerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  divsByPosition = [(_TVOrganizerView *)self divsByPosition];
  divSizesByPosition = [(_TVOrganizerView *)self divSizesByPosition];
  backgroundImageView = [(_TVOrganizerView *)self backgroundImageView];
  v104 = v6;
  v106 = v4;
  v98 = v8;
  [backgroundImageView setFrame:{v4, v6, v8, v10}];

  selfCopy = self;
  backgroundImageView2 = [(_TVOrganizerView *)selfCopy backgroundImageView];
  v16 = objc_opt_respondsToSelector();

  contentView = selfCopy;
  if (v16)
  {
    backgroundImageView3 = [(_TVOrganizerView *)selfCopy backgroundImageView];
    contentView = [backgroundImageView3 contentView];
  }

  [(UIView *)selfCopy tv_padding];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v8 - (v21 + v25);
  v99 = v10;
  v28 = v10 - (v19 + v23);
  v29 = [divsByPosition objectForKeyedSubscript:&unk_287E47FE8];
  v30 = [divsByPosition objectForKeyedSubscript:&unk_287E48048];
  v97 = v27;
  if (v29)
  {
    [v29 sizeThatFits:{v27, 0.0}];
    v121.size.height = v31;
    v121.origin.x = v22;
    v121.origin.y = v20;
    v121.size.width = v27;
    v122 = CGRectIntegral(v121);
    height = v122.size.height;
    [v29 setFrame:{v122.origin.x, v122.origin.y, v122.size.width}];
    [contentView addSubview:v29];
    v20 = v20 + height;
    v28 = v28 - height;
  }

  v94 = v30;
  v95 = v29;
  if (v30)
  {
    [v30 sizeThatFits:{v97, 0.0}];
    v123.size.height = v33;
    v123.origin.y = v99 - v24 - v33;
    v123.origin.x = v22;
    v123.size.width = v97;
    v124 = CGRectIntegral(v123);
    v34 = v124.size.height;
    [v30 setFrame:{v124.origin.x, v124.origin.y, v124.size.width}];
    [contentView addSubview:v30];
    v24 = v24 + v34;
    v28 = v28 - v34;
  }

  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __34___TVOrganizerView_layoutSubviews__block_invoke;
  v110[3] = &unk_279D6FD20;
  v96 = contentView;
  v111 = v96;
  v35 = MEMORY[0x26D6AFBB0](v110);
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __34___TVOrganizerView_layoutSubviews__block_invoke_2;
  v109[3] = &__block_descriptor_128_e38_v32__0__UIView_8__UIView_16__UIView_24l;
  *&v109[4] = v106;
  *&v109[5] = v104;
  *&v109[6] = v98;
  *&v109[7] = v99;
  *&v109[8] = v20;
  *&v109[9] = v22;
  *&v109[10] = v24;
  *&v109[11] = v26;
  *&v109[12] = v97;
  *&v109[13] = v28;
  *&v109[14] = (v22 - v26) * 0.5;
  *&v109[15] = (v20 - v24) * 0.5;
  v36 = MEMORY[0x26D6AFBB0](v109);
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __34___TVOrganizerView_layoutSubviews__block_invoke_3;
  v108[3] = &unk_279D6FD68;
  *&v108[6] = v106;
  *&v108[7] = v104;
  *&v108[8] = v98;
  *&v108[9] = v99;
  *&v108[10] = v20;
  *&v108[11] = v22;
  *&v108[12] = v24;
  *&v108[13] = v26;
  *&v108[14] = v97;
  *&v108[15] = v28;
  v108[4] = &v116;
  v108[5] = &v112;
  *&v108[16] = (v22 - v26) * 0.5;
  *&v108[17] = (v20 - v24) * 0.5;
  v37 = MEMORY[0x26D6AFBB0](v108);
  v38 = [divsByPosition objectForKeyedSubscript:&unk_287E47F58];
  v39 = [divsByPosition objectForKeyedSubscript:&unk_287E48000];
  v105 = [divsByPosition objectForKeyedSubscript:&unk_287E47FA0];
  v103 = [divsByPosition objectForKeyedSubscript:&unk_287E47F70];
  v107 = [divsByPosition objectForKeyedSubscript:&unk_287E48018];
  v102 = [divsByPosition objectForKeyedSubscript:&unk_287E47FB8];
  v101 = [divsByPosition objectForKeyedSubscript:&unk_287E47F88];
  v40 = [divsByPosition objectForKeyedSubscript:&unk_287E48030];
  v100 = [divsByPosition objectForKeyedSubscript:&unk_287E47FD0];
  v41 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F58];
  [v41 CGSizeValue];
  v43 = v42;
  v45 = v44;

  v46 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FA0];
  [v46 CGSizeValue];
  v48 = v47;
  v50 = v49;

  v51 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F70];
  [v51 CGSizeValue];
  v93 = v52;
  v54 = v53;

  v55 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FB8];
  [v55 CGSizeValue];
  v92 = v56;
  v58 = v57;

  v59 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F88];
  [v59 CGSizeValue];
  v91 = v60;
  v62 = v61;

  v63 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FD0];
  [v63 CGSizeValue];
  v90 = v64;
  v66 = v65;

  v67 = v117;
  v117[3] = fmax(v43, fmax(v54, v62));
  v68 = fmax(v48, fmax(v58, v66));
  v113[3] = v68;
  if (selfCopy->_rightColumnDivider)
  {
    [(UIView *)selfCopy->_leftColumnDivider setFrame:v67[3], selfCopy->_columnDividerPadding, 1.0, v99 + selfCopy->_columnDividerPadding * -2.0];
    [(UIView *)selfCopy->_rightColumnDivider setFrame:v98 - v113[3], selfCopy->_columnDividerPadding, 1.0, v99 + selfCopy->_columnDividerPadding * -2.0];
    [(UIView *)selfCopy->_rightColumnDivider setBackgroundColor:selfCopy->_columnDividerColor];
    [(UIView *)selfCopy->_leftColumnDivider setBackgroundColor:selfCopy->_columnDividerColor];
    [v96 addSubview:selfCopy->_leftColumnDivider];
    [v96 addSubview:selfCopy->_rightColumnDivider];
    v69 = v50;
    v67 = v117;
    v68 = v113[3];
  }

  else
  {
    v69 = v50;
  }

  v70 = v97 - (v67[3] + v68);
  if (v70 > 0.0)
  {
    v71 = v70;
  }

  else
  {
    v71 = 0.0;
  }

  [v39 sizeThatFits:v71];
  v73 = v72;
  v75 = v74;
  [v107 sizeThatFits:{v71, 0.0}];
  v77 = v76;
  v79 = v78;
  [v40 sizeThatFits:{v71, 0.0}];
  v80 = v85.n128_f64[0];
  v82 = v81;
  v83 = fmax(v73, fmax(v77, v85.n128_f64[0]));
  v84 = v117;
  v85.n128_f64[0] = v117[3];
  v86 = v113;
  if (v83 < v97 + fmax(v85.n128_f64[0], v113[3]) * -2.0)
  {
    v87 = -(v85.n128_f64[0] + v83 * 0.5 - v97 * 0.5);
    v117[3] = v85.n128_f64[0] + floorf(v87);
    v88 = v86[3];
    v89 = -(v88 + v83 * 0.5 - v97 * 0.5);
    v86[3] = v88 + floorf(v89);
    v85.n128_f64[0] = v84[3];
  }

  (v35)[2](v35, v38, v85, v45);
  (v35[2])(v35, v39, v73, v75);
  (v35[2])(v35, v105, v113[3], v69);
  (v35[2])(v35, v103, v117[3], v93);
  (v35[2])(v35, v107, v77, v79);
  (v35[2])(v35, v102, v113[3], v92);
  (v35[2])(v35, v101, v117[3], v91);
  (v35[2])(v35, v40, v80, v82);
  (v35[2])(v35, v100, v113[3], v90);
  (v37)[2](v37, v38, v39, v105);
  (v37)[2](v37, v103, v107, v102);
  (v37)[2](v37, v101, v40, v100);
  (v36)[2](v36, v38, v103, v101);
  (v36)[2](v36, v39, v107, v40);
  (v36)[2](v36, v105, v102, v100);

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  selectedCopy = selected;
  v28 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66___TVOrganizerView_setSelected_animated_withAnimationCoordinator___block_invoke;
  v23[3] = &unk_279D6FD90;
  v9 = coordinatorCopy;
  v24 = v9;
  v25 = animatedCopy;
  v26 = selectedCopy;
  v10 = MEMORY[0x26D6AFBB0](v23);
  if ([(UIView *)self->_backgroundImageView tv_showOnHighlight])
  {
    (v10)[2](v10, self->_backgroundImageView);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_components;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    v17 = @"marquee-on-highlight";
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        [v15 setHighlighted:selectedCopy animated:animatedCopy withAnimationCoordinator:{v9, v17}];
        if ([v15 tv_showOnHighlight])
        {
          (v10)[2](v10, v15);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 setHighlighted:selectedCopy];
          v16 = [v15 valueForTVViewStyle:@"tv-text-highlight-style"];
          if ([v16 isEqualToString:v17])
          {
            [v15 setMarqueeEnabled:selectedCopy];
            [v15 setMarqueeRunning:selectedCopy];
            if (!selectedCopy)
            {
              [v15 setLineBreakMode:4];
            }
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v15 setSelected:selectedCopy animated:animatedCopy];
          }
        }
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_components;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          [v9 setHighlighted:{highlightedCopy, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)preferredFocusEnvironments
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_lastFocusedView);
  if (WeakRetained)
  {
    goto LABEL_2;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  components = [(_TVOrganizerView *)self components];
  v6 = [components countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(components);
        }

        preferredFocusEnvironments = [*(*(&v13 + 1) + 8 * i) preferredFocusEnvironments];
        firstObject = [preferredFocusEnvironments firstObject];

        if ([firstObject canBecomeFocused])
        {

          goto LABEL_13;
        }
      }

      v7 = [components countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  firstObject = 0;
LABEL_13:

  WeakRetained = firstObject;
  if (firstObject)
  {
LABEL_2:
    v17 = WeakRetained;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  obj = [context nextFocusedView];
  if ([obj isDescendantOfView:self])
  {
    superview = [obj superview];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      superview2 = [obj superview];
      objc_storeWeak(&self->_lastFocusedView, superview2);
    }

    else
    {
      objc_storeWeak(&self->_lastFocusedView, obj);
    }
  }
}

- (CGSize)_contentSizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(_TVOrganizerView *)self divsByPosition:fits.width];
  divSizesByPosition = [(_TVOrganizerView *)self divSizesByPosition];
  v7 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F58];
  [v7 CGSizeValue];
  v9 = v8;
  v66 = v10;

  v11 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F70];
  [v11 CGSizeValue];
  v13 = v12;
  v65 = v14;

  v15 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47F88];
  [v15 CGSizeValue];
  v17 = v16;
  v64 = v18;

  v19 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FD0];
  [v19 CGSizeValue];
  v21 = v20;
  v63 = v22;

  v23 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FB8];
  [v23 CGSizeValue];
  v25 = v24;
  v62 = v26;

  v27 = [divSizesByPosition objectForKeyedSubscript:&unk_287E47FA0];
  [v27 CGSizeValue];
  v29 = v28;
  v61 = v30;

  v31 = fmax(v9, fmax(v13, v17));
  v32 = fmax(v29, fmax(v25, v21));
  if (width - (v31 + v32) >= 0.0)
  {
    v33 = width - (v31 + v32);
  }

  else
  {
    v33 = 0.0;
  }

  v34 = [v5 objectForKeyedSubscript:&unk_287E48000];
  [v34 sizeThatFits:{v33, 0.0}];
  v59 = v35;
  v60 = v36;

  v37 = [v5 objectForKeyedSubscript:&unk_287E48018];
  [v37 sizeThatFits:{v33, 0.0}];
  v39 = v38;
  v41 = v40;

  v42 = [v5 objectForKeyedSubscript:&unk_287E48030];
  [v42 sizeThatFits:{v33, 0.0}];
  v44 = v43;
  v46 = v45;

  v47 = fmax(v59, fmax(v39, v44));
  if (v47 < v33 && v32 > 0.0 && v31 > 0.0)
  {
    v47 = v33;
  }

  v50 = v31 + v32 + v47;
  v51 = [v5 objectForKeyedSubscript:{&unk_287E47FE8, *&v59}];
  [v51 sizeThatFits:{v50, 0.0}];
  v53 = v52;

  v54 = [v5 objectForKeyedSubscript:&unk_287E48048];
  [v54 sizeThatFits:{v50, 0.0}];
  v56 = v55;

  v57 = v50;
  v58 = fmax(v66 + v65 + v64, fmax(v60 + v41 + v46, v63 + v62 + v61)) + v53 + v56;
  result.height = v58;
  result.width = v57;
  return result;
}

- (int64_t)_positionFromView:(id)view
{
  result = [view tv_position];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v22 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  tv_associatedIKViewElement = [self tv_associatedIKViewElement];
  appDocument = [tv_associatedIKViewElement appDocument];
  v7 = [appDocument isEqual:documentCopy];

  if (v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    components = [(_TVOrganizerView *)self components];
    v10 = [components countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(components);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) tv_impressionableElementsForDocument:documentCopy];
          [array addObjectsFromArray:v14];
        }

        v11 = [components countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    if ([array count])
    {
      v15 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end