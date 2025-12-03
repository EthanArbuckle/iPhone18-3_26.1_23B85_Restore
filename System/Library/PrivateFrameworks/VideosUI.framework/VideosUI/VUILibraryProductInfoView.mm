@interface VUILibraryProductInfoView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)footerMargin;
- (UIEdgeInsets)headerMargin;
- (UIEdgeInsets)padding;
- (VUILibraryProductInfoView)initWithFrame:(CGRect)frame;
- (double)_sectionInfoWidth;
- (double)interitemSpacing;
- (id)_getNormalizedGroupedInfos;
- (int64_t)maxLineCount;
- (unint64_t)_columnCount;
- (void)_layouCellContentView:(id)view inCellBounds:(CGRect)bounds;
- (void)layoutSubviews;
- (void)setFooterView:(id)view;
- (void)setHeaderView:(id)view;
- (void)setInfos:(id)infos;
@end

@implementation VUILibraryProductInfoView

- (VUILibraryProductInfoView)initWithFrame:(CGRect)frame
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUILibraryProductInfoView;
  v3 = [(VUILibraryProductInfoView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v11[2] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__VUILibraryProductInfoView_initWithFrame___block_invoke;
    v7[3] = &unk_1E872E760;
    objc_copyWeak(&v8, &location);
    v5 = [(VUILibraryProductInfoView *)v3 registerForTraitChanges:v4 withHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__VUILibraryProductInfoView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  v7 = viewCopy;
  if (headerView != viewCopy)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    if (self->_headerView)
    {
      [(VUILibraryProductInfoView *)self addSubview:?];
    }
  }

  [(VUILibraryProductInfoView *)self setNeedsLayout];
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  v7 = viewCopy;
  if (footerView != viewCopy)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    if (self->_footerView)
    {
      [(VUILibraryProductInfoView *)self addSubview:?];
    }
  }

  [(VUILibraryProductInfoView *)self setNeedsLayout];
}

- (void)setInfos:(id)infos
{
  v70 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  subviews = [(VUILibraryProductInfoView *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v61;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        headerView = [(VUILibraryProductInfoView *)self headerView];
        v12 = headerView;
        if (v10 == headerView)
        {
        }

        else
        {
          footerView = [(VUILibraryProductInfoView *)self footerView];

          if (v10 != footerView)
          {
            [v10 removeFromSuperview];
          }
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v7);
  }

  v14 = [infosCopy copy];
  infos = self->_infos;
  self->_infos = v14;

  v46 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = infosCopy;
  v17 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v17)
  {
    v18 = v17;
    groupName = 0;
    v20 = *v57;
    do
    {
      v21 = 0;
      v22 = groupName;
      do
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v56 + 1) + 8 * v21);
        groupName = [v23 groupName];
        if (v22 && ([v22 isEqualToString:groupName] & 1) == 0)
        {
          v24 = [v16 copy];
          [v46 addObject:v24];

          [v16 removeAllObjects];
        }

        if (groupName)
        {
          [v16 addObject:v23];
        }

        else
        {
          v67 = v23;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
          [v46 addObject:v25];
        }

        v66 = v23;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
        [v47 addObject:v26];

        ++v21;
        v22 = groupName;
      }

      while (v18 != v21);
      v18 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v18);
  }

  v27 = [v16 copy];
  [v46 addObject:v27];

  v28 = [v46 copy];
  groupedInfos = self->_groupedInfos;
  self->_groupedInfos = v28;

  v30 = [v47 copy];
  normalizedGroupedInfos = self->_normalizedGroupedInfos;
  self->_normalizedGroupedInfos = v30;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = obj;
  v33 = [v32 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v53;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v53 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v52 + 1) + 8 * j);
        headerContentView = [v37 headerContentView];

        if (headerContentView)
        {
          headerContentView2 = [v37 headerContentView];
          [(VUILibraryProductInfoView *)self addSubview:headerContentView2];
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        dataViews = [v37 dataViews];
        v41 = [dataViews countByEnumeratingWithState:&v48 objects:v64 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v49;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v49 != v43)
              {
                objc_enumerationMutation(dataViews);
              }

              [(VUILibraryProductInfoView *)self addSubview:*(*(&v48 + 1) + 8 * k)];
            }

            v42 = [dataViews countByEnumeratingWithState:&v48 objects:v64 count:16];
          }

          while (v42);
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v34);
  }
}

- (CGSize)intrinsicContentSize
{
  [(VUILibraryProductInfoView *)self bounds];
  Width = CGRectGetWidth(v8);

  [(VUILibraryProductInfoView *)self sizeThatFits:Width, 0.0];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v151 = *MEMORY[0x1E69E9840];
  [(VUILibraryProductInfoView *)self padding];
  v103 = v6;
  v104 = v5;
  v8 = v7;
  v10 = v9;
  [(VUILibraryProductInfoView *)self interitemSpacing];
  v12 = v11;
  [(VUILibraryProductInfoView *)self lineSpacing];
  v109 = v13;
  maxLineCount = [(VUILibraryProductInfoView *)self maxLineCount];
  v15 = 0x7FFFFFFFLL;
  if (maxLineCount)
  {
    v15 = maxLineCount;
  }

  v135 = v15;
  v106 = v8;
  v107 = width;
  v105 = v10;
  v16 = fmax(width - v8 - v10, 0.0);
  [(VUILibraryProductInfoView *)self headerMargin];
  v101 = v18;
  v102 = v17;
  v20 = v19;
  v22 = v21;
  headerView = [(VUILibraryProductInfoView *)self headerView];
  [headerView vui_sizeThatFits:{v16 - (v20 + v22), 0.0}];
  v100 = v24;

  [(VUILibraryProductInfoView *)self footerMargin];
  v98 = v26;
  v99 = v25;
  v28 = v27;
  v30 = v29;
  footerView = [(VUILibraryProductInfoView *)self footerView];
  v124 = v16;
  [footerView vui_sizeThatFits:{v16 - (v28 + v30), 0.0}];
  v97 = v32;

  v33 = *MEMORY[0x1E695F060];
  v34 = *(MEMORY[0x1E695F060] + 8);
  selfCopy = self;
  [(VUILibraryProductInfoView *)self _getNormalizedGroupedInfos];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = v147 = 0u;
  v117 = [obj countByEnumeratingWithState:&v144 objects:v150 count:16];
  if (!v117)
  {
    v114 = 0.0;
    v112 = 0.0;
    v36 = v33;
    v37 = v34;
    goto LABEL_59;
  }

  v35 = 0;
  v115 = *v145;
  v114 = 0.0;
  v111 = v33;
  v112 = 0.0;
  v36 = v33;
  v37 = v34;
  v38 = 0x7FFFFFFFFFFFFFFFLL;
  v116 = v12;
  v110 = v34;
  do
  {
    for (i = 0; i != v117; i = v89 + 1)
    {
      if (*v145 != v115)
      {
        objc_enumerationMutation(obj);
      }

      v126 = v38;
      v127 = i;
      v128 = v36;
      v129 = v37;
      v40 = *(*(&v144 + 1) + 8 * i);
      [(VUILibraryProductInfoView *)selfCopy _maxWidthForGroupInfos:v40, *&v97];
      v42 = v41;
      v134 = [v40 count];
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v43 = v40;
      v119 = [v43 countByEnumeratingWithState:&v140 objects:v149 count:16];
      v125 = v42;
      if (v119)
      {
        v44 = 0;
        v45 = *v141;
        if (v42 <= 0.0)
        {
          v46 = v124;
        }

        else
        {
          v46 = v42;
        }

        v47 = fmin(v46, fmax(v124, v42));
        v48 = 0.0;
        v49 = v35;
        v50 = 0.0;
        v51 = 0.0;
        v52 = 0.0;
        v130 = 0.0;
        v121 = v43;
        v118 = *v141;
        while (2)
        {
          v53 = 0;
          do
          {
            v122 = v50;
            v123 = v48;
            if (*v141 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v54 = *(*(&v140 + 1) + 8 * v53);
            [v54 lineSpacing];
            v56 = v55;
            [v54 headerMargin];
            v131 = v57;
            v132 = v58;
            [v54 headerPadding];
            v60 = v59;
            v62 = v61;
            headerContentView = [v54 headerContentView];
            [headerContentView vui_sizeThatFits:{v47, 0.0}];
            v65 = v64;
            v67 = v66;

            firstObject = [v43 firstObject];

            if (v54 == firstObject)
            {
              v48 = v62 + v60 + v67;
              useNormalizedGroupLayout = [(VUILibraryProductInfoView *)selfCopy useNormalizedGroupLayout];
              v70 = v130;
              if (useNormalizedGroupLayout)
              {
                v70 = v131;
              }

              v130 = v70;
              v50 = v132;
            }

            else
            {
              v52 = v52 + v132 + v62 + v131 + v60 + v67;
              v50 = v122;
              v48 = v123;
            }

            v133 = v53;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            dataViews = [v54 dataViews];
            v72 = [dataViews countByEnumeratingWithState:&v136 objects:v148 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v137;
              while (2)
              {
                for (j = 0; j != v73; ++j)
                {
                  if (*v137 != v74)
                  {
                    objc_enumerationMutation(dataViews);
                  }

                  v76 = *(*(&v136 + 1) + 8 * j);
                  if (v44 == v135)
                  {
                    v51 = fmax(v51, v52);
                    if (v134 != 1)
                    {

                      goto LABEL_39;
                    }

                    v44 = 0;
                    ++v49;
                    v52 = 0.0;
                  }

                  dataViews2 = [v54 dataViews];
                  firstObject2 = [dataViews2 firstObject];

                  if (v76 == firstObject2)
                  {
                    v79 = v52;
                  }

                  else
                  {
                    v79 = v56 + v52;
                  }

                  [v76 vui_sizeThatFits:{v47, 0.0}];
                  v52 = v79 + v80;
                  ++v44;
                  v65 = fmax(v65, v81);
                }

                v73 = [dataViews countByEnumeratingWithState:&v136 objects:v148 count:16];
                if (v73)
                {
                  continue;
                }

                break;
              }
            }

            v51 = fmax(v51, v52);
            if (v44 == v135)
            {
LABEL_39:
              v43 = v121;
              goto LABEL_41;
            }

            v53 = v133 + 1;
            v45 = v118;
            v43 = v121;
          }

          while (v133 + 1 != v119);
          v119 = [v121 countByEnumeratingWithState:&v140 objects:v149 count:16];
          if (v119)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v48 = 0.0;
        v49 = v35;
        v50 = 0.0;
        v65 = 0.0;
        v51 = 0.0;
        v130 = 0.0;
      }

LABEL_41:

      v82 = v125;
      if (v125 == 0.0)
      {
        v82 = v65;
      }

      v35 = v49 + 1;
      v83 = v49 - v126;
      v84 = v48 + v50 + v51;
      if (v126 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v85 = v49 + 1;
      }

      else
      {
        v85 = v49 - v126;
      }

      v86 = v116 * (v85 + -1.0) + v85 * v82;
      if (v126 == 0x7FFFFFFFFFFFFFFFLL || v124 <= 0.0)
      {
        v90 = v116;
        v38 = v49;
        v88 = v128;
        v87 = v129;
        v89 = v127;
        if (v126 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      v88 = v128;
      v87 = v129;
      v89 = v127;
      if (v116 + v128 + v86 > v124)
      {
        v114 = fmax(v114, v128);
        v112 = v112 + v109 + v129;
        v49 = v83 - 1;
        if ([(VUILibraryProductInfoView *)selfCopy useNormalizedGroupLayout])
        {
          v84 = v84 + v130;
        }

        v35 = v83;
        v87 = v110;
        v88 = v111;
LABEL_53:
        v90 = 0.0;
        v38 = v49;
        goto LABEL_55;
      }

      v38 = v49;
      v90 = v116;
LABEL_55:
      v36 = v88 + v86 + v90;
      v37 = fmax(v87, v84);
    }

    v117 = [obj countByEnumeratingWithState:&v144 objects:v150 count:16];
  }

  while (v117);
LABEL_59:
  v91 = v105 + v106 + fmax(v114, v36);
  v92 = fmin(v91, v107);
  if (v107 <= 0.0)
  {
    v93 = v91;
  }

  else
  {
    v93 = v92;
  }

  if (height <= 0.0)
  {
    v94 = 1.79769313e308;
  }

  else
  {
    v94 = height;
  }

  v95 = fmin(v94, v103 + v104 + v98 + v101 + v102 + v100 + v99 + v97 + v112 + v37);
  v96 = v93;
  result.height = v95;
  result.width = v96;
  return result;
}

- (void)layoutSubviews
{
  v196 = *MEMORY[0x1E69E9840];
  v190.receiver = self;
  v190.super_class = VUILibraryProductInfoView;
  [(VUILibraryProductInfoView *)&v190 layoutSubviews];
  [(VUILibraryProductInfoView *)self bounds];
  v4 = v3;
  [(VUILibraryProductInfoView *)self padding];
  v159 = v5;
  v160 = v6;
  v7 = v6;
  v9 = v8;
  [(VUILibraryProductInfoView *)self interitemSpacing];
  v137 = v10;
  [(VUILibraryProductInfoView *)self lineSpacing];
  v131 = v11;
  maxLineCount = [(VUILibraryProductInfoView *)self maxLineCount];
  if (maxLineCount)
  {
    v13 = maxLineCount;
  }

  else
  {
    v13 = 0x7FFFFFFFLL;
  }

  v142 = 0.0;
  v14 = fmax(v4 - v7 - v9, 0.0);
  [(VUILibraryProductInfoView *)self headerMargin];
  v164 = v15;
  v17 = v16;
  v168 = v18;
  v20 = v19;
  headerView = [(VUILibraryProductInfoView *)self headerView];
  v22 = v14 - (v17 + v20);
  [headerView vui_sizeThatFits:{v22, 0.0}];
  v166 = v23;

  [(VUILibraryProductInfoView *)self footerMargin];
  v128 = v24;
  v26 = v25;
  v28 = v27;
  footerView = [(VUILibraryProductInfoView *)self footerView];
  v127 = v26;
  v136 = v14;
  [footerView vui_sizeThatFits:{v14 - (v26 + v28), 0.0}];
  v129 = v30;

  v31 = v160 + v17;
  effectiveUserInterfaceLayoutDirection = [(VUILibraryProductInfoView *)self effectiveUserInterfaceLayoutDirection];
  selfCopy = self;
  headerView2 = [(VUILibraryProductInfoView *)self headerView];
  v130 = v22;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v34 = v166;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v31 = v38;
  }

  else
  {
    v35 = v159 + v164;
    v36 = v22;
    v34 = v166;
    v37 = v166;
  }

  [headerView2 setFrame:{v31, v35, v36, v37}];

  v141 = v168 + v159 + v164 + v34;
  [(VUILibraryProductInfoView *)self _getNormalizedGroupedInfos];
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  obj = v189 = 0u;
  v134 = [obj countByEnumeratingWithState:&v186 objects:v195 count:16];
  if (v134)
  {
    v39 = 0;
    v147 = *MEMORY[0x1E695EFF8];
    v133 = *v187;
    v142 = 0.0;
    v161 = 0x7FFFFFFFFFFFFFFFLL;
    v169 = v13;
    do
    {
      v40 = 0;
      do
      {
        if (*v187 != v133)
        {
          v41 = v40;
          objc_enumerationMutation(obj);
          v40 = v41;
        }

        v135 = v39;
        v140 = v40;
        v42 = *(*(&v186 + 1) + 8 * v40);
        [(VUILibraryProductInfoView *)selfCopy _maxWidthForGroupInfos:v42];
        v44 = v43;
        v167 = [v42 count];
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v185 = 0u;
        v149 = v42;
        v145 = [v149 countByEnumeratingWithState:&v182 objects:v194 count:16];
        v138 = v44;
        if (v145)
        {
          v45 = 0;
          v143 = *v183;
          if (v44 <= 0.0)
          {
            v46 = v136;
          }

          else
          {
            v46 = v44;
          }

          v47 = fmin(v46, fmax(v136, v44));
          v48 = 0.0;
          v49 = 1;
          v50 = 0.0;
          v163 = 0.0;
          v165 = 0.0;
LABEL_17:
          v51 = 0;
          while (1)
          {
            if (*v183 != v143)
            {
              objc_enumerationMutation(v149);
            }

            v151 = v51;
            v52 = *(*(&v182 + 1) + 8 * v51);
            [v52 lineSpacing];
            v54 = v53;
            [v52 headerMargin];
            v153 = v55;
            v155 = v56;
            [v52 headerPadding];
            v58 = v57;
            v60 = v59;
            headerContentView = [v52 headerContentView];
            headerContentView2 = [v52 headerContentView];
            [headerContentView2 vui_sizeThatFits:{v47, 0.0}];
            v64 = v63;
            v66 = v65;

            v157 = headerContentView;
            [headerContentView setBounds:{0.0, 0.0, v64, v66}];
            firstObject = [v149 firstObject];

            if (v52 == firstObject)
            {
              v68 = v155;
            }

            else
            {
              v50 = v50 + v155 + v60 + v153 + v58 + v66;
              v68 = v165;
            }

            v180 = 0u;
            v181 = 0u;
            v69 = v163;
            if (v52 == firstObject)
            {
              v69 = v60 + v58 + v66;
            }

            v163 = v69;
            v165 = v68;
            v178 = 0uLL;
            v179 = 0uLL;
            dataViews = [v52 dataViews];
            v71 = [dataViews countByEnumeratingWithState:&v178 objects:v193 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v179;
              v74 = v147;
              while (2)
              {
                for (i = 0; i != v72; ++i)
                {
                  if (*v179 != v73)
                  {
                    objc_enumerationMutation(dataViews);
                  }

                  v76 = *(*(&v178 + 1) + 8 * i);
                  if (v13 >= 1 && v45 == v13)
                  {
                    v48 = fmax(v48, v50);
                    if (v167 != 1)
                    {
                      v45 = v13;
                      goto LABEL_42;
                    }

                    v45 = 0;
                    ++v49;
                    v50 = 0.0;
                  }

                  dataViews2 = [v52 dataViews];
                  firstObject2 = [dataViews2 firstObject];

                  if (v76 == firstObject2)
                  {
                    v79 = v50;
                  }

                  else
                  {
                    v79 = v54 + v50;
                  }

                  [v76 vui_sizeThatFits:{v47, 0.0}];
                  v81 = v80;
                  v83 = v82;
                  [v76 setBounds:{0.0, 0.0, v80, v82}];
                  v50 = v79 + v83;
                  v64 = fmax(v64, v81);
                  ++v45;
                  v13 = v169;
                }

                v72 = [dataViews countByEnumeratingWithState:&v178 objects:v193 count:16];
                if (v72)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v74 = v147;
            }

LABEL_42:

            v48 = fmax(v48, v50);
            if (v45 == v13)
            {
              break;
            }

            v51 = v151 + 1;
            if (v151 + 1 == v145)
            {
              v145 = [v149 countByEnumeratingWithState:&v182 objects:v194 count:16];
              if (v145)
              {
                goto LABEL_17;
              }

              break;
            }
          }
        }

        else
        {
          v48 = 0.0;
          v49 = 1;
          v64 = 0.0;
          v163 = 0.0;
          v165 = 0.0;
          v74 = v147;
        }

        if (v138 == 0.0)
        {
          v84 = v64;
        }

        else
        {
          v84 = v138;
        }

        v85 = [MEMORY[0x1E696AD98] numberWithLong:v49];
        [v85 floatValue];
        v87 = v86;

        if (v161 == 0x7FFFFFFFFFFFFFFFLL || v136 <= 0.0 || v74 + v137 * (v87 + -1.0) + v87 * v84 <= v136)
        {
          v161 = v135;
          v88 = v141;
        }

        else
        {
          v88 = v141 + v131 + v142;
          v161 = v49 - 1;
          v74 = 0.0;
          v142 = 0.0;
        }

        v141 = v88;
        v89 = v88 > 0.0 && [(VUILibraryProductInfoView *)selfCopy useNormalizedGroupLayout];
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v90 = v149;
        v91 = v137 + v84;
        v146 = [v90 countByEnumeratingWithState:&v174 objects:v192 count:16];
        if (v146)
        {
          v92 = 0;
          v93 = *v175;
          v94 = v141;
          v152 = v90;
          v144 = v89;
          v139 = *v175;
          while (2)
          {
            v95 = 0;
            do
            {
              v148 = v74;
              if (*v175 != v93)
              {
                objc_enumerationMutation(v90);
              }

              v150 = v95;
              v96 = *(*(&v174 + 1) + 8 * v95);
              [v96 lineSpacing];
              v98 = v97;
              [v96 headerMargin];
              v154 = v99;
              v158 = v100;
              [v96 headerPadding];
              v102 = v101;
              v156 = v103;
              headerContentView3 = [v96 headerContentView];
              [headerContentView3 bounds];
              v106 = v105;
              firstObject3 = [v90 firstObject];
              v108 = v96 != firstObject3 || v89;

              if (v108)
              {
                v94 = v94 + v154;
              }

              [(VUILibraryProductInfoView *)selfCopy _layouCellContentView:headerContentView3 inCellBounds:v160 + v148, v102 + v159 + v94, v84, v106];
              v172 = 0u;
              v173 = 0u;
              v94 = v94 + v158 + v156 + v102 + v106;
              v170 = 0u;
              v171 = 0u;
              dataViews3 = [v96 dataViews];
              v110 = [dataViews3 countByEnumeratingWithState:&v170 objects:v191 count:16];
              if (v110)
              {
                v111 = v110;
                v112 = *v171;
                v74 = v148;
                while (2)
                {
                  for (j = 0; j != v111; ++j)
                  {
                    if (*v171 != v112)
                    {
                      objc_enumerationMutation(dataViews3);
                    }

                    v114 = *(*(&v170 + 1) + 8 * j);
                    if (v92 == v169)
                    {
                      if (v167 != 1)
                      {

                        goto LABEL_84;
                      }

                      v92 = 0;
                      ++v161;
                      v74 = v91 + v74;
                      v94 = v165 + v163 + v141;
                    }

                    dataViews4 = [v96 dataViews];
                    firstObject4 = [dataViews4 firstObject];

                    if (v114 != firstObject4)
                    {
                      v94 = v98 + v94;
                    }

                    [v114 bounds];
                    v118 = v117;
                    [(VUILibraryProductInfoView *)selfCopy _layouCellContentView:v114 inCellBounds:v160 + v74, v159 + v94, v84];
                    v94 = v94 + v118;
                    ++v92;
                  }

                  v111 = [dataViews3 countByEnumeratingWithState:&v170 objects:v191 count:16];
                  if (v111)
                  {
                    continue;
                  }

                  break;
                }
              }

              else
              {
                v74 = v148;
              }

              if (v92 == v169)
              {
LABEL_84:
                v13 = v169;
                v90 = v152;
                goto LABEL_85;
              }

              v90 = v152;
              v95 = v150 + 1;
              v89 = v144;
              v93 = v139;
            }

            while (v150 + 1 != v146);
            v146 = [v152 countByEnumeratingWithState:&v174 objects:v192 count:16];
            if (v146)
            {
              continue;
            }

            break;
          }

          v13 = v169;
        }

LABEL_85:

        v147 = v91 + v74;
        v142 = fmax(v142, v48 + v165 + v163);
        v39 = v161 + 1;
        v40 = v140 + 1;
      }

      while (v140 + 1 != v134);
      v134 = [obj countByEnumeratingWithState:&v186 objects:v195 count:16];
    }

    while (v134);
  }

  v119 = v160 + v127;
  v120 = v128 + v141 + v142;
  effectiveUserInterfaceLayoutDirection2 = [(VUILibraryProductInfoView *)selfCopy effectiveUserInterfaceLayoutDirection];
  footerView2 = [(VUILibraryProductInfoView *)selfCopy footerView];
  if (effectiveUserInterfaceLayoutDirection2 == 1)
  {
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v119 = v125;
    v120 = v126;
  }

  else
  {
    v124 = v129;
    v123 = v130;
  }

  [footerView2 setFrame:{v119, v120, v123, v124}];

  [(VUILibraryProductInfoView *)selfCopy invalidateIntrinsicContentSize];
}

- (id)_getNormalizedGroupedInfos
{
  if ([(VUILibraryProductInfoView *)self _columnCount]== 2)
  {
    [(VUILibraryProductInfoView *)self groupedInfos];
  }

  else
  {
    [(VUILibraryProductInfoView *)self normalizedGroupedInfos];
  }
  v3 = ;

  return v3;
}

- (void)_layouCellContentView:(id)view inCellBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  [viewCopy bounds];
  if (v9 > width)
  {
    [viewCopy frame];
    v11 = v10;
    [viewCopy frame];
    v13 = v12;
    [viewCopy bounds];
    [viewCopy setFrame:{v11, v13, width}];
  }

  [viewCopy bounds];
  v15 = v14;
  if ([(VUILibraryProductInfoView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    [(VUILibraryProductInfoView *)self bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v18 = v16 + v17 + v15 * -0.5;
    v21 = v19 + v20 * 0.5;
  }

  else
  {
    v18 = x + v15 * 0.5;
    v21 = y + height * 0.5;
  }

  [viewCopy setCenter:{v18, v21}];
}

- (double)_sectionInfoWidth
{
  v3 = [MEMORY[0x1E696AD98] numberWithLong:{-[VUILibraryProductInfoView _columnCount](self, "_columnCount")}];
  [v3 floatValue];
  v5 = v4;

  [(VUILibraryProductInfoView *)self interitemSpacing];
  v7 = v6;
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  [vui_keyWindow bounds];
  Width = CGRectGetWidth(v13);

  [(VUILibraryProductInfoView *)self padding];
  return (Width - (v10 + v11) - (v5 + -1.0) * v7) / v5;
}

- (double)interitemSpacing
{
  traitCollection = [(VUILibraryProductInfoView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v4 = ([MEMORY[0x1E69DD2E8] vui_interfaceOrientation] - 3) < 2 && userInterfaceIdiom == 1;
  result = 20.0;
  if (v4)
  {
    return 30.0;
  }

  return result;
}

- (int64_t)maxLineCount
{
  traitCollection = [(VUILibraryProductInfoView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  vui_interfaceOrientation = [MEMORY[0x1E69DD2E8] vui_interfaceOrientation];
  traitCollection2 = [(VUILibraryProductInfoView *)self traitCollection];
  isAXEnabled = [traitCollection2 isAXEnabled];

  if (userInterfaceIdiom == 1)
  {
    v8 = isAXEnabled;
  }

  else
  {
    v8 = 1;
  }

  v9 = 5;
  if ((vui_interfaceOrientation - 3) >= 2)
  {
    v9 = 0;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (UIEdgeInsets)padding
{
  v2 = MEMORY[0x1E69DD2E8];
  [(VUILibraryProductInfoView *)self bounds];
  Width = CGRectGetWidth(v9);

  [v2 vui_paddingForWindowWidth:Width];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (unint64_t)_columnCount
{
  traitCollection = [(VUILibraryProductInfoView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  vui_interfaceOrientation = [MEMORY[0x1E69DD2E8] vui_interfaceOrientation];
  traitCollection2 = [(VUILibraryProductInfoView *)self traitCollection];
  isAXEnabled = [traitCollection2 isAXEnabled];

  if (isAXEnabled)
  {
    return 1;
  }

  if (userInterfaceIdiom != 1)
  {
    return 2;
  }

  if ((vui_interfaceOrientation - 1) < 2)
  {
    return 4;
  }

  if ((vui_interfaceOrientation - 3) >= 2)
  {
    return 2;
  }

  return 5;
}

- (UIEdgeInsets)headerMargin
{
  top = self->_headerMargin.top;
  left = self->_headerMargin.left;
  bottom = self->_headerMargin.bottom;
  right = self->_headerMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)footerMargin
{
  top = self->_footerMargin.top;
  left = self->_footerMargin.left;
  bottom = self->_footerMargin.bottom;
  right = self->_footerMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end