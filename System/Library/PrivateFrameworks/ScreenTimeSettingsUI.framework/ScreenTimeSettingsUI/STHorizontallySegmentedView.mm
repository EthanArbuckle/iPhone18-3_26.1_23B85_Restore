@interface STHorizontallySegmentedView
- (STHorizontallySegmentedView)initWithCoder:(id)a3;
- (STHorizontallySegmentedView)initWithVibrancy:(BOOL)a3 maximumNumberOfLines:(unint64_t)a4 truncateLabels:(BOOL)a5;
- (void)_setUpConstraints;
- (void)_stHorizontallySegmentedViewCommonInit;
- (void)layoutSubviews;
- (void)setSegmentItems:(id)a3;
@end

@implementation STHorizontallySegmentedView

- (STHorizontallySegmentedView)initWithVibrancy:(BOOL)a3 maximumNumberOfLines:(unint64_t)a4 truncateLabels:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = STHorizontallySegmentedView;
  v8 = [(STHorizontallySegmentedView *)&v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8->_useVibrancy = a3;
  v8->_maximumNumberOfLines = a4;
  v8->_truncateLabels = a5;
  [(STHorizontallySegmentedView *)v8 _stHorizontallySegmentedViewCommonInit];
  return v8;
}

- (STHorizontallySegmentedView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STHorizontallySegmentedView;
  v3 = [(STHorizontallySegmentedView *)&v5 initWithCoder:a3];
  [(STHorizontallySegmentedView *)v3 _stHorizontallySegmentedViewCommonInit];
  return v3;
}

- (void)_stHorizontallySegmentedViewCommonInit
{
  numberOfLines = self->_numberOfLines;
  self->_numberOfLines = &unk_28769D298;

  self->_previousWidth = 0.0;
  segmentItems = self->_segmentItems;
  v5 = MEMORY[0x277CBEBF8];
  self->_segmentItems = MEMORY[0x277CBEBF8];

  v6 = objc_opt_new();
  segmentViews = self->_segmentViews;
  self->_segmentViews = v6;

  segmentConstraints = self->_segmentConstraints;
  self->_segmentConstraints = v5;
}

- (void)setSegmentItems:(id)a3
{
  v4 = a3;
  segmentItems = self->_segmentItems;
  if (segmentItems != v4 && ![(NSArray *)segmentItems isEqualToArray:v4])
  {
    v6 = [(NSArray *)v4 copy];
    v7 = self->_segmentItems;
    self->_segmentItems = v6;

    v8 = [(STHorizontallySegmentedView *)self useVibrancy];
    v9 = [(STHorizontallySegmentedView *)self truncateLabels];
    v10 = [(STHorizontallySegmentedView *)self segmentViews];
    v11 = [v10 count];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __47__STHorizontallySegmentedView_setSegmentItems___block_invoke;
    v18 = &unk_279B7D8F8;
    v21 = v11;
    v12 = v10;
    v22 = v8;
    v23 = v9;
    v19 = v12;
    v20 = self;
    [(NSArray *)v4 enumerateObjectsUsingBlock:&v15];
    v13 = [(NSArray *)v4 count:v15];
    if (v11 > v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v13, v11 - v13}];
      [v12 enumerateObjectsAtIndexes:v14 options:0 usingBlock:&__block_literal_global_11];
      [v12 removeObjectsAtIndexes:v14];
    }

    [(STHorizontallySegmentedView *)self _setUpConstraints];
  }
}

void __47__STHorizontallySegmentedView_setSegmentItems___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 48) <= a3)
  {
    v7 = a2;
    v8 = [[STSegmentView alloc] initWithItem:v7 useVibrancy:*(a1 + 56) truncateLabels:*(a1 + 57)];

    [(STSegmentView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(a1 + 40) addSubview:v8];
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v8 = [v5 objectAtIndexedSubscript:a3];
    [(STSegmentView *)v8 setItem:v6];
  }
}

- (void)layoutSubviews
{
  if (![(STHorizontallySegmentedView *)self useVibrancy])
  {
    [(STHorizontallySegmentedView *)self previousWidth];
    v4 = v3;
    [(STHorizontallySegmentedView *)self frame];
    if (v4 != CGRectGetWidth(v6))
    {
      [(STHorizontallySegmentedView *)self _setUpConstraints];
    }
  }

  v5.receiver = self;
  v5.super_class = STHorizontallySegmentedView;
  [(STHorizontallySegmentedView *)&v5 layoutSubviews];
}

- (void)_setUpConstraints
{
  v91 = *MEMORY[0x277D85DE8];
  v69 = [(STHorizontallySegmentedView *)self segmentViews];
  v68 = [v69 firstObject];
  v2 = v68;
  if (v68)
  {
    [(STHorizontallySegmentedView *)self frame];
    Width = CGRectGetWidth(v92);
    [(STHorizontallySegmentedView *)self setPreviousWidth:?];
    v4 = [(STHorizontallySegmentedView *)self maximumNumberOfLines];
    if (v4 == 1 || Width <= 0.0)
    {
      Width = 1.79769313e308;
    }

    v6 = objc_opt_new();
    v7 = [v68 topAnchor];
    v8 = [(STHorizontallySegmentedView *)self topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v6 addObject:v9];

    v10 = [v68 leadingAnchor];
    v11 = [(STHorizontallySegmentedView *)self leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v6 addObject:v12];

    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 1;
    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x2020000000;
    *&v81[3] = Width;
    v13 = objc_opt_new();
    v14 = [v69 count];
    v15 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{1, v14 - 1}];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __48__STHorizontallySegmentedView__setUpConstraints__block_invoke;
    v71[3] = &unk_279B7D940;
    v16 = v69;
    v78 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v72 = v16;
    v76 = v81;
    v77 = &v82;
    v17 = v6;
    v73 = v17;
    v74 = self;
    v18 = v13;
    v75 = v18;
    v79 = v4;
    v80 = Width;
    [v16 enumerateObjectsAtIndexes:v15 options:0 usingBlock:v71];
    v66 = v15;
    v67 = [v16 lastObject];
    if (v83[3] == 1 && v14 == 2)
    {
      v19 = objc_opt_new();
      [(STHorizontallySegmentedView *)self addLayoutGuide:v19];
      [v18 addObject:v19];
      v20 = [v19 topAnchor];
      v21 = [v67 topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      [v17 addObject:v22];

      v23 = [v19 leadingAnchor];
      v24 = [v67 trailingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      [v17 addObject:v25];

      v26 = [v19 bottomAnchor];
      v27 = [v67 bottomAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      [v17 addObject:v28];

      v29 = objc_opt_new();
      [(STHorizontallySegmentedView *)self addLayoutGuide:v29];
      [v18 addObject:v29];
      v30 = [v29 topAnchor];
      v31 = [v19 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      [v17 addObject:v32];

      v33 = [v29 leadingAnchor];
      v34 = [v19 trailingAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      [v17 addObject:v35];

      v36 = [v29 bottomAnchor];
      v37 = [v19 bottomAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      [v17 addObject:v38];

      v39 = [v29 bottomAnchor];
      v40 = [(STHorizontallySegmentedView *)self bottomAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      [v17 addObject:v41];

      v42 = [v29 trailingAnchor];
      v43 = [(STHorizontallySegmentedView *)self trailingAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [v17 addObject:v44];
    }

    else
    {
      v45 = [v67 bottomAnchor];
      v46 = [(STHorizontallySegmentedView *)self bottomAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];
      [v17 addObject:v47];

      v19 = [v67 trailingAnchor];
      v29 = [(STHorizontallySegmentedView *)self trailingAnchor];
      v42 = [v19 constraintEqualToAnchor:v29];
      [v17 addObject:v42];
    }

    v48 = v18;
    v49 = v17;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v50 = v48;
    v51 = 0;
    v52 = [v50 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v52)
    {
      v53 = *v87;
      do
      {
        v54 = 0;
        v55 = v51;
        do
        {
          if (*v87 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v51 = *(*(&v86 + 1) + 8 * v54);
          v56 = [v51 widthAnchor];
          v57 = [v56 constraintGreaterThanOrEqualToConstant:8.0];
          [v49 addObject:v57];

          if (v55)
          {
            v58 = [v55 widthAnchor];
            v59 = [v51 widthAnchor];
            v60 = [v58 constraintEqualToAnchor:v59];
            [v49 addObject:v60];

            v61 = v51;
          }

          else
          {
            v62 = v51;
          }

          ++v54;
          v55 = v51;
        }

        while (v52 != v54);
        v52 = [v50 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v52);
    }

    v63 = MEMORY[0x277CCAAD0];
    v64 = [(STHorizontallySegmentedView *)self segmentConstraints];
    [v63 deactivateConstraints:v64];

    [MEMORY[0x277CCAAD0] activateConstraints:v49];
    [(STHorizontallySegmentedView *)self setSegmentConstraints:v49];
    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v83[3]];
    [(STHorizontallySegmentedView *)self setNumberOfLines:v65];

    _Block_object_dispose(v81, 8);
    _Block_object_dispose(&v82, 8);

    v2 = v68;
  }
}

void __48__STHorizontallySegmentedView__setUpConstraints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
  [v6 sizeThatFits:{*(a1 + 80), *(a1 + 88)}];
  v8 = v7;
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) - (v7 + 8.0);
  [v5 sizeThatFits:{*(a1 + 80), *(a1 + 88)}];
  if (*(*(*(a1 + 64) + 8) + 24) >= v9)
  {
    v38 = [v6 widthAnchor];
    v39 = [v38 constraintEqualToConstant:v8];

    LODWORD(v40) = 1144750080;
    [v39 setPriority:v40];
    [*(a1 + 40) addObject:v39];
    v41 = objc_opt_new();
    [*(a1 + 48) addLayoutGuide:v41];
    [*(a1 + 56) addObject:v41];
    v42 = *(a1 + 40);
    v43 = [v41 topAnchor];
    v44 = [v6 topAnchor];
    [v43 constraintEqualToAnchor:v44];
    v46 = v45 = a1;
    [v42 addObject:v46];

    v47 = *(v45 + 40);
    v48 = [v41 leadingAnchor];
    v49 = [v6 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    [v47 addObject:v50];

    v51 = *(v45 + 40);
    v52 = [v41 bottomAnchor];
    v53 = [v6 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v51 addObject:v54];

    v55 = *(v45 + 40);
    v56 = [v5 topAnchor];
    v57 = [v41 topAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    [v55 addObject:v58];

    v59 = *(v45 + 40);
    v60 = [v5 leadingAnchor];
    v61 = [v41 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    [v59 addObject:v62];

    v63 = *(v45 + 40);
    [v5 bottomAnchor];
    v64 = v6;
    v66 = v65 = v5;
    v67 = [v41 bottomAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    [v63 addObject:v68];
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    v10 = *(a1 + 40);
    v11 = [v5 topAnchor];
    v12 = [v6 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:2.0];
    [v10 addObject:v13];

    v14 = *(a1 + 40);
    v72 = v5;
    v15 = [v5 leadingAnchor];
    v16 = [*(a1 + 48) leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v14 addObject:v17];

    v18 = *(a1 + 40);
    v71 = v6;
    v19 = [v6 trailingAnchor];
    v20 = [*(a1 + 48) trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v18 addObject:v21];

    v70 = a1;
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);
    v24 = v22;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v25 = [v23 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v74;
      do
      {
        v29 = 0;
        v30 = v27;
        do
        {
          if (*v74 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v73 + 1) + 8 * v29);
          v31 = [v27 widthAnchor];
          v32 = [v31 constraintGreaterThanOrEqualToConstant:8.0];
          [v24 addObject:v32];

          if (v30)
          {
            v33 = [v30 widthAnchor];
            v34 = [v27 widthAnchor];
            v35 = [v33 constraintEqualToAnchor:v34];
            [v24 addObject:v35];

            v36 = v27;
          }

          else
          {
            v37 = v27;
          }

          ++v29;
          v30 = v27;
        }

        while (v26 != v29);
        v26 = [v23 countByEnumeratingWithState:&v73 objects:v77 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
    }

    [*(v70 + 56) removeAllObjects];
    if (*(*(*(v70 + 72) + 8) + 24) == *(v70 + 96))
    {
      v69 = 0x7FEFFFFFFFFFFFFFLL;
    }

    else
    {
      v69 = *(v70 + 104);
    }

    v64 = v71;
    v65 = v72;
    *(*(*(v70 + 64) + 8) + 24) = v69;
  }
}

@end