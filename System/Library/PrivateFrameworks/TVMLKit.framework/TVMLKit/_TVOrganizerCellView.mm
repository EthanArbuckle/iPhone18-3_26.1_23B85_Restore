@interface _TVOrganizerCellView
- (CGSize)_sizeThatFitsComponents:(id)components boundingSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TVOrganizerCellView)initWithFrame:(CGRect)frame;
- (int64_t)_alignmentFromView:(id)view;
- (void)_resetSubviews;
- (void)_updateView:(id)view maxViewWidth:(double)width;
- (void)_verticallyStackComponents:(id)components alignment:(int64_t)alignment;
- (void)layoutSubviews;
- (void)setComponents:(id)components;
- (void)setContentVerticalAlignment:(int64_t)alignment;
@end

@implementation _TVOrganizerCellView

- (_TVOrganizerCellView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVOrganizerCellView;
  v3 = [(_TVOrganizerCellView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_TVOrganizerCellView *)v3 setBackgroundColor:clearColor];

    [(_TVOrganizerCellView *)v3 setOpaque:0];
    v3->_contentVerticalAlignment = 1;
  }

  return v3;
}

- (void)setContentVerticalAlignment:(int64_t)alignment
{
  if (self->_contentVerticalAlignment != alignment)
  {
    self->_contentVerticalAlignment = alignment;
    subviews = [(_TVOrganizerCellView *)self subviews];
    v5 = [subviews count];

    if (v5)
    {
      filteredComponents = [(_TVOrganizerCellView *)self filteredComponents];
      [(_TVOrganizerCellView *)self _verticallyStackComponents:filteredComponents alignment:self->_contentVerticalAlignment];
    }
  }
}

- (void)setComponents:(id)components
{
  v20 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  objc_storeStrong(&self->_components, components);
  [(_TVOrganizerCellView *)self setNeedsLayout];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = componentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:{v12, v15}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 count];
  if (v13)
  {
    v14 = [v6 copy];
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_filteredComponents, v14);
  if (v13)
  {
  }

  [(_TVOrganizerCellView *)self _resetSubviews];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  filteredComponents = [(_TVOrganizerCellView *)self filteredComponents];
  [(_TVOrganizerCellView *)self _sizeThatFitsComponents:filteredComponents boundingSize:width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = _TVOrganizerCellView;
  [(_TVOrganizerCellView *)&v26 layoutSubviews];
  [(_TVOrganizerCellView *)self bounds];
  v4 = v3;
  filteredComponents = [(_TVOrganizerCellView *)self filteredComponents];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [filteredComponents countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(filteredComponents);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        superview = [v10 superview];

        if (superview != self)
        {
          [(_TVOrganizerCellView *)self addSubview:v10];
        }
      }

      v7 = [filteredComponents countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = filteredComponents;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_TVOrganizerCellView *)self _updateView:*(*(&v18 + 1) + 8 * j) maxViewWidth:v4, v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v14);
  }

  filteredComponents2 = [(_TVOrganizerCellView *)self filteredComponents];
  [(_TVOrganizerCellView *)self _verticallyStackComponents:filteredComponents2 alignment:[(_TVOrganizerCellView *)self contentVerticalAlignment]];
}

- (void)_verticallyStackComponents:(id)components alignment:(int64_t)alignment
{
  v67 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  [(_TVOrganizerCellView *)self bounds];
  v55 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 16);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v16 = componentsCopy;
  v17 = [v16 countByEnumeratingWithState:&v61 objects:v66 count:16];
  v18 = 0.0;
  if (v17)
  {
    v19 = v17;
    v20 = 0;
    v21 = *v62;
    v22 = 0.0;
    do
    {
      v23 = 0;
      v24 = v20;
      v25 = v15;
      do
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v26 = *(*(&v61 + 1) + 8 * v23);
        [v26 tv_margin];
        v15 = v28;
        v29 = fmax(v27, v25);
        if (v24)
        {
          v30 = v29;
        }

        else
        {
          v30 = v27;
        }

        if (!v24)
        {
          v14 = v27;
        }

        [v26 bounds];
        v22 = v22 + v30 + v31;
        v20 = v26;

        ++v23;
        v24 = v20;
        v25 = v15;
      }

      while (v19 != v23);
      v19 = [v16 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v19);
  }

  else
  {
    v22 = 0.0;
  }

  v32 = v15 + v22;
  switch(alignment)
  {
    case 3:
      v18 = floor(v9 + v13 - v32);
      break;
    case 2:
      v18 = floor((v13 - (v32 - v14 - v15)) * 0.5) - v14;
      break;
    case 1:
      v18 = floor(v9);
      break;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v33 = v16;
  v34 = [v33 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v58;
    v54 = v55 + v11;
    v56 = v55 + v11 * 0.5;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        v38 = v14;
        if (*v58 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v39 = *(*(&v57 + 1) + 8 * i);
        [v39 tv_margin];
        v41 = v40;
        v43 = v42;
        v14 = v44;
        v46 = v45;
        [v39 center];
        v47 = [(_TVOrganizerCellView *)self _alignmentFromView:v39];
        v48 = v56;
        if (v47 != 2)
        {
          if (v47 == 3)
          {
            [v39 bounds];
            v48 = v54 - v46 + v49 * -0.5;
          }

          else
          {
            [v39 bounds];
            v48 = v55 + v43 + v50 * 0.5;
          }
        }

        [v39 bounds];
        v52 = v18 + fmax(v41, v38) + v51 * 0.5;
        [v39 setCenter:{v48, v52}];
        [v39 bounds];
        v18 = v52 + v53 * 0.5;
      }

      v35 = [v33 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v35);
  }
}

- (CGSize)_sizeThatFitsComponents:(id)components boundingSize:(CGSize)size
{
  width = size.width;
  v43 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [componentsCopy countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v39;
    v13 = 0.0;
    do
    {
      v14 = 0;
      v15 = v13;
      v16 = v11;
      do
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v17 = *(*(&v38 + 1) + 8 * v14);
        [v17 tv_margin];
        v19 = v18;
        v21 = v20;
        v13 = v22;
        v24 = v23;
        if (!v16)
        {
          v15 = v18;
        }

        v11 = v17;

        v25 = v21 + v24;
        if (width - v25 > 0.0)
        {
          v26 = width - v25;
        }

        else
        {
          v26 = 0.0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 tv_textSizeForWidth:v26];
        }

        else
        {
          [v11 tv_sizeThatFits:{v26, 0.0}];
        }

        v29 = v28;
        v30 = v25 + v27;
        v31 = [(_TVOrganizerCellView *)self _alignmentFromView:v11]& 0xFFFFFFFFFFFFFFFDLL;
        if (v30 < width && v31 == 1)
        {
          v33 = width;
        }

        else
        {
          v33 = v30;
        }

        if (v7 < v33)
        {
          v7 = v33;
        }

        v8 = v8 + fmax(v19, v15) + v29;
        ++v14;
        v15 = v13;
        v16 = v11;
      }

      while (v10 != v14);
      v10 = [componentsCopy countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v10);
  }

  else
  {
    v13 = 0.0;
  }

  v34 = v7;
  v35 = ceilf(v34);
  v36 = v13 + v8;
  v37 = ceilf(v36);
  result.height = v37;
  result.width = v35;
  return result;
}

- (void)_updateView:(id)view maxViewWidth:(double)width
{
  viewCopy = view;
  [viewCopy tv_margin];
  if (width - (v6 + v7) > 0.0)
  {
    v8 = width - (v6 + v7);
  }

  else
  {
    v8 = 0.0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy tv_textSizeForWidth:v8];
  }

  else
  {
    [viewCopy tv_sizeThatFits:{v8, 0.0}];
  }

  v11 = v9;
  v12 = v10;
  v13 = [(_TVOrganizerCellView *)self _alignmentFromView:viewCopy];
  [viewCopy tv_itemWidth];
  v15 = v14;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v13 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v16 = viewCopy;
    if (v15 <= 0.0)
    {
      [viewCopy tv_maxWidth];
      v16 = viewCopy;
      v18 = fmin(v8, v17);
      if (v17 <= 0.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v18;
      }
    }
  }

  else
  {
    v16 = viewCopy;
  }

  v19 = v11;
  v20 = ceilf(v19);
  v21 = v12;
  [v16 setBounds:{0.0, 0.0, v20, ceilf(v21)}];
}

- (int64_t)_alignmentFromView:(id)view
{
  viewCopy = view;
  tv_alignment = [viewCopy tv_alignment];
  if (tv_alignment)
  {
    v5 = tv_alignment;
  }

  else
  {
    v5 = 4;
  }

  semanticContentAttribute = [viewCopy semanticContentAttribute];

  return [TVMLUtilities semanticAlignmentForAlignment:v5 semanticContentAttribute:semanticContentAttribute];
}

- (void)_resetSubviews
{
  v16 = *MEMORY[0x277D85DE8];
  subviews = [(_TVOrganizerCellView *)self subviews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        filteredComponents = [(_TVOrganizerCellView *)self filteredComponents];
        v10 = [filteredComponents containsObject:v8];

        if ((v10 & 1) == 0)
        {
          [v8 removeFromSuperview];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end