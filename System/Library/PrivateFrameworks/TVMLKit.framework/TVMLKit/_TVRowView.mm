@interface _TVRowView
+ (CGRect)_boundingRectForComponents:(id)components interitemSpacing:(double)spacing boundingSize:(CGSize)size horizontalAlignment:(int64_t)alignment allowsOverflow:(BOOL)overflow;
+ (CGRect)_leftAlignedFrameForComponent:(id)component previousComponent:(id)previousComponent interitemSpacing:(double)spacing;
+ (void)_alignComponents:(id)components withLineSize:(CGSize)size boundingRect:(CGRect)rect originYBump:(double)bump verticalAlignment:(int64_t)alignment horizontalAlignment:(int64_t)horizontalAlignment;
- (CGSize)_sizeThatFitsComponents:(id)components boundingSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)lastFocusedView;
- (UIView)preferredFocusedComponent;
- (_TVRowView)initWithFrame:(CGRect)frame;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)preferredFocusEnvironments;
- (int64_t)_alignmentFromView:(id)view;
- (void)_addSubview:(id)subview maxViewWidth:(double)width;
- (void)_lineUpComponents:(id)components alignment:(int64_t)alignment attribute:(int64_t)attribute;
- (void)_resetSubviews;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setComponents:(id)components;
- (void)setContentVerticalAlignment:(int64_t)alignment;
- (void)setPreferredFocusedComponent:(id)component;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation _TVRowView

- (_TVRowView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _TVRowView;
  result = [(_TVFocusRedirectView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_contentVerticalAlignment = 2;
  }

  return result;
}

- (void)setContentVerticalAlignment:(int64_t)alignment
{
  if (alignment)
  {
    if (self->_contentVerticalAlignment != alignment)
    {
      self->_contentVerticalAlignment = alignment;
      [(_TVRowView *)self setNeedsLayout];
    }
  }
}

- (void)setComponents:(id)components
{
  v53 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  if ([(NSArray *)self->_components isEqual:?])
  {
    [(_TVRowView *)self setNeedsLayout];
    goto LABEL_51;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  v39 = 480;
  WeakRetained = objc_loadWeakRetained(&self->_lastFocusedView);

  if (WeakRetained)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __28___TVRowView_setComponents___block_invoke;
    v47[3] = &unk_279D6E848;
    v47[4] = self;
    v47[5] = &v48;
    [componentsCopy enumerateObjectsUsingBlock:v47];
    if (v49[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      components = self->_components;
      v7 = objc_loadWeakRetained(&self->_lastFocusedView);
      v8 = [(NSArray *)components indexOfObject:v7];
      v49[3] = v8;
    }
  }

  objc_storeStrong(&self->_components, components);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = componentsCopy;
  v12 = 0;
  v13 = [v11 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v13)
  {
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          v18 = [(_TVRowView *)self _alignmentFromView:v17];
          v19 = v9;
          if (v18 == 1 || (v19 = v10, v18 == 2))
          {
LABEL_16:
            [v19 addObject:{v17, v39}];
          }

          else if (v18 == 3)
          {
            v19 = v42;
            goto LABEL_16;
          }

          canBecomeFocused = [v17 canBecomeFocused];
          if (v12)
          {
            v21 = 0;
          }

          else
          {
            v21 = canBecomeFocused;
          }

          if (v21 == 1)
          {
            v12 = v17;
          }

          continue;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v13);
  }

  v22 = [v9 count];
  if (v22)
  {
    v23 = [v9 copy];
  }

  else
  {
    v23 = 0;
  }

  objc_storeStrong(&self->_leftComponents, v23);
  if (v22)
  {
  }

  v24 = [v10 count];
  if (v24)
  {
    v25 = [v10 copy];
  }

  else
  {
    v25 = 0;
  }

  objc_storeStrong(&self->_centerComponents, v25);
  if (v24)
  {
  }

  v26 = [v42 count];
  if (v26)
  {
    v27 = [v42 copy];
  }

  else
  {
    v27 = 0;
  }

  objc_storeStrong(&self->_rightComponents, v27);
  if (v26)
  {
  }

  v28 = MEMORY[0x277CBEB18];
  leftComponents = [(_TVRowView *)self leftComponents];
  v30 = [v28 arrayWithArray:leftComponents];

  centerComponents = [(_TVRowView *)self centerComponents];
  [v30 addObjectsFromArray:centerComponents];

  rightComponents = [(_TVRowView *)self rightComponents];
  [v30 addObjectsFromArray:rightComponents];

  v33 = [v30 count];
  if (v33)
  {
    v34 = [v30 copy];
  }

  else
  {
    v34 = 0;
  }

  objc_storeStrong(&self->_allComponents, v34);
  if (v33)
  {
  }

  v35 = v49[3];
  if (v35 == 0x7FFFFFFFFFFFFFFFLL || v35 >= -[NSArray count](self->_components, "count") || (-[NSArray objectAtIndexedSubscript:](self->_components, "objectAtIndexedSubscript:", v49[3]), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v36 canBecomeFocused], v36, !v37))
  {
    objc_storeWeak((&self->super.super.super.super.isa + v40), v12);
  }

  else
  {
    v38 = [(NSArray *)self->_components objectAtIndexedSubscript:v49[3]];
    objc_storeWeak((&self->super.super.super.super.isa + v40), v38);
  }

  [(_TVRowView *)self _resetSubviews];

  _Block_object_dispose(&v48, 8);
LABEL_51:
}

- (void)setPreferredFocusedComponent:(id)component
{
  v4 = objc_storeWeak(&self->_preferredFocusedComponent, component);
  componentCopy2 = component;
  if (component)
  {
    objc_storeWeak(&self->_lastFocusedView, component);
    componentCopy2 = component;
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_components;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setHighlighted:{selectedCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_lastFocusedView);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_lastFocusedView);
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v16 = *MEMORY[0x277D85DE8];
  nextFocusedView = [context nextFocusedView];
  if ([nextFocusedView isDescendantOfView:self])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_allComponents;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([nextFocusedView isDescendantOfView:{v10, v11}])
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_storeWeak(&self->_lastFocusedView, v7);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_TVRowView *)self _sizeThatFitsComponents:self->_allComponents boundingSize:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = _TVRowView;
  [(_TVFocusRedirectView *)&v23 layoutSubviews];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_allComponents;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        [(_TVRowView *)self bounds];
        [(_TVRowView *)self _addSubview:v8 maxViewWidth:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  leftComponents = [(_TVRowView *)self leftComponents];
  v11 = [leftComponents count];

  if (v11)
  {
    leftComponents2 = [(_TVRowView *)self leftComponents];
    [(_TVRowView *)self _lineUpComponents:leftComponents2 alignment:[(_TVRowView *)self contentVerticalAlignment] attribute:1];
  }

  centerComponents = [(_TVRowView *)self centerComponents];
  v14 = [centerComponents count];

  if (v14)
  {
    centerComponents2 = [(_TVRowView *)self centerComponents];
    [(_TVRowView *)self _lineUpComponents:centerComponents2 alignment:[(_TVRowView *)self contentVerticalAlignment] attribute:9];
  }

  rightComponents = [(_TVRowView *)self rightComponents];
  v17 = [rightComponents count];

  if (v17)
  {
    rightComponents2 = [(_TVRowView *)self rightComponents];
    [(_TVRowView *)self _lineUpComponents:rightComponents2 alignment:[(_TVRowView *)self contentVerticalAlignment] attribute:2];
  }
}

- (void)_lineUpComponents:(id)components alignment:(int64_t)alignment attribute:(int64_t)attribute
{
  v89 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  if ([(_TVRowView *)self effectiveUserInterfaceLayoutDirection]!= 1)
  {
    leftComponents = [(_TVRowView *)self leftComponents];
    if ([leftComponents count])
    {
      rightComponents = [(_TVRowView *)self rightComponents];
      goto LABEL_6;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_11;
  }

  leftComponents = [(_TVRowView *)self rightComponents];
  if (![leftComponents count])
  {
    goto LABEL_8;
  }

  rightComponents = [(_TVRowView *)self leftComponents];
LABEL_6:
  v10 = rightComponents;
  if ([rightComponents count])
  {
    v11 = 0;
  }

  else
  {
    centerComponents = [(_TVRowView *)self centerComponents];
    v11 = [centerComponents count] == 0;
  }

LABEL_11:
  [(UIView *)self tv_interitemSpacing];
  v80 = v13;
  v14 = MEMORY[0x277CBF3A0];
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v81 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = componentsCopy;
  v17 = [obj countByEnumeratingWithState:&v84 objects:v88 count:16];
  v18 = &stru_287E12870;
  if (v17)
  {
    v19 = v17;
    v20 = 0;
    x = *v14;
    y = v14[1];
    v23 = *v85;
    v73 = height;
    v74 = v16;
    v71 = y;
    v72 = *v14;
    v77 = 0.0;
    v76 = v11;
    do
    {
      v24 = 0;
      v78 = v19;
      do
      {
        if (*v85 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v84 + 1) + 8 * v24);
        [objc_opt_class() _leftAlignedFrameForComponent:v25 previousComponent:v20 interitemSpacing:v80];
        v27 = v26;
        v82 = v29;
        v83 = v28;
        v31 = v30;
        [v25 tv_nonDirectionalMargin];
        v33 = v32;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_TVRowView *)self bounds];
          v35 = v34;
          if (v11)
          {
            [v25 tv_margin];
            v37 = v35 - v36;
            [v25 tv_margin];
            v39 = v37 - v38;
          }

          else
          {
            v90.origin.x = x;
            v90.origin.y = y;
            v90.size.width = v16;
            v90.size.height = height;
            v39 = v35 - CGRectGetWidth(v90) - v27 - v33;
          }

          v31 = fmin(v31, v39);
        }

        if (v20)
        {
          v40 = 0;
        }

        else
        {
          v40 = attribute == 9;
        }

        if (v40)
        {
          v27 = 0.0;
        }

        if (v11)
        {
          attributeCopy = attribute;
          if (attribute == 9)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = v33;
          }

          v91.origin.x = x;
          v91.origin.y = y;
          v91.size.width = v16;
          v91.size.height = height;
          Width = CGRectGetWidth(v91);
          v92.origin.x = v27;
          v92.size.height = v82;
          v92.origin.y = v83;
          v92.size.width = v31;
          v44 = ceil(v42 + Width + CGRectGetMaxX(v92));
          [(_TVRowView *)self bounds];
          v46 = ceil(v45);
          v47 = [v25 valueForTVViewStyle:@"tv-group"];
          v48 = v47;
          v49 = &stru_287E12870;
          if (v47)
          {
            v49 = v47;
          }

          v50 = v49;

          v51 = [(__CFString *)v18 isEqualToString:v50];
          if (v44 <= v46 && (v51 & 1) != 0)
          {
            v18 = v50;
            attribute = attributeCopy;
          }

          else
          {
            lastObject = [v81 lastObject];
            [lastObject tv_nonDirectionalMargin];
            v54 = v16 + v53;

            v55 = objc_opt_class();
            [(_TVRowView *)self bounds];
            [v55 _alignComponents:v81 withLineSize:alignment boundingRect:attributeCopy originYBump:v54 verticalAlignment:height horizontalAlignment:{v56, v57, v58, v59, v77}];
            v93.origin.x = x;
            v93.origin.y = y;
            v93.size.width = v16;
            v93.size.height = height;
            v77 = v77 + CGRectGetHeight(v93);

            [v81 removeAllObjects];
            v20 = 0;
            v18 = v50;
            attribute = attributeCopy;
            v27 = 0.0;
            height = v73;
            v16 = v74;
            y = v71;
            x = v72;
          }

          v19 = v78;
          v11 = v76;
        }

        v60 = v20;
        v94.origin.x = x;
        v94.origin.y = y;
        v94.size.width = v16;
        v94.size.height = height;
        v61 = v27 + CGRectGetWidth(v94);
        v95.origin.x = x;
        v95.origin.y = y;
        v95.size.width = v16;
        v95.size.height = height;
        v98.origin.x = v61;
        v98.origin.y = v83;
        v98.size.width = v31;
        v98.size.height = v82;
        v96 = CGRectUnion(v95, v98);
        x = v96.origin.x;
        y = v96.origin.y;
        v16 = v96.size.width;
        height = v96.size.height;
        v96.origin.x = v61;
        v96.origin.y = v83;
        v96.size.width = v31;
        v96.size.height = v82;
        v97 = CGRectIntegral(v96);
        [v25 setFrame:{v97.origin.x, v97.origin.y, v97.size.width, v97.size.height}];
        [v81 addObject:v25];
        v20 = v25;

        ++v24;
      }

      while (v19 != v24);
      v19 = [obj countByEnumeratingWithState:&v84 objects:v88 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
    v77 = 0.0;
  }

  if (!v11)
  {
    [(_TVRowView *)self bounds];
    height = v62;
  }

  lastObject2 = [v81 lastObject];
  [lastObject2 tv_nonDirectionalMargin];
  v65 = v16 + v64;

  v66 = objc_opt_class();
  [(_TVRowView *)self bounds];
  [v66 _alignComponents:v81 withLineSize:alignment boundingRect:attribute originYBump:v65 verticalAlignment:height horizontalAlignment:{v67, v68, v69, v70, v77}];
}

- (CGSize)_sizeThatFitsComponents:(id)components boundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  [(UIView *)self tv_interitemSpacing];
  v12 = v11;
  effectiveUserInterfaceLayoutDirection = [(_TVRowView *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    rightComponents = [(_TVRowView *)self rightComponents];
    if ([rightComponents count])
    {
      leftComponents = [(_TVRowView *)self leftComponents];
      if (![leftComponents count])
      {
        centerComponents = [(_TVRowView *)self centerComponents];
        v17 = [centerComponents count];

        if (!v17)
        {
          v18 = 1;
          v19 = 1;
LABEL_14:
          v23 = objc_opt_class();
          rightComponents2 = [(_TVRowView *)self rightComponents];
          [v23 _boundingRectForComponents:rightComponents2 interitemSpacing:1 boundingSize:v19 horizontalAlignment:v12 allowsOverflow:{width, height}];
          v84.origin.x = v25;
          v84.origin.y = v26;
          v84.size.width = v27;
          v84.size.height = v28;
          v73.origin.x = v8;
          v73.origin.y = v7;
          v73.size.width = v10;
          v73.size.height = v9;
          v74 = CGRectUnion(v73, v84);
          x = v74.origin.x;
          y = v74.origin.y;
          v31 = v74.size.width;
          v32 = v74.size.height;

          v33 = objc_opt_class();
          leftComponents2 = [(_TVRowView *)self leftComponents];
          [v33 _boundingRectForComponents:leftComponents2 interitemSpacing:3 boundingSize:v19 horizontalAlignment:v12 allowsOverflow:{width, height}];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  rightComponents = [(_TVRowView *)self leftComponents];
  if (![rightComponents count])
  {
    goto LABEL_9;
  }

  leftComponents = [(_TVRowView *)self rightComponents];
  if ([leftComponents count])
  {
LABEL_8:

    goto LABEL_9;
  }

  centerComponents2 = [(_TVRowView *)self centerComponents];
  v44 = [centerComponents2 count];

  if (!v44)
  {
    v18 = 1;
    v22 = 1;
    goto LABEL_17;
  }

LABEL_10:
  leftComponents3 = [(_TVRowView *)self leftComponents];
  if ([leftComponents3 count])
  {
    v18 = 0;
  }

  else
  {
    rightComponents3 = [(_TVRowView *)self rightComponents];
    v18 = [rightComponents3 count] == 0;
  }

  v19 = 0;
  v22 = 0;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    goto LABEL_14;
  }

LABEL_17:
  v45 = objc_opt_class();
  leftComponents4 = [(_TVRowView *)self leftComponents];
  [v45 _boundingRectForComponents:leftComponents4 interitemSpacing:1 boundingSize:v22 horizontalAlignment:v12 allowsOverflow:{width, height}];
  v85.origin.x = v47;
  v85.origin.y = v48;
  v85.size.width = v49;
  v85.size.height = v50;
  v75.origin.x = v8;
  v75.origin.y = v7;
  v75.size.width = v10;
  v75.size.height = v9;
  v76 = CGRectUnion(v75, v85);
  x = v76.origin.x;
  y = v76.origin.y;
  v31 = v76.size.width;
  v32 = v76.size.height;

  v51 = objc_opt_class();
  leftComponents2 = [(_TVRowView *)self rightComponents];
  [v51 _boundingRectForComponents:leftComponents2 interitemSpacing:3 boundingSize:v22 horizontalAlignment:v12 allowsOverflow:{width, height}];
  v36 = v52;
  v38 = v53;
  v40 = v54;
  v42 = v55;
  v19 = v22;
LABEL_18:
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = v31;
  v77.size.height = v32;
  v78 = CGRectUnion(v77, *&v36);
  v56 = v78.origin.x;
  v57 = v78.origin.y;
  v58 = v78.size.width;
  v59 = v78.size.height;

  v60 = objc_opt_class();
  centerComponents3 = [(_TVRowView *)self centerComponents];
  [v60 _boundingRectForComponents:centerComponents3 interitemSpacing:2 boundingSize:v19 horizontalAlignment:v12 allowsOverflow:{width, height}];
  v86.origin.x = v62;
  v86.origin.y = v63;
  v86.size.width = v64;
  v86.size.height = v65;
  v79.origin.x = v56;
  v79.origin.y = v57;
  v79.size.width = v58;
  v79.size.height = v59;
  v80 = CGRectUnion(v79, v86);
  v66 = v80.origin.x;
  v67 = v80.origin.y;
  v68 = v80.size.width;
  v69 = v80.size.height;

  if ((v19 & 1) == 0)
  {
    if (!v18)
    {
      v81.origin.x = v66;
      v81.origin.y = v67;
      v81.size.width = v68;
      v81.size.height = v69;
      if (CGRectGetWidth(v81) < width)
      {
        v68 = width;
      }
    }

    if (height > 0.0)
    {
      v82.origin.x = v66;
      v82.origin.y = v67;
      v82.size.width = v68;
      v82.size.height = v69;
      v69 = fmin(height, CGRectGetHeight(v82));
    }

    if (width > 0.0)
    {
      v83.origin.x = v66;
      v83.origin.y = v67;
      v83.size.width = v68;
      v83.size.height = v69;
      v68 = fmin(width, CGRectGetWidth(v83));
    }
  }

  v70 = v68;
  v71 = v69;
  result.height = v71;
  result.width = v70;
  return result;
}

- (void)_addSubview:(id)subview maxViewWidth:(double)width
{
  subviewCopy = subview;
  superview = [subviewCopy superview];

  if (superview != self)
  {
    [(_TVRowView *)self addSubview:subviewCopy];
  }

  [(_TVRowView *)self bounds];
  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [subviewCopy tv_textSizeForWidth:width];
  }

  else
  {
    [subviewCopy sizeThatFits:{width, v8}];
  }

  [subviewCopy setBounds:{0.0, 0.0, v9, v10}];
}

- (int64_t)_alignmentFromView:(id)view
{
  result = [view tv_alignment];
  if (!result)
  {
    return 2;
  }

  return result;
}

- (void)_resetSubviews
{
  subviews = [(_TVRowView *)self subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  [(_TVRowView *)self setNeedsLayout];
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v19 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  components = [(_TVRowView *)self components];
  v7 = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(components);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) tv_impressionableElementsForDocument:documentCopy];
        [array addObjectsFromArray:v11];
      }

      v8 = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    v12 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)_alignComponents:(id)components withLineSize:(CGSize)size boundingRect:(CGRect)rect originYBump:(double)bump verticalAlignment:(int64_t)alignment horizontalAlignment:(int64_t)horizontalAlignment
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = size.height;
  v16 = size.width;
  v42 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v18 = CGRectGetWidth(v43) - v16;
  if (horizontalAlignment != 2)
  {
    if (horizontalAlignment == 9)
    {
      firstObject = [componentsCopy firstObject];
      [firstObject origin];
      v21 = v20;

      lastObject = [componentsCopy lastObject];
      [lastObject tv_nonDirectionalMargin];
      v24 = v23;

      v18 = floor((v18 - v21 - v24) * 0.5);
    }

    else
    {
      v18 = 0.0;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = componentsCopy;
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v38;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v37 + 1) + 8 * i);
        if (alignment == 3)
        {
          [v30 bounds];
          v33 = v15 - CGRectGetHeight(v44);
          [v30 tv_margin];
          v32 = v33 - v34;
        }

        else if (alignment == 1)
        {
          [v30 tv_margin];
          v32 = v31 + 0.0;
        }

        else
        {
          [v30 bounds];
          v32 = floor((v15 - CGRectGetHeight(v45)) * 0.5);
        }

        [v30 origin];
        v36 = v18 + v35;
        [v30 bounds];
        [v30 setFrame:{v36, v32 + bump}];
      }

      v27 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v27);
  }
}

+ (CGRect)_leftAlignedFrameForComponent:(id)component previousComponent:(id)previousComponent interitemSpacing:(double)spacing
{
  componentCopy = component;
  previousComponentCopy = previousComponent;
  v9 = previousComponentCopy;
  if (previousComponentCopy)
  {
    [previousComponentCopy tv_nonDirectionalMargin];
    v11 = v10;
  }

  else
  {
    v11 = *(MEMORY[0x277D768C8] + 24);
  }

  [componentCopy tv_nonDirectionalMargin];
  v13 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [componentCopy tv_textSizeForWidth:1.79769313e308];
  }

  else
  {
    [componentCopy sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  }

  v16 = v14;
  v17 = v15;
  v18 = fmax(v13, v11);
  v19 = fmax(v18, spacing);
  if (v9)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = 0.0;
  v22 = v20;
  v23 = v16;
  v24 = v17;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

+ (CGRect)_boundingRectForComponents:(id)components interitemSpacing:(double)spacing boundingSize:(CGSize)size horizontalAlignment:(int64_t)alignment allowsOverflow:(BOOL)overflow
{
  overflowCopy = overflow;
  width = size.width;
  v69 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v51 = *(MEMORY[0x277CBF3A0] + 8);
  v52 = *MEMORY[0x277CBF3A0];
  v49 = *(MEMORY[0x277CBF3A0] + 24);
  v50 = *(MEMORY[0x277CBF3A0] + 16);
  if ([componentsCopy count])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = componentsCopy;
    v11 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v65;
      v63 = &stru_287E12870;
      v15 = v49;
      v16 = v50;
      y = v51;
      x = v52;
      v53 = ceil(width);
      Height = 0.0;
      v55.size.width = v50;
      v55.size.height = v49;
      v55.origin.x = v52;
      v55.origin.y = v51;
      do
      {
        v19 = 0;
        v57 = v12;
        do
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v64 + 1) + 8 * v19);
          [objc_opt_class() _leftAlignedFrameForComponent:v20 previousComponent:v13 interitemSpacing:spacing];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          [v20 tv_nonDirectionalMargin];
          if (alignment == 2)
          {
            v30 = 0.0;
          }

          else
          {
            v30 = v29;
          }

          if (v13)
          {
            v31 = 0;
          }

          else
          {
            v31 = alignment == 2;
          }

          if (v31)
          {
            v22 = 0.0;
          }

          if (overflowCopy)
          {
            v60 = v30;
            v32 = v14;
            selfCopy = self;
            v34 = overflowCopy;
            v70.origin.x = x;
            v70.origin.y = y;
            v70.size.width = v16;
            v70.size.height = v15;
            v59 = CGRectGetWidth(v70);
            v71.origin.x = v22;
            v61 = v24;
            v71.origin.y = v24;
            v71.size.width = v26;
            v71.size.height = v28;
            MaxX = CGRectGetMaxX(v71);
            v36 = [v20 valueForTVViewStyle:@"tv-group"];
            v37 = v36;
            v38 = &stru_287E12870;
            if (v36)
            {
              v38 = v36;
            }

            v39 = v38;

            v40 = [(__CFString *)v63 isEqualToString:v39];
            if (width == 0.0 || ((ceil(v60 + v59 + MaxX) <= v53) & v40) != 0)
            {
              v63 = v39;
            }

            else
            {
              [v13 tv_nonDirectionalMargin];
              v78.size.width = v16 + v42;
              v78.origin.y = Height + y;
              v78.origin.x = x;
              v78.size.height = v15;
              v55 = CGRectUnion(v55, v78);
              Height = CGRectGetHeight(v55);

              v13 = 0;
              v63 = v39;
              v15 = v49;
              v16 = v50;
              y = v51;
              x = v52;
            }

            overflowCopy = v34;
            self = selfCopy;
            v14 = v32;
            v12 = v57;
            v24 = v61;
          }

          v41 = v13;
          v72.origin.x = x;
          v72.origin.y = y;
          v72.size.width = v16;
          v72.size.height = v15;
          v77.origin.x = v22 + CGRectGetWidth(v72);
          v73.origin.x = x;
          v73.origin.y = y;
          v73.size.width = v16;
          v73.size.height = v15;
          v77.origin.y = v24;
          v77.size.width = v26;
          v77.size.height = v28;
          v74 = CGRectUnion(v73, v77);
          x = v74.origin.x;
          y = v74.origin.y;
          v16 = v74.size.width;
          v15 = v74.size.height;
          v13 = v20;

          ++v19;
        }

        while (v12 != v19);
        v43 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
        v12 = v43;
      }

      while (v43);
    }

    else
    {
      v13 = 0;
      v63 = &stru_287E12870;
      Height = 0.0;
      v15 = v49;
      v16 = v50;
      y = v51;
      x = v52;
      v55.size.width = v50;
      v55.size.height = v49;
      v55.origin.x = v52;
      v55.origin.y = v51;
    }

    [v13 tv_nonDirectionalMargin];
    v79.size.width = v16 + v44;
    v79.origin.y = Height + y;
    v79.origin.x = x;
    v79.size.height = v15;
    v75 = CGRectUnion(v55, v79);
    v51 = v75.origin.y;
    v52 = v75.origin.x;
    v49 = v75.size.height;
    v50 = v75.size.width;
  }

  v46 = v51;
  v45 = v52;
  v48 = v49;
  v47 = v50;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (UIView)preferredFocusedComponent
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredFocusedComponent);

  return WeakRetained;
}

- (UIView)lastFocusedView
{
  WeakRetained = objc_loadWeakRetained(&self->_lastFocusedView);

  return WeakRetained;
}

@end