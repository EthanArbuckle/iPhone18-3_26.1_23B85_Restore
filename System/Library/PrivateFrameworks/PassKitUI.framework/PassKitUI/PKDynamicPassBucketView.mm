@interface PKDynamicPassBucketView
- (CGSize)_measureAndFitEvenlySizedSubviewsForSize:(CGSize)a3;
- (CGSize)_measureAndFitVariablySizedSubviewsForSize:(CGSize)a3;
- (CGSize)fittedSizeFor:(CGSize)a3;
- (PKDynamicPassBucketView)initWithBucket:(id)a3;
- (id)_fieldViewsByWidth;
- (void)_createFieldViewsIfNecessary;
- (void)layoutSubviews;
- (void)setLabelBlendMode:(id)a3;
- (void)setLabelTextColor:(id)a3;
- (void)setValueBlendMode:(id)a3;
- (void)setValueTextColor:(id)a3;
@end

@implementation PKDynamicPassBucketView

- (PKDynamicPassBucketView)initWithBucket:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKDynamicPassBucketView;
  v6 = [(PKDynamicPassBucketView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bucket, a3);
  }

  return v7;
}

- (void)setLabelTextColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!CGColorEqualToColor(-[UIColor CGColor](self->_labelTextColor, "CGColor"), [v5 CGColor]))
  {
    objc_storeStrong(&self->_labelTextColor, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_fieldViews;
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

          [*(*(&v11 + 1) + 8 * v10++) setLabelTextColor:{v5, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setLabelBlendMode:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_labelBlendMode;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v7 && v6)
    {
      v9 = [(NSString *)v6 isEqualToString:v7];

      if (v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_labelBlendMode, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_fieldViews;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * i) setLabelBlendMode:{v8, v15}];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

LABEL_16:
}

- (void)setValueTextColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!CGColorEqualToColor(-[UIColor CGColor](self->_valueTextColor, "CGColor"), [v5 CGColor]))
  {
    objc_storeStrong(&self->_valueTextColor, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_fieldViews;
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

          [*(*(&v11 + 1) + 8 * v10++) setValueTextColor:{v5, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setValueBlendMode:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_valueBlendMode;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v7 && v6)
    {
      v9 = [(NSString *)v6 isEqualToString:v7];

      if (v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_valueBlendMode, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_fieldViews;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * i) setValueBlendMode:{v8, v15}];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

LABEL_16:
}

- (void)layoutSubviews
{
  v63 = *MEMORY[0x1E69E9840];
  v59.receiver = self;
  v59.super_class = PKDynamicPassBucketView;
  [(PKDynamicPassBucketView *)&v59 layoutSubviews];
  if ([(NSArray *)self->_bucket count])
  {
    [(PKDynamicPassBucketView *)self _createFieldViewsIfNecessary];
    [(PKDynamicPassBucketView *)self bounds];
    v5 = v3;
    sizingRule = self->_sizingRule;
    if (sizingRule == 1)
    {
      [(PKDynamicPassBucketView *)self _measureAndFitEvenlySizedSubviewsForSize:v3, v4];
    }

    else if (!sizingRule)
    {
      [(PKDynamicPassBucketView *)self _measureAndFitVariablySizedSubviewsForSize:v3, v4];
    }

    layoutDirection = self->_layoutDirection;
    distribution = self->_distribution;
    if (distribution == 1)
    {
      v23 = [(NSArray *)self->_fieldViews count];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v24 = self->_fieldViews;
      v25 = [(NSArray *)v24 countByEnumeratingWithState:&v51 objects:v61 count:16];
      v26 = 0.0;
      v27 = 0.0;
      if (v25)
      {
        v28 = v25;
        v29 = *v52;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v52 != v29)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v51 + 1) + 8 * i) frame];
            v27 = v27 + v31 + self->_spacing;
          }

          v28 = [(NSArray *)v24 countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v28);
      }

      v32 = v5 - (v27 - self->_spacing);
      if (v32 > 0.0 && v23 >= 2)
      {
        v26 = v32 / (v23 - 1);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v9 = self->_fieldViews;
      v34 = [(NSArray *)v9 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v34)
      {
        v35 = v34;
        if (layoutDirection != 1)
        {
          v5 = 0.0;
        }

        v36 = *v48;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v48 != v36)
            {
              objc_enumerationMutation(v9);
            }

            v38 = *(*(&v47 + 1) + 8 * j);
            [v38 frame];
            v41 = v39;
            v42 = v40;
            if (layoutDirection == 1)
            {
              v44 = v5 - v39;
            }

            else
            {
              v44 = v5;
            }

            v45 = 0;
            if (layoutDirection == 1)
            {
              v43 = v5 - v39;
              v5 = CGRectGetMinX(*(&v39 - 2)) - v26 - self->_spacing;
            }

            else
            {
              v46 = v5;
              v5 = v26 + CGRectGetMaxX(*(&v39 - 2)) + self->_spacing;
            }

            [v38 setFrame:{v44, 0.0, v41, v42}];
          }

          v35 = [(NSArray *)v9 countByEnumeratingWithState:&v47 objects:v60 count:16];
        }

        while (v35);
      }
    }

    else
    {
      if (distribution)
      {
        return;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v9 = self->_fieldViews;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (v10)
      {
        v11 = v10;
        if (layoutDirection != 1)
        {
          v5 = 0.0;
        }

        v12 = *v56;
        do
        {
          for (k = 0; k != v11; ++k)
          {
            if (*v56 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v55 + 1) + 8 * k);
            [v14 frame];
            v17 = v15;
            v18 = v16;
            if (layoutDirection == 1)
            {
              v20 = v5 - v15;
            }

            else
            {
              v20 = v5;
            }

            v21 = 0;
            if (layoutDirection == 1)
            {
              v19 = v5 - v15;
              v5 = CGRectGetMinX(*(&v15 - 2)) - self->_spacing;
            }

            else
            {
              v22 = v5;
              v5 = CGRectGetMaxX(*(&v15 - 2)) + self->_spacing;
            }

            [v14 setFrame:{v20, 0.0, v17, v18}];
          }

          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v55 objects:v62 count:16];
        }

        while (v11);
      }
    }
  }
}

- (CGSize)fittedSizeFor:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PKDynamicPassBucketView *)self _createFieldViewsIfNecessary];
  sizingRule = self->_sizingRule;
  if (sizingRule == 1)
  {
    [(PKDynamicPassBucketView *)self _measureAndFitEvenlySizedSubviewsForSize:width, height];
  }

  else if (!sizingRule)
  {
    [(PKDynamicPassBucketView *)self _measureAndFitVariablySizedSubviewsForSize:width, height];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_createFieldViewsIfNecessary
{
  if (![(NSArray *)self->_fieldViews count])
  {
    sortedFieldViews = self->_sortedFieldViews;
    self->_sortedFieldViews = MEMORY[0x1E695E0F0];

    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bucket = self->_bucket;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __55__PKDynamicPassBucketView__createFieldViewsIfNecessary__block_invoke;
    v12 = &unk_1E8013970;
    v13 = self;
    v14 = v4;
    v6 = v4;
    [(NSArray *)bucket enumerateObjectsUsingBlock:&v9];
    v7 = [v6 copy];
    fieldViews = self->_fieldViews;
    self->_fieldViews = v7;
  }
}

void __55__PKDynamicPassBucketView__createFieldViewsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [[_PKSimpleFieldView alloc] initWithField:v3];

  [*(a1 + 32) verticalPadding];
  [(_PKSimpleFieldView *)v10 setVerticalPadding:?];
  v4 = [*(a1 + 32) labelFont];
  [(_PKSimpleFieldView *)v10 setLabelFont:v4];

  v5 = [*(a1 + 32) labelTextColor];
  [(_PKSimpleFieldView *)v10 setLabelTextColor:v5];

  v6 = [*(a1 + 32) labelBlendMode];
  [(_PKSimpleFieldView *)v10 setLabelBlendMode:v6];

  v7 = [*(a1 + 32) valueFont];
  [(_PKSimpleFieldView *)v10 setValueFont:v7];

  v8 = [*(a1 + 32) valueTextColor];
  [(_PKSimpleFieldView *)v10 setValueTextColor:v8];

  v9 = [*(a1 + 32) valueBlendMode];
  [(_PKSimpleFieldView *)v10 setValueBlendMode:v9];

  [*(a1 + 40) addObject:v10];
  [*(a1 + 32) addSubview:v10];
}

- (CGSize)_measureAndFitEvenlySizedSubviewsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v83 = *MEMORY[0x1E69E9840];
  [(PKDynamicPassBucketView *)self bounds];
  if (v7 == width)
  {
    v9 = v8;
    v10 = v7;
  }

  else
  {
    v11 = [(NSArray *)self->_fieldViews count];
    spacing = self->_spacing;
    v13 = self->_valueFont;
    resizedValueFont = self->_resizedValueFont;
    self->_resizedValueFont = 0;

    [(UIFont *)v13 pointSize];
    v71 = v15;
    minResizeScale = self->_minResizeScale;
    v17 = [(PKDynamicPassBucketView *)self labelFont];
    [v17 capHeight];
    v19 = v18;
    [(UIFont *)v13 capHeight];
    v21 = v19 / v20;
    if (minResizeScale > v19 / v20)
    {
      v25 = self->_minResizeScale;
    }

    else
    {
      v3 = [(PKDynamicPassBucketView *)self labelFont];
      [v3 capHeight];
      v23 = v22;
      [(UIFont *)v13 capHeight];
      v25 = v23 / v24;
    }

    v70 = 1.0;
    if (v25 <= 1.0)
    {
      v26 = self->_minResizeScale;
      v27 = [(PKDynamicPassBucketView *)self labelFont];
      [v27 capHeight];
      v29 = v28;
      [(UIFont *)v13 capHeight];
      if (v26 <= v29 / v30)
      {
        v31 = [(PKDynamicPassBucketView *)self labelFont];
        [v31 capHeight];
        v33 = v32;
        [(UIFont *)v13 capHeight];
        v70 = v33 / v34;
      }

      else
      {
        v70 = self->_minResizeScale;
      }
    }

    if (minResizeScale <= v21)
    {
    }

    v72 = height;
    v10 = width;
    v35 = (width - (v11 - 1) * spacing) / v11;

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v36 = self->_fieldViews;
    v37 = [(NSArray *)v36 countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v78;
      v40 = *MEMORY[0x1E695EFF8];
      v41 = *(MEMORY[0x1E695EFF8] + 8);
      v9 = 0.0;
      v42 = v71;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v78 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v44 = *(*(&v77 + 1) + 8 * i);
          [v44 setValueFont:v13];
          [v44 sizeThatFits:{v10, v72}];
          v46 = v45;
          v48 = v47;
          [v44 setFrame:{v40, v41, v45, v47}];
          v49 = [v44 valueLabel];
          [v49 sizeThatFits:{v46, v48}];
          v51 = v50;

          if (v51 > v35)
          {
            v52 = v35 / v51;
            if (v35 / v51 <= v70)
            {
              v52 = v70;
            }

            v53 = floor(v71 * v52);
            if (v53 < v42)
            {
              v42 = v53;
            }
          }

          if (v9 <= v48)
          {
            v9 = v48;
          }
        }

        v38 = [(NSArray *)v36 countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v38);
    }

    else
    {
      v9 = 0.0;
      v42 = v71;
    }

    if (v42 != v71)
    {
      v54 = MEMORY[0x1E69DB878];
      v55 = [(UIFont *)v13 fontDescriptor];
      v56 = [v54 fontWithDescriptor:v55 size:v42];

      objc_storeStrong(&self->_resizedValueFont, v56);
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v57 = self->_fieldViews;
      v58 = [(NSArray *)v57 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v74;
        v61 = *MEMORY[0x1E695EFF8];
        v62 = *(MEMORY[0x1E695EFF8] + 8);
        v9 = 0.0;
        do
        {
          for (j = 0; j != v59; ++j)
          {
            if (*v74 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v64 = *(*(&v73 + 1) + 8 * j);
            [v64 setValueFont:v56];
            [v64 sizeThatFits:{v35, v72}];
            v66 = v65;
            [v64 setFrame:{v61, v62, v67, v65}];
            if (v9 <= v66)
            {
              v9 = v66;
            }
          }

          v59 = [(NSArray *)v57 countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v59);
      }

      else
      {
        v9 = 0.0;
      }
    }
  }

  v68 = v10;
  v69 = v9;
  result.height = v69;
  result.width = v68;
  return result;
}

- (CGSize)_measureAndFitVariablySizedSubviewsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v95 = *MEMORY[0x1E69E9840];
  [(PKDynamicPassBucketView *)self bounds];
  if (v7 == width)
  {
    v9 = v8;
    width = v7;
    goto LABEL_48;
  }

  v81 = height;
  v10 = [(NSArray *)self->_fieldViews count];
  spacing = self->_spacing;
  v12 = self->_valueFont;
  resizedValueFont = self->_resizedValueFont;
  self->_resizedValueFont = 0;

  minResizeScale = self->_minResizeScale;
  v15 = [(PKDynamicPassBucketView *)self labelFont];
  [v15 capHeight];
  v17 = v16;
  [(UIFont *)v12 capHeight];
  v19 = v17 / v18;
  if (minResizeScale > v17 / v18)
  {
    v23 = self->_minResizeScale;
  }

  else
  {
    v3 = [(PKDynamicPassBucketView *)self labelFont];
    [v3 capHeight];
    v21 = v20;
    [(UIFont *)v12 capHeight];
    v23 = v21 / v22;
  }

  v24 = v10 - 1;
  v25 = 1.0;
  if (v23 <= 1.0)
  {
    v26 = self->_minResizeScale;
    v27 = [(PKDynamicPassBucketView *)self labelFont];
    [v27 capHeight];
    v29 = v28;
    [(UIFont *)v12 capHeight];
    if (v26 <= v29 / v30)
    {
      v31 = [(PKDynamicPassBucketView *)self labelFont];
      [v31 capHeight];
      v33 = v32;
      [(UIFont *)v12 capHeight];
      v25 = v33 / v34;
    }

    else
    {
      v25 = self->_minResizeScale;
    }
  }

  if (minResizeScale <= v19)
  {
  }

  v35 = width - v24 * spacing;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v36 = self->_fieldViews;
  v37 = [(NSArray *)v36 countByEnumeratingWithState:&v89 objects:v94 count:16];
  if (v37)
  {
    v38 = v37;
    v79 = v25;
    v80 = width - v24 * spacing;
    v39 = *v90;
    v40 = *(MEMORY[0x1E695EFF8] + 8);
    v82 = *MEMORY[0x1E695EFF8];
    v9 = 0.0;
    v41 = 0.0;
    v42 = 0.0;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v90 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v44 = *(*(&v89 + 1) + 8 * i);
        [v44 setValueFont:{v12, *&v79}];
        [v44 sizeThatFits:{width, v81}];
        v46 = v45;
        v48 = v47;
        [v44 setFrame:{v82, v40, v45, v47}];
        v42 = v42 + v46;
        v49 = [v44 labelLabel];
        [v49 sizeThatFits:{v46, v48}];
        v50 = width;
        v52 = v51;

        v53 = [v44 valueLabel];
        [v53 sizeThatFits:{v46, v48}];
        v55 = v54;

        v56 = v52 < v55;
        width = v50;
        if (v56)
        {
          v41 = v41 + v55;
        }

        if (v9 <= v48)
        {
          v9 = v48;
        }
      }

      v38 = [(NSArray *)v36 countByEnumeratingWithState:&v89 objects:v94 count:16];
    }

    while (v38);

    v35 = v80;
    if (v42 <= v80 || v41 <= 0.0)
    {
      goto LABEL_42;
    }

    [(UIFont *)v12 pointSize];
    v58 = (v80 - (v42 - v41)) / v41;
    if (v58 < v79)
    {
      v58 = v79;
    }

    v59 = v58 * v57;
    v60 = floorf(v59);
    v61 = MEMORY[0x1E69DB878];
    v62 = [(UIFont *)v12 fontDescriptor];
    v36 = [v61 fontWithDescriptor:v62 size:v60];

    objc_storeStrong(&self->_resizedValueFont, v36);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v63 = self->_fieldViews;
    v64 = [(NSArray *)v63 countByEnumeratingWithState:&v85 objects:v93 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v86;
      v9 = 0.0;
      v42 = 0.0;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v86 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v85 + 1) + 8 * j);
          [v68 setValueFont:v36];
          [v68 sizeThatFits:{width, v81}];
          v70 = v69;
          v72 = v71;
          [v68 setFrame:{v82, v40, v69, v71}];
          v42 = v42 + v70;
          if (v9 <= v72)
          {
            v9 = v72;
          }
        }

        v65 = [(NSArray *)v63 countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v65);
    }

    else
    {
      v9 = 0.0;
      v42 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
    v42 = 0.0;
  }

LABEL_42:
  if (v42 > v35)
  {
    v73 = [(PKDynamicPassBucketView *)self _fieldViewsByWidth];
    v74 = 0;
    v75 = [v73 count] - 1;
    do
    {
      v76 = v74;
      v74 = [v73 objectAtIndex:v75];

      [v74 frame];
      memset(&remainder, 0, sizeof(remainder));
      memset(&slice, 0, sizeof(slice));
      CGRectDivide(v97, &slice, &remainder, v42 - v35, CGRectMaxXEdge);
      [v74 setFrame:{remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height}];
      if (!v75)
      {
        break;
      }

      v42 = v42 - slice.size.width;
      --v75;
    }

    while (v42 > v35);
  }

LABEL_48:
  v77 = width;
  v78 = v9;
  result.height = v78;
  result.width = v77;
  return result;
}

- (id)_fieldViewsByWidth
{
  if (![(NSArray *)self->_sortedFieldViews count])
  {
    v3 = [(NSArray *)self->_fieldViews sortedArrayUsingComparator:&__block_literal_global_261];
    sortedFieldViews = self->_sortedFieldViews;
    self->_sortedFieldViews = v3;
  }

  v5 = self->_sortedFieldViews;

  return v5;
}

uint64_t __45__PKDynamicPassBucketView__fieldViewsByWidth__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 bounds];
  v6 = v5;
  [v4 bounds];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

@end