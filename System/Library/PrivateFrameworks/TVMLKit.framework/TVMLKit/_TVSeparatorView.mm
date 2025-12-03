@interface _TVSeparatorView
+ (id)separatorViewWithElement:(id)element existingView:(id)view;
- (BOOL)canBecomeFocused;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)separatorComponent;
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)setSeparatorComponent:(id)component;
@end

@implementation _TVSeparatorView

+ (id)separatorViewWithElement:(id)element existingView:(id)view
{
  v34 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  viewCopy = view;
  objc_opt_class();
  v28 = viewCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
  }

  else
  {
    v8 = [_TVSeparatorView alloc];
    v7 = [(_TVSeparatorView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  children = [elementCopy children];
  v11 = [children countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(children);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = +[TVInterfaceFactory sharedInterfaceFactory];
        separatorComponent = [(_TVSeparatorView *)v9 separatorComponent];
        v18 = [v16 _viewFromElement:v15 existingView:separatorComponent];

        if (v18)
        {
          [(_TVSeparatorView *)v9 setSeparatorComponent:v18];

          goto LABEL_14;
        }
      }

      v12 = [children countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  style = [elementCopy style];
  tv_tintColor = [style tv_tintColor];
  color = [tv_tintColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] opaqueSeparatorColor];
  }

  [(_TVSeparatorView *)v9 setTintColor:color];
  style2 = [elementCopy style];
  [style2 tv_height];
  v24 = v23;

  if (v24 <= 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v24 = 1.0 / v26;
  }

  [(_TVSeparatorView *)v9 setLineHeight:v24];

  return v9;
}

- (BOOL)canBecomeFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_separatorComponent);
  if ([WeakRetained canBecomeFocused])
  {
    v4 = objc_loadWeakRetained(&self->_separatorComponent);
    v5 = [v4 isFocused] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_separatorComponent);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_separatorComponent);
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)setSeparatorComponent:(id)component
{
  obj = component;
  WeakRetained = objc_loadWeakRetained(&self->_separatorComponent);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_separatorComponent);
    [v5 removeFromSuperview];

    v6 = objc_storeWeak(&self->_separatorComponent, obj);
    if (obj)
    {
      v7 = objc_loadWeakRetained(&self->_separatorComponent);
      [(_TVSeparatorView *)self addSubview:v7];
    }
  }

  [(_TVSeparatorView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIView *)self tv_padding];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_separatorComponent);
  [WeakRetained tv_sizeThatFits:{width, height}];
  v12 = v11;

  lineHeight = self->_lineHeight;
  v14 = v7 + v9 + fmax(v12, ceilf(lineHeight));
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  [(_TVSeparatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self tv_padding];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  p_line1 = &self->_line1;
  line1 = self->_line1;
  if (!line1)
  {
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    v20 = *p_line1;
    *p_line1 = v19;

    [(_TVSeparatorView *)self addSubview:*p_line1];
    line1 = *p_line1;
  }

  [(UIView *)line1 setBackgroundColor:self->_tintColor];
  WeakRetained = objc_loadWeakRetained(&self->_separatorComponent);

  if (!WeakRetained)
  {
    [(UIView *)self->_line2 removeFromSuperview];
    line2 = self->_line2;
    self->_line2 = 0;

    v75.origin.x = v4;
    v75.origin.y = v6;
    v75.size.width = v8;
    v75.size.height = v10;
    v47 = CGRectGetWidth(v75) - v14 - v16;
    lineHeight = self->_lineHeight;
    v49 = v12;
    goto LABEL_16;
  }

  v66 = v4;
  v67 = v8;
  v72 = v6;
  rect = v10;
  v69 = v16;
  v22 = objc_loadWeakRetained(&self->_separatorComponent);
  tv_alignment = [v22 tv_alignment];

  if ((tv_alignment & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    [(UIView *)self->_line2 removeFromSuperview];
    v24 = self->_line2;
    self->_line2 = 0;
  }

  v25 = objc_loadWeakRetained(&self->_separatorComponent);
  [v25 tv_margin];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = *(MEMORY[0x277CBF3A0] + 8);
  v33 = *(MEMORY[0x277CBF3A0] + 24);
  v58 = *(MEMORY[0x277CBF3A0] + 16);
  v60 = *MEMORY[0x277CBF3A0];
  v34 = objc_loadWeakRetained(&self->_separatorComponent);
  [v34 tv_sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v71 = v35;
  v37 = v36;

  v38 = v12 + v27;
  v39 = v37;
  v40 = v37 * 0.5;
  v64 = v38;
  v70 = v38 + floorf(v40);
  if (tv_alignment == 3)
  {
    v62 = v32;
    v65 = v33;
    v76.origin.x = v66;
    v76.size.width = v67;
    v76.origin.y = v72;
    v76.size.height = rect;
    v42 = v71;
    v41 = CGRectGetWidth(v76) - v69 - v31 - v71;
    v44 = v41 - v14 - v29;
    v45 = self->_lineHeight;
    v43 = v14;
  }

  else
  {
    if (tv_alignment != 1)
    {
      v61 = v37;
      v77.origin.x = v66;
      v77.origin.y = v72;
      v77.size.width = v67;
      v77.size.height = rect;
      v50 = (CGRectGetWidth(v77) - v14 - v69 - (v31 + v29 + v71)) * 0.5;
      v41 = v14 + v29 + floorf(v50);
      v63 = v41 - v14;
      v57 = v14;
      v59 = self->_lineHeight;
      v14 = v31 + v71 + v41;
      v78.origin.x = v66;
      v78.origin.y = v72;
      v78.size.width = v67;
      v78.size.height = rect;
      v51 = CGRectGetWidth(v78) - v69;
      v65 = self->_lineHeight;
      v52 = self->_line2;
      if (!v52)
      {
        v53 = objc_alloc_init(MEMORY[0x277D75D18]);
        v54 = self->_line2;
        self->_line2 = v53;

        [(_TVSeparatorView *)self addSubview:self->_line2];
        v52 = self->_line2;
      }

      v44 = v63 - v29;
      v47 = v51 - v14;
      [(UIView *)v52 setBackgroundColor:self->_tintColor];
      v42 = v71;
      v62 = v70;
      v45 = v59;
      v39 = v61;
      v43 = v57;
      goto LABEL_15;
    }

    v62 = v32;
    v65 = v33;
    v41 = v14 + v29;
    v42 = v71;
    v74.origin.y = v72;
    v43 = v31 + v14 + v29 + v71;
    v74.origin.x = v66;
    v74.size.width = v67;
    v74.size.height = rect;
    v44 = CGRectGetWidth(v74) - v43 - v69;
    v45 = self->_lineHeight;
  }

  v47 = v58;
  v14 = v60;
LABEL_15:
  v55 = objc_loadWeakRetained(&self->_separatorComponent);
  [v55 setFrame:{v41, v64, v42, v39}];

  [(UIView *)*p_line1 setFrame:v43, v70, v44, v45];
  p_line1 = &self->_line2;
  lineHeight = v65;
  v49 = v62;
LABEL_16:
  v56 = *p_line1;

  [(UIView *)v56 setFrame:v14, v49, v47, lineHeight];
}

- (UIView)separatorComponent
{
  WeakRetained = objc_loadWeakRetained(&self->_separatorComponent);

  return WeakRetained;
}

@end