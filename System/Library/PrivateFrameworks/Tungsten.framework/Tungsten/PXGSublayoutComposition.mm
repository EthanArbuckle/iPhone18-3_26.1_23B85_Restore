@interface PXGSublayoutComposition
- ($7C531AF6E50BD019A4D1760C681E3492)sublayoutGeometries;
- (CGRect)contentBounds;
- (CGRect)visibleRect;
- (CGSize)referenceSize;
- (PXGCompositeLayout)compositeLayout;
- (PXGLayout)layout;
- (UIEdgeInsets)sublayoutInsetsForStylableType:(int64_t)type;
- (int64_t)anchorSublayoutIndexForAnchoredContentEdges:(unint64_t)edges;
- (int64_t)numberOfSublayouts;
- (void)enumerateSublayoutProvidersForRange:(_NSRange)range usingBlock:(id)block;
- (void)invalidateEstimatedSublayoutGeometries;
- (void)invalidateSublayoutAttributes;
- (void)invalidateSublayoutContentSizes;
- (void)setLastSublayoutDataStoreVersion:(int64_t)version;
- (void)setReferenceSize:(CGSize)size;
- (void)setVisibleRect:(CGRect)rect;
- (void)updateEstimate;
- (void)updateEstimatedSublayoutGeometries;
- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)index usingSublayoutUpdateBlock:(id)block;
@end

@implementation PXGSublayoutComposition

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXGCompositeLayout)compositeLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_compositeLayout);

  return WeakRetained;
}

- (CGRect)contentBounds
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutComposition.m" lineNumber:168 description:{@"Method %s is a responsibility of subclass %@", "-[PXGSublayoutComposition contentBounds]", v6}];

  abort();
}

- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)index usingSublayoutUpdateBlock:(id)block
{
  blockCopy = block;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutComposition.m" lineNumber:164 description:{@"Method %s is a responsibility of subclass %@", "-[PXGSublayoutComposition updateSublayoutGeometriesFromAnchorSublayoutIndex:usingSublayoutUpdateBlock:]", v9}];

  abort();
}

- (int64_t)anchorSublayoutIndexForAnchoredContentEdges:(unint64_t)edges
{
  if ((edges & 3) != 0)
  {
    return 0;
  }

  if ((edges & 0xC) != 0)
  {
    return [(PXGSublayoutComposition *)self numberOfSublayouts:v3]- 1;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)updateEstimatedSublayoutGeometries
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutComposition.m" lineNumber:148 description:{@"Method %s is a responsibility of subclass %@", "-[PXGSublayoutComposition updateEstimatedSublayoutGeometries]", v6}];

  abort();
}

- (void)invalidateEstimatedSublayoutGeometries
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 2) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSublayoutComposition invalidateEstimatedSublayoutGeometries]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXGSublayoutComposition.m" lineNumber:143 description:{@"invalidating %lu after it already has been updated", 2}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 2uLL;
  compositeLayout = [(PXGSublayoutComposition *)self compositeLayout];
  [compositeLayout compositionDidChange];
}

- (void)invalidateSublayoutContentSizes
{
  numberOfSublayouts = [(PXGSublayoutComposition *)self numberOfSublayouts];
  sublayoutGeometries = [(PXGSublayoutComposition *)self sublayoutGeometries];
  if (numberOfSublayouts >= 1)
  {
    p_width = &sublayoutGeometries->var3.width;
    v6 = *MEMORY[0x277D3CFE0];
    do
    {
      *p_width = v6;
      p_width = (p_width + 136);
      --numberOfSublayouts;
    }

    while (numberOfSublayouts);
  }

  [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
}

- (void)invalidateSublayoutAttributes
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSublayoutComposition invalidateSublayoutAttributes]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXGSublayoutComposition.m" lineNumber:126 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 1uLL;
}

- (void)updateEstimate
{
  sublayoutDataStore = [(PXGSublayoutComposition *)self sublayoutDataStore];
  -[PXGSublayoutComposition setLastSublayoutDataStoreVersion:](self, "setLastSublayoutDataStoreVersion:", [sublayoutDataStore version]);

  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSublayoutComposition updateEstimate]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGSublayoutComposition.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = self->_updateFlags.needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 1;
    if (needsUpdate)
    {
      self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGSublayoutComposition *)self updateSublayoutAttributes];
      if (!self->_updateFlags.isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSublayoutComposition updateEstimate]"];
        [currentHandler2 handleFailureInFunction:v9 file:@"PXGSublayoutComposition.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = self->_updateFlags.needsUpdate;
    self->_updateFlags.updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      self->_updateFlags.needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXGSublayoutComposition *)self updateEstimatedSublayoutGeometries];
      v5 = self->_updateFlags.needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    if (v5)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSublayoutComposition updateEstimate]"];
      [currentHandler3 handleFailureInFunction:v10 file:@"PXGSublayoutComposition.m" lineNumber:122 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }
  }
}

- (void)enumerateSublayoutProvidersForRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v9 = location + length;
  sublayoutDataStore = [(PXGSublayoutComposition *)self sublayoutDataStore];
  v11 = [sublayoutDataStore count];

  if ((location + length) > v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutComposition.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"rangeMax <= self.sublayoutDataStore.count"}];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__PXGSublayoutComposition_enumerateSublayoutProvidersForRange_usingBlock___block_invoke;
  v21[3] = &unk_2782A7F60;
  v23 = &v26;
  v24 = &v30;
  v21[4] = self;
  v25 = a2;
  v12 = blockCopy;
  v22 = v12;
  v13 = MEMORY[0x21CEE40A0](v21);
  sublayoutDataStore2 = [(PXGSublayoutComposition *)self sublayoutDataStore];
  infos = [sublayoutDataStore2 infos];

  if (location < v9)
  {
    v16 = v31;
    v17 = v27;
    v18 = (infos + 16 * location + 8);
    while (1)
    {
      v19 = *v18;
      if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }

      if (v19 != v17[3])
      {
        break;
      }

LABEL_9:
      ++location;
      v18 += 2;
      if (!--length)
      {
        goto LABEL_10;
      }
    }

    v13[2](v13, location);
    v16 = v31;
    v17 = v27;
LABEL_8:
    v16[3] = location;
    v17[3] = v19;
    goto LABEL_9;
  }

LABEL_10:
  v13[2](v13, v9);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

void __74__PXGSublayoutComposition_enumerateSublayoutProvidersForRange_usingBlock___block_invoke(void *a1)
{
  v2 = *(*(a1[6] + 8) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    [v3 handleFailureInMethod:a1[8] object:a1[4] file:@"PXGSublayoutComposition.m" lineNumber:90 description:@"sublayout composition currently only works with sublayout providers"];
  }

  (*(a1[5] + 16))();
}

- (UIEdgeInsets)sublayoutInsetsForStylableType:(int64_t)type
{
  v3 = *MEMORY[0x277D3CF90];
  v4 = *(MEMORY[0x277D3CF90] + 8);
  v5 = *(MEMORY[0x277D3CF90] + 16);
  v6 = *(MEMORY[0x277D3CF90] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- ($7C531AF6E50BD019A4D1760C681E3492)sublayoutGeometries
{
  sublayoutDataStore = [(PXGSublayoutComposition *)self sublayoutDataStore];
  geometries = [sublayoutDataStore geometries];

  return geometries;
}

- (int64_t)numberOfSublayouts
{
  sublayoutDataStore = [(PXGSublayoutComposition *)self sublayoutDataStore];
  v3 = [sublayoutDataStore count];

  return v3;
}

- (void)setLastSublayoutDataStoreVersion:(int64_t)version
{
  if (self->_lastSublayoutDataStoreVersion != version)
  {
    self->_lastSublayoutDataStoreVersion = version;
    [(PXGSublayoutComposition *)self invalidateSublayoutAttributes];

    [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
  }
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_visibleRect))
  {
    self->_visibleRect.origin.x = x;
    self->_visibleRect.origin.y = y;
    self->_visibleRect.size.width = width;
    self->_visibleRect.size.height = height;

    [(PXGSublayoutComposition *)self visibleRectDidChange];
  }
}

- (void)setReferenceSize:(CGSize)size
{
  if (size.width != self->_referenceSize.width || size.height != self->_referenceSize.height)
  {
    self->_referenceSize = size;
    [(PXGSublayoutComposition *)self referenceSizeDidChange];
  }
}

- (PXGLayout)layout
{
  compositeLayout = [(PXGSublayoutComposition *)self compositeLayout];
  if (!compositeLayout)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutComposition.m" lineNumber:31 description:{@"missing layout on %@", self}];
  }

  return compositeLayout;
}

@end