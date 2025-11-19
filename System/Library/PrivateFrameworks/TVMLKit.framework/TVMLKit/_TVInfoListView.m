@interface _TVInfoListView
+ (id)infoListViewWithElement:(id)a3 existingView:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TVInfoListView)initWithFrame:(CGRect)a3;
- (double)_maxWidthForGroupInfos:(id)a3;
- (void)_layouCellContentView:(id)a3 inCellBounds:(CGRect)a4;
- (void)layoutSubviews;
- (void)setFooterView:(id)a3;
- (void)setHeaderView:(id)a3;
- (void)setInfos:(id)a3;
@end

@implementation _TVInfoListView

+ (id)infoListViewWithElement:(id)a3 existingView:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v44 = v7;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v9 = [a1 alloc];
    v8 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v7}];
  }

  v10 = v8;
  v11 = [v6 style];
  [v10 setMaxLineCount:{objc_msgSend(v11, "tv_maxLines")}];

  v12 = [v6 style];
  [v12 tv_lineSpacing];
  [v10 setLineSpacing:?];

  v13 = [v6 style];
  [v13 tv_interitemSpacing];
  [v10 setInteritemSpacing:?];

  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v46 = v6;
  v14 = [v6 children];
  v15 = [v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v58;
    v48 = v14;
    v49 = v10;
    v47 = *v58;
    do
    {
      v18 = 0;
      v51 = v16;
      do
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v57 + 1) + 8 * v18);
        if ([v19 tv_elementType] == 15)
        {
          v20 = +[TVInterfaceFactory sharedInterfaceFactory];
          v21 = [v10 headerView];
          v22 = [(_TVInfoListInfo *)v20 _viewFromElement:v19 existingView:v21];
          [v10 setHeaderView:v22];
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        if ([v19 tv_elementType] == 13)
        {
          v20 = +[TVInterfaceFactory sharedInterfaceFactory];
          v21 = [v10 footerView];
          v22 = [(_TVInfoListInfo *)v20 _viewFromElement:v19 existingView:v21];
          [v10 setFooterView:v22];
          goto LABEL_13;
        }

        if ([v19 tv_elementType] == 18)
        {
          v52 = v18;
          v20 = objc_alloc_init(_TVInfoListInfo);
          v23 = [v19 style];
          v24 = [v23 tv_group];
          [(_TVInfoListInfo *)v20 setGroup:v24];

          v25 = [v19 style];
          [v25 tv_width];
          [(_TVInfoListInfo *)v20 setWidth:?];

          v26 = [v19 style];
          [v26 tv_lineSpacing];
          [(_TVInfoListInfo *)v20 setLineSpacing:?];

          v21 = [MEMORY[0x277CBEB18] array];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v27 = [v19 children];
          v28 = [v27 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v54;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v54 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v53 + 1) + 8 * i);
                if ([v32 tv_elementType] == 15)
                {
                  v33 = [v32 style];
                  [v33 tv_margin];
                  [(_TVInfoListInfo *)v20 setHeaderMargin:?];

                  v34 = [v32 style];
                  [v34 tv_padding];
                  [(_TVInfoListInfo *)v20 setHeaderPadding:?];

                  v35 = [v32 children];
                  v36 = [v35 firstObject];

                  v37 = +[TVInterfaceFactory sharedInterfaceFactory];
                  v38 = [v37 _viewFromElement:v36 existingView:0];
                  [(_TVInfoListInfo *)v20 setHeaderContentView:v38];
                }

                else
                {
                  v39 = +[TVInterfaceFactory sharedInterfaceFactory];
                  v36 = [v39 _viewFromElement:v32 existingView:0];

                  if (v36)
                  {
                    [v21 addObject:v36];
                  }
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v53 objects:v61 count:16];
            }

            while (v29);
          }

          v40 = [v21 copy];
          [(_TVInfoListInfo *)v20 setDataViews:v40];

          [v50 addObject:v20];
          v14 = v48;
          v10 = v49;
          v17 = v47;
          v16 = v51;
          v18 = v52;
          goto LABEL_14;
        }

LABEL_15:
        ++v18;
      }

      while (v18 != v16);
      v41 = [v14 countByEnumeratingWithState:&v57 objects:v62 count:16];
      v16 = v41;
    }

    while (v41);
  }

  v42 = [v50 copy];
  [v10 setInfos:v42];

  return v10;
}

- (_TVInfoListView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _TVInfoListView;
  return [(_TVInfoListView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  v7 = v5;
  if (headerView != v5)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    if (self->_headerView)
    {
      [(_TVInfoListView *)self addSubview:?];
    }
  }

  [(_TVInfoListView *)self setNeedsLayout];
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  v7 = v5;
  if (footerView != v5)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, a3);
    if (self->_footerView)
    {
      [(_TVInfoListView *)self addSubview:?];
    }
  }

  [(_TVInfoListView *)self setNeedsLayout];
}

- (void)setInfos:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = [(_TVInfoListView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = [(_TVInfoListView *)self headerView];
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          v13 = [(_TVInfoListView *)self footerView];

          if (v10 != v13)
          {
            [v10 removeFromSuperview];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  infos = self->_infos;
  self->_infos = v14;

  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = v4;
  v18 = [v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v53;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v52 + 1) + 8 * v22);
        v20 = [v24 group];
        if (v23 && ([v23 isEqualToString:v20] & 1) == 0)
        {
          v25 = [v16 copy];
          [v43 addObject:v25];

          [v16 removeAllObjects];
        }

        if (v20)
        {
          [v16 addObject:v24];
        }

        else
        {
          v62 = v24;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
          [v43 addObject:v26];
        }

        ++v22;
        v23 = v20;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v19);
  }

  v27 = [v16 copy];
  [v43 addObject:v27];

  v28 = [v43 copy];
  groupedInfos = self->_groupedInfos;
  self->_groupedInfos = v28;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = v17;
  v31 = [v30 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v49;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v48 + 1) + 8 * j);
        v36 = [v35 headerContentView];

        if (v36)
        {
          v37 = [v35 headerContentView];
          [(_TVInfoListView *)self addSubview:v37];
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v38 = [v35 dataViews];
        v39 = [v38 countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v45;
          do
          {
            for (k = 0; k != v40; ++k)
            {
              if (*v45 != v41)
              {
                objc_enumerationMutation(v38);
              }

              [(_TVInfoListView *)self addSubview:*(*(&v44 + 1) + 8 * k)];
            }

            v40 = [v38 countByEnumeratingWithState:&v44 objects:v60 count:16];
          }

          while (v40);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v32);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v151 = *MEMORY[0x277D85DE8];
  [(UIView *)self tv_padding];
  v104 = v6;
  v105 = v5;
  v8 = v7;
  v10 = v9;
  [(_TVInfoListView *)self interitemSpacing];
  v12 = v11;
  [(_TVInfoListView *)self lineSpacing];
  v110 = v13;
  v14 = [(_TVInfoListView *)self maxLineCount];
  v15 = 0x7FFFFFFFLL;
  if (v14)
  {
    v15 = v14;
  }

  v135 = v15;
  v107 = v8;
  v108 = width;
  v106 = v10;
  v16 = width - v8 - v10;
  v17 = 0.0;
  v18 = fmax(v16, 0.0);
  v19 = [(_TVInfoListView *)self headerView];
  [v19 tv_margin];
  v102 = v21;
  v103 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(_TVInfoListView *)self headerView];
  [v26 tv_sizeThatFits:{v18 - (v23 + v25), 0.0}];
  v101 = v27;

  v28 = [(_TVInfoListView *)self footerView];
  [v28 tv_margin];
  v99 = v30;
  v100 = v29;
  v32 = v31;
  v34 = v33;

  v35 = [(_TVInfoListView *)self footerView];
  v123 = v18;
  [v35 tv_sizeThatFits:{v18 - (v32 + v34), 0.0}];
  v98 = v36;

  v37 = *MEMORY[0x277CBF3A8];
  v38 = *(MEMORY[0x277CBF3A8] + 8);
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v117 = self;
  obj = [(_TVInfoListView *)self groupedInfos];
  v118 = [obj countByEnumeratingWithState:&v144 objects:v150 count:16];
  if (!v118)
  {
    v113 = 0.0;
    v40 = v37;
    v41 = v38;
    goto LABEL_57;
  }

  v39 = 0;
  v115 = *v145;
  v112 = v37;
  v113 = 0.0;
  v40 = v37;
  v41 = v38;
  v42 = 0x7FFFFFFFFFFFFFFFLL;
  v116 = v12;
  v111 = v38;
  do
  {
    for (i = 0; i != v118; i = v92 + 1)
    {
      v126 = v42;
      if (*v145 != v115)
      {
        objc_enumerationMutation(obj);
      }

      v127 = v40;
      v128 = v41;
      v129 = v17;
      v125 = i;
      v44 = *(*(&v144 + 1) + 8 * i);
      [(_TVInfoListView *)v117 _maxWidthForGroupInfos:v44, *&v98, *&v99, *&v100, *&v101, *&v102, *&v103];
      v46 = v45;
      v134 = [v44 count];
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v47 = v44;
      v120 = [v47 countByEnumeratingWithState:&v140 objects:v149 count:16];
      v124 = v46;
      if (v120)
      {
        v48 = 0;
        v49 = *v141;
        if (v46 <= 0.0)
        {
          v50 = v123;
        }

        else
        {
          v50 = v46;
        }

        v51 = fmin(v50, fmax(v123, v46));
        v52 = 0.0;
        v133 = 0.0;
        v53 = 0.0;
        v54 = 0.0;
        v122 = v47;
        v119 = *v141;
        while (2)
        {
          v55 = 0;
          do
          {
            v132 = v52;
            if (*v141 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v121 = v55;
            v56 = *(*(&v140 + 1) + 8 * v55);
            [v56 lineSpacing];
            v58 = v57;
            [v56 headerMargin];
            v130 = v59;
            v131 = v60;
            [v56 headerPadding];
            v62 = v61;
            v64 = v63;
            v65 = [v56 headerContentView];
            [v65 tv_sizeThatFits:{v51, 0.0}];
            v67 = v66;
            v69 = v68;

            v70 = [v47 firstObject];

            v71 = v54 + v131 + v64 + v130 + v62 + v69;
            v72 = v64 + v62 + v69;
            v52 = v132;
            if (v56 == v70)
            {
              v52 = v72;
            }

            v73 = v133;
            if (v56 == v70)
            {
              v73 = v131;
            }

            v133 = v73;
            v138 = 0u;
            v139 = 0u;
            if (v56 != v70)
            {
              v54 = v71;
            }

            v136 = 0uLL;
            v137 = 0uLL;
            v74 = [v56 dataViews];
            v75 = [v74 countByEnumeratingWithState:&v136 objects:v148 count:16];
            if (v75)
            {
              v76 = v75;
              v77 = *v137;
              while (2)
              {
                for (j = 0; j != v76; ++j)
                {
                  if (*v137 != v77)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v79 = *(*(&v136 + 1) + 8 * j);
                  if (v48 == v135)
                  {
                    v53 = fmax(v53, v54);
                    if (v134 != 1)
                    {

                      goto LABEL_40;
                    }

                    v48 = 0;
                    ++v39;
                    v54 = 0.0;
                  }

                  v80 = [v56 dataViews];
                  v81 = [v80 firstObject];

                  if (v79 == v81)
                  {
                    v82 = v54;
                  }

                  else
                  {
                    v82 = v58 + v54;
                  }

                  [v79 tv_sizeThatFits:{v51, 0.0}];
                  v54 = v82 + v83;
                  ++v48;
                  v67 = fmax(v67, v84);
                }

                v76 = [v74 countByEnumeratingWithState:&v136 objects:v148 count:16];
                if (v76)
                {
                  continue;
                }

                break;
              }
            }

            v53 = fmax(v53, v54);
            if (v48 == v135)
            {
LABEL_40:
              v47 = v122;
              goto LABEL_42;
            }

            v55 = v121 + 1;
            v47 = v122;
            v49 = v119;
          }

          while (v121 + 1 != v120);
          v120 = [v122 countByEnumeratingWithState:&v140 objects:v149 count:16];
          if (v120)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v52 = 0.0;
        v133 = 0.0;
        v67 = 0.0;
        v53 = 0.0;
      }

LABEL_42:

      v85 = v124;
      if (v124 == 0.0)
      {
        v85 = v67;
      }

      v86 = 1;
      if (v126 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v86 = -v126;
      }

      v87 = v39 + v86;
      v88 = v39 + v86 - 1;
      v89 = v116 * v88 + v87 * v85;
      if (v126 == 0x7FFFFFFFFFFFFFFFLL || v123 <= 0.0)
      {
        v93 = v116;
        v42 = v39;
        v90 = v128;
        v17 = v129;
        v91 = v127;
        v92 = v125;
        if (v126 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      v91 = v127;
      v90 = v128;
      v17 = v129;
      v92 = v125;
      if (v116 + v127 + v89 > v123)
      {
        v17 = fmax(v129, v127);
        v113 = v113 + v110 + v128;
        v39 = v88;
        v90 = v111;
        v91 = v112;
LABEL_51:
        v93 = 0.0;
        v42 = v39;
        goto LABEL_53;
      }

      v42 = v39;
      v93 = v116;
LABEL_53:
      v40 = v91 + v89 + v93;
      v41 = fmax(v90, v52 + v133 + v53);
      v39 = v42 + 1;
    }

    v118 = [obj countByEnumeratingWithState:&v144 objects:v150 count:16];
  }

  while (v118);
LABEL_57:

  v94 = v106 + v107 + fmax(v17, v40);
  v95 = fmin(v94, v108);
  if (v108 > 0.0)
  {
    v94 = v95;
  }

  v96 = 1.79769313e308;
  if (height > 0.0)
  {
    v96 = height;
  }

  v97 = fmin(v96, v104 + v105 + v99 + v102 + v103 + v101 + v100 + v98 + v113 + v41);
  result.height = v97;
  result.width = v94;
  return result;
}

- (void)layoutSubviews
{
  v182 = *MEMORY[0x277D85DE8];
  v176.receiver = self;
  v176.super_class = _TVInfoListView;
  [(_TVInfoListView *)&v176 layoutSubviews];
  [(_TVInfoListView *)self bounds];
  v4 = v3;
  [(UIView *)self tv_padding];
  v147 = v5;
  v7 = v6;
  v9 = v8;
  [(_TVInfoListView *)self interitemSpacing];
  v126 = v10;
  [(_TVInfoListView *)self lineSpacing];
  v119 = v11;
  v12 = [(_TVInfoListView *)self maxLineCount];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x7FFFFFFFLL;
  }

  v14 = 0.0;
  v15 = fmax(v4 - v7 - v9, 0.0);
  v16 = [(_TVInfoListView *)self headerView];
  [v16 tv_margin];
  v152 = v17;
  v154 = v18;
  v20 = v19;
  v22 = v21;

  v23 = [(_TVInfoListView *)self headerView];
  v24 = v15 - (v20 + v22);
  [v23 tv_sizeThatFits:{v24, 0.0}];
  v26 = v25;

  v27 = [(_TVInfoListView *)self footerView];
  [v27 tv_margin];
  v117 = v28;
  v30 = v29;
  v32 = v31;

  v33 = [(_TVInfoListView *)self footerView];
  v116 = v30;
  v124 = v15;
  [v33 tv_sizeThatFits:{v15 - (v30 + v32), 0.0}];
  v115 = v34;

  v35 = [(_TVInfoListView *)self headerView];
  v148 = v7;
  v118 = v24;
  [v35 setFrame:{v7 + v20, v147 + v152, v24, v26}];

  v125 = v154 + v147 + v152 + v26;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v149 = self;
  obj = [(_TVInfoListView *)self groupedInfos];
  v122 = [obj countByEnumeratingWithState:&v172 objects:v181 count:16];
  if (v122)
  {
    v36 = 0;
    v37 = *MEMORY[0x277CBF348];
    v121 = *v173;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    v155 = v13;
    do
    {
      v39 = 0;
      do
      {
        if (*v173 != v121)
        {
          v40 = v39;
          objc_enumerationMutation(obj);
          v39 = v40;
        }

        v123 = v36;
        v128 = v39;
        v129 = v38;
        v130 = v37;
        v132 = v14;
        v41 = *(*(&v172 + 1) + 8 * v39);
        [(_TVInfoListView *)v149 _maxWidthForGroupInfos:v41];
        v43 = v42;
        v153 = [v41 count];
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v137 = v41;
        v135 = [v137 countByEnumeratingWithState:&v168 objects:v180 count:16];
        v127 = v43;
        if (v135)
        {
          v44 = 0;
          v133 = *v169;
          if (v43 <= 0.0)
          {
            v45 = v124;
          }

          else
          {
            v45 = v43;
          }

          v46 = fmin(v45, fmax(v124, v43));
          v47 = 0.0;
          v48 = 1;
          v49 = 0.0;
          v150 = 0.0;
          v151 = 0.0;
LABEL_14:
          v50 = 0;
          while (1)
          {
            if (*v169 != v133)
            {
              objc_enumerationMutation(v137);
            }

            v139 = v50;
            v51 = *(*(&v168 + 1) + 8 * v50);
            [v51 lineSpacing];
            v53 = v52;
            [v51 headerMargin];
            v141 = v54;
            v144 = v55;
            [v51 headerPadding];
            v57 = v56;
            v59 = v58;
            v60 = [v51 headerContentView];
            v61 = [v51 headerContentView];
            [v61 tv_sizeThatFits:{v46, 0.0}];
            v63 = v62;
            v65 = v64;

            v145 = v60;
            [v60 setBounds:{0.0, 0.0, v63, v65}];
            v66 = [v137 firstObject];

            if (v51 == v66)
            {
              v67 = v144;
            }

            else
            {
              v49 = v49 + v144 + v59 + v141 + v57 + v65;
              v67 = v151;
            }

            v166 = 0u;
            v167 = 0u;
            v68 = v150;
            if (v51 == v66)
            {
              v68 = v59 + v57 + v65;
            }

            v150 = v68;
            v151 = v67;
            v164 = 0uLL;
            v165 = 0uLL;
            v69 = [v51 dataViews];
            v70 = [v69 countByEnumeratingWithState:&v164 objects:v179 count:16];
            if (v70)
            {
              v71 = v70;
              v72 = *v165;
              while (2)
              {
                for (i = 0; i != v71; ++i)
                {
                  if (*v165 != v72)
                  {
                    objc_enumerationMutation(v69);
                  }

                  v74 = *(*(&v164 + 1) + 8 * i);
                  if (v13 >= 1 && v44 == v13)
                  {
                    v47 = fmax(v47, v49);
                    if (v153 != 1)
                    {
                      v44 = v13;
                      goto LABEL_37;
                    }

                    v44 = 0;
                    ++v48;
                    v49 = 0.0;
                  }

                  v75 = [v51 dataViews];
                  v76 = [v75 firstObject];

                  if (v74 != v76)
                  {
                    v49 = v53 + v49;
                  }

                  [v74 tv_sizeThatFits:{v46, 0.0}];
                  v78 = v77;
                  v80 = v79;
                  [v74 setBounds:{0.0, 0.0, v77, v79}];
                  v49 = v49 + v80;
                  v63 = fmax(v63, v78);
                  ++v44;
                  v13 = v155;
                }

                v71 = [v69 countByEnumeratingWithState:&v164 objects:v179 count:16];
                if (v71)
                {
                  continue;
                }

                break;
              }
            }

LABEL_37:

            v47 = fmax(v47, v49);
            if (v44 == v13)
            {
              break;
            }

            v50 = v139 + 1;
            if (v139 + 1 == v135)
            {
              v135 = [v137 countByEnumeratingWithState:&v168 objects:v180 count:16];
              if (v135)
              {
                goto LABEL_14;
              }

              break;
            }
          }
        }

        else
        {
          v47 = 0.0;
          v48 = 1;
          v63 = 0.0;
          v150 = 0.0;
          v151 = 0.0;
        }

        if (v127 == 0.0)
        {
          v81 = v63;
        }

        else
        {
          v81 = v127;
        }

        if (v129 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v38 = v123;
          v82 = v130;
        }

        else
        {
          v82 = v130;
          if (v124 <= 0.0 || (v38 = v48 - 1, v130 + v126 * (v48 - 1) + v48 * v81 <= v124))
          {
            v38 = v123;
          }

          else
          {
            v125 = v125 + v119 + v132;
            v82 = 0.0;
            v132 = 0.0;
          }
        }

        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v83 = v137;
        v146 = v126 + v81;
        v134 = [v83 countByEnumeratingWithState:&v160 objects:v178 count:16];
        if (v134)
        {
          v84 = v82;
          v85 = 0;
          v86 = *v161;
          v87 = v125;
          v138 = v83;
          v131 = *v161;
          while (2)
          {
            v88 = 0;
            do
            {
              if (*v161 != v86)
              {
                objc_enumerationMutation(v83);
              }

              v136 = v88;
              v89 = *(*(&v160 + 1) + 8 * v88);
              [v89 lineSpacing];
              v91 = v90;
              [v89 headerMargin];
              v142 = v92;
              v94 = v93;
              [v89 headerPadding];
              v96 = v95;
              v140 = v97;
              v98 = [v89 headerContentView];
              [v98 bounds];
              v100 = v99;
              v101 = [v83 firstObject];

              if (v89 != v101)
              {
                v87 = v87 + v142;
              }

              v143 = v98;
              [(_TVInfoListView *)v149 _layouCellContentView:v98 inCellBounds:v148 + v84, v96 + v147 + v87, v81, v100];
              v158 = 0u;
              v159 = 0u;
              v87 = v87 + v94 + v140 + v96 + v100;
              v156 = 0u;
              v157 = 0u;
              v102 = [v89 dataViews];
              v103 = [v102 countByEnumeratingWithState:&v156 objects:v177 count:16];
              if (v103)
              {
                v104 = v103;
                v105 = *v157;
                while (2)
                {
                  for (j = 0; j != v104; ++j)
                  {
                    if (*v157 != v105)
                    {
                      objc_enumerationMutation(v102);
                    }

                    v107 = *(*(&v156 + 1) + 8 * j);
                    if (v85 == v13)
                    {
                      if (v153 != 1)
                      {

                        goto LABEL_77;
                      }

                      v85 = 0;
                      ++v38;
                      v87 = v151 + v150 + v125;
                      v108 = v146 + v84;
                    }

                    else
                    {
                      v108 = v84;
                    }

                    v109 = [v89 dataViews];
                    v110 = [v109 firstObject];

                    if (v107 == v110)
                    {
                      v111 = v87;
                    }

                    else
                    {
                      v111 = v91 + v87;
                    }

                    [v107 bounds];
                    v113 = v112;
                    v84 = v108;
                    [(_TVInfoListView *)v149 _layouCellContentView:v107 inCellBounds:v148 + v108, v147 + v111, v81];
                    v87 = v111 + v113;
                    ++v85;
                    v13 = v155;
                  }

                  v104 = [v102 countByEnumeratingWithState:&v156 objects:v177 count:16];
                  if (v104)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (v85 == v13)
              {
LABEL_77:
                v82 = v84;
                v83 = v138;
                goto LABEL_78;
              }

              v88 = v136 + 1;
              v83 = v138;
              v86 = v131;
            }

            while (v136 + 1 != v134);
            v134 = [v138 countByEnumeratingWithState:&v160 objects:v178 count:16];
            if (v134)
            {
              continue;
            }

            break;
          }

          v82 = v84;
        }

LABEL_78:

        v37 = v146 + v82;
        v14 = fmax(v132, v47 + v151 + v150);
        v36 = v38 + 1;
        v39 = v128 + 1;
      }

      while (v128 + 1 != v122);
      v122 = [obj countByEnumeratingWithState:&v172 objects:v181 count:16];
    }

    while (v122);
  }

  v114 = [(_TVInfoListView *)v149 footerView];
  [v114 setFrame:{v148 + v116, v117 + v125 + v14, v118, v115}];
}

- (double)_maxWidthForGroupInfos:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = v7;
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 width];
        if (v11 != 0.0)
        {
          [v10 width];
          v7 = v12;
          if (v9 != 0.0)
          {
            v7 = fmin(v9, v12);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)_layouCellContentView:(id)a3 inCellBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  [v13 bounds];
  v9 = v8;
  v10 = [v13 tv_alignment];
  v11 = x + width * 0.5;
  v12 = x + v9 * 0.5;
  if (v10 == 3)
  {
    v12 = x + width + v9 * -0.5;
  }

  if (v10 != 2)
  {
    v11 = v12;
  }

  [v13 setCenter:{v11, y + height * 0.5}];
}

@end