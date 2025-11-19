@interface UICollectionViewTransitionLayout
- (CGFloat)valueForAnimatedKey:(NSString *)key;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result;
- (CGRect)_newVisibleBounds;
- (CGRect)_oldVisibleBounds;
- (CGSize)collectionViewContentSize;
- (UICollectionViewTransitionLayout)init;
- (UICollectionViewTransitionLayout)initWithCoder:(NSCoder *)coder;
- (UICollectionViewTransitionLayout)initWithCurrentLayout:(UICollectionViewLayout *)currentLayout nextLayout:(UICollectionViewLayout *)newLayout;
- (id)interpolatedLayoutAttributesFromLayoutAttributes:(id)a3 toLayoutAttributes:(id)a4 progress:(double)a5;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)_finalizeLayoutTransition;
- (void)_prepareForTransitionFromLayout:(id)a3;
- (void)_prepareForTransitionToLayout:(id)a3;
- (void)_setCollectionView:(id)a3;
- (void)invalidateLayout;
- (void)prepareLayout;
- (void)setTransitionProgress:(CGFloat)transitionProgress;
- (void)updateValue:(CGFloat)value forAnimatedKey:(NSString *)key;
@end

@implementation UICollectionViewTransitionLayout

- (UICollectionViewTransitionLayout)initWithCurrentLayout:(UICollectionViewLayout *)currentLayout nextLayout:(UICollectionViewLayout *)newLayout
{
  v7 = currentLayout;
  v8 = newLayout;
  v12.receiver = self;
  v12.super_class = UICollectionViewTransitionLayout;
  v9 = [(UICollectionViewLayout *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fromLayout, currentLayout);
    objc_storeStrong(&v10->_toLayout, newLayout);
    v10->_layoutIsValid = 0;
    v10->_accuracy = 1.0;
  }

  return v10;
}

- (UICollectionViewTransitionLayout)initWithCoder:(NSCoder *)coder
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTransitionLayout;
  return [(UICollectionViewLayout *)&v4 initWithCoder:coder];
}

- (UICollectionViewTransitionLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UICollectionViewTransitionLayout.m" lineNumber:78 description:@"-[UICollectionViewTransitionLayout init] is not a valid initializer - use -initWithCurrentLayout:nextLayout: instead"];

  return 0;
}

- (void)_setCollectionView:(id)a3
{
  v11.receiver = self;
  v11.super_class = UICollectionViewTransitionLayout;
  [(UICollectionViewLayout *)&v11 _setCollectionView:?];
  if (a3)
  {
    fromLayout = self->_fromLayout;
    v6 = [(UICollectionViewLayout *)self collectionView];
    [(UICollectionViewLayout *)fromLayout _setCollectionView:v6];

    toLayout = self->_toLayout;
    v8 = [(UICollectionViewLayout *)self collectionView];
    [(UICollectionViewLayout *)toLayout _setCollectionView:v8];
  }

  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  self->_accuracy = v10;
}

- (void)invalidateLayout
{
  v2.receiver = self;
  v2.super_class = UICollectionViewTransitionLayout;
  [(UICollectionViewLayout *)&v2 invalidateLayout];
}

- (void)_finalizeLayoutTransition
{
  v3.receiver = self;
  v3.super_class = UICollectionViewTransitionLayout;
  [(UICollectionViewLayout *)&v3 _finalizeLayoutTransition];
  [(UICollectionViewLayout *)self->_toLayout _finalizeLayoutTransition];
}

- (void)_prepareForTransitionFromLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTransitionLayout;
  [(UICollectionViewLayout *)&v4 _prepareForTransitionFromLayout:a3];
  [(UICollectionViewTransitionLayout *)self _prepareForTransitionToLayout:self->_toLayout];
  [(UICollectionViewLayout *)self->_toLayout _prepareForTransitionFromLayout:self];
}

- (void)_prepareForTransitionToLayout:(id)a3
{
  v3.receiver = self;
  v3.super_class = UICollectionViewTransitionLayout;
  [(UICollectionViewLayout *)&v3 _prepareForTransitionToLayout:a3];
}

- (void)prepareLayout
{
  v230 = *MEMORY[0x1E69E9840];
  if (self->_layoutIsValid)
  {
    return;
  }

  self->_layoutIsValid = 1;
  [(UICollectionViewLayout *)self->_fromLayout _prepareLayout];
  [(UICollectionViewLayout *)self->_toLayout _prepareLayout];
  if ([(UICollectionViewLayout *)self->_fromLayout _supportsAdvancedTransitionAnimations])
  {
    v184 = [(UICollectionViewLayout *)self->_toLayout _supportsAdvancedTransitionAnimations];
  }

  else
  {
    v184 = 0;
  }

  v3 = [(UICollectionViewLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  p_fromVisibleBounds = &self->_fromVisibleBounds;
  self->_fromVisibleBounds.origin.x = v5;
  self->_fromVisibleBounds.origin.y = v7;
  self->_fromVisibleBounds.size.width = v9;
  self->_fromVisibleBounds.size.height = v11;
  [(UICollectionViewLayout *)self->_fromLayout collectionViewContentSize];
  v14 = v13;
  [(UICollectionViewLayout *)self->_toLayout collectionViewContentSize];
  if (v14 >= v15)
  {
    v15 = v14;
  }

  self->_contentSize.width = v15;
  [(UICollectionViewLayout *)self->_fromLayout collectionViewContentSize];
  v17 = v16;
  [(UICollectionViewLayout *)self->_toLayout collectionViewContentSize];
  if (v17 >= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  self->_contentSize.height = v19;
  v20 = [(UICollectionViewLayout *)self->_fromLayout layoutAttributesForElementsInRect:v5, v7, v9, v11];
  v21 = 0x1E695D000uLL;
  v191 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v20, "count")}];
  if (!self->_transitionInformationsDict)
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
    transitionInformationsDict = self->_transitionInformationsDict;
    self->_transitionInformationsDict = v22;
  }

  v194 = self;
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v24 = v20;
  v25 = [v24 countByEnumeratingWithState:&v219 objects:v229 count:16];
  obj = v24;
  if (v25)
  {
    v26 = v25;
    v27 = *v220;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v220 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = [*(*(&v219 + 1) + 8 * i) copy];
        v30 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v29];
        [v191 addObject:v30];
        v31 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        [v31 setObject:v29 forKey:@"fromAttribute"];
        [(NSMutableDictionary *)v194->_transitionInformationsDict setObject:v31 forKey:v30];
      }

      v24 = obj;
      v26 = [obj countByEnumeratingWithState:&v219 objects:v229 count:16];
    }

    while (v26);
  }

  v32 = v194;
  v33 = [(UICollectionViewLayout *)v194 collectionView];
  v34 = [v33 _pivotForTransitionFromLayout:v32->_fromLayout toLayout:v32->_toLayout];

  MidX = CGRectGetMidX(*p_fromVisibleBounds);
  MidY = CGRectGetMidY(*p_fromVisibleBounds);
  v181 = v34;
  if (v34)
  {
    v37 = [(UICollectionViewLayout *)v194->_fromLayout layoutAttributesForItemAtIndexPath:v34, MidY];
    v38 = [v37 copy];
  }

  else
  {
    v39 = MidY;
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v37 = v24;
    v38 = [v37 countByEnumeratingWithState:&v215 objects:v228 count:16];
    if (v38)
    {
      v40 = 0;
      v41 = *v216;
      v42 = 3.40282347e38;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v216 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v44 = *(*(&v215 + 1) + 8 * j);
          v45 = [(_UILabelConfiguration *)v44 _content];
          v46 = [v45 isEqualToString:0x1EFB32ED0];

          if (v46)
          {
            [v44 center];
            *&v47 = (v47 - MidX) * (v47 - MidX) + (v48 - v39) * (v48 - v39);
            v49 = sqrtf(*&v47);
            if (v42 > v49)
            {
              v50 = [v44 copy];

              v42 = v49;
              v40 = v50;
            }
          }
        }

        v38 = [v37 countByEnumeratingWithState:&v215 objects:v228 count:16];
      }

      while (v38);
      v32 = v194;
      v34 = 0;
      v38 = v40;
      v21 = 0x1E695D000;
    }

    else
    {
      v34 = 0;
    }
  }

  toLayout = v32->_toLayout;
  v52 = [v38 indexPath];
  v53 = [(UICollectionViewLayout *)toLayout layoutAttributesForItemAtIndexPath:v52];

  if (v38)
  {
    if (v34)
    {
      [v53 frame];
      v55 = v54;
      v57 = v56;
      [v38 frame];
      v59 = v58 - v5;
      [v38 frame];
      v5 = v55 - v59;
      v7 = v57 - (v60 - v7);
    }

    else
    {
      [v53 center];
      v5 = v61 - v9 * 0.5;
      v7 = v62 - v11 * 0.5;
    }
  }

  [(UICollectionViewLayout *)v32->_toLayout collectionViewContentSize];
  v64 = v63;
  v66 = v65;
  v67 = 0.0;
  v231.origin.x = 0.0;
  v231.origin.y = 0.0;
  v231.size.width = v64;
  v231.size.height = v66;
  v234.origin.x = v5;
  v234.origin.y = v7;
  v234.size.width = v9;
  v234.size.height = v11;
  v179 = v53;
  v180 = v38;
  if (CGRectContainsRect(v231, v234))
  {
    v67 = v5;
  }

  else
  {
    v232.origin.x = 0.0;
    v232.origin.y = 0.0;
    v232.size.width = v64;
    v232.size.height = v66;
    v235.origin.x = v5;
    v235.origin.y = v7;
    v235.size.width = v9;
    v235.size.height = v11;
    v233 = CGRectIntersection(v232, v235);
    if (v64 > v9)
    {
      if (v233.size.width >= v9)
      {
        v67 = v5;
      }

      else
      {
        v68 = v9 - v233.size.width;
        if (v233.origin.x <= v5)
        {
          v69 = -v68;
        }

        else
        {
          v69 = v68;
        }

        v67 = v5 + v69;
      }
    }

    if (v66 <= v11)
    {
      v7 = 0.0;
    }

    else if (v233.size.height < v11)
    {
      v70 = v11 - v233.size.height;
      if (v233.origin.y <= v7)
      {
        v70 = -(v11 - v233.size.height);
      }

      v7 = v7 + v70;
    }
  }

  v71 = [(UICollectionViewLayout *)v32 collectionView];
  [v71 contentInset];
  v73 = v67 - v72;
  v74 = [(UICollectionViewLayout *)v32 collectionView];
  [v74 contentInset];
  v76 = v7 - v75;

  [(UICollectionViewLayout *)v32->_toLayout targetContentOffsetForProposedContentOffset:v73, v76];
  v32->_toVisibleBounds.origin.x = v77;
  v32->_toVisibleBounds.origin.y = v78;
  v32->_toVisibleBounds.size.width = v9;
  v32->_toVisibleBounds.size.height = v11;
  v79 = [(UICollectionViewLayout *)v32->_toLayout layoutAttributesForElementsInRect:?];
  v190 = [*(v21 + 4008) setWithCapacity:{objc_msgSend(v79, "count")}];
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v189 = v79;
  v80 = [v189 countByEnumeratingWithState:&v211 objects:v227 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v212;
    do
    {
      for (k = 0; k != v81; ++k)
      {
        if (*v212 != v82)
        {
          objc_enumerationMutation(v189);
        }

        v84 = [*(*(&v211 + 1) + 8 * k) copy];
        v85 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v84];
        [v190 addObject:v85];
        v86 = [(NSMutableDictionary *)v32->_transitionInformationsDict objectForKey:v85];
        if (!v86)
        {
          v86 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        }

        [v86 setObject:v84 forKey:@"toAttribute"];
        [(NSMutableDictionary *)v32->_transitionInformationsDict setObject:v86 forKey:v85];
      }

      v81 = [v189 countByEnumeratingWithState:&v211 objects:v227 count:16];
    }

    while (v81);
  }

  v87 = [MEMORY[0x1E695DFA8] setWithSet:v190];
  v88 = [MEMORY[0x1E695DFA8] setWithSet:v191];
  v89 = [MEMORY[0x1E695DFA8] setWithSet:v190];
  [v87 minusSet:v191];
  [v88 minusSet:v190];
  v178 = v89;
  [v89 intersectSet:v191];
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v188 = v88;
  v90 = [v188 countByEnumeratingWithState:&v207 objects:v226 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v208;
    do
    {
      v93 = 0;
      do
      {
        if (*v208 != v92)
        {
          objc_enumerationMutation(v188);
        }

        v94 = *(*(&v207 + 1) + 8 * v93);
        v95 = [(NSMutableDictionary *)v32->_transitionInformationsDict objectForKey:v94];
        if (!v94)
        {
          v97 = 0;
          goto LABEL_70;
        }

        v96 = *(v94 + 32);
        if (v96 != 1)
        {
          if (v96)
          {
            goto LABEL_75;
          }

          v97 = *(v94 + 8);
LABEL_70:
          v98 = v32->_toLayout;
          v99 = v97;
          v100 = [(UICollectionViewLayout *)v98 layoutAttributesForItemAtIndexPath:v99];
          v101 = [v100 copy];

          if (v101)
          {
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        v102 = v32->_toLayout;
        v103 = *(v94 + 16);
        v104 = *(v94 + 8);
        v105 = [(UICollectionViewLayout *)v102 layoutAttributesForSupplementaryViewOfKind:v103 atIndexPath:v104];
        v101 = [v105 copy];

        v32 = v194;
        if (v101 || ([v95 objectForKey:@"fromAttribute"], v106 = objc_claimAutoreleasedReturnValue(), v101 = objc_msgSend(v106, "copy"), v106, objc_msgSend(v101, "setAlpha:", 0.0), v101))
        {
LABEL_74:
          [v95 setObject:v101 forKey:@"toAttribute"];
        }

LABEL_75:

        ++v93;
      }

      while (v91 != v93);
      v107 = [v188 countByEnumeratingWithState:&v207 objects:v226 count:16];
      v91 = v107;
    }

    while (v107);
  }

  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v187 = v87;
  v108 = [v187 countByEnumeratingWithState:&v203 objects:v225 count:16];
  if (!v108)
  {
    goto LABEL_97;
  }

  v109 = v108;
  v110 = *v204;
  do
  {
    v111 = 0;
    do
    {
      if (*v204 != v110)
      {
        objc_enumerationMutation(v187);
      }

      v112 = *(*(&v203 + 1) + 8 * v111);
      v113 = [(NSMutableDictionary *)v194->_transitionInformationsDict objectForKey:v112];
      if (!v112)
      {
        v115 = 0;
        goto LABEL_88;
      }

      v114 = *(v112 + 32);
      if (v114 != 1)
      {
        if (v114)
        {
          goto LABEL_93;
        }

        v115 = *(v112 + 8);
LABEL_88:
        fromLayout = v194->_fromLayout;
        v117 = v115;
        v118 = [(UICollectionViewLayout *)fromLayout layoutAttributesForItemAtIndexPath:v117];
        v119 = [v118 copy];

        if (v119)
        {
          goto LABEL_92;
        }

        goto LABEL_93;
      }

      v120 = v194->_fromLayout;
      v121 = *(v112 + 16);
      v122 = *(v112 + 8);
      v123 = [(UICollectionViewLayout *)v120 layoutAttributesForSupplementaryViewOfKind:v121 atIndexPath:v122];
      v119 = [v123 copy];

      if (v119 || ([v113 objectForKey:@"toAttribute"], v124 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v124, "copy"), v124, objc_msgSend(v119, "setAlpha:", 0.0), v119))
      {
LABEL_92:
        [v113 setObject:v119 forKey:@"fromAttribute"];
      }

LABEL_93:

      ++v111;
    }

    while (v109 != v111);
    v125 = [v187 countByEnumeratingWithState:&v203 objects:v225 count:16];
    v109 = v125;
  }

  while (v125);
LABEL_97:

  v126 = v194;
  if (!v184)
  {
    goto LABEL_149;
  }

  [(NSMutableDictionary *)v194->_transitionInformationsDict allKeys];
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v182 = v202 = 0u;
  v185 = [v182 countByEnumeratingWithState:&v199 objects:v224 count:16];
  if (!v185)
  {
    goto LABEL_148;
  }

  v183 = *v200;
  while (2)
  {
    v127 = 0;
    while (2)
    {
      if (*v200 != v183)
      {
        objc_enumerationMutation(v182);
      }

      v128 = *(*(&v199 + 1) + 8 * v127);
      v129 = [(NSMutableDictionary *)v126->_transitionInformationsDict objectForKey:v128];
      v130 = [v129 objectForKey:@"fromAttribute"];
      v131 = [v129 objectForKey:@"toAttribute"];
      if (v128)
      {
        v132 = *(v128 + 32);
        switch(v132)
        {
          case 2:
            v150 = v126->_fromLayout;
            v151 = *(v128 + 16);
            v152 = *(v128 + 8);
            v153 = [(UICollectionViewLayout *)v150 finalLayoutAttributesForDisappearingDecorationElementOfKind:v151 atIndexPath:v152];
            v137 = [v153 copy];

            v154 = v126->_toLayout;
            v140 = *(v128 + 16);
            v141 = *(v128 + 8);
            v149 = [(UICollectionViewLayout *)v154 initialLayoutAttributesForAppearingDecorationElementOfKind:v140 atIndexPath:v141];
            break;
          case 1:
            v143 = v126->_fromLayout;
            v144 = *(v128 + 16);
            v145 = v126;
            v146 = *(v128 + 8);
            v147 = [(UICollectionViewLayout *)v143 finalLayoutAttributesForDisappearingSupplementaryElementOfKind:v144 atIndexPath:v146];
            v137 = [v147 copy];

            v148 = v145->_toLayout;
            v140 = *(v128 + 16);
            v141 = *(v128 + 8);
            v149 = [(UICollectionViewLayout *)v148 initialLayoutAttributesForAppearingSupplementaryElementOfKind:v140 atIndexPath:v141];
            break;
          case 0:
            v133 = *(v128 + 8);
            goto LABEL_108;
          default:
            v142 = 0;
LABEL_118:
            if ([(UICollectionViewLayoutAttributes *)v142 _isEquivalentTo:v130])
            {
              v156 = v131;
            }

            else
            {
              v156 = [v130 copy];
            }

            v137 = v156;
            if (!v142)
            {
              goto LABEL_122;
            }

            goto LABEL_126;
        }

        v155 = v149;
        v142 = [v149 copy];
      }

      else
      {
        v133 = 0;
LABEL_108:
        v134 = v126->_fromLayout;
        v135 = v133;
        v136 = [(UICollectionViewLayout *)v134 finalLayoutAttributesForDisappearingItemAtIndexPath:v135];
        v137 = [v136 copy];

        if (v128)
        {
          v138 = *(v128 + 8);
        }

        else
        {
          v138 = 0;
        }

        v139 = v126->_toLayout;
        v140 = v138;
        v141 = [(UICollectionViewLayout *)v139 initialLayoutAttributesForAppearingItemAtIndexPath:v140];
        v142 = [v141 copy];
      }

      v126 = v194;
      if (!v137)
      {
        goto LABEL_118;
      }

      if (!v142)
      {
LABEL_122:
        if ([(UICollectionViewLayoutAttributes *)v137 _isEquivalentTo:v131])
        {
          v157 = v130;
        }

        else
        {
          v157 = [v131 copy];
        }

        v142 = v157;
      }

LABEL_126:
      if ((![(UICollectionViewLayoutAttributes *)v137 _isEquivalentTo:v131]|| ([(UICollectionViewLayoutAttributes *)v142 _isEquivalentTo:v130]& 1) == 0) && (![(UICollectionViewLayoutAttributes *)v142 _isEquivalentTo:v131]|| ([(UICollectionViewLayoutAttributes *)v137 _isEquivalentTo:v130]& 1) == 0) && ([(UICollectionViewLayoutAttributes *)v130 _isEquivalentTo:v131]& 1) == 0)
      {
        v158 = [(UICollectionViewLayoutAttributes *)v130 _isTransitionVisibleTo:v137];
        v159 = [(UICollectionViewLayoutAttributes *)v142 _isTransitionVisibleTo:v131];
        if (v158 && v159)
        {
          [v129 setObject:v142 forKey:@"fromAttribute"];
          v160 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v129, "count")}];
          v161 = [(_UICollectionViewItemKey *)v128 copyAsClone:?];
          if (v137)
          {
            v137[72] |= 8u;
          }

          if (v130)
          {
            v130[72] |= 8u;
          }

          [v160 setObject:v130 forKey:@"fromAttribute"];
          [v160 setObject:v137 forKey:@"toAttribute"];
          [(NSMutableDictionary *)v126->_transitionInformationsDict setObject:v160 forKey:v161];
        }

        else
        {
          if (v158)
          {
            v162 = v129;
            v163 = v137;
            v164 = @"toAttribute";
          }

          else
          {
            if (!v159)
            {
              goto LABEL_143;
            }

            v162 = v129;
            v163 = v142;
            v164 = @"fromAttribute";
          }

          [v162 setObject:v163 forKey:v164];
        }
      }

LABEL_143:

      if (v185 != ++v127)
      {
        continue;
      }

      break;
    }

    v165 = [v182 countByEnumeratingWithState:&v199 objects:v224 count:16];
    v185 = v165;
    if (v165)
    {
      continue;
    }

    break;
  }

LABEL_148:

LABEL_149:
  v192 = [MEMORY[0x1E695DF70] array];
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v193 = [(NSMutableDictionary *)v126->_transitionInformationsDict allKeys];
  v166 = [v193 countByEnumeratingWithState:&v195 objects:v223 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v196;
    do
    {
      for (m = 0; m != v167; ++m)
      {
        if (*v196 != v168)
        {
          objc_enumerationMutation(v193);
        }

        v170 = *(*(&v195 + 1) + 8 * m);
        v171 = [(NSMutableDictionary *)v194->_transitionInformationsDict objectForKey:v170];
        v172 = [v171 objectForKey:@"fromAttribute"];
        v173 = [v171 objectForKey:@"toAttribute"];
        if (([(UICollectionViewLayoutAttributes *)v172 _isTransitionVisibleTo:v173]& 1) == 0)
        {
          [v172 alpha];
          if (v174 == 0.0)
          {
            v175 = 0;
          }

          else
          {
            v175 = [v172 isHidden] ^ 1;
          }

          [v173 alpha];
          if (v176 == 0.0)
          {
            v177 = 0;
          }

          else
          {
            v177 = [v173 isHidden] ^ 1;
          }

          if ((v175 | v177))
          {
            [v171 removeObjectForKey:@"toAttribute"];
          }

          else
          {
            [v192 addObject:v170];
          }
        }
      }

      v167 = [v193 countByEnumeratingWithState:&v195 objects:v223 count:16];
    }

    while (v167);
  }

  [(NSMutableDictionary *)v194->_transitionInformationsDict removeObjectsForKeys:v192];
}

- (CGRect)_oldVisibleBounds
{
  x = self->_fromVisibleBounds.origin.x;
  y = self->_fromVisibleBounds.origin.y;
  width = self->_fromVisibleBounds.size.width;
  height = self->_fromVisibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_newVisibleBounds
{
  x = self->_toVisibleBounds.origin.x;
  y = self->_toVisibleBounds.origin.y;
  width = self->_toVisibleBounds.size.width;
  height = self->_toVisibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)updateValue:(CGFloat)value forAnimatedKey:(NSString *)key
{
  v6 = key;
  v7 = [(UICollectionViewLayout *)self collectionView];
  [v7 _trackLayoutValue:v6 forKey:value];
}

- (CGFloat)valueForAnimatedKey:(NSString *)key
{
  v4 = key;
  v5 = [(UICollectionViewLayout *)self collectionView];
  [v5 _trackedLayoutValueForKey:v4];
  v7 = v6;

  return v7;
}

- (void)setTransitionProgress:(CGFloat)transitionProgress
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  if (transitionProgress >= 0.0)
  {
    v5 = transitionProgress;
  }

  if (transitionProgress <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  *obja = vaddq_f64(self->_fromVisibleBounds.origin, vmulq_n_f64(vsubq_f64(self->_toVisibleBounds.origin, self->_fromVisibleBounds.origin), v6));
  v18 = v6;
  v7 = [(UICollectionViewLayout *)self collectionView];
  [v7 setContentOffset:*obja];

  self->_transitionProgress = transitionProgress;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(NSMutableDictionary *)self->_transitionInformationsDict allKeys];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMutableDictionary *)self->_transitionInformationsDict objectForKey:*(*(&v19 + 1) + 8 * i)];
        v13 = [v12 objectForKey:@"fromAttribute"];
        v14 = [v12 objectForKey:@"toAttribute"];
        v15 = [(UICollectionViewTransitionLayout *)self interpolatedLayoutAttributesFromLayoutAttributes:v13 toLayoutAttributes:v14 progress:v18];
        [v12 setObject:v15 forKey:@"actualAttribute"];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [(UICollectionViewTransitionLayout *)self invalidateLayout];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result
{
  if (self->_transitionProgress == 0.0 && self->_layoutIsValid)
  {
    return self->_fromVisibleBounds.origin;
  }

  return result;
}

- (CGSize)collectionViewContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)interpolatedLayoutAttributesFromLayoutAttributes:(id)a3 toLayoutAttributes:(id)a4 progress:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 copy];
    [v9 setHidden:0];
    [v7 center];
    v12 = v11;
    v14 = v13;
    [v9 center];
    v16 = v15;
    v18 = v17;
    [v7 size];
    v64 = v20;
    v65 = v19;
    [v9 size];
    v22 = v21;
    v24 = v23;
    v25 = 0uLL;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    if (v7)
    {
      [v7 transform3D];
      v25 = 0uLL;
    }

    v74 = v25;
    v75 = v25;
    v72 = v25;
    v73 = v25;
    v70 = v25;
    v71 = v25;
    v68 = v25;
    v69 = v25;
    [v9 transform3D];
    [v7 alpha];
    v27 = v26;
    [v9 alpha];
    v28 = (v16 - v12) * a5;
    v29 = (v18 - v14) * a5;
    v30 = v22 - v65;
    v31 = v24 - v64;
    *&v67.m31 = v80;
    *&v67.m33 = v81;
    v33 = v27 + (v32 - v27) * a5;
    *&v67.m41 = v82;
    *&v67.m43 = v83;
    *&v67.m11 = v76;
    *&v67.m13 = v77;
    *&v67.m21 = v78;
    *&v67.m23 = v79;
    if (CATransform3DIsIdentity(&v67) && (*&v67.m31 = v72, *&v67.m33 = v73, *&v67.m41 = v74, *&v67.m43 = v75, *&v67.m11 = v68, *&v67.m13 = v69, *&v67.m21 = v70, *&v67.m23 = v71, CATransform3DIsIdentity(&v67)))
    {
      v60 = *MEMORY[0x1E69792E8];
      v62 = *(MEMORY[0x1E69792E8] + 16);
      v56 = *(MEMORY[0x1E69792E8] + 32);
      v58 = *(MEMORY[0x1E69792E8] + 48);
      v52 = *(MEMORY[0x1E69792E8] + 64);
      v54 = *(MEMORY[0x1E69792E8] + 80);
      v48 = *(MEMORY[0x1E69792E8] + 96);
      v50 = *(MEMORY[0x1E69792E8] + 112);
      v34 = a5;
    }

    else
    {
      v34 = a5;
      v60 = vaddq_f64(v76, vmulq_n_f64(vsubq_f64(v68, v76), a5));
      v62 = vaddq_f64(v77, vmulq_n_f64(vsubq_f64(v69, v77), a5));
      v56 = vaddq_f64(v78, vmulq_n_f64(vsubq_f64(v70, v78), a5));
      v58 = vaddq_f64(v79, vmulq_n_f64(vsubq_f64(v71, v79), a5));
      v52 = vaddq_f64(v80, vmulq_n_f64(vsubq_f64(v72, v80), a5));
      v54 = vaddq_f64(v81, vmulq_n_f64(vsubq_f64(v73, v81), a5));
      v48 = vaddq_f64(v82, vmulq_n_f64(vsubq_f64(v74, v82), a5));
      v50 = vaddq_f64(v83, vmulq_n_f64(vsubq_f64(v75, v83), a5));
    }

    v35 = v30 * v34;
    v36 = v31 * v34;
    v37 = v12 + v28;
    v38 = v14 + v29;
    [v10 setAlpha:{v33, *&v48, *&v50, *&v52, *&v54, *&v56, *&v58, *&v60, *&v62}];
    *&v67.m11 = v61;
    *&v67.m13 = v63;
    *&v67.m21 = v57;
    *&v67.m23 = v59;
    *&v67.m31 = v53;
    *&v67.m33 = v55;
    *&v67.m41 = v49;
    *&v67.m43 = v51;
    [v10 setTransform3D:&v67];
    v39 = self->_accuracy + self->_accuracy;
    if (v39 == 1.0)
    {
      v40 = round(v37);
      v41 = round(v38);
    }

    else
    {
      v40 = round(v37 * v39) / v39;
      v41 = round(v38 * v39) / v39;
    }

    v42 = v65 + v35;
    v43 = v64 + v36;
    [v10 setCenter:{v40, v41}];
    accuracy = self->_accuracy;
    if (accuracy == 1.0)
    {
      v45 = round(v42);
      v46 = round(v43);
    }

    else
    {
      v45 = round(v42 * accuracy) / accuracy;
      v46 = round(v43 * accuracy) / accuracy;
    }

    [v10 setSize:{v45, v46}];
  }

  else
  {
    v10 = [v7 copy];
  }

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v4];
  v6 = [(NSMutableDictionary *)self->_transitionInformationsDict objectForKey:v5];
  v7 = [v6 objectForKey:@"actualAttribute"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    goto LABEL_26;
  }

  if (v6)
  {
    v10 = [v6 objectForKey:@"fromAttribute"];
    v11 = [v6 objectForKey:@"toAttribute"];
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(UICollectionViewLayout *)self->_fromLayout collectionView];

  if (v12)
  {
    v13 = [(UICollectionViewLayout *)self->_fromLayout layoutAttributesForItemAtIndexPath:v4];
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v10 = [(UICollectionViewLayout *)self->_toLayout collectionView];

  if (v10)
  {
    v13 = [(UICollectionViewLayout *)self->_toLayout initialLayoutAttributesForAppearingItemAtIndexPath:v4];
LABEL_11:
    v10 = v13;
  }

LABEL_12:
  if (!v11)
  {
    v19 = [(UICollectionViewLayout *)self->_toLayout collectionView];

    if (!v19 || ([(UICollectionViewLayout *)self->_toLayout layoutAttributesForItemAtIndexPath:v4], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(UICollectionViewLayout *)self->_fromLayout collectionView];

      if (!v11)
      {
        goto LABEL_18;
      }

      v11 = [(UICollectionViewLayout *)self->_fromLayout finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
    }
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    transitionProgress = self->_transitionProgress;
    v16 = 0.0;
    if (transitionProgress >= 0.0)
    {
      v16 = self->_transitionProgress;
    }

    if (transitionProgress <= 1.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1.0;
    }

    v9 = [(UICollectionViewTransitionLayout *)self interpolatedLayoutAttributesFromLayoutAttributes:v10 toLayoutAttributes:v11 progress:v17, 1.0, v16];
    goto LABEL_25;
  }

LABEL_18:
  v9 = 0;
LABEL_25:

LABEL_26:

  return v9;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_UICollectionViewItemKey collectionItemKeyForSupplementaryViewOfKind:v6 andIndexPath:v7];
  v9 = [(NSMutableDictionary *)self->_transitionInformationsDict objectForKey:v8];
  v10 = [v9 objectForKey:@"actualAttribute"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    goto LABEL_26;
  }

  if (v9)
  {
    v13 = [v9 objectForKey:@"fromAttribute"];
    v14 = [v9 objectForKey:@"toAttribute"];
    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(UICollectionViewLayout *)self->_fromLayout collectionView];

  if (v15)
  {
    v16 = [(UICollectionViewLayout *)self->_fromLayout layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v13 = [(UICollectionViewLayout *)self->_toLayout collectionView];

  if (v13)
  {
    v16 = [(UICollectionViewLayout *)self->_toLayout initialLayoutAttributesForAppearingSupplementaryElementOfKind:v6 atIndexPath:v7];
LABEL_11:
    v13 = v16;
  }

LABEL_12:
  if (!v14)
  {
    v22 = [(UICollectionViewLayout *)self->_toLayout collectionView];

    if (!v22 || ([(UICollectionViewLayout *)self->_toLayout layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [(UICollectionViewLayout *)self->_fromLayout collectionView];

      if (!v14)
      {
        goto LABEL_18;
      }

      v14 = [(UICollectionViewLayout *)self->_fromLayout finalLayoutAttributesForDisappearingSupplementaryElementOfKind:v6 atIndexPath:v7];
    }
  }

  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    transitionProgress = self->_transitionProgress;
    v19 = 0.0;
    if (transitionProgress >= 0.0)
    {
      v19 = self->_transitionProgress;
    }

    if (transitionProgress <= 1.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1.0;
    }

    v12 = [(UICollectionViewTransitionLayout *)self interpolatedLayoutAttributesFromLayoutAttributes:v13 toLayoutAttributes:v14 progress:v20, 1.0, v19];
    goto LABEL_25;
  }

LABEL_18:
  v12 = 0;
LABEL_25:

LABEL_26:

  return v12;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_UICollectionViewItemKey collectionItemKeyForDecorationViewOfKind:v6 andIndexPath:v7];
  v9 = [(NSMutableDictionary *)self->_transitionInformationsDict objectForKey:v8];
  v10 = [v9 objectForKey:@"actualAttribute"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    goto LABEL_25;
  }

  if (v9)
  {
    v13 = [v9 objectForKey:@"fromAttribute"];
    v14 = [v9 objectForKey:@"toAttribute"];
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  v13 = [(UICollectionViewLayout *)self->_fromLayout collectionView];

  if (v13)
  {
    v13 = [(UICollectionViewLayout *)self->_fromLayout layoutAttributesForDecorationViewOfKind:v6 atIndexPath:v7];
  }

LABEL_9:
  if (!v14)
  {
    v14 = [(UICollectionViewLayout *)self->_toLayout collectionView];

    if (!v14)
    {
      goto LABEL_17;
    }

    v14 = [(UICollectionViewLayout *)self->_toLayout layoutAttributesForDecorationViewOfKind:v6 atIndexPath:v7];
  }

  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    transitionProgress = self->_transitionProgress;
    v17 = 0.0;
    if (transitionProgress >= 0.0)
    {
      v17 = self->_transitionProgress;
    }

    if (transitionProgress <= 1.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1.0;
    }

    v12 = [(UICollectionViewTransitionLayout *)self interpolatedLayoutAttributesFromLayoutAttributes:v13 toLayoutAttributes:v14 progress:v18, 1.0, v17];
    goto LABEL_24;
  }

LABEL_17:
  v12 = 0;
LABEL_24:

LABEL_25:

  return v12;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = [(NSMutableDictionary *)self->_transitionInformationsDict allKeys:a3.origin.x];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)self->_transitionInformationsDict allKeys];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_transitionInformationsDict objectForKey:*(*(&v16 + 1) + 8 * i)];
        v14 = [v13 objectForKey:@"actualAttribute"];
        [v6 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v6;
}

@end