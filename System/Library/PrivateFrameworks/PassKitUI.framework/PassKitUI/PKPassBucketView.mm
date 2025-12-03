@interface PKPassBucketView
- (id)description;
- (int64_t)_backgroundForBucketTemplate:(id)template;
- (void)_measureAndFitEvenlySizedSubviews;
- (void)_measureAndFitVariablySizedSubviews;
- (void)_presentRecursiveDiff:(id)diff inView:(id)view forSubviewAtIndex:(unint64_t)index withSubviews:(id)subviews completion:(id)completion;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)setBucket:(id)bucket;
- (void)setBucketTemplate:(id)template;
- (void)setColorProfile:(id)profile;
- (void)setPass:(id)pass;
@end

@implementation PKPassBucketView

- (void)_updateSubviews
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_fieldViews)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pk_strongPointerPersonalityToWeakObjectsMapTable = [MEMORY[0x1E696AD18] pk_strongPointerPersonalityToWeakObjectsMapTable];
    templateToOriginalValueFontMap = self->_templateToOriginalValueFontMap;
    self->_templateToOriginalValueFontMap = pk_strongPointerPersonalityToWeakObjectsMapTable;

    bucket = self->_bucket;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __35__PKPassBucketView__updateSubviews__block_invoke;
    v27[3] = &unk_1E8013970;
    v27[4] = self;
    v28 = v3;
    v7 = v3;
    [(NSArray *)bucket enumerateObjectsUsingBlock:v27];
    v8 = [v7 copy];
    fieldViews = self->_fieldViews;
    self->_fieldViews = v8;
  }

  currentFieldViews = self->_currentFieldViews;
  if (currentFieldViews)
  {
    [(NSMutableArray *)currentFieldViews removeAllObjects];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = self->_currentFieldViews;
    self->_currentFieldViews = v11;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_fieldViews;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        field = [v17 field];
        if (![field foreignReferenceType])
        {
          [v17 setHidden:0];
LABEL_16:
          [(NSMutableArray *)self->_currentFieldViews addObject:v17];
          goto LABEL_18;
        }

        label = [field label];
        if (label)
        {
          v20 = label;
          value = [field value];

          [v17 setHidden:value == 0];
          if (value)
          {
            goto LABEL_16;
          }
        }

        else
        {
          [v17 setHidden:1];
        }

LABEL_18:
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v14);
  }
}

void __35__PKPassBucketView__updateSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(*(a1 + 32) + 456) templateForFieldAtIndex:a3];
  if (v7 && [*(*(a1 + 32) + 456) maxFields] > a3)
  {
    v8 = *(*(a1 + 32) + 432);
    v9 = [v7 valueFont];
    [v8 setObject:v9 forKey:v7];

    v10 = [PKPassFieldView newViewForField:v11 fieldTemplate:v7];
    [v10 setColorProfile:*(*(a1 + 32) + 448) background:*(*(a1 + 32) + 424)];
    [*(a1 + 40) addObject:v10];
    [*(a1 + 32) addSubview:v10];
  }

  else
  {
    *a4 = 1;
  }
}

- (void)layoutSubviews
{
  v69 = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = PKPassBucketView;
  [(PKPassBucketView *)&v64 layoutSubviews];
  if ([(NSArray *)self->_bucket count])
  {
    [(PKPassBucketView *)self _updateSubviews];
    [(PKPassBucketView *)self bounds];
    v4 = v3;
    bucketAlignment = [(PKPassBucketTemplate *)self->_bucketTemplate bucketAlignment];
    if (bucketAlignment == 3)
    {
      [(PKPassBucketView *)self _measureAndFitEvenlySizedSubviews];
    }

    else
    {
      [(PKPassBucketView *)self _measureAndFitVariablySizedSubviews];
    }

    [(PKPassBucketTemplate *)self->_bucketTemplate minFieldPadding];
    v7 = v6;
    v8 = [(NSMutableArray *)self->_currentFieldViews count];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v9 = self->_currentFieldViews;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v60 objects:v68 count:16];
    v11 = 0.0;
    v12 = 0.0;
    if (v10)
    {
      v13 = v10;
      v14 = *v61;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v61 != v14)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v60 + 1) + 8 * i) frame];
          v12 = v12 + v7 + v16;
        }

        v13 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v13);
    }

    v17 = v4 - (v12 - v7);
    if (v17 > 0.0 && v8 >= 2)
    {
      v11 = v17 / (v8 - 1);
    }

    if ((bucketAlignment & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v19 = self->_currentFieldViews;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v56 objects:v67 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v57;
        v23 = 0.0;
        do
        {
          v24 = 0;
          v25 = v23;
          do
          {
            if (*v57 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v56 + 1) + 8 * v24);
            [v26 frame];
            width = v70.size.width;
            height = v70.size.height;
            v70.origin.y = 0.0;
            v70.origin.x = v25;
            v23 = v7 + v11 + CGRectGetMaxX(v70);
            [v26 setFrame:{v25, 0.0, width, height}];
            ++v24;
            v25 = v23;
          }

          while (v21 != v24);
          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v56 objects:v67 count:16];
        }

        while (v21);
      }
    }

    else if (bucketAlignment)
    {
      if (bucketAlignment != 1)
      {
        return;
      }

      [(PKPassBucketTemplate *)self->_bucketTemplate bucketRect];
      v30 = v29;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v19 = self->_currentFieldViews;
      v31 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v52 objects:v66 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v53;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v53 != v33)
            {
              objc_enumerationMutation(v19);
            }

            v35 = *(*(&v52 + 1) + 8 * j);
            [v35 frame];
            v36 = v71.size.width;
            v37 = v71.size.height;
            v38 = v30 - v71.size.width;
            v71.origin.y = 0.0;
            v71.origin.x = v30 - v71.size.width;
            v30 = CGRectGetMinX(v71) - v7;
            [v35 setFrame:{v38, 0.0, v36, v37}];
          }

          v32 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v52 objects:v66 count:16];
        }

        while (v32);
      }
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v19 = self->_currentFieldViews;
      v39 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v48 objects:v65 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v49;
        v42 = 0.0;
        do
        {
          v43 = 0;
          v44 = v42;
          do
          {
            if (*v49 != v41)
            {
              objc_enumerationMutation(v19);
            }

            v45 = *(*(&v48 + 1) + 8 * v43);
            [v45 frame];
            v46 = v72.size.width;
            v47 = v72.size.height;
            v72.origin.y = 0.0;
            v72.origin.x = v44;
            v42 = v7 + CGRectGetMaxX(v72);
            [v45 setFrame:{v44, 0.0, v46, v47}];
            ++v43;
            v44 = v42;
          }

          while (v40 != v43);
          v40 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v48 objects:v65 count:16];
        }

        while (v40);
      }
    }
  }
}

- (void)_measureAndFitEvenlySizedSubviews
{
  v68 = *MEMORY[0x1E69E9840];
  defaultFieldTemplate = [(PKPassBucketTemplate *)self->_bucketTemplate defaultFieldTemplate];
  v4 = [(NSMutableArray *)self->_currentFieldViews count];
  [(PKPassBucketTemplate *)self->_bucketTemplate minFieldPadding];
  v6 = v5;
  [(PKPassBucketTemplate *)self->_bucketTemplate bucketRect];
  v8 = v7 - (v4 - 1) * v6;
  v9 = v4;
  valueFont = [defaultFieldTemplate valueFont];
  [valueFont pointSize];
  v12 = v11;

  labelFont = [defaultFieldTemplate labelFont];
  [labelFont xHeight];
  v15 = v14;
  valueFont2 = [defaultFieldTemplate valueFont];
  [valueFont2 xHeight];
  v18 = 1.0;
  if (v15 / v17 <= 1.0)
  {
    labelFont2 = [defaultFieldTemplate labelFont];
    [labelFont2 xHeight];
    v21 = v20;
    valueFont3 = [defaultFieldTemplate valueFont];
    [valueFont3 xHeight];
    v18 = v21 / v23;
  }

  v55 = defaultFieldTemplate;
  v24 = v8 / v9;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = 416;
  v25 = self->_currentFieldViews;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    v29 = v12;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v62 + 1) + 8 * i);
        fieldTemplate = [v31 fieldTemplate];
        valueFont4 = [(NSMapTable *)self->_templateToOriginalValueFontMap objectForKey:fieldTemplate];
        if (!valueFont4)
        {
          valueFont4 = [fieldTemplate valueFont];
        }

        [fieldTemplate setValueFont:valueFont4];
        [v31 setFieldTemplate:fieldTemplate];
        [(PKPassBucketTemplate *)self->_bucketTemplate bucketRect];
        [v31 sizeThatFits:{v34, v35}];
        valueLabel = [v31 valueLabel];
        [valueLabel bounds];
        v38 = v37;

        if (v38 > v24)
        {
          v39 = v24 / v38;
          if (v24 / v38 <= v18)
          {
            v39 = v18;
          }

          v40 = floor(v12 * v39);
          if (v40 < v29)
          {
            v29 = v40;
          }
        }
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v27);
  }

  else
  {
    v29 = v12;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obja = *(&self->super.super.super.isa + obj);
  v41 = [obja countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v59;
    v44 = *MEMORY[0x1E695EFF8];
    v45 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v47 = *(*(&v58 + 1) + 8 * j);
        fieldTemplate2 = [v47 fieldTemplate];
        v49 = MEMORY[0x1E69DB878];
        valueFont5 = [fieldTemplate2 valueFont];
        fontDescriptor = [valueFont5 fontDescriptor];
        v52 = [v49 fontWithDescriptor:fontDescriptor size:v29];

        [fieldTemplate2 setValueFont:v52];
        [v47 setFieldTemplate:fieldTemplate2];
        [(PKPassBucketTemplate *)self->_bucketTemplate bucketRect];
        v54 = v53;
        [v47 sizeThatFits:{v24, v53}];
        [v47 setFrame:{v44, v45, v24, v54}];
      }

      v42 = [obja countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v42);
  }
}

- (void)_measureAndFitVariablySizedSubviews
{
  selfCopy = self;
  v117 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_currentFieldViews count];
  v4 = 456;
  [(PKPassBucketTemplate *)selfCopy->_bucketTemplate minFieldPadding];
  v6 = v5;
  [(PKPassBucketTemplate *)selfCopy->_bucketTemplate bucketRect];
  v8 = v7;
  v99 = v3;
  v9 = (v3 - 1);
  defaultFieldTemplate = [(PKPassBucketTemplate *)selfCopy->_bucketTemplate defaultFieldTemplate];
  labelFont = [defaultFieldTemplate labelFont];
  [labelFont xHeight];
  v13 = v12;
  valueFont = [defaultFieldTemplate valueFont];
  [valueFont xHeight];
  v16 = 1.0;
  if (v13 / v15 <= 1.0)
  {
    labelFont2 = [defaultFieldTemplate labelFont];
    [labelFont2 xHeight];
    v19 = v18;
    valueFont2 = [defaultFieldTemplate valueFont];
    [valueFont2 xHeight];
    v16 = v19 / v21;
  }

  v100 = defaultFieldTemplate;
  v22 = v8 - v9 * v6;

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = selfCopy->_currentFieldViews;
  v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v111 objects:v116 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v112;
    v26 = *MEMORY[0x1E695EFF8];
    v27 = *(MEMORY[0x1E695EFF8] + 8);
    v28 = 0.0;
    v29 = &OBJC_IVAR___PKAdjustableSingleCellView__subDetailLineBreakMode;
    v30 = 0.0;
    do
    {
      v31 = 0;
      v101 = v24;
      do
      {
        if (*v112 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v111 + 1) + 8 * v31);
        fieldTemplate = [v32 fieldTemplate];
        valueFont3 = [*(&selfCopy->super.super.super.isa + v29[801]) objectForKey:fieldTemplate];
        if (!valueFont3)
        {
          valueFont3 = [fieldTemplate valueFont];
        }

        [fieldTemplate setValueFont:valueFont3];
        [v32 setFieldTemplate:fieldTemplate];
        [*(&selfCopy->super.super.super.isa + v4) bucketRect];
        [v32 sizeThatFits:{v35, v36}];
        v38 = v37;
        [v32 setFrame:{v26, v27, v37, v39}];
        v40 = v38;
        if (([fieldTemplate valueCanWrap] & 1) == 0)
        {
          valueLabel = [v32 valueLabel];
          [valueLabel attributedText];
          v42 = v25;
          v43 = selfCopy;
          v44 = v4;
          v46 = v45 = v29;
          [v46 size];
          v40 = ceil(v47);

          v29 = v45;
          v4 = v44;
          selfCopy = v43;
          v25 = v42;
          v24 = v101;
        }

        v30 = v30 + v38;
        labelLabel = [v32 labelLabel];
        attributedText = [labelLabel attributedText];
        [attributedText size];
        v51 = ceil(v50);

        if (v51 < v40)
        {
          v28 = v28 + v40;
        }

        ++v31;
      }

      while (v24 != v31);
      v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v111 objects:v116 count:16];
    }

    while (v24);
  }

  else
  {
    v28 = 0.0;
    v30 = 0.0;
  }

  v102 = v16;

  if (v30 <= v22)
  {
    v53 = v100;
  }

  else
  {
    v52 = ceil((v30 - v22) / v99);
    v53 = v100;
    while (1)
    {
      _fieldViewsByWidth = [(PKPassBucketView *)selfCopy _fieldViewsByWidth];
      lastObject = [_fieldViewsByWidth lastObject];

      fieldTemplate2 = [lastObject fieldTemplate];
      valueCanWrap = [fieldTemplate2 valueCanWrap];

      if (!valueCanWrap)
      {
        break;
      }

      [lastObject frame];
      if (v52 >= v58)
      {
        break;
      }

      [lastObject frame];
      v60 = v59;
      v62 = v61;
      v64 = v30 - v63;
      v65 = v63 - v52;
      [*(&selfCopy->super.super.super.isa + v4) bucketRect];
      v67 = v66;
      [lastObject invalidateCachedFieldSize];
      [lastObject sizeThatFits:{v65, v67}];
      [lastObject setFrame:{v60, v62, v65, v68}];
      v30 = v64 + v65;

      if (v30 <= v22)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_26:
  v69 = 1.0;
  if (v30 > v22 && v28 > 0.0)
  {
    valueFont4 = [v53 valueFont];
    [valueFont4 pointSize];
    v72 = v71;

    if ((v22 - (v30 - v28)) / v28 >= v102)
    {
      v69 = (v22 - (v30 - v28)) / v28;
    }

    else
    {
      v69 = v102;
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obja = selfCopy->_currentFieldViews;
    v73 = [(NSMutableArray *)obja countByEnumeratingWithState:&v107 objects:v115 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = v69 * v72;
      v76 = floorf(v75);
      v77 = *v108;
      v78 = *MEMORY[0x1E695EFF8];
      v79 = *(MEMORY[0x1E695EFF8] + 8);
      v30 = 0.0;
      do
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v108 != v77)
          {
            objc_enumerationMutation(obja);
          }

          v81 = *(*(&v107 + 1) + 8 * i);
          fieldTemplate3 = [v81 fieldTemplate];
          v83 = MEMORY[0x1E69DB878];
          valueFont5 = [fieldTemplate3 valueFont];
          fontDescriptor = [valueFont5 fontDescriptor];
          v86 = [v83 fontWithDescriptor:fontDescriptor size:v76];
          [fieldTemplate3 setValueFont:v86];

          [v81 setFieldTemplate:fieldTemplate3];
          [*(&selfCopy->super.super.super.isa + v4) bucketRect];
          [v81 sizeThatFits:{v87, v88}];
          v90 = v89;
          [v81 setFrame:{v78, v79, v89, v91}];
          v30 = v30 + v90;
        }

        v74 = [(NSMutableArray *)obja countByEnumeratingWithState:&v107 objects:v115 count:16];
      }

      while (v74);
    }

    else
    {
      v30 = 0.0;
    }

    v53 = v100;
  }

  if (v30 > v22)
  {
    _fieldViewsByWidth2 = [(PKPassBucketView *)selfCopy _fieldViewsByWidth];
    v93 = 0;
    v94 = [_fieldViewsByWidth2 count] - 1;
    do
    {
      v95 = v93;
      v93 = [_fieldViewsByWidth2 objectAtIndex:v94];

      [v93 frame];
      memset(&remainder, 0, sizeof(remainder));
      memset(&slice, 0, sizeof(slice));
      CGRectDivide(v118, &slice, &remainder, v30 - v22, CGRectMaxXEdge);
      [v93 setFrame:{remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height}];
      width = slice.size.width;
      valueLabel2 = [v93 valueLabel];
      [valueLabel2 setAdjustsFontSizeToFitWidth:1];

      valueLabel3 = [v93 valueLabel];
      [valueLabel3 setMinimumScaleFactor:v69];

      if (!v94)
      {
        break;
      }

      v30 = v30 - width;
      --v94;
    }

    while (v30 > v22);
  }
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(PKPassBucketView *)self frame];
  [v3 appendFormat:@"frame = (%g %g; %g %g); ", v4, v5, v6, v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_fieldViews;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v3 appendFormat:@"\n    %@", *(*(&v15 + 1) + 8 * i)];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v3 appendString:@">"];
  v13 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v13;
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if (self->_pass != passCopy)
  {
    v6 = passCopy;
    objc_storeStrong(&self->_pass, pass);
    passCopy = v6;
  }
}

- (void)setBucketTemplate:(id)template
{
  templateCopy = template;
  if (self->_bucketTemplate != templateCopy)
  {
    v6 = templateCopy;
    objc_storeStrong(&self->_bucketTemplate, template);
    self->_background = [(PKPassBucketView *)self _backgroundForBucketTemplate:self->_bucketTemplate];
    templateCopy = v6;
  }
}

- (void)setColorProfile:(id)profile
{
  profileCopy = profile;
  if (self->_colorProfile != profileCopy)
  {
    v6 = profileCopy;
    objc_storeStrong(&self->_colorProfile, profile);
    profileCopy = v6;
  }
}

- (void)setBucket:(id)bucket
{
  bucketCopy = bucket;
  if (self->_bucket != bucketCopy)
  {
    v6 = bucketCopy;
    objc_storeStrong(&self->_bucket, bucket);
    bucketCopy = v6;
  }
}

uint64_t __38__PKPassBucketView__fieldViewsByWidth__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  [v4 frame];
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

- (int64_t)_backgroundForBucketTemplate:(id)template
{
  if ([template sitsOnStripImage])
  {
    displayProfile = [(PKPass *)self->_pass displayProfile];
    showsStripImage = [displayProfile showsStripImage];

    if (showsStripImage)
    {
      return 1;
    }
  }

  displayProfile2 = [(PKPass *)self->_pass displayProfile];
  showsBackgroundImage = [displayProfile2 showsBackgroundImage];

  if (showsBackgroundImage)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)_presentRecursiveDiff:(id)diff inView:(id)view forSubviewAtIndex:(unint64_t)index withSubviews:(id)subviews completion:(id)completion
{
  diffCopy = diff;
  viewCopy = view;
  subviewsCopy = subviews;
  completionCopy = completion;
  if ([subviewsCopy count] <= index)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v16 = [subviewsCopy objectAtIndexedSubscript:index];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91__PKPassBucketView__presentRecursiveDiff_inView_forSubviewAtIndex_withSubviews_completion___block_invoke;
    v17[3] = &unk_1E8013998;
    objc_copyWeak(v22, &location);
    v18 = diffCopy;
    v19 = viewCopy;
    v22[1] = index;
    v20 = subviewsCopy;
    v21 = completionCopy;
    [v16 presentDiff:v18 inView:v19 completion:v17];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

void __91__PKPassBucketView__presentRecursiveDiff_inView_forSubviewAtIndex_withSubviews_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _presentRecursiveDiff:*(a1 + 32) inView:*(a1 + 40) forSubviewAtIndex:*(a1 + 72) + 1 withSubviews:*(a1 + 48) completion:*(a1 + 56)];
}

@end