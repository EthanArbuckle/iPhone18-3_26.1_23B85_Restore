@interface PUSectionedTilingLayout
- (BOOL)_scrollsHorizontallyNotVertically;
- (CGRect)boundsForSection:(int64_t)section;
- (CGRect)contentBounds;
- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path scrollPosition:(int64_t)position;
- (CGSize)interSectionSpacing;
- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items;
- (PUSectionedTilingLayout)initWithDataSource:(id)source;
- (_NSRange)computedSections;
- (_PUSectionedTilingLayoutSectionInfo)_sectionInfoForSection:(int64_t)section;
- (id)layoutInfosForTilesInRect:(CGRect)rect;
- (int64_t)_numberOfSections;
- (void)_computeSeedSectionIfNeeded;
- (void)_ensureComputedSectionsHaveBeenSeeded;
- (void)_markAllSectionInfosInvalid;
- (void)computeSectionsInRect:(CGRect)rect;
- (void)dealloc;
- (void)invalidateLayoutForUpdateWithItems:(id)items;
- (void)invalidateSectionInfos;
- (void)prepareLayout;
- (void)setVisibleRect:(CGRect)rect;
@end

@implementation PUSectionedTilingLayout

- (CGSize)interSectionSpacing
{
  width = self->_interSectionSpacing.width;
  height = self->_interSectionSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_markAllSectionInfosInvalid
{
  numberOfSections = self->_numberOfSections;
  v3 = numberOfSections - 1;
  if ((numberOfSections - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    sectionInfos = self->_sectionInfos;
    v5 = (numberOfSections + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = xmmword_1B3D0CFF0;
    v7 = xmmword_1B3D0D000;
    v8 = xmmword_1B3D0D010;
    v9 = xmmword_1B3D0D020;
    v10 = xmmword_1B3D0D030;
    v11 = xmmword_1B3D0D040;
    v12 = xmmword_1B3D0D050;
    v13 = xmmword_1B3D01200;
    v14 = vdupq_n_s64(v3);
    v15 = vdupq_n_s64(0x10uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v14, v13));
      if (vuzp1_s8(vuzp1_s16(v16, *v6.i8), *v6.i8).u8[0])
      {
        sectionInfos->var0 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v6), *&v6).i8[1])
      {
        sectionInfos[1].var0 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v12))), *&v6).i8[2])
      {
        sectionInfos[2].var0 = 0;
        sectionInfos[3].var0 = 0;
      }

      v17 = vmovn_s64(vcgeq_u64(v14, v11));
      if (vuzp1_s8(*&v6, vuzp1_s16(v17, *&v6)).i32[1])
      {
        sectionInfos[4].var0 = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v17, *&v6)).i8[5])
      {
        sectionInfos[5].var0 = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v10)))).i8[6])
      {
        sectionInfos[6].var0 = 0;
        sectionInfos[7].var0 = 0;
      }

      v18 = vmovn_s64(vcgeq_u64(v14, v9));
      if (vuzp1_s8(vuzp1_s16(v18, *v6.i8), *v6.i8).u8[0])
      {
        sectionInfos[8].var0 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v6), *&v6).i8[1])
      {
        sectionInfos[9].var0 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v8))), *&v6).i8[2])
      {
        sectionInfos[10].var0 = 0;
        sectionInfos[11].var0 = 0;
      }

      v19 = vmovn_s64(vcgeq_u64(v14, v7));
      if (vuzp1_s8(*&v6, vuzp1_s16(v19, *&v6)).i32[1])
      {
        sectionInfos[12].var0 = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v19, *&v6)).i8[5])
      {
        sectionInfos[13].var0 = 0;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v14, *&v6)))).i8[6])
      {
        sectionInfos[14].var0 = 0;
        sectionInfos[15].var0 = 0;
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v9 = vaddq_s64(v9, v15);
      v8 = vaddq_s64(v8, v15);
      v7 = vaddq_s64(v7, v15);
      sectionInfos += 16;
      v6 = vaddq_s64(v6, v15);
      v5 -= 16;
    }

    while (v5);
  }
}

- (void)invalidateSectionInfos
{
  location = self->_computedSections.location;
  self->_seedSection = location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_seedSectionOrigin = [(PUSectionedTilingLayout *)self _sectionInfoForSection:?][16];
  }

  [(PUSectionedTilingLayout *)self _markAllSectionInfosInvalid];
  self->_computedSections = xmmword_1B3D0D060;
}

- (int64_t)_numberOfSections
{
  result = self->_numberOfSections;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedTilingLayout.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"_numberOfSections != NSNotFound"}];

    return self->_numberOfSections;
  }

  return result;
}

- (_PUSectionedTilingLayoutSectionInfo)_sectionInfoForSection:(int64_t)section
{
  if (self->_numberOfSections == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedTilingLayout.m" lineNumber:274 description:{@"_numberOfSections is NSNotFound, this is indicative of the layout not being prepared yet. Make sure the tiling view has performed a layout pass before asking the layout for information."}];

    if ((section & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((section & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSectionedTilingLayout.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"section >= 0"}];

LABEL_3:
  if (self->_numberOfSections <= section)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUSectionedTilingLayout.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"section < _numberOfSections"}];
  }

  v6 = &self->_sectionInfos[section];
  if (!v6->var0)
  {
    [(PUSectionedTilingLayout *)self interSectionSpacing];
    v8 = v7;
    v10 = v9;
    if ([(PUSectionedTilingLayout *)self _numberOfSections]<= section)
    {
      v13 = 0;
    }

    else
    {
      dataSource = [(PUTilingLayout *)self dataSource];
      v12 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
      v13 = [dataSource numberOfSubItemsAtIndexPath:v12];
    }

    if (v13)
    {
      v14 = v10;
    }

    else
    {
      v14 = *(MEMORY[0x1E695F060] + 8);
    }

    if (v13)
    {
      v15 = v8;
    }

    else
    {
      v15 = *MEMORY[0x1E695F060];
    }

    [(PUSectionedTilingLayout *)self sizeForSection:section numberOfItems:v13, *MEMORY[0x1E695F060]];
    v17 = v16;
    v19 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__PUSectionedTilingLayout__sectionInfoForSection___block_invoke;
    aBlock[3] = &unk_1E7B7E0B0;
    aBlock[4] = self;
    aBlock[5] = section;
    v20 = _Block_copy(aBlock);
    leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
    p_computedSections = &self->_computedSections;
    location = self->_computedSections.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      p_computedSections->location = section;
      self->_computedSections.length = 1;
      if (self->_seedSection == section)
      {
        p_seedSectionOrigin = &self->_seedSectionOrigin;
      }

      else
      {
        p_seedSectionOrigin = MEMORY[0x1E695EFF8];
      }

      x = p_seedSectionOrigin->x;
      y = p_seedSectionOrigin->y;
      goto LABEL_24;
    }

    v25 = leftToRight;
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    if (location <= section)
    {
      v38 = self->_computedSections.length + location;
      if (section < v38)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUSectionedTilingLayout.m" lineNumber:333 description:@"unexpected section"];

        goto LABEL_24;
      }

      v20[2](v20, section - v38);
      for (i = self->_computedSections.length + p_computedSections->location; i < section - 1; ++i)
      {
        [(PUSectionedTilingLayout *)self _sectionInfoForSection:i];
      }

      v41 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:section - 1];
      _scrollsHorizontallyNotVertically = [(PUSectionedTilingLayout *)self _scrollsHorizontallyNotVertically];
      v34 = v41->var2.origin.x;
      v35 = v41->var2.origin.y;
      width = v41->var2.size.width;
      height = v41->var2.size.height;
      if (!_scrollsHorizontallyNotVertically)
      {
        y = v14 + CGRectGetMaxY(*&v34);
        goto LABEL_24;
      }

      if (!v25)
      {
LABEL_28:
        x = CGRectGetMinX(*&v34) - v15 - v17;
LABEL_24:
        v6->var1 = v13;
        v6->var2.origin.x = x;
        v6->var2.origin.y = y;
        v6->var2.size.width = v17;
        v6->var2.size.height = v19;
        v6->var0 = 1;
        v47.location = p_computedSections->location;
        v47.length = self->_computedSections.length;
        v48.location = section;
        v48.length = 1;
        v29 = NSUnionRange(v47, v48);
        p_computedSections->location = v29.location;
        self->_computedSections.length = v29.length;
        v30 = objc_alloc_init(PUTilingLayoutInvalidationContext);
        [(PUTilingLayoutInvalidationContext *)v30 invalidateContentBounds];
        [(PUTilingLayout *)self invalidateLayoutWithContext:v30];

        return v6;
      }
    }

    else
    {
      v20[2](v20, location + ~section);
      for (j = p_computedSections->location - 1; j > section + 1; --j)
      {
        [(PUSectionedTilingLayout *)self _sectionInfoForSection:j];
      }

      v32 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:section + 1];
      _scrollsHorizontallyNotVertically2 = [(PUSectionedTilingLayout *)self _scrollsHorizontallyNotVertically];
      v34 = v32->var2.origin.x;
      v35 = v32->var2.origin.y;
      width = v32->var2.size.width;
      height = v32->var2.size.height;
      if (!_scrollsHorizontallyNotVertically2)
      {
        y = CGRectGetMinY(*&v34) - v14 - v19;
        goto LABEL_24;
      }

      if (v25)
      {
        goto LABEL_28;
      }
    }

    x = v15 + CGRectGetMaxX(*&v34);
    goto LABEL_24;
  }

  return v6;
}

void __50__PUSectionedTilingLayout__sectionInfoForSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 >= 21)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = NSStringFromRange(v5[7]);
      v8 = 134218754;
      v9 = a2;
      v10 = 2112;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Computing at once a lot of missing sections (%li) for %@ (section: %li; computed range: %@)", &v8, 0x2Au);
    }
  }
}

- (void)computeSectionsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUSectionedTilingLayout *)self _computeSeedSectionIfNeeded];
  [(PUSectionedTilingLayout *)self _ensureComputedSectionsHaveBeenSeeded];
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  location = self->_computedSections.location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = leftToRight;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:location];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__PUSectionedTilingLayout_computeSectionsInRect___block_invoke;
    aBlock[3] = &unk_1E7B7E088;
    v25 = v10;
    aBlock[4] = self;
    aBlock[5] = &v26;
    *&aBlock[6] = x;
    *&aBlock[7] = y;
    *&aBlock[8] = width;
    *&aBlock[9] = height;
    v11 = _Block_copy(aBlock);
    while (1)
    {
      v12 = v11[2](v11);
      v13 = location > 0 ? v12 : 0;
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:--location];
      v27[3] = v14;
    }

    v15 = self->_computedSections.location + self->_computedSections.length;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:v15 - 1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__PUSectionedTilingLayout_computeSectionsInRect___block_invoke_2;
    v18[3] = &unk_1E7B7E088;
    v19 = v10;
    v18[4] = self;
    v18[5] = &v20;
    *&v18[6] = x;
    *&v18[7] = y;
    *&v18[8] = width;
    *&v18[9] = height;
    v16 = _Block_copy(v18);
    while (v16[2](v16) && (v15 - 1) < [(PUSectionedTilingLayout *)self _numberOfSections]- 1)
    {
      v17 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:v15];
      v21[3] = v17;
      ++v15;
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }
}

BOOL __49__PUSectionedTilingLayout_computeSectionsInRect___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) _scrollsHorizontallyNotVertically])
  {
    MinY = CGRectGetMinY(*(*(*(*(a1 + 40) + 8) + 24) + 16));
    MinX = CGRectGetMinY(*(a1 + 48));
    return MinY > MinX;
  }

  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  if (*(a1 + 80) == 1)
  {
    MinY = CGRectGetMinX(*&v3);
    MinX = CGRectGetMinX(*(a1 + 48));
    return MinY > MinX;
  }

  MaxX = CGRectGetMaxX(*&v3);
  return MaxX < CGRectGetMaxX(*(a1 + 48));
}

BOOL __49__PUSectionedTilingLayout_computeSectionsInRect___block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) _scrollsHorizontallyNotVertically])
  {
    MaxY = CGRectGetMaxY(*(*(*(*(a1 + 40) + 8) + 24) + 16));
    MaxX = CGRectGetMaxY(*(a1 + 48));
    return MaxY < MaxX;
  }

  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  if (*(a1 + 80) == 1)
  {
    MaxY = CGRectGetMaxX(*&v3);
    MaxX = CGRectGetMaxX(*(a1 + 48));
    return MaxY < MaxX;
  }

  MinX = CGRectGetMinX(*&v3);
  return MinX > CGRectGetMinX(*(a1 + 48));
}

- (void)_computeSeedSectionIfNeeded
{
  if (self->_computedSections.location == 0x7FFFFFFFFFFFFFFFLL && self->_seedSection != 0x7FFFFFFFFFFFFFFFLL && self->_numberOfSections >= 1)
  {
    [(PUSectionedTilingLayout *)self _sectionInfoForSection:?];
  }

  self->_seedSection = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_ensureComputedSectionsHaveBeenSeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_computedSections.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = PLOneUpGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412546;
      selfCopy = self;
      v6 = 2112;
      v7 = &stru_1F2AC6818;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "No sections have been seeded in sectioned layout %@. Seeding with section zero, but performance impact is unbounded. %@", &v4, 0x16u);
    }

    self->_seedSection = 0;
    [(PUSectionedTilingLayout *)self _computeSeedSectionIfNeeded];
  }
}

- (BOOL)_scrollsHorizontallyNotVertically
{
  preferredScrollInfo = [(PUTilingLayout *)self preferredScrollInfo];
  scrollDirections = [preferredScrollInfo scrollDirections];
  v6 = scrollDirections & 2;
  if (((scrollDirections >> 2) & 1) == ((scrollDirections >> 1) & 1))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedTilingLayout.m" lineNumber:207 description:{@"sectioned layout should either scroll horizontally or vertically, but not in both directions"}];
  }

  return v6 != 0;
}

- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedTilingLayout.m" lineNumber:198 description:@"subclass must implement"];

  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  result.height = v8;
  result.width = v7;
  return result;
}

- (_NSRange)computedSections
{
  p_computedSections = &self->_computedSections;
  location = self->_computedSections.location;
  length = p_computedSections->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)boundsForSection:(int64_t)section
{
  v3 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:section];
  x = v3->var2.origin.x;
  y = v3->var2.origin.y;
  width = v3->var2.size.width;
  height = v3->var2.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)invalidateLayoutForUpdateWithItems:(id)items
{
  v4.receiver = self;
  v4.super_class = PUSectionedTilingLayout;
  [(PUTilingLayout *)&v4 invalidateLayoutForUpdateWithItems:items];
  [(PUSectionedTilingLayout *)self invalidateSectionInfos];
  [(PUSectionedTilingLayout *)self _invalidateNumberOfSections];
}

- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path scrollPosition:(int64_t)position
{
  v5 = [(PUTilingLayout *)self layoutInfoForTileWithIndexPath:path kind:@"PUTileKindItemContent"];
  [v5 center];
  v7 = v6;
  v9 = v8;
  [(PUTilingLayout *)self visibleRect];
  v11 = v10;
  v13 = v12;
  v14 = v7 - v10 * 0.5;
  v15 = v9 - v12 * 0.5;
  v16 = [(PUSectionedTilingLayout *)self layoutInfosForTilesInRect:v14, v15];
  [(PUSectionedTilingLayout *)self contentBounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v43 = v23;
  v44.origin.x = v14;
  v44.origin.y = v15;
  v44.size.width = v11;
  v44.size.height = v13;
  Width = CGRectGetWidth(v44);
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v43;
  v25 = CGRectGetWidth(v45);
  if (Width >= v25)
  {
    Width = v25;
  }

  v46.origin.x = v14;
  v46.origin.y = v15;
  v46.size.width = Width;
  v46.size.height = v13;
  MinX = CGRectGetMinX(v46);
  v47.origin.x = v18;
  v47.origin.y = v20;
  v47.size.width = v22;
  v47.size.height = v43;
  v27 = CGRectGetMinX(v47);
  if (MinX < v27)
  {
    MinX = v27;
  }

  v48.origin.x = MinX;
  v48.origin.y = v15;
  v48.size.width = Width;
  v48.size.height = v13;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = v18;
  v49.origin.y = v20;
  v49.size.width = v22;
  v49.size.height = v43;
  v29 = CGRectGetMaxX(v49);
  if (MaxX >= v29)
  {
    MaxX = v29;
  }

  v50.origin.x = MinX;
  v50.origin.y = v15;
  v50.size.width = Width;
  v50.size.height = v13;
  v30 = MaxX - CGRectGetWidth(v50);
  v51.origin.x = v30;
  v51.origin.y = v15;
  v51.size.width = Width;
  v51.size.height = v13;
  Height = CGRectGetHeight(v51);
  v52.origin.x = v18;
  v52.origin.y = v20;
  v52.size.width = v22;
  v52.size.height = v43;
  v32 = CGRectGetHeight(v52);
  if (Height >= v32)
  {
    Height = v32;
  }

  v53.origin.x = v30;
  v53.origin.y = v15;
  v53.size.width = Width;
  v53.size.height = Height;
  MinY = CGRectGetMinY(v53);
  v54.origin.x = v18;
  v54.origin.y = v20;
  v54.size.width = v22;
  v54.size.height = v43;
  v34 = CGRectGetMinY(v54);
  if (MinY < v34)
  {
    MinY = v34;
  }

  v55.origin.x = v30;
  v55.origin.y = MinY;
  v55.size.width = Width;
  v55.size.height = Height;
  MaxY = CGRectGetMaxY(v55);
  v56.origin.x = v18;
  v56.origin.y = v20;
  v56.size.width = v22;
  v56.size.height = v43;
  v36 = CGRectGetMaxY(v56);
  if (MaxY >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = MaxY;
  }

  v57.origin.x = v30;
  v57.origin.y = MinY;
  v57.size.width = Width;
  v57.size.height = Height;
  v38 = v37 - CGRectGetHeight(v57);

  v39 = v30;
  v40 = v38;
  v41 = Width;
  v42 = Height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (id)layoutInfosForTilesInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUSectionedTilingLayout *)self computeSectionsInRect:?];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(PUSectionedTilingLayout *)self addLayoutInfosForSupplementaryTilesInRect:v8 toSet:x, y, width, height];
  location = self->_computedSections.location;
  for (i = self->_computedSections.length + location; location < i; i = self->_computedSections.length + self->_computedSections.location)
  {
    v14 = [(PUSectionedTilingLayout *)self _sectionInfoForSection:location][16];
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    if (CGRectIntersectsRect(v14, v15))
    {
      [(PUSectionedTilingLayout *)self addLayoutInfosForTilesInRect:location section:v8 toSet:x, y, width, height];
    }

    ++location;
  }

  allObjects = [v8 allObjects];

  return allObjects;
}

- (CGRect)contentBounds
{
  [(PUSectionedTilingLayout *)self _computeSeedSectionIfNeeded];
  [(PUSectionedTilingLayout *)self _ensureComputedSectionsHaveBeenSeeded];
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  location = self->_computedSections.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v9 = leftToRight;
    v10 = self->_computedSections.length + location;
    v37 = CGRectUnion([(PUSectionedTilingLayout *)self _sectionInfoForSection:self->_computedSections.location][16], [(PUSectionedTilingLayout *)self _sectionInfoForSection:v10 - 1][16]);
    y = v37.origin.y;
    x = v37.origin.x;
    width = v37.size.width;
    height = v37.size.height;
    v11 = MEMORY[0x1E69DDCE0];
    v12 = *MEMORY[0x1E69DDCE0];
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
    [(PUSectionedTilingLayout *)self estimatedSectionSize];
    v16 = v15;
    v18 = v17;
    [(PUSectionedTilingLayout *)self interSectionSpacing];
    v20 = v19;
    v22 = v21;
    if (location >= 1)
    {
      _scrollsHorizontallyNotVertically = [(PUSectionedTilingLayout *)self _scrollsHorizontallyNotVertically];
      v24 = location;
      if (_scrollsHorizontallyNotVertically)
      {
        v25 = (v16 + v20) * v24;
        if (v9)
        {
          v13 = -v25;
        }

        else
        {
          v14 = -(v25 - v20);
        }
      }

      else
      {
        v12 = -((v18 + v22) * v24);
      }
    }

    v26 = *(v11 + 16);
    _numberOfSections = [(PUSectionedTilingLayout *)self _numberOfSections];
    if ((v10 - 1) < _numberOfSections - 1)
    {
      v28 = _numberOfSections;
      _scrollsHorizontallyNotVertically2 = [(PUSectionedTilingLayout *)self _scrollsHorizontallyNotVertically];
      v30 = (v28 - v10);
      if (_scrollsHorizontallyNotVertically2)
      {
        v31 = -((v16 + v20) * v30 - v20);
        v32 = -((v16 + v20) * v30);
        if (v9)
        {
          v14 = v31;
        }

        else
        {
          v13 = v32;
        }
      }

      else
      {
        v26 = -(v30 * (v18 + v22) - v22);
      }
    }

    v5 = x + v13;
    v6 = y + v12;
    v7 = width - (v14 + v13);
    v8 = height - (v12 + v26);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)prepareLayout
{
  v5.receiver = self;
  v5.super_class = PUSectionedTilingLayout;
  [(PUTilingLayout *)&v5 prepareLayout];
  if (self->_numberOfSections == 0x7FFFFFFFFFFFFFFFLL)
  {
    dataSource = [(PUTilingLayout *)self dataSource];
    pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
    self->_numberOfSections = [dataSource numberOfSubItemsAtIndexPath:pu_rootIndexPath];

    self->_sectionInfos = malloc_type_realloc(self->_sectionInfos, 48 * self->_numberOfSections, 0x1000040AC875A91uLL);
    [(PUSectionedTilingLayout *)self _markAllSectionInfosInvalid];
  }
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUTilingLayout *)self visibleRect];
  v9 = v8;
  v11 = v10;
  v14.receiver = self;
  v14.super_class = PUSectionedTilingLayout;
  [(PUTilingLayout *)&v14 setVisibleRect:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(PUSectionedTilingLayout *)self invalidateSectionInfos];
    v13 = objc_alloc_init(PUTilingLayoutInvalidationContext);
    [(PUTilingLayout *)self invalidateLayoutWithContext:v13];
  }
}

- (void)dealloc
{
  free(self->_sectionInfos);
  v3.receiver = self;
  v3.super_class = PUSectionedTilingLayout;
  [(PUSectionedTilingLayout *)&v3 dealloc];
}

- (PUSectionedTilingLayout)initWithDataSource:(id)source
{
  v7.receiver = self;
  v7.super_class = PUSectionedTilingLayout;
  v3 = [(PUTilingLayout *)&v7 initWithDataSource:source];
  v4 = v3;
  if (v3)
  {
    v3->_interSectionSpacing = vdupq_n_s64(0x4049000000000000uLL);
    v3->_numberOfSections = 0x7FFFFFFFFFFFFFFFLL;
    v3->_sectionInfos = 0;
    v3->_computedSections = xmmword_1B3D0D060;
    v3->_seedSection = 0x7FFFFFFFFFFFFFFFLL;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v4->_leftToRight = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 0;
  }

  return v4;
}

@end