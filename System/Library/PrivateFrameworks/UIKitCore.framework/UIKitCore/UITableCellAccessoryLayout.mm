@interface UITableCellAccessoryLayout
- (CGRect)_frameForAccessoryAtIndex:(unint64_t)index inAccessories:(id)accessories containerSize:(CGSize)size withXOrigin:(double *)origin;
- (CGRect)endLayout;
- (CGRect)finalFrameForAccessory:(id)accessory;
- (CGRect)initialFrameForAccessory:(id)accessory;
- (CGRect)totalFrame;
- (UICellAccessoryManager)manager;
- (UITableCellAccessoryLayout)init;
- (double)_disclosureLayoutWidth;
- (double)_layoutWidthForAccessory:(id)accessory withItemWidth:(double)width;
- (double)_standardLayoutWidth;
- (double)_totalWidthForAccessories:(id)accessories withContainerSize:(CGSize)size;
- (double)finalAlphaForAccessory:(id)accessory;
- (double)initialAlphaForAccessory:(id)accessory;
- (id)_framesForAccessories:(id)accessories withContainerSize:(CGSize)size outTotalFrame:(CGRect *)frame;
- (void)prepareLayoutForAccessories:(id)accessories previousAccessories:(id)previousAccessories configurationIdentifier:(id)identifier animated:(BOOL)animated;
- (void)setSpacingBlock:(id)block;
@end

@implementation UITableCellAccessoryLayout

- (UITableCellAccessoryLayout)init
{
  v9.receiver = self;
  v9.super_class = UITableCellAccessoryLayout;
  v2 = [(UITableCellAccessoryLayout *)&v9 init];
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 88) = *MEMORY[0x1E695F050];
  *(v2 + 104) = v3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = *(v2 + 9);
  *(v2 + 9) = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v7 = *(v2 + 10);
  *(v2 + 10) = dictionary2;

  return v2;
}

- (CGRect)endLayout
{
  x = self->_totalFrame.origin.x;
  y = self->_totalFrame.origin.y;
  width = self->_totalFrame.size.width;
  height = self->_totalFrame.size.height;
  v7 = *(MEMORY[0x1E695F050] + 16);
  self->_totalFrame.origin = *MEMORY[0x1E695F050];
  self->_totalFrame.size = v7;
  initialFrames = self->_initialFrames;
  self->_initialFrames = 0;

  finalFrames = self->_finalFrames;
  self->_finalFrames = 0;

  [(NSMutableDictionary *)self->_initialAlphas removeAllObjects];
  [(NSMutableDictionary *)self->_finalAlphas removeAllObjects];
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (double)_standardLayoutWidth
{
  standardLayoutWidthProvider = self->_standardLayoutWidthProvider;
  if (!standardLayoutWidthProvider)
  {
    return 0.0;
  }

  standardLayoutWidthProvider[2]();
  return result;
}

- (void)setSpacingBlock:(id)block
{
  if (self->_spacingBlock != block)
  {
    v5 = _Block_copy(block);
    spacingBlock = self->_spacingBlock;
    self->_spacingBlock = v5;

    WeakRetained = objc_loadWeakRetained(&self->_manager);
    [WeakRetained setNeedsLayout];
  }
}

- (double)_disclosureLayoutWidth
{
  disclosureLayoutWidthProvider = self->_disclosureLayoutWidthProvider;
  if (!disclosureLayoutWidthProvider)
  {
    return 0.0;
  }

  disclosureLayoutWidthProvider[2]();
  return result;
}

- (double)_layoutWidthForAccessory:(id)accessory withItemWidth:(double)width
{
  accessoryCopy = accessory;
  [accessoryCopy reservedLayoutWidth];
  if (v7 == 1.79769313e308)
  {
    goto LABEL_8;
  }

  if (v7 == -1.79769313e308)
  {
    goto LABEL_3;
  }

  if (v7 != -1000.0)
  {
    if (v7 != 0.0)
    {
      width = v7;
      goto LABEL_8;
    }

    v12 = 0;
    view = [accessoryCopy view];
    v11 = _AccessoryFontForLineHeightAlignment(view, &v12);

    if (v12 != 1)
    {
      goto LABEL_8;
    }

LABEL_3:
    [(UITableCellAccessoryLayout *)self _standardLayoutWidth];
    goto LABEL_6;
  }

  [(UITableCellAccessoryLayout *)self _disclosureLayoutWidth];
LABEL_6:
  if (v8 > 0.0)
  {
    width = v8;
  }

LABEL_8:

  return width;
}

- (double)_totalWidthForAccessories:(id)accessories withContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  accessoriesCopy = accessories;
  if ([accessoriesCopy count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__UITableCellAccessoryLayout__totalWidthForAccessories_withContainerSize___block_invoke;
    v10[3] = &unk_1E7123180;
    v13 = width;
    v14 = height;
    v10[4] = self;
    v12 = &v15;
    v11 = accessoriesCopy;
    [v11 enumerateObjectsUsingBlock:v10];
    v8 = v16[3];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void __74__UITableCellAccessoryLayout__totalWidthForAccessories_withContainerSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  [v10 sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) _layoutWidthForAccessory:v10 withItemWidth:?];
  *(*(*(a1 + 48) + 8) + 24) = v5 + *(*(*(a1 + 48) + 8) + 24);
  if (a3)
  {
    v6 = [*(a1 + 40) objectAtIndexedSubscript:a3 - 1];
    v7 = *(*(a1 + 32) + 48);
    v8 = [v6 identifier];
    v9 = [v10 identifier];
    *(*(*(a1 + 48) + 8) + 24) = (*(v7 + 16))(v7, v8, v9) + *(*(*(a1 + 48) + 8) + 24);
  }
}

- (CGRect)_frameForAccessoryAtIndex:(unint64_t)index inAccessories:(id)accessories containerSize:(CGSize)size withXOrigin:(double *)origin
{
  height = size.height;
  width = size.width;
  accessoriesCopy = accessories;
  v12 = [accessoriesCopy objectAtIndexedSubscript:index];
  [v12 sizeThatFits:{width, height}];
  v14 = v13;
  v16 = v15;
  view = [v12 view];
  v44 = 0;
  v18 = _AccessoryFontForLineHeightAlignment(view, &v44);
  if (v18)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __96__UITableCellAccessoryLayout__frameForAccessoryAtIndex_inAccessories_containerSize_withXOrigin___block_invoke;
    v40 = &unk_1E70F6848;
    v19 = view;
    v41 = v19;
    v42 = v14;
    v43 = v16;
    [UIView performWithoutAnimation:&v37];
    _UITableCellLineHeightCenteredViewInRect(v19, v18, 0.0, 0.0, width, height);
    v21 = v20;
  }

  else
  {
    UIRoundToViewScale(view);
    v21 = v22;
  }

  [(UITableCellAccessoryLayout *)self _layoutWidthForAccessory:v12 withItemWidth:v14, v37, v38, v39, v40];
  v24 = v23;
  v25 = 0.0;
  if ([accessoriesCopy count] - 1 > index)
  {
    v26 = [accessoriesCopy objectAtIndexedSubscript:index + 1];
    spacingBlock = self->_spacingBlock;
    identifier = [v12 identifier];
    identifier2 = [v26 identifier];
    v25 = spacingBlock[2](spacingBlock, identifier, identifier2);
  }

  v30 = *origin;
  v31 = v24 + v25 + *origin;
  if (self->_edge != 8)
  {
    v31 = *origin - (v24 + v25);
    v30 = *origin - v24;
  }

  v32 = (v24 - v14) * 0.5 + v30;
  *origin = v31;

  v33 = v32;
  v34 = v21;
  v35 = v14;
  v36 = v16;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

uint64_t __96__UITableCellAccessoryLayout__frameForAccessoryAtIndex_inAccessories_containerSize_withXOrigin___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  [*(a1 + 32) setBounds:?];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (id)_framesForAccessories:(id)accessories withContainerSize:(CGSize)size outTotalFrame:(CGRect *)frame
{
  height = size.height;
  width = size.width;
  accessoriesCopy = accessories;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(accessoriesCopy, "count")}];
  [(UITableCellAccessoryLayout *)self _totalWidthForAccessories:accessoriesCopy withContainerSize:width, height];
  if (v11 <= 0.0)
  {
    safeAreaInset = self->_safeAreaInset;
    if (!frame)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v12 = v11;
  spacingBlock = self->_spacingBlock;
  firstObject = [accessoriesCopy firstObject];
  identifier = [firstObject identifier];
  v16 = spacingBlock[2](spacingBlock, 0, identifier);

  v17 = self->_spacingBlock;
  lastObject = [accessoriesCopy lastObject];
  identifier2 = [lastObject identifier];
  v20 = v17[2](v17, identifier2, 0);

  if (v20 < self->_safeAreaInset)
  {
    v20 = self->_safeAreaInset;
  }

  v30[0] = 0;
  v30[1] = v30;
  v21 = v12 + v20;
  if (self->_edge == 8)
  {
    v21 = width - (v12 + v20);
  }

  v30[2] = 0x2020000000;
  *&v30[3] = v21;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__UITableCellAccessoryLayout__framesForAccessories_withContainerSize_outTotalFrame___block_invoke;
  v24[3] = &unk_1E71231A8;
  v24[4] = self;
  v28 = width;
  v29 = height;
  v25 = accessoriesCopy;
  v27 = v30;
  v26 = v10;
  [v25 enumerateObjectsUsingBlock:v24];
  safeAreaInset = v12 + v16 + v20;

  _Block_object_dispose(v30, 8);
  if (frame)
  {
LABEL_9:
    frame->origin.x = 0.0;
    frame->origin.y = 0.0;
    frame->size.width = safeAreaInset;
    frame->size.height = height;
    if (self->_edge == 8)
    {
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.width = safeAreaInset;
      v32.size.height = height;
      frame->origin.x = width - CGRectGetWidth(v32);
    }
  }

LABEL_11:

  return v10;
}

void __84__UITableCellAccessoryLayout__framesForAccessories_withContainerSize_outTotalFrame___block_invoke(double *a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(*(a1 + 7) + 8);
  v8 = a1[8];
  v9 = a1[9];
  v10 = a2;
  [v5 _frameForAccessoryAtIndex:a3 inAccessories:v6 containerSize:v7 + 24 withXOrigin:{v8, v9}];
  v13 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  v11 = *(a1 + 6);
  v12 = [v10 identifier];

  [v11 setObject:v13 forKeyedSubscript:v12];
}

- (void)prepareLayoutForAccessories:(id)accessories previousAccessories:(id)previousAccessories configurationIdentifier:(id)identifier animated:(BOOL)animated
{
  v126 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  previousAccessoriesCopy = previousAccessories;
  identifierCopy = identifier;
  v74 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(accessoriesCopy, "count")}];
  v73 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(accessoriesCopy, "count")}];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v10 = accessoriesCopy;
  v11 = [v10 countByEnumeratingWithState:&v119 objects:v125 count:16];
  if (v11)
  {
    v12 = *v120;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v120 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v119 + 1) + 8 * i);
        identifier = [v14 identifier];
        [v74 addObject:identifier];

        view = [v14 view];
        [v73 addObject:view];
      }

      v11 = [v10 countByEnumeratingWithState:&v119 objects:v125 count:16];
    }

    while (v11);
  }

  v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(previousAccessoriesCopy, "count")}];
  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(previousAccessoriesCopy, "count")}];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = previousAccessoriesCopy;
  v19 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
  if (v19)
  {
    v20 = *v116;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v116 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v115 + 1) + 8 * j);
        identifier2 = [v22 identifier];
        [v17 addObject:identifier2];

        view2 = [v22 view];
        [v18 addObject:view2];
      }

      v19 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
    }

    while (v19);
  }

  v25 = [v74 mutableCopy];
  [v25 intersectSet:v17];
  [v74 minusSet:v25];
  [v17 minusSet:v25];
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained containerSize];
  v28 = v27;
  v30 = v29;

  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0x7FF0000000000000;
  v70 = [(UITableCellAccessoryLayout *)self _framesForAccessories:obj withContainerSize:0 outTotalFrame:v28, v30];
  v66 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v31 = [(UITableCellAccessoryLayout *)self _framesForAccessories:v10 withContainerSize:&self->_totalFrame outTotalFrame:v28, v30];
  v71 = [v31 mutableCopy];

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v32 = v10;
  v33 = [v32 countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (v33)
  {
    v34 = *v108;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v108 != v34)
        {
          objc_enumerationMutation(v32);
        }

        identifier3 = [*(*(&v107 + 1) + 8 * k) identifier];
        if ([v25 containsObject:identifier3])
        {
          v37 = [v71 objectForKeyedSubscript:identifier3];
          [v37 CGRectValue];
          MinX = CGRectGetMinX(v127);
          v39 = [v70 objectForKeyedSubscript:identifier3];
          [v39 CGRectValue];
          v40 = CGRectGetMinX(v128);

          v41 = MinX - v40;
          v42 = v112[3];
          if (v42 == INFINITY || (v43 = v42 == v41, v41 = 0.0, !v43))
          {
            v112[3] = v41;
          }
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v33);
  }

  if (v112[3] == INFINITY)
  {
    v112[3] = 0.0;
  }

  v106[0] = 0;
  v106[1] = v106;
  v44 = 0.0;
  if (self->_edge == 8)
  {
    v44 = v28;
  }

  v106[2] = 0x2020000000;
  *&v106[3] = v44;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  *&v105[3] = v44;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __111__UITableCellAccessoryLayout_prepareLayoutForAccessories_previousAccessories_configurationIdentifier_animated___block_invoke;
  v103[3] = &unk_1E71231D0;
  v65 = v25;
  v104 = v65;
  v45 = identifierCopy;
  v46 = v45;
  if (v45 == @"editing")
  {
    v47 = 1;
  }

  else if (v45)
  {
    v47 = [(__CFString *)v45 isEqual:@"editing"];
  }

  else
  {
    v47 = 0;
  }

  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __111__UITableCellAccessoryLayout_prepareLayoutForAccessories_previousAccessories_configurationIdentifier_animated___block_invoke_2;
  v90[3] = &unk_1E71231F8;
  v99 = v28;
  v100 = v30;
  v102 = v47;
  v68 = v74;
  v91 = v68;
  v101 = v103;
  v48 = v32;
  v92 = v48;
  selfCopy = self;
  v97 = v106;
  v49 = v66;
  v94 = v49;
  v50 = v71;
  v95 = v50;
  v98 = &v111;
  v51 = v18;
  v96 = v51;
  [v48 enumerateObjectsUsingBlock:v90];
  v52 = v46;
  v53 = v52;
  v75 = v51;
  if (v52 == @"normal")
  {
    v54 = 1;
  }

  else if (v52)
  {
    v54 = [(__CFString *)v52 isEqual:@"normal"];
  }

  else
  {
    v54 = 0;
  }

  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __111__UITableCellAccessoryLayout_prepareLayoutForAccessories_previousAccessories_configurationIdentifier_animated___block_invoke_12;
  v76[3] = &unk_1E7123220;
  v55 = v17;
  v89 = v54;
  v77 = v55;
  v86 = v103;
  v56 = obj;
  v78 = v56;
  v57 = v49;
  v79 = v57;
  selfCopy2 = self;
  v87 = v28;
  v88 = v30;
  v84 = v105;
  v58 = v50;
  v81 = v58;
  v59 = v70;
  v82 = v59;
  v85 = &v111;
  v60 = v73;
  v83 = v60;
  [v56 enumerateObjectsUsingBlock:v76];
  initialFrames = self->_initialFrames;
  self->_initialFrames = v57;
  v62 = v57;

  finalFrames = self->_finalFrames;
  self->_finalFrames = v58;
  v64 = v58;

  _Block_object_dispose(v105, 8);
  _Block_object_dispose(v106, 8);

  _Block_object_dispose(&v111, 8);
}

uint64_t __111__UITableCellAccessoryLayout_prepareLayoutForAccessories_previousAccessories_configurationIdentifier_animated___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([v5 count] <= a3)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = [v5 objectAtIndexedSubscript:a3];
      v7 = *(a1 + 32);
      v8 = [v6 identifier];
      v9 = [v7 containsObject:v8];

      if (v9)
      {
        break;
      }

      ++a3;
    }

    while (a3 < [v5 count]);
  }

  return v9;
}

void __111__UITableCellAccessoryLayout_prepareLayoutForAccessories_previousAccessories_configurationIdentifier_animated___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v24 = [v5 identifier];
  v6 = [v5 view];
  [v5 sizeThatFits:{*(a1 + 96), *(a1 + 104)}];

  v7 = *(a1 + 120);
  if ([*(a1 + 32) containsObject:v24])
  {
    if (v7 && ((*(*(a1 + 112) + 16))() & 1) == 0)
    {
      [*(a1 + 48) _frameForAccessoryAtIndex:a3 inAccessories:*(a1 + 40) containerSize:*(*(a1 + 80) + 8) + 24 withXOrigin:{*(a1 + 96), *(a1 + 104)}];
      v12 = v20;
      v14 = v21;
      v16 = v22;
    }

    else
    {
      v8 = [*(a1 + 64) objectForKeyedSubscript:v24];
      [v8 CGRectValue];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = v10 - *(*(*(a1 + 88) + 8) + 24);
    }

    v23 = [MEMORY[0x1E696B098] valueWithCGRect:{v17, v12, v14, v16}];
    [*(a1 + 56) setObject:v23 forKeyedSubscript:v24];

    if ([*(a1 + 72) containsObject:v6])
    {
      v19 = &unk_1EFE2EE28;
    }

    else
    {
      v19 = &unk_1EFE2EE18;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696B098] valueWithCGRect:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    [*(a1 + 56) setObject:v18 forKeyedSubscript:v24];

    v19 = &unk_1EFE2EE28;
  }

  [*(*(a1 + 48) + 72) setObject:v19 forKeyedSubscript:v24];
  [*(*(a1 + 48) + 80) setObject:&unk_1EFE2EE28 forKeyedSubscript:v24];
}

void __111__UITableCellAccessoryLayout_prepareLayoutForAccessories_previousAccessories_configurationIdentifier_animated___block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v24 = [v5 identifier];
  v6 = [v5 view];

  if ([*(a1 + 32) containsObject:v24])
  {
    if (*(a1 + 128) == 1)
    {
      v7 = (*(*(a1 + 104) + 16))() ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x1E696B098] valueWithCGRect:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    [*(a1 + 48) setObject:v8 forKeyedSubscript:v24];

    if (v7)
    {
      [*(a1 + 56) _frameForAccessoryAtIndex:a3 inAccessories:*(a1 + 40) containerSize:*(*(a1 + 88) + 8) + 24 withXOrigin:{*(a1 + 112), *(a1 + 120)}];
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v16 = [*(a1 + 72) objectForKeyedSubscript:v24];
      [v16 CGRectValue];
      v18 = v17;
      v11 = v19;
      v13 = v20;
      v15 = v21;

      v9 = v18 + *(*(*(a1 + 96) + 8) + 24);
    }

    v22 = [MEMORY[0x1E696B098] valueWithCGRect:{v9, v11, v13, v15}];
    [*(a1 + 64) setObject:v22 forKeyedSubscript:v24];

    LODWORD(v22) = [*(a1 + 80) containsObject:v6];
    [*(*(a1 + 56) + 72) setObject:&unk_1EFE2EE28 forKeyedSubscript:v24];
    if (v22)
    {
      v23 = &unk_1EFE2EE28;
    }

    else
    {
      v23 = &unk_1EFE2EE18;
    }

    [*(*(a1 + 56) + 80) setObject:v23 forKeyedSubscript:v24];
  }
}

- (CGRect)initialFrameForAccessory:(id)accessory
{
  initialFrames = self->_initialFrames;
  identifier = [accessory identifier];
  v5 = [(NSDictionary *)initialFrames objectForKeyedSubscript:identifier];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)finalFrameForAccessory:(id)accessory
{
  finalFrames = self->_finalFrames;
  identifier = [accessory identifier];
  v5 = [(NSDictionary *)finalFrames objectForKeyedSubscript:identifier];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)initialAlphaForAccessory:(id)accessory
{
  initialAlphas = self->_initialAlphas;
  identifier = [accessory identifier];
  v5 = [(NSMutableDictionary *)initialAlphas objectForKeyedSubscript:identifier];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)finalAlphaForAccessory:(id)accessory
{
  finalAlphas = self->_finalAlphas;
  identifier = [accessory identifier];
  v5 = [(NSMutableDictionary *)finalAlphas objectForKeyedSubscript:identifier];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (UICellAccessoryManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (CGRect)totalFrame
{
  x = self->_totalFrame.origin.x;
  y = self->_totalFrame.origin.y;
  width = self->_totalFrame.size.width;
  height = self->_totalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end