@interface _TVLockupFactory
+ (TVCellMetrics)cellMetricsForCollectionElement:(SEL)element;
+ (UIEdgeInsets)_customCellPaddingForCellMetrics:(TVCellMetrics *)metrics withCollectionCellMetrics:(TVCellMetrics *)cellMetrics contentAlignment:(int64_t)alignment;
+ (id)_configurationIdentifierForElement:(id)element;
+ (void)_configureCell:(id)cell layout:(id)layout element:(id)element;
+ (void)_configureStackingPoster:(id)poster layout:(id)layout element:(id)element forMetrics:(BOOL)metrics;
+ (void)updateViewLayoutForCell:(id)cell forSize:(CGSize)size;
- (_TVLockupFactory)init;
- (void)_registerLockup;
@end

@implementation _TVLockupFactory

- (_TVLockupFactory)init
{
  v5.receiver = self;
  v5.super_class = _TVLockupFactory;
  v2 = [(_TVLockupFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_TVLockupFactory *)v2 _registerLockup];
  }

  return v3;
}

- (void)_registerLockup
{
  v2 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v2 _registerViewCreatorEx:&__block_literal_global_45 withType:24];
}

+ (TVCellMetrics)cellMetricsForCollectionElement:(SEL)element
{
  v164 = *MEMORY[0x277D85DE8];
  v77 = a4;
  v76 = [v77 objectForKeyedSubscript:@"TVFactoryKeyCellMetrics"];
  if ([v77 updateType] || !v76)
  {
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
    style = [v77 style];
    tv_contentAlignment = [style tv_contentAlignment];
    if (tv_contentAlignment <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = tv_contentAlignment;
    }

    v155 = 0;
    v156 = &v155;
    v157 = 0x3010000000;
    v158 = &unk_26CE937F5;
    v159 = *MEMORY[0x277CBF3A8];
    v149 = 0;
    v150 = &v149;
    v151 = 0x4010000000;
    v152 = &unk_26CE937F5;
    v8 = *(MEMORY[0x277D768C8] + 16);
    v153 = *MEMORY[0x277D768C8];
    v154 = v8;
    v143 = 0;
    v144 = &v143;
    v145 = 0x4010000000;
    v146 = &unk_26CE937F5;
    v147 = v153;
    v148 = v8;
    v137 = 0;
    v138 = &v137;
    v139 = 0x4010000000;
    v140 = &unk_26CE937F5;
    v141 = v153;
    v142 = v8;
    v131 = 0;
    v132 = &v131;
    v133 = 0x4010000000;
    v134 = &unk_26CE937F5;
    v135 = v153;
    v136 = v8;
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __52___TVLockupFactory_cellMetricsForCollectionElement___block_invoke;
    v130[3] = &unk_279D70F28;
    v130[4] = &v155;
    v130[5] = &v149;
    v130[6] = &v143;
    v130[7] = &v137;
    v130[8] = &v131;
    v130[9] = v7;
    v90 = MEMORY[0x26D6AFBB0](v130);
    v9 = [_TVStackingPosterView alloc];
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [(_TVStackingPosterView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], v11, v12, v13];
    [(_TVStackingPosterView *)v14 setConfiguresForCollectionViewCell:1];
    [(_TVStackingPosterView *)v14 setMaxBoundsSize:v156[2].width, v156[2].height];
    v89 = v14;
    v78 = [[_TVOrganizerView alloc] initWithFrame:v10, v11, v12, v13];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    sections = [v77 sections];
    v16 = [sections countByEnumeratingWithState:&v126 objects:v163 count:16];
    if (!v16)
    {
LABEL_15:
      v80 = 0;
      goto LABEL_17;
    }

    v17 = *v127;
LABEL_9:
    v18 = 0;
    while (1)
    {
      if (*v127 != v17)
      {
        objc_enumerationMutation(sections);
      }

      v19 = *(*(&v126 + 1) + 8 * v18);
      attributes = [v19 attributes];
      v21 = [attributes objectForKeyedSubscript:@"prominent"];
      bOOLValue = [v21 BOOLValue];

      if (bOOLValue)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [sections countByEnumeratingWithState:&v126 objects:v163 count:16];
        if (!v16)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }
    }

    v80 = v19;
LABEL_17:

    attributes2 = [v77 attributes];
    v24 = [attributes2 objectForKeyedSubscript:?];
    bOOLValue2 = [v24 BOOLValue];

    v87 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = [v77 sections];
    v83 = [obj countByEnumeratingWithState:&v122 objects:v162 count:16];
    if (!v83)
    {
      goto LABEL_78;
    }

    v81 = *v123;
    v25 = *MEMORY[0x277CBF3A8];
    v26 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_19:
    v84 = 0;
LABEL_20:
    if (*v123 != v81)
    {
      objc_enumerationMutation(obj);
    }

    v85 = *(*(&v122 + 1) + 8 * v84);
    attributes3 = [v85 attributes];
    v86 = [attributes3 objectForKeyedSubscript:@"homogeneous"];

    bOOLValue3 = bOOLValue2;
    if (v86)
    {
      bOOLValue3 = [v86 BOOLValue];
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    cellSize = 0;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    prototypes = [v85 prototypes];
    v29 = [prototypes countByEnumeratingWithState:&v109 objects:v161 count:16];
    if (!v29)
    {
      goto LABEL_76;
    }

    v94 = *v110;
    if (v80)
    {
      v30 = v85 == v80;
    }

    else
    {
      v30 = 1;
    }

    v31 = v30;
    v93 = v31;
    v91 = prototypes;
LABEL_32:
    v32 = 0;
    while (1)
    {
      if (*v110 != v94)
      {
        objc_enumerationMutation(v91);
      }

      v33 = *(*(&v109 + 1) + 8 * v32);
      v34 = [v33 objectForKeyedSubscript:@"TVFactoryKeyCellMetrics"];
      if ([v33 updateType] || v34 == 0)
      {
        break;
      }

      [v34 tv_cellMetricsValue];
      v119 = v106;
      v120 = v107;
      v121 = v108;
      v115 = v102;
      v116 = v103;
      v117 = v104;
      v118 = v105;
      cellSize = v100;
      v114 = v101;
LABEL_62:
      if (v93)
      {
        v57 = v90[2];
        v106 = v119;
        v107 = v120;
        v108 = v121;
        v102 = v115;
        v103 = v116;
        v104 = v117;
        v105 = v118;
        v100 = cellSize;
        v101 = v114;
        v57(v90, &v100);
      }

      if (bOOLValue3)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        prototypes2 = [v85 prototypes];
        v59 = [prototypes2 countByEnumeratingWithState:&v96 objects:v160 count:16];
        if (v59)
        {
          v60 = *v97;
          do
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v97 != v60)
              {
                objc_enumerationMutation(prototypes2);
              }

              v62 = *(*(&v96 + 1) + 8 * i);
              v106 = v119;
              v107 = v120;
              v108 = v121;
              v102 = v115;
              v103 = v116;
              v104 = v117;
              v105 = v118;
              v100 = cellSize;
              v101 = v114;
              v63 = [MEMORY[0x277CCAE60] tv_valueWithCellMetrics:&v100];
              [v62 setObject:v63 forKeyedSubscript:@"TVFactoryKeyCellMetrics"];
            }

            v59 = [prototypes2 countByEnumeratingWithState:&v96 objects:v160 count:16];
          }

          while (v59);
        }

        prototypes = v91;
        goto LABEL_76;
      }

      if (v29 == ++v32)
      {
        prototypes = v91;
        v29 = [v91 countByEnumeratingWithState:&v109 objects:v161 count:16];
        if (v29)
        {
          goto LABEL_32;
        }

LABEL_76:

        if (++v84 == v83)
        {
          v83 = [obj countByEnumeratingWithState:&v122 objects:v162 count:16];
          if (!v83)
          {
LABEL_78:

            [MEMORY[0x277D75D18] setAnimationsEnabled:areAnimationsEnabled];
            retstr->cellSize = v156[2];
            v64 = *(v150 + 3);
            *&retstr->cellPadding.top = *(v150 + 2);
            *&retstr->cellPadding.bottom = v64;
            v65 = *(v144 + 3);
            *&retstr->cellInset.top = *(v144 + 2);
            *&retstr->cellInset.bottom = v65;
            v66 = *(v138 + 3);
            *&retstr->cellInsetAlt.top = *(v138 + 2);
            *&retstr->cellInsetAlt.bottom = v66;
            v67 = *(v132 + 3);
            *&retstr->cellMargin.top = *(v132 + 2);
            *&retstr->cellMargin.bottom = v67;
            v68 = *&retstr->cellMargin.top;
            v119 = *&retstr->cellInsetAlt.bottom;
            v120 = v68;
            v121 = *&retstr->cellMargin.bottom;
            v69 = *&retstr->cellInset.top;
            v115 = *&retstr->cellPadding.bottom;
            v116 = v69;
            v70 = *&retstr->cellInsetAlt.top;
            v117 = *&retstr->cellInset.bottom;
            v118 = v70;
            v71 = *&retstr->cellPadding.top;
            cellSize = retstr->cellSize;
            v114 = v71;
            v72 = [MEMORY[0x277CCAE60] tv_valueWithCellMetrics:&cellSize];
            [v77 setObject:v72 forKeyedSubscript:@"TVFactoryKeyCellMetrics"];

            _Block_object_dispose(&v131, 8);
            _Block_object_dispose(&v137, 8);
            _Block_object_dispose(&v143, 8);
            _Block_object_dispose(&v149, 8);
            _Block_object_dispose(&v155, 8);
            v4 = v76;
            goto LABEL_79;
          }

          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    if ([v33 tv_elementType] == 24)
    {
      v36 = [a2 _configurationIdentifierForElement:v33];
      if (v36 && ([v87 objectForKeyedSubscript:v36], v37 = objc_claimAutoreleasedReturnValue(), (v38 = v37) != 0))
      {
        [v37 tv_cellMetricsValue];
        v119 = v106;
        v120 = v107;
        v121 = v108;
        v115 = v102;
        v116 = v103;
        v117 = v104;
        v118 = v105;
        cellSize = v100;
        v114 = v101;
      }

      else
      {
        [TVViewLayout layoutClassForElement:v33];
        v38 = objc_opt_new();
        [v38 setAcceptsFocus:1];
        [a2 _configureStackingPoster:v89 layout:v38 element:v33 forMetrics:1];
        if (v89)
        {
          [(_TVStackingPosterView *)v89 cellMetrics];
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0;
        }

        v119 = v106;
        v120 = v107;
        v121 = v108;
        v115 = v102;
        v116 = v103;
        v117 = v104;
        v118 = v105;
        cellSize = v100;
        v114 = v101;
        if (v36)
        {
          v106 = v119;
          v107 = v120;
          v108 = v121;
          v102 = v115;
          v103 = v116;
          v104 = v117;
          v105 = v118;
          v100 = cellSize;
          v101 = v114;
          v51 = [MEMORY[0x277CCAE60] tv_valueWithCellMetrics:&v100];
          [v87 setObject:v51 forKeyedSubscript:v36];
        }
      }

      goto LABEL_61;
    }

    style2 = [v33 style];
    if ([style2 tv_hasHeight])
    {
      style3 = [v33 style];
      tv_hasWidth = [style3 tv_hasWidth];

      if (tv_hasWidth)
      {
        style4 = [v33 style];
        [style4 tv_width];
        v44 = v43;
        style5 = [v33 style];
        [style5 tv_height];
        v47 = v46;
LABEL_60:

        cellSize.width = v44;
        cellSize.height = v47;
        [v33 isDisabled];
LABEL_61:
        [a2 _validateCellMetrics:&cellSize];
        v106 = v119;
        v107 = v120;
        v108 = v121;
        v102 = v115;
        v103 = v116;
        v104 = v117;
        v105 = v118;
        v100 = cellSize;
        v101 = v114;
        v56 = [MEMORY[0x277CCAE60] tv_valueWithCellMetrics:&v100];
        [v33 setObject:v56 forKeyedSubscript:@"TVFactoryKeyCellMetrics"];

        goto LABEL_62;
      }
    }

    else
    {
    }

    style4 = [v33 elementName];
    style5 = [dictionary objectForKeyedSubscript:style4];
    if (!style5)
    {
      v48 = +[TVInterfaceFactory sharedInterfaceFactory];
      v49 = [v48 _extendedCollectionViewCellClassForIKElement:v33];

      if (v49)
      {
        v50 = objc_alloc_init(v49);
      }

      else
      {
        v50 = v78;
      }

      style5 = v50;
      [dictionary setObject:v50 forKeyedSubscript:style4];
    }

    v52 = +[TVInterfaceFactory sharedInterfaceFactory];
    v53 = [v52 _viewFromElement:v33 existingView:style5];

    [v53 tv_sizeThatFits:{v25, v26}];
    v44 = v54;
    v47 = v55;

    goto LABEL_60;
  }

  v4 = v76;
  [v76 tv_cellMetricsValue];
LABEL_79:

  return result;
}

+ (void)updateViewLayoutForCell:(id)cell forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v62 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  contentView = [cellCopy contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  tv_contentAlignment = [cellCopy tv_contentAlignment];
  if (tv_contentAlignment <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = tv_contentAlignment;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v12;
    v39 = contentView;
    v40 = cellCopy;
    v38 = firstObject;
    v13 = firstObject;
    [v13 setMaxBoundsSize:{width, height}];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v13;
    components = [v13 components];
    v15 = [components countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(components);
          }

          v19 = *(*(&v48 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            tv_associatedIKViewElement = [v19 tv_associatedIKViewElement];
            [tv_associatedIKViewElement setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TVForceUpdate"];
            v21 = +[TVInterfaceFactory sharedInterfaceFactory];
            v22 = [v21 _viewFromElement:tv_associatedIKViewElement existingView:v19];

            if (v22 != v19)
            {
              v23 = TVMLKitLogObject;
              if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v19;
                _os_log_impl(&dword_26CD9A000, v23, OS_LOG_TYPE_DEFAULT, "Dropping layout update for label: %@", buf, 0xCu);
              }
            }
          }
        }

        v16 = [components countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v16);
    }

    [v36 setNeedsUpdateComponentLayout];
    cellCopy = v40;
    [v40 tv_padding];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if (v36)
    {
      [v36 cellMetrics];
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *buf = 0u;
    }

    contentView = v39;
    *v41 = width;
    *&v41[1] = height;
    v41[2] = v25;
    v41[3] = v27;
    v41[4] = v29;
    v41[5] = v31;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    [self _customCellPaddingForCellMetrics:buf withCollectionCellMetrics:v41 contentAlignment:v37];
    [v36 setFrame:{v35, v34, width - (v35 + v32), height - (v34 + v33)}];

    firstObject = v38;
  }
}

+ (UIEdgeInsets)_customCellPaddingForCellMetrics:(TVCellMetrics *)metrics withCollectionCellMetrics:(TVCellMetrics *)cellMetrics contentAlignment:(int64_t)alignment
{
  height = metrics->cellSize.height;
  top = metrics->cellPadding.top;
  left = metrics->cellPadding.left;
  bottom = metrics->cellPadding.bottom;
  v9 = height - (top + bottom);
  v10 = cellMetrics->cellSize.height;
  v11 = cellMetrics->cellPadding.top;
  v12 = v10 - (v11 + cellMetrics->cellPadding.bottom);
  right = metrics->cellPadding.right;
  v14 = v11 - top;
  if (alignment == 3)
  {
    v15 = v12 - v9;
  }

  else
  {
    if (alignment != 2)
    {
      goto LABEL_6;
    }

    v15 = floor((v12 - v9) * 0.5);
  }

  v14 = v14 + v15;
LABEL_6:
  if (v14 > 0.0)
  {
    top = top + v14;
    height = height + v14;
  }

  if (height < v10)
  {
    bottom = bottom + v10 - height;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (void)_configureCell:(id)cell layout:(id)layout element:(id)element
{
  cellCopy = cell;
  elementCopy = element;
  layoutCopy = layout;
  elementCopy = [(objc_class *)[TVViewLayout layoutClassForElement:?]element:"layoutWithLayout:element:", layoutCopy, elementCopy];

  contentView = [cellCopy contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  contentAlignment = [elementCopy contentAlignment];
  if (contentAlignment <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = contentAlignment;
  }

  if ([elementCopy tv_elementType] == 24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = firstObject;
    }

    else
    {
      v18 = [_TVStackingPosterView alloc];
      v17 = [(_TVStackingPosterView *)v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    }

    v19 = v17;
    [(_TVStackingPosterView *)v17 setSelected:0 animated:0 focusUpdateContext:0 withAnimationCoordinator:0];
    [(_TVStackingPosterView *)v19 setConfiguresForCollectionViewCell:1];
    [cellCopy bounds];
    [(_TVStackingPosterView *)v19 setMaxBoundsSize:v20, v21];
    v22 = objc_opt_new();
    [v22 setAcceptsFocus:1];
    [v22 setCenterGrowth:{objc_msgSend(elementCopy, "centerGrowth")}];
    [self _configureStackingPoster:v19 layout:v22 element:elementCopy forMetrics:0];
    [cellCopy bounds];
    v24 = v23;
    v26 = v25;
    [cellCopy bounds];
    v28 = v27;
    v30 = v29;
    [elementCopy padding];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    if (v19)
    {
      [(_TVStackingPosterView *)v19 cellMetrics];
    }

    else
    {
      memset(v56, 0, sizeof(v56));
    }

    v49[0] = v28;
    v49[1] = v30;
    v49[2] = v32;
    v49[3] = v34;
    v49[4] = v36;
    v49[5] = v38;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    [self _customCellPaddingForCellMetrics:v56 withCollectionCellMetrics:v49 contentAlignment:v16];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [elementCopy setPadding:?];
    [(_TVStackingPosterView *)v19 setFrame:v42, v40, v24 - (v42 + v46), v26 - (v40 + v44)];
    -[_TVStackingPosterView setSelected:animated:focusUpdateContext:withAnimationCoordinator:](v19, "setSelected:animated:focusUpdateContext:withAnimationCoordinator:", [cellCopy isFocused], 0, 0, 0);

    if (v19 != firstObject)
    {
      subviews2 = [contentView subviews];
      [subviews2 makeObjectsPerformSelector:sel_removeFromSuperview];

      [contentView addSubview:v19];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([elementCopy acceptsFocus])
    {
      v48 = [elementCopy isDisabled] ^ 1;
    }

    else
    {
      v48 = 0;
    }

    [cellCopy setAllowsFocus:v48];
  }

  [cellCopy tv_setLayout:elementCopy];
}

+ (void)_configureStackingPoster:(id)poster layout:(id)layout element:(id)element forMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  v97 = *MEMORY[0x277D85DE8];
  posterCopy = poster;
  elementCopy = element;
  layoutCopy = layout;
  v53 = elementCopy;
  elementCopy = [(objc_class *)[TVViewLayout layoutClassForElement:?]element:"layoutWithLayout:element:", layoutCopy, elementCopy];

  appDocument = [elementCopy appDocument];
  templateElement = [appDocument templateElement];

  parent = [elementCopy parent];
  tv_elementType = [parent tv_elementType];

  v15 = [templateElement tv_elementType] == 72 && tv_elementType != 35;
  v16 = MEMORY[0x277CBEB18];
  children = [v53 children];
  v54 = [v16 arrayWithCapacity:{objc_msgSend(children, "count")}];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  children2 = [v53 children];
  v19 = [children2 countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (v19)
  {
    v55 = 0;
    v20 = *v92;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v92 != v20)
        {
          objc_enumerationMutation(children2);
        }

        v22 = *(*(&v91 + 1) + 8 * i);
        tv_elementType2 = [v22 tv_elementType];
        if ((!v15 || tv_elementType2 != 16 && tv_elementType2 != 35 && tv_elementType2 != 81) && (!metricsCopy || tv_elementType2 != 35))
        {
          if (tv_elementType2 == 35)
          {
            if (!v55)
            {
              v55 = v22;
            }
          }

          else if (tv_elementType2 != 43 && (tv_elementType2 != 16 || [v22 tv_imageType] != 1))
          {
            v24 = [MEMORY[0x277CCABB0] numberWithBool:metricsCopy];
            [v22 setObject:v24 forKeyedSubscript:@"TVConfigureForMetrics"];

            [v54 addObject:v22];
          }
        }
      }

      v19 = [children2 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v19);
  }

  else
  {
    v55 = 0;
  }

  overlayView = [posterCopy overlayView];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke;
  v89[3] = &unk_279D70F50;
  v52 = posterCopy;
  v90 = v52;
  v57 = MEMORY[0x26D6AFBB0](v89);
  v26 = MEMORY[0x277CBEB18];
  components = [v52 components];
  v28 = [v26 arrayWithCapacity:{objc_msgSend(components, "count")}];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  components2 = [v52 components];
  v30 = [components2 countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v30)
  {
    v31 = *v86;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v86 != v31)
        {
          objc_enumerationMutation(components2);
        }

        v33 = *(*(&v85 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          overlayView2 = [v33 overlayView];
          v35 = overlayView2 == 0;

          if (!v35)
          {
            overlayView3 = [v33 overlayView];

            v83[0] = MEMORY[0x277D85DD0];
            v83[1] = 3221225472;
            v83[2] = __71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke_2;
            v83[3] = &unk_279D70F50;
            v84 = v33;
            v37 = MEMORY[0x26D6AFBB0](v83);

            v57 = v37;
            overlayView = overlayView3;
          }
        }

        if ([v33 tv_elementType])
        {
          [v28 addObject:v33];
        }
      }

      v30 = [components2 countByEnumeratingWithState:&v85 objects:v95 count:16];
    }

    while (v30);
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  if (!v15)
  {
    v38 = [v28 count];
    if (v38 == [v54 count])
    {
      *(v80 + 24) = 1;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke_3;
      v76[3] = &unk_279D6E848;
      v77 = v54;
      v78 = &v79;
      [v28 enumerateObjectsUsingBlock:v76];
    }
  }

  v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if ([elementCopy acceptsFocus])
  {
    v40 = [v53 isDisabled] ^ 1;
  }

  else
  {
    v40 = 0;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__10;
  v74 = __Block_byref_object_dispose__10;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke_23;
  v58[3] = &unk_279D70F78;
  v62 = &v79;
  v41 = v28;
  v59 = v41;
  v65 = v40;
  v42 = v53;
  v60 = v42;
  v63 = &v70;
  v64 = &v66;
  v43 = v39;
  v61 = v43;
  [v54 enumerateObjectsUsingBlock:v58];
  v44 = v57;
  if (v55)
  {
    v45 = +[TVInterfaceFactory sharedInterfaceFactory];
    v46 = [v45 _viewFromElement:v55 existingView:overlayView];

    v44 = v57;
    if (!v46)
    {
      children3 = [v55 children];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = overlayView;
      }

      else
      {
        v48 = 0;
      }

      v46 = [TVMLViewFactory organizerViewWithElements:children3 existingView:v48];

      [v46 transferLayoutStylesFromElement:v55];
      v44 = v57;
      [v46 tv_setAssociatedIKViewElement:v55];
    }
  }

  else
  {
    v46 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44[2](v44, v71[5]);
    v49 = v71[5];
  }

  else
  {
    (v44)[2](v44, v52);
    v49 = v52;
  }

  [v49 setOverlayView:v46];
  if (*(v67 + 24) == 1)
  {
    [v52 setNeedsUpdateComponentLayout];
  }

  else
  {
    [v52 setComponents:v43];
  }

  [v52 tv_setLayout:elementCopy];

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v79, 8);
}

+ (id)_configurationIdentifierForElement:(id)element
{
  v48 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __55___TVLockupFactory__configurationIdentifierForElement___block_invoke_4;
  v43[3] = &unk_279D71000;
  v45 = &__block_literal_global_28;
  v4 = elementCopy;
  v44 = v4;
  v46 = &__block_literal_global_33_0;
  v33 = MEMORY[0x26D6AFBB0](v43);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55___TVLockupFactory__configurationIdentifierForElement___block_invoke_5;
  v38[3] = &unk_279D71028;
  v40 = &__block_literal_global_28;
  v5 = v4;
  v39 = v5;
  v41 = &__block_literal_global_39_1;
  v42 = &__block_literal_global_33_0;
  v6 = MEMORY[0x26D6AFBB0](v38);
  string = [MEMORY[0x277CCAB68] string];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v32 = v5;
  children = [v5 children];
  v9 = [children countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(children);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if ([v13 tv_elementType] != 35 && objc_msgSend(v13, "tv_elementType") != 4)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = (v33)[2](v33, v13);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_19;
            }

            v14 = (v6)[2](v6, v13);
          }

          v15 = v14;
          if (!v14)
          {
LABEL_19:
            v30 = 0;
            v16 = v32;
            goto LABEL_20;
          }

          if ([string length])
          {
            [string appendString:@" "];
          }

          [string appendString:v15];
        }
      }

      v10 = [children countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  children = [MEMORY[0x277CCAB68] string];
  [children appendString:@"{"];
  v16 = v32;
  style = [v32 style];
  [style tv_padding];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%.0f %.0f %.0f %.0f", @"padding", v18, v21, v20, v19];;
  [children appendString:v22];

  style2 = [v32 style];
  [style2 tv_width];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%.0f", @"width", v24];;
  [children appendString:v25];

  style3 = [v32 style];
  [style3 tv_height];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%.0f", @"height", v27];;
  [children appendString:v28];

  [children appendString:@"}["];
  v29 = [string copy];
  [children appendString:v29];

  [children appendString:@"]"];
  v30 = [children copy];
LABEL_20:

  return v30;
}

@end