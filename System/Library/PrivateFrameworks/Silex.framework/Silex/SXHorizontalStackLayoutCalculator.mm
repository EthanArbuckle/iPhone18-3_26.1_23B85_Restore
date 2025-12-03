@interface SXHorizontalStackLayoutCalculator
- (SXHorizontalStackLayoutCalculator)init;
- (id)layoutForComponentWidth:(double)width;
- (void)addFlexibleItemWithIdentifier:(id)identifier;
- (void)addItemWithMinimumWidth:(double)width maximumWidth:(double)maximumWidth identifier:(id)identifier;
@end

@implementation SXHorizontalStackLayoutCalculator

- (SXHorizontalStackLayoutCalculator)init
{
  v18.receiver = self;
  v18.super_class = SXHorizontalStackLayoutCalculator;
  v2 = [(SXHorizontalStackLayoutCalculator *)&v18 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    items = v2->_items;
    v2->_items = array;

    array2 = [MEMORY[0x1E695DF70] array];
    flexibleItems = v2->_flexibleItems;
    v2->_flexibleItems = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    sortedItems = v2->_sortedItems;
    v2->_sortedItems = array3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    componentsGroupedByMaximumWidth = v2->_componentsGroupedByMaximumWidth;
    v2->_componentsGroupedByMaximumWidth = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    componentsGroupedByMinimumWidth = v2->_componentsGroupedByMinimumWidth;
    v2->_componentsGroupedByMinimumWidth = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    minimumWidths = v2->_minimumWidths;
    v2->_minimumWidths = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    maximumWidths = v2->_maximumWidths;
    v2->_maximumWidths = dictionary4;
  }

  return v2;
}

- (void)addFlexibleItemWithIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    flexibleItems = [(SXHorizontalStackLayoutCalculator *)self flexibleItems];
    [flexibleItems addObject:identifierCopy];

    sortedItems = [(SXHorizontalStackLayoutCalculator *)self sortedItems];
    [sortedItems addObject:identifierCopy];
  }
}

- (void)addItemWithMinimumWidth:(double)width maximumWidth:(double)maximumWidth identifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (identifierCopy)
  {
    v34 = identifierCopy;
    items = [(SXHorizontalStackLayoutCalculator *)self items];
    [items addObject:v34];

    sortedItems = [(SXHorizontalStackLayoutCalculator *)self sortedItems];
    [sortedItems addObject:v34];

    [(SXHorizontalStackLayoutCalculator *)self combinedMaximumWidth];
    [(SXHorizontalStackLayoutCalculator *)self setCombinedMaximumWidth:floor(maximumWidth) + v12];
    [(SXHorizontalStackLayoutCalculator *)self combinedMinimumWidth];
    [(SXHorizontalStackLayoutCalculator *)self setCombinedMinimumWidth:floor(width) + v13];
    componentsGroupedByMinimumWidth = [(SXHorizontalStackLayoutCalculator *)self componentsGroupedByMinimumWidth];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    v16 = [componentsGroupedByMinimumWidth objectForKey:v15];
    v17 = v16;
    if (v16)
    {
      array = v16;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v19 = array;

    componentsGroupedByMaximumWidth = [(SXHorizontalStackLayoutCalculator *)self componentsGroupedByMaximumWidth];
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:maximumWidth];
    v22 = [componentsGroupedByMaximumWidth objectForKey:v21];
    v23 = v22;
    if (v22)
    {
      array2 = v22;
    }

    else
    {
      array2 = [MEMORY[0x1E695DF70] array];
    }

    v25 = array2;

    [v19 addObject:v34];
    [v25 addObject:v34];
    componentsGroupedByMinimumWidth2 = [(SXHorizontalStackLayoutCalculator *)self componentsGroupedByMinimumWidth];
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    [componentsGroupedByMinimumWidth2 setObject:v19 forKey:v27];

    componentsGroupedByMaximumWidth2 = [(SXHorizontalStackLayoutCalculator *)self componentsGroupedByMaximumWidth];
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:maximumWidth];
    [componentsGroupedByMaximumWidth2 setObject:v25 forKey:v29];

    minimumWidths = [(SXHorizontalStackLayoutCalculator *)self minimumWidths];
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    [minimumWidths setObject:v31 forKey:v34];

    maximumWidths = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:maximumWidth];
    [maximumWidths setObject:v33 forKey:v34];

    v9 = v34;
  }

  MEMORY[0x1EEE66BB8](identifierCopy, v9);
}

- (id)layoutForComponentWidth:(double)width
{
  v185 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(SXHorizontalStackLayout);
  v173 = 0;
  v174 = &v173;
  v175 = 0x2020000000;
  v176 = 0;
  v169 = 0;
  v170 = &v169;
  v171 = 0x2020000000;
  v172 = 0;
  maximumWidths = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
  v164[0] = MEMORY[0x1E69E9820];
  v164[1] = 3221225472;
  v164[2] = __61__SXHorizontalStackLayoutCalculator_layoutForComponentWidth___block_invoke;
  v164[3] = &unk_1E84FF9A8;
  v7 = v5;
  v165 = v7;
  v166 = &v173;
  widthCopy = width;
  v167 = &v169;
  [maximumWidths enumerateKeysAndObjectsUsingBlock:v164];

  if (*(v170 + 24) == 1)
  {
    v174[3] = 0.0;
    componentsGroupedByMaximumWidth = [(SXHorizontalStackLayoutCalculator *)self componentsGroupedByMaximumWidth];
    allKeys = [componentsGroupedByMaximumWidth allKeys];
    v10 = [allKeys sortedArrayUsingSelector:?];
    reverseObjectEnumerator = [v10 reverseObjectEnumerator];

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    obj = reverseObjectEnumerator;
    v12 = [obj countByEnumeratingWithState:&v160 objects:v184 count:16];
    if (v12)
    {
      v127 = *v161;
      do
      {
        v129 = v12;
        for (i = 0; i != v129; i = i + 1)
        {
          if (*v161 != v127)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v160 + 1) + 8 * i);
          componentsGroupedByMaximumWidth2 = [(SXHorizontalStackLayoutCalculator *)self componentsGroupedByMaximumWidth];
          v16 = [componentsGroupedByMaximumWidth2 objectForKey:v14];

          [v14 doubleValue];
          v18 = v17;
          [(SXHorizontalStackLayoutCalculator *)self combinedMaximumWidth];
          if (v19 >= 1.0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 1.0;
          }

          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v21 = v16;
          v22 = [v21 countByEnumeratingWithState:&v156 objects:v183 count:16];
          if (v22)
          {
            v23 = floor(v18 / v20 * width);
            v24 = *v157;
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v157 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v156 + 1) + 8 * j);
                minimumWidths = [(SXHorizontalStackLayoutCalculator *)self minimumWidths];
                v28 = [minimumWidths objectForKey:v26];
                [v28 doubleValue];
                v30 = v29;

                if (v30 >= v23)
                {
                  v23 = v30;
                }

                [(SXHorizontalStackLayout *)v7 setWidth:v26 forIdentifier:v23];
                v31 = v23 + v174[3];
                v174[3] = v31;
                if (v31 > width)
                {

                  v130 = 1;
                  goto LABEL_25;
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v156 objects:v183 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v160 objects:v184 count:16];
        v130 = 0;
      }

      while (v12);
    }

    else
    {
      v130 = 0;
    }

LABEL_25:

    v32 = v174[3];
    items = [(SXHorizontalStackLayoutCalculator *)self items];
    [items count];

    v34 = width - v32;
    if (width - v32 > 0.0)
    {
      items2 = [(SXHorizontalStackLayoutCalculator *)self items];
      v36 = [items2 count];

      maximumWidths2 = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
      v38 = [maximumWidths2 keysSortedByValueUsingSelector:sel_compare_];

      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v39 = v38;
      v40 = [v39 countByEnumeratingWithState:&v152 objects:v182 count:16];
      if (v40)
      {
        v41 = *v153;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v153 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = *(*(&v152 + 1) + 8 * k);
            [(SXHorizontalStackLayout *)v7 widthForIdentifier:v43];
            v45 = v44;
            maximumWidths3 = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
            v47 = [maximumWidths3 objectForKey:v43];

            [v47 doubleValue];
            if (v34 / v36 + v45 < v48)
            {
              v48 = v34 / v36 + v45;
            }

            v49 = floor(v48);
            [(SXHorizontalStackLayout *)v7 setWidth:v43 forIdentifier:v49];
            v50 = v49 - v45;
            v174[3] = v50 + v174[3];

            v34 = v34 - v50;
            --v36;
          }

          v40 = [v39 countByEnumeratingWithState:&v152 objects:v182 count:16];
        }

        while (v40);
      }
    }

    if (v130)
    {
      v174[3] = 0.0;
      items3 = [(SXHorizontalStackLayoutCalculator *)self items];
      v52 = [items3 count];

      minimumWidths2 = [(SXHorizontalStackLayoutCalculator *)self minimumWidths];
      v54 = [minimumWidths2 keysSortedByValueUsingSelector:sel_compare_];
      reverseObjectEnumerator2 = [v54 reverseObjectEnumerator];

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v131 = reverseObjectEnumerator2;
      v56 = [v131 countByEnumeratingWithState:&v148 objects:v181 count:16];
      if (v56)
      {
        v57 = *v149;
        do
        {
          for (m = 0; m != v56; ++m)
          {
            if (*v149 != v57)
            {
              objc_enumerationMutation(v131);
            }

            v59 = *(*(&v148 + 1) + 8 * m);
            minimumWidths3 = [(SXHorizontalStackLayoutCalculator *)self minimumWidths];
            v61 = [minimumWidths3 objectForKey:v59];

            maximumWidths4 = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
            v63 = [maximumWidths4 objectForKey:v59];

            v64 = v174[3];
            [v61 doubleValue];
            v66 = v65;
            [(SXHorizontalStackLayoutCalculator *)self combinedMinimumWidth];
            v68 = v67;
            [v63 doubleValue];
            v70 = (width - v64) / v52;
            if (v68 >= 1.0)
            {
              v71 = v68;
            }

            else
            {
              v71 = 1.0;
            }

            v72 = v66 / v71 * width;
            if (v72 >= v70)
            {
              v70 = v72;
            }

            if (v70 < v69)
            {
              v69 = v70;
            }

            v73 = floor(v69);
            [(SXHorizontalStackLayout *)v7 setWidth:v59 forIdentifier:v73];
            v174[3] = v73 + v174[3];

            --v52;
          }

          v56 = [v131 countByEnumeratingWithState:&v148 objects:v181 count:16];
        }

        while (v56);
      }

      v74 = width - v174[3];
      if (v74 > 0.0)
      {
        items4 = [(SXHorizontalStackLayoutCalculator *)self items];
        v76 = [items4 count];

        maximumWidths5 = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
        v78 = [maximumWidths5 keysSortedByValueUsingSelector:sel_compare_];

        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v79 = v78;
        v80 = [v79 countByEnumeratingWithState:&v144 objects:v180 count:16];
        if (v80)
        {
          v81 = *v145;
          do
          {
            for (n = 0; n != v80; ++n)
            {
              if (*v145 != v81)
              {
                objc_enumerationMutation(v79);
              }

              v83 = *(*(&v144 + 1) + 8 * n);
              [(SXHorizontalStackLayout *)v7 widthForIdentifier:v83];
              v85 = v84;
              maximumWidths6 = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
              v87 = [maximumWidths6 objectForKey:v83];

              [v87 doubleValue];
              if (v74 / v76 + v85 < v88)
              {
                v88 = v74 / v76 + v85;
              }

              v89 = floor(v88);
              [(SXHorizontalStackLayout *)v7 setWidth:v83 forIdentifier:v89];
              v90 = v89 - v85;
              v174[3] = v90 + v174[3];

              v74 = v74 - v90;
              --v76;
            }

            v80 = [v79 countByEnumeratingWithState:&v144 objects:v180 count:16];
          }

          while (v80);
        }
      }
    }
  }

  v91 = v174;
  if (v174[3] < width)
  {
    flexibleItems = [(SXHorizontalStackLayoutCalculator *)self flexibleItems];
    v93 = [flexibleItems count] == 0;

    v91 = v174;
    if (!v93)
    {
      v94 = v174[3];
      flexibleItems2 = [(SXHorizontalStackLayoutCalculator *)self flexibleItems];
      v96 = [flexibleItems2 count];

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      flexibleItems3 = [(SXHorizontalStackLayoutCalculator *)self flexibleItems];
      v98 = [flexibleItems3 countByEnumeratingWithState:&v140 objects:v179 count:16];
      if (v98)
      {
        v99 = floor((width - v94) / v96);
        v100 = *v141;
        do
        {
          for (ii = 0; ii != v98; ++ii)
          {
            if (*v141 != v100)
            {
              objc_enumerationMutation(flexibleItems3);
            }

            [(SXHorizontalStackLayout *)v7 setWidth:*(*(&v140 + 1) + 8 * ii) forIdentifier:v99];
            v174[3] = v99 + v174[3];
          }

          v98 = [flexibleItems3 countByEnumeratingWithState:&v140 objects:v179 count:16];
        }

        while (v98);
      }

      v91 = v174;
    }
  }

  v102 = v91[3];
  if (v102 < width)
  {
    sortedItems = [(SXHorizontalStackLayoutCalculator *)self sortedItems];
    reverseObjectEnumerator3 = [sortedItems reverseObjectEnumerator];

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v105 = reverseObjectEnumerator3;
    v106 = [v105 countByEnumeratingWithState:&v136 objects:v178 count:16];
    if (v106)
    {
      v107 = width - v102;
      v108 = *v137;
LABEL_77:
      v109 = 0;
      while (1)
      {
        if (*v137 != v108)
        {
          objc_enumerationMutation(v105);
        }

        v110 = *(*(&v136 + 1) + 8 * v109);
        [(SXHorizontalStackLayout *)v7 widthForIdentifier:v110];
        v112 = v111;
        maximumWidths7 = [(SXHorizontalStackLayoutCalculator *)self maximumWidths];
        v114 = [maximumWidths7 objectForKey:v110];
        [v114 doubleValue];
        v116 = v115;

        v117 = v107 + v112;
        if (v116 >= v107 + v112)
        {
          v118 = v107 + v112;
        }

        else
        {
          v118 = v116;
        }

        if (v116 <= 0.0)
        {
          v107 = 0.0;
        }

        else
        {
          v107 = v118 - v112;
        }

        if (v116 > 0.0)
        {
          v117 = v118;
        }

        [(SXHorizontalStackLayout *)v7 setWidth:v110 forIdentifier:v117];
        if (v107 < 2.22044605e-16)
        {
          break;
        }

        if (v106 == ++v109)
        {
          v106 = [v105 countByEnumeratingWithState:&v136 objects:v178 count:16];
          if (v106)
          {
            goto LABEL_77;
          }

          break;
        }
      }
    }
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  sortedItems2 = [(SXHorizontalStackLayoutCalculator *)self sortedItems];
  v120 = [sortedItems2 countByEnumeratingWithState:&v132 objects:v177 count:16];
  if (v120)
  {
    v121 = *v133;
    v122 = 0.0;
    do
    {
      for (jj = 0; jj != v120; ++jj)
      {
        if (*v133 != v121)
        {
          objc_enumerationMutation(sortedItems2);
        }

        v124 = *(*(&v132 + 1) + 8 * jj);
        [(SXHorizontalStackLayout *)v7 setPosition:v124 forIdentifier:v122];
        [(SXHorizontalStackLayout *)v7 widthForIdentifier:v124];
        v122 = v122 + v125;
      }

      v120 = [sortedItems2 countByEnumeratingWithState:&v132 objects:v177 count:16];
    }

    while (v120);
  }

  _Block_object_dispose(&v169, 8);
  _Block_object_dispose(&v173, 8);

  return v7;
}

void __61__SXHorizontalStackLayoutCalculator_layoutForComponentWidth___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  [a3 doubleValue];
  v9 = v8;
  [*(a1 + 32) setWidth:v7 forIdentifier:?];

  *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 40) + 8) + 24) > *(a1 + 56))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end