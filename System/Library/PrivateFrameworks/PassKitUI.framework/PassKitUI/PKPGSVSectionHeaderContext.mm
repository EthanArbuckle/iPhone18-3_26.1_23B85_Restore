@interface PKPGSVSectionHeaderContext
+ (id)createUpdatedHeaderContextForGroupStackView:(void *)view passType:(uint64_t)type withState:(uint64_t)state hasPriorSection:(char)section currentContext:(void *)context allowHeader:(int)header allowSubheaders:(int)subheaders containerWidth:;
- (BOOL)isEqual:(id)equal;
- (double)_headerViewSize;
- (double)_subheadersHeight;
- (double)positionForHeaderViewInContainerFrame:(double)frame;
- (double)totalHeight;
- (uint64_t)boundsForHeaderViewInContainerFrame:(double)frame;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PKPGSVSectionHeaderContext

- (double)totalHeight
{
  if (!self)
  {
    return 0.0;
  }

  v2 = *(self + 56);
  [(PKPGSVSectionHeaderContext *)self _headerViewSize];
  v4 = *(self + 72) + v2 + v3;
  return [(PKPGSVSectionHeaderContext *)self _subheadersHeight]+ v4;
}

- (double)_headerViewSize
{
  if (!self)
  {
    return 0.0;
  }

  if (*(self + 32) == 1)
  {
    return *(self + 16);
  }

  [*(self + 40) sizeThatFits:{*(self + 8) - *(self + 64) - *(self + 80), 1.79769313e308}];
  *(self + 16) = result;
  *(self + 24) = v3;
  *(self + 32) = 1;
  return result;
}

- (double)_subheadersHeight
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = 0.0;
  if (self)
  {
    v2 = *(self + 48);
    if (v2)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v15;
        do
        {
          v7 = 0;
          do
          {
            if (*v15 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v14 + 1) + 8 * v7);
            if (v8)
            {
              v9 = *(v8 + 16);
              [*(v8 + 8) bounds];
              v11 = *(v8 + 32) + v9 + v10;
            }

            else
            {
              v11 = 0.0;
            }

            v1 = v1 + v11;
            ++v7;
          }

          while (v5 != v7);
          v12 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          v5 = v12;
        }

        while (v12);
      }
    }
  }

  return v1;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPGSVSectionHeaderContext;
  [(PKPGSVSectionHeaderContext *)&v2 dealloc];
}

+ (id)createUpdatedHeaderContextForGroupStackView:(void *)view passType:(uint64_t)type withState:(uint64_t)state hasPriorSection:(char)section currentContext:(void *)context allowHeader:(int)header allowSubheaders:(int)subheaders containerWidth:
{
  viewCopy = view;
  contextCopy = context;
  objc_opt_self();
  datasource = [viewCopy datasource];
  if (header && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = *(state + 16);
    v61 = *state;
    v62 = v19;
    v20 = [datasource groupStackView:viewCopy headerForPassType:type withState:&v61];
    v21 = v20;
    if (v20)
    {
      layer = [v20 layer];
      v23 = PKLayerNullActions();
      [layer setActions:v23];
    }
  }

  else
  {
    v21 = 0;
  }

  v24 = MEMORY[0x1E69DDCE0];
  if (subheaders && (objc_opt_respondsToSelector() & 1) != 0)
  {
    sectionCopy = section;
    v58 = datasource;
    v25 = *(state + 16);
    stateCopy = state;
    v61 = *state;
    v62 = v25;
    v59 = viewCopy;
    v26 = [datasource groupStackView:viewCopy subheadersWithState:&v61];
    v27 = [v26 count];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = 0;
      v60 = *v24;
      v31 = *(v24 + 3);
      do
      {
        v32 = [v26 objectAtIndexedSubscript:v30];
        layer2 = [v32 layer];
        v34 = PKLayerNullActions();
        [layer2 setActions:v34];

        if (v28 == 1)
        {
          v35 = 36.0;
        }

        else
        {
          v35 = 17.0;
        }

        v36 = [PKPGSVSectionSubheaderContext alloc];
        v37 = v32;
        v38 = v37;
        if (v36 && v37)
        {
          v61.receiver = v36;
          v61.super_class = PKPGSVSectionSubheaderContext;
          v39 = objc_msgSendSuper2(&v61, sel_init);
          v40 = v39;
          if (v39)
          {
            objc_storeStrong(v39 + 1, v32);
            *(v40 + 1) = v60;
            *(v40 + 4) = v35;
            v40[5] = v31;
          }

          v36 = v40;
          v41 = v36;
        }

        else
        {
          v41 = 0;
        }

        if (!v29)
        {
          v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v29 addObject:v41];

        ++v30;
        --v28;
      }

      while (v28);
    }

    else
    {
      v29 = 0;
    }

    viewCopy = v59;
    state = stateCopy;
    datasource = v58;
    section = sectionCopy;
    v24 = MEMORY[0x1E69DDCE0];
  }

  else
  {
    v29 = 0;
  }

  v42 = *v24;
  if (_UISolariumFeatureFlagEnabled())
  {
    if (section)
    {
      if (v21)
      {
        v43 = 17.0;
      }

      else
      {
        v43 = *(v24 + 2);
      }

      v44 = 36.0;
    }

    else
    {
      if (*(state + 24))
      {
        v44 = 17.0;
        v43 = 17.0;
        if (v21)
        {
          goto LABEL_45;
        }

        +[PKDashboardPassFlowLayout topMarginInFirstSection];
        v43 = v45;
      }

      else if (v21)
      {
        v43 = 17.0;
      }

      else
      {
        v43 = *(v24 + 2);
      }

      v44 = v42;
    }
  }

  else
  {
    if (v21)
    {
      v44 = 47.0;
    }

    else
    {
      v44 = v42;
    }

    if (v21)
    {
      v43 = 17.0;
    }

    else
    {
      v43 = 36.0;
    }
  }

LABEL_45:
  v46 = [PKPGSVSectionHeaderContext alloc];
  v47 = v21;
  v48 = v29;
  if (v46)
  {
    v61.receiver = v46;
    v61.super_class = PKPGSVSectionHeaderContext;
    v49 = objc_msgSendSuper2(&v61, sel_init);
    v50 = v49;
    if (v49)
    {
      v51 = *(MEMORY[0x1E69DDCE0] + 8);
      v52 = *(MEMORY[0x1E69DDCE0] + 24);
      objc_storeStrong(v49 + 5, v21);
      *(v50 + 7) = v44;
      v50[8] = v51;
      *(v50 + 9) = v43;
      v50[10] = v52;
      *(v50 + 1) = self;
      v53 = [v48 count];
      if (v53)
      {
        v53 = [v48 copy];
      }

      v54 = v50[6];
      v50[6] = v53;
    }
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

- (unint64_t)hash
{
  v24 = *MEMORY[0x1E69E9840];
  headerView = self->_headerView;
  v3 = *&self->_headerMargins.bottom;
  v17 = *&self->_headerMargins.top;
  v18 = v3;
  cachedHeaderViewSize = self->_cachedHeaderViewSize;
  containerWidth = self->_containerWidth;
  v4 = PKObjectHash(&headerView);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_subheaderContexts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v21 = v4;
        v22 = 0;
        v22 = [v10 hash];
        v4 = PKObjectHash(&v21);
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v6 = v5;
    if (self && self->_headerView == *(v5 + 5) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_headerMargins.top, *(v5 + 56)), vceqq_f64(*&self->_headerMargins.bottom, *(v5 + 72))))) & 1) != 0 && PKEqualObjects())
    {
      v7 = 0;
      if (self->_cachedHeaderViewSize.width == v6[2] && self->_cachedHeaderViewSize.height == v6[3])
      {
        v7 = self->_containerWidth == v6[1];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)positionForHeaderViewInContainerFrame:(double)frame
{
  if (!self)
  {
    return 0.0;
  }

  v8 = *(self + 8);
  if (a4 != v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPGSVSectionHeaderContext container width changed from %lu to %lu", v8, a4}];
  }

  [(PKPGSVSectionHeaderContext *)self boundsForHeaderViewInContainerFrame:a2, frame, a4];
  PKSizeAlignedInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  layer = [*(self + 40) layer];
  [layer anchorPoint];
  v17 = v16;
  v19 = v18;

  v20.n128_f64[0] = v12 * v17;
  PKFloatFloorToPixel(v20, v21);
  v23 = v10 + v22;
  v24.n128_f64[0] = v14 * v19;
  PKFloatFloorToPixel(v24, v25);
  return v23;
}

- (uint64_t)boundsForHeaderViewInContainerFrame:(double)frame
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 8);
    if (a4 != v5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPGSVSectionHeaderContext container width changed from %lu to %lu", v5, a4}];
    }

    return [*(v4 + 40) bounds];
  }

  return result;
}

@end