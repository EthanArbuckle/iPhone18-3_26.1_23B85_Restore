@interface _SBDisplayItemFixedAspectGrid
- (BOOL)_allowFullScreen;
- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4;
- (_SBDisplayItemFixedAspectGrid)initWithBounds:(CGRect)a3 fixedSize:(CGSize)a4 screenScale:(double)a5 supportsOrthogonalSizes:(BOOL)a6 windowingConfiguration:(id)a7 allowsLetterboxing:(BOOL)a8;
- (id)allHeights;
- (id)allWidths;
- (void)_buildFixedGridWithScreenScale:(double)a3;
@end

@implementation _SBDisplayItemFixedAspectGrid

- (_SBDisplayItemFixedAspectGrid)initWithBounds:(CGRect)a3 fixedSize:(CGSize)a4 screenScale:(double)a5 supportsOrthogonalSizes:(BOOL)a6 windowingConfiguration:(id)a7 allowsLetterboxing:(BOOL)a8
{
  height = a4.height;
  width = a4.width;
  v16.receiver = self;
  v16.super_class = _SBDisplayItemFixedAspectGrid;
  v13 = [(_SBDisplayItemFlexibleGrid *)&v16 initWithBounds:a7 screenScale:a3.origin.x windowingConfiguration:a3.origin.y, a3.size.width, a3.size.height, a5];
  v14 = v13;
  if (v13)
  {
    v13->_fixedSize.width = width;
    v13->_fixedSize.height = height;
    v13->_supportsOrthogonalSizes = a6;
    v13->_allowsLetterboxing = a8;
    [(_SBDisplayItemFixedAspectGrid *)v13 _buildFixedGridWithScreenScale:a5];
  }

  return v14;
}

- (void)_buildFixedGridWithScreenScale:(double)a3
{
  v100 = *MEMORY[0x277D85DE8];
  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration screenEdgePadding];
  v5 = v4;
  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration stripWidth];
  v7 = v6;
  CGRectGetWidth(self->super._bounds);
  CGRectGetHeight(self->super._bounds);
  width = self->super._bounds.size.width;
  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration minimumDefaultWindowSize];
  v10 = v9;
  if (!BSFloatIsZero())
  {
    v7 = width - v10;
  }

  height = self->super._bounds.size.height;
  v75 = width;
  [(SBSwitcherWindowingConfiguration *)self->super._windowingConfiguration maximumWindowHeightWithDock];
  v12 = v11;
  v13 = self->_fixedSize.width;
  p_height = &self->_fixedSize.height;
  v72 = self->_fixedSize.height;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__134;
  v95 = __Block_byref_object_dispose__134;
  v96 = [MEMORY[0x277CBEB18] array];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __64___SBDisplayItemFixedAspectGrid__buildFixedGridWithScreenScale___block_invoke;
  v90[3] = &unk_2783C2DB8;
  v90[4] = &v91;
  v15 = MEMORY[0x223D6F7F0](v90);
  v16 = v75 + v7 * -0.5 - v5;
  v76 = height - v5 * 2.0;
  v77 = v75 - v5 * 2.0;
  v17 = &self->_fixedSize.height;
  p_fixedSize = &self->_fixedSize;
  if (v13 < v72 || (v17 = &self->_fixedSize, p_fixedSize = &self->_fixedSize.height, self->_supportsOrthogonalSizes))
  {
    v19 = p_fixedSize->width;
    v20 = v17->width;
    v21 = p_fixedSize->width / v17->width;
    v22 = v12 * v21;
    if (p_fixedSize->width <= v16)
    {
      v23 = p_fixedSize->width;
    }

    else
    {
      v23 = v16;
    }

    if (v20 <= v12)
    {
      v24 = v17->width;
    }

    else
    {
      v24 = v12;
    }

    if (v24 <= v16 / v21)
    {
      v25 = v24;
    }

    else
    {
      v25 = v16 / v21;
    }

    if (v23 > v22)
    {
      v23 = v12 * v21;
    }

    v71 = v23;
    v26 = [(_SBDisplayItemFlexibleGrid *)self _gridHeightsForSafeHeight:v12 minimumHeight:v25];
    v27 = [v26 sortedArrayUsingSelector:sel_compare_];

    v29.n128_f64[0] = v21 * v25;
    if (v25 == v20)
    {
      v29.n128_f64[0] = v19;
      v28.n128_f64[0] = v20;
    }

    else
    {
      v28.n128_f64[0] = v25;
    }

    (v15)[2](v15, v25 != v20, v29, v28);
    v30 = [v27 lastObject];
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v31 = v27;
    v32 = [v31 countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v32)
    {
      v33 = *v87;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v87 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v86 + 1) + 8 * i);
          if (v35 != v30)
          {
            [v35 doubleValue];
            if (v20 + 44.0 <= v36)
            {
              (v15[2])(v15, 1, v19 * (v36 / v20));
            }
          }
        }

        v32 = [v31 countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v32);
    }

    if (v12 > v25 && (v38.n128_f64[0] = v12, v22 <= v77) || v16 > v71 && (v38.n128_f64[0] = v16 / v21, v22 = v16, v16 / v21 <= v12))
    {
      (v15[2])(v15, 1, v22, v38);
    }

    v37.n128_f64[0] = v76 * v21;
    v38.n128_f64[0] = v76;
    if (v76 * v21 <= v77 || (v37.n128_f64[0] = v77, v38.n128_f64[0] = v77 / v21, v77 / v21 <= v76))
    {
      v15[2](v15, 1, v37, v38);
    }

    if (v13 >= v72)
    {
      v39 = &self->_fixedSize.height;
      p_height = &self->_fixedSize;
    }

    else
    {
      v39 = &self->_fixedSize;
      if (!self->_supportsOrthogonalSizes)
      {
        goto LABEL_79;
      }
    }
  }

  else
  {
    v39 = &self->_fixedSize.height;
    p_height = &self->_fixedSize;
  }

  v40 = p_height->width;
  v41 = v39->width;
  v42 = p_height->width / v39->width;
  if (p_height->width <= v16)
  {
    v43 = p_height->width;
  }

  else
  {
    v43 = v16;
  }

  v44 = v16 / v42;
  if (v41 <= v12)
  {
    v45 = v39->width;
  }

  else
  {
    v45 = v12;
  }

  if (v45 > v44)
  {
    v45 = v16 / v42;
  }

  v73 = v45;
  if (v43 <= v12 * v42)
  {
    v46 = v43;
  }

  else
  {
    v46 = v12 * v42;
  }

  v47 = [(_SBDisplayItemFlexibleGrid *)self _gridWidthsForSafeWidth:v16 minimumWidth:v46];
  v48 = [v47 sortedArrayUsingSelector:sel_compare_];

  v50.n128_f64[0] = v46 / v42;
  if (v46 == v40)
  {
    v49.n128_f64[0] = v40;
  }

  else
  {
    v49.n128_f64[0] = v46;
  }

  if (v46 == v40)
  {
    v50.n128_f64[0] = v41;
  }

  (v15)[2](v15, v46 != v40, v49, v50);
  v51 = [v48 lastObject];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = v48;
  v53 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v53)
  {
    v54 = *v83;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v83 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = *(*(&v82 + 1) + 8 * j);
        if (v56 != v51)
        {
          [v56 doubleValue];
          if (v40 + 44.0 <= v57.n128_f64[0])
          {
            (v15[2])(v15, 1, v57, v41 * (v57.n128_f64[0] / v40));
          }
        }
      }

      v53 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
    }

    while (v53);
  }

  if (v16 > v46 && v44 <= v12 || v12 > v73 && (v16 = v12 * v42, v44 = v12, v12 * v42 <= v77))
  {
    (v15[2])(v15, 1, v16, v44);
  }

  v58 = v77;
  if (v77 / v42 <= v76)
  {
    v76 = v77 / v42;
  }

  else
  {
    v77 = v76 * v42;
    if (v76 * v42 > v58)
    {
      goto LABEL_78;
    }
  }

  (v15[2])(v15, 1, v77, v76);
LABEL_78:

LABEL_79:
  if (SBFIsFullScreenLetterboxingAvailable() && self->_allowsLetterboxing)
  {
    (v15[2])(v15, 1, v75, height);
  }

  v59 = [v92[5] count];
  [v92[5] sortUsingComparator:&__block_literal_global_415];
  v60 = [MEMORY[0x277CBEB18] arrayWithCapacity:v59];
  v61 = [MEMORY[0x277CBEB18] arrayWithCapacity:v59];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v62 = v92[5];
  v63 = [v62 countByEnumeratingWithState:&v78 objects:v97 count:16];
  if (v63)
  {
    v64 = *v79;
    do
    {
      for (k = 0; k != v63; ++k)
      {
        if (*v79 != v64)
        {
          objc_enumerationMutation(v62);
        }

        [*(*(&v78 + 1) + 8 * k) CGSizeValue];
        v67 = v66;
        v69 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
        [v60 addObject:v69];

        v70 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
        [v61 addObject:v70];
      }

      v63 = [v62 countByEnumeratingWithState:&v78 objects:v97 count:16];
    }

    while (v63);
  }

  objc_storeStrong(&self->super._heights, v60);
  objc_storeStrong(&self->super._widths, v61);
  self->_maximizeSupported = BSFloatApproximatelyEqualToFloat();

  _Block_object_dispose(&v91, 8);
}

- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if ([(NSArray *)self->super._widths count])
  {
    v9 = 0;
    v10 = 1.79769313e308;
    do
    {
      v11 = SBFIsFullScreenLetterboxingAvailable();
      v12 = [(NSArray *)self->super._widths objectAtIndex:v9];
      [v12 doubleValue];
      v14 = v13;

      v15 = [(NSArray *)self->super._heights objectAtIndex:v9];
      [v15 doubleValue];
      v17 = v16;

      if (v11)
      {
        v18 = sqrt((v14 - width) * (v14 - width) + (v17 - height) * (v17 - height));
      }

      else
      {
        v18 = vabdd_f64(v14, width) + vabdd_f64(v17, height);
      }

      if (v18 < v10)
      {
        v10 = v18;
        v8 = v17;
        v7 = v14;
      }

      ++v9;
    }

    while (v9 < [(NSArray *)self->super._widths count]);
  }

  [(_SBDisplayItemFlexibleGrid *)self maxSize];
  if ([(_SBDisplayItemFixedAspectGrid *)self _allowFullScreen]&& BSSizeEqualToSize())
  {
    v7 = self->super._bounds.size.width;
    v8 = self->super._bounds.size.height;
  }

  v19 = v7;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)allWidths
{
  v2 = [(NSArray *)self->super._widths copy];

  return v2;
}

- (id)allHeights
{
  v2 = [(NSArray *)self->super._heights copy];

  return v2;
}

- (BOOL)_allowFullScreen
{
  if (self->_maximizeSupported)
  {
    return 1;
  }

  v3 = +[SBAppSwitcherDomain rootSettings];
  v4 = [v3 windowingSettings];
  v5 = [v4 allowTrueMaximizeForAllApps];

  return v5;
}

@end