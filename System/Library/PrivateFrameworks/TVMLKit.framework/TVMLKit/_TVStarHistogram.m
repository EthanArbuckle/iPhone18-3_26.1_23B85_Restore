@interface _TVStarHistogram
+ (id)_histogramViewWithElement:(id)a3 existingView:(id)a4;
+ (id)histogramViewWithElement:(id)a3 existingView:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation _TVStarHistogram

+ (id)histogramViewWithElement:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v7 contentView];
    v9 = [v8 subviews];
    v10 = [v9 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = [v11 contentView];
      v13 = [v12 subviews];
      v14 = [v13 firstObject];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v10;
      }

      else
      {
        v14 = 0;
      }

      v11 = 0;
    }

    v15 = [v7 contentView];
    v16 = [v15 subviews];
    [v16 makeObjectsPerformSelector:sel_removeFromSuperview];

    v17 = [objc_opt_class() _histogramViewWithElement:v6 existingView:v14];

    v18 = [v7 contentView];
    [v18 addSubview:v17];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setAllowsFocus:0];
    }
  }

  else
  {
    v7 = [objc_opt_class() _histogramViewWithElement:v6 existingView:v5];
    v10 = v6;
  }

  return v7;
}

+ (id)_histogramViewWithElement:(id)a3 existingView:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v50 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = [_TVStarHistogram alloc];
    v7 = [(_TVStarHistogram *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = [v5 style];
  [v10 tv_width];
  v12 = v11;
  v13 = [v5 style];
  [v13 tv_height];
  v49 = v9;
  [(_TVStarHistogram *)v9 setFrame:0.0, 0.0, v12, v14];

  v51 = v5;
  v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v5 children];
  v15 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v55;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v54 + 1) + 8 * i);
        if ([v20 tv_elementType] == 84)
        {
          v21 = objc_alloc_init(_TVStarBar);
          v22 = [v20 attributes];
          v23 = [v22 objectForKeyedSubscript:@"numStars"];
          -[_TVStarBar setNumStars:](v21, "setNumStars:", [v23 integerValue]);

          v24 = [v20 attributes];
          v25 = [v24 objectForKeyedSubscript:@"value"];
          [v25 floatValue];
          [(_TVStarBar *)v21 setValue:v26];

          [v52 addObject:v21];
          if (!v17)
          {
            v27 = [v20 style];
            v28 = [v27 tv_tintColor];
            v17 = [v28 color];
          }

          v29 = [v20 tv_attributedString];
          [(_TVStarBar *)v21 setCountStr:v29];

          v30 = [v20 style];
          [v30 tv_margin];
          [(_TVStarBar *)v21 setBarMargin:?];

          v31 = [v20 style];
          [v31 tv_width];
          [(_TVStarBar *)v21 setBarWidth:?];

          v32 = [v20 style];
          [v32 tv_height];
          [(_TVStarBar *)v21 setHeight:?];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v33 = [v51 style];
  v34 = [v33 tv_backgroundColor];
  v35 = [v34 color];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = [MEMORY[0x277D75348] clearColor];
  }

  v38 = v37;

  [(_TVStarHistogram *)v49 setBackgroundColor:v38];
  [(_TVStarHistogram *)v49 setStarBars:v52];
  v39 = MEMORY[0x277D755B8];
  v40 = +[TVMLUtilities TVMLKitBundle];
  v41 = [v39 imageNamed:@"star_mask_s" inBundle:v40];

  if (!v17)
  {
    v17 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  }

  v42 = [v17 colorWithAlphaComponent:0.3];
  v43 = [v41 _flatImageWithColor:v42];
  [(_TVStarHistogram *)v49 setStarImage:v43];

  v44 = [v17 colorWithAlphaComponent:0.15];
  [(_TVStarHistogram *)v49 setBarEmptyColor:v44];

  v45 = [v17 colorWithAlphaComponent:0.6];
  [(_TVStarHistogram *)v49 setBarFillColor:v45];

  v46 = [v51 style];
  [v46 tv_lineSpacing];
  [(_TVStarHistogram *)v49 setLineSpacing:?];

  v47 = v49;
  return v49;
}

- (void)drawRect:(CGRect)a3
{
  width = a3.size.width;
  v72 = *MEMORY[0x277D85DE8];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v4 = self->_starBars;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v67;
    v8 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = [*(*(&v66 + 1) + 8 * i) countStr];
        [v13 boundingRectWithSize:1 options:0 context:{v8, v9}];
        v15 = v14;
        v17 = v16;

        v11 = fmax(v11, v15);
        if (v10 == 0.0)
        {
          v10 = v17;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v6);
    v18 = v10;
    v19 = v11;
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
  }

  [(UIImage *)self->_starImage size];
  v21 = v20;
  v23 = v22;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = self->_starBars;
  v24 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = ceilf(v19);
    v28 = *v63;
    v55 = v21 * 5.0 + 20.0;
    v58 = ceilf(v18);
    v59 = 0.0;
    v29 = 0.0;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v62 + 1) + 8 * j);
        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(CurrentContext);
        [v31 barMargin];
        v34 = v33;
        v36 = v35;
        [v31 barWidth];
        v38 = v37;
        [v31 height];
        v60 = v39;
        if (v26)
        {
          v40 = v59;
        }

        else
        {
          v41 = width - (v38 + v36 + v55 + v34);
          v27 = fmin(v27, v41);
          *&v41 = (v41 - v27) * 0.5;
          v40 = floorf(*&v41);
        }

        v61 = v27;
        v42 = 5;
        v59 = v40;
        do
        {
          if ([v31 numStars] >= v42)
          {
            [(UIImage *)self->_starImage drawInRect:v40, v29, v21, v23];
          }

          v40 = v21 + 5.0 + v40;
          --v42;
        }

        while (v42);
        v43 = v34 + v40;
        v44 = v29 + (v60 + -6.0) * 0.5;
        v45 = floorf(v44);
        [v31 barWidth];
        v47 = v46;
        v48 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v43 cornerRadius:{v45, v46, 6.0, 2.0}];
        [(UIColor *)self->_barEmptyColor set];
        [v48 fill];
        [v31 value];
        v50 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v43 cornerRadius:{v45, v47 * fmax(fmin(v49, 1.0), 0.0), 6.0, 2.0}];

        [(UIColor *)self->_barFillColor set];
        [v50 fill];
        [v31 barWidth];
        v52 = v43 + v36 + v51;
        v53 = [v31 countStr];
        v54 = v29 + (v60 - v58) * 0.5;
        v27 = v61;
        [v53 drawInRect:{v52, floorf(v54), v61}];

        v29 = v29 + v60 + self->_lineSpacing;
        CGContextRestoreGState(CurrentContext);

        v26 = 1;
      }

      v25 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v25);
  }
}

@end