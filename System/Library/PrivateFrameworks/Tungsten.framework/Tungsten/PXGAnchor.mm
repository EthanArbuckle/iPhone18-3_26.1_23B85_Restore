@interface PXGAnchor
- (BOOL)canBeReused;
- (CGPoint)normalizedAnchorPoint;
- (CGPoint)visibleLocation;
- (CGRect)adjustVisibleRect:(CGRect)rect;
- (CGRect)visibleRect;
- (CGSize)contentSize;
- (NSString)description;
- (NSString)diagnosticDescription;
- (PXGAnchor)init;
- (PXGAnchor)initWithLayout:(id)layout;
- (PXGAnchorDelegate)delegate;
- (PXGLayout)layout;
- (UIEdgeInsets)padding;
- (id)copyWithLayout:(id)layout;
- (unint64_t)anchoredContentEdges;
- (unsigned)anchoredSpriteIndexInLayout:(id)layout;
- (void)_enumerateSpriteConstraintsUsingBlock:(id)block;
- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)details appliedToLayout:(id)layout;
- (void)enumerateAllSpriteReferencesUsingBlock:(id)block;
- (void)enumerateSpritesWithEnumerationOptions:(unint64_t)options referencingOptions:(unint64_t)referencingOptions usingBlock:(id)block;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
@end

@implementation PXGAnchor

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)invalidate
{
  layout = [(PXGAnchor *)self layout];
  [layout removeAnchor:self];
}

- (unint64_t)anchoredContentEdges
{
  if (([(PXGAnchor *)self type]- 3) > 2)
  {
    return 0;
  }

  return [(PXGAnchor *)self edges];
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)normalizedAnchorPoint
{
  x = self->_normalizedAnchorPoint.x;
  y = self->_normalizedAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)visibleLocation
{
  x = self->_visibleLocation.x;
  y = self->_visibleLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
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

- (PXGAnchorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  priority = [(PXGAnchor *)self priority];
  v7 = @"unknown";
  v8 = @"Default";
  if (priority != 1)
  {
    v8 = @"unknown";
  }

  if (!priority)
  {
    v8 = @"Low";
  }

  v9 = v8;
  type = [(PXGAnchor *)self type];
  if (type <= 5)
  {
    v7 = off_2782A8D10[type];
  }

  v11 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_layout);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = objc_loadWeakRetained(&self->_layout);
  [(PXGAnchor *)self visibleRect];
  v16 = NSStringFromCGRect(v35);
  [(PXGAnchor *)self contentSize];
  v17 = NSStringFromCGSize(v34);
  v18 = [v3 initWithFormat:@"<%@: %p, priority=%@ type=%@ layout=<%@: %p>\n\tvisibleRect=%@ contentSize=%@\n", v5, self, v9, v11, v14, v15, v16, v17];

  spriteReferences = [(PXGAnchor *)self spriteReferences];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __34__PXGAnchor_diagnosticDescription__block_invoke;
  v32[3] = &unk_2782A8BB8;
  v20 = v18;
  v33 = v20;
  [spriteReferences enumerateObjectsUsingBlock:v32];

  constraints = [(PXGAnchor *)self constraints];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __34__PXGAnchor_diagnosticDescription__block_invoke_2;
  v30[3] = &unk_2782A8BE0;
  v22 = v20;
  v31 = v22;
  [constraints enumerateObjectsUsingBlock:v30];

  spriteRects = [(PXGAnchor *)self spriteRects];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __34__PXGAnchor_diagnosticDescription__block_invoke_3;
  v28[3] = &unk_2782A8C08;
  v24 = v22;
  v29 = v24;
  [spriteRects enumerateObjectsUsingBlock:v28];

  [v24 appendString:@">"];
  v25 = v29;
  v26 = v24;

  return v24;
}

- (void)_enumerateSpriteConstraintsUsingBlock:(id)block
{
  blockCopy = block;
  layout = [(PXGAnchor *)self layout];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__5627;
  v23[4] = __Block_byref_object_dispose__5628;
  v24 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x4010000000;
  v17[3] = "";
  v18 = 0u;
  v19 = 0u;
  constraints = [(PXGAnchor *)self constraints];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__PXGAnchor__enumerateSpriteConstraintsUsingBlock___block_invoke;
  v9[3] = &unk_2782A8B90;
  v13 = v23;
  v14 = v22;
  v15 = v20;
  v16 = v17;
  v7 = layout;
  v10 = v7;
  selfCopy = self;
  v8 = blockCopy;
  v12 = v8;
  [constraints enumerateObjectsUsingBlock:v9];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
}

void __51__PXGAnchor__enumerateSpriteConstraintsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v5 = [v29 spriteReference];
  if (v5)
  {
    v6 = [v29 referencingOptions];
    v7 = v6;
    if (v5 == *(*(*(a1 + 56) + 8) + 40) && v6 == *(*(*(a1 + 64) + 8) + 24))
    {
      v8 = *(*(a1 + 80) + 8);
      v9 = v8[4];
      v10 = v8[5];
      v11 = v8[6];
      v12 = v8[7];
    }

    else
    {
      v13 = [*(a1 + 32) spriteIndexForSpriteReference:v5 options:v6];
      if (v13 == -1)
      {
        v9 = *MEMORY[0x277CBF398];
        v10 = *(MEMORY[0x277CBF398] + 8);
        v11 = *(MEMORY[0x277CBF398] + 16);
        v12 = *(MEMORY[0x277CBF398] + 24);
      }

      else
      {
        [*(a1 + 32) anchoringRectForSpriteAtIndex:v13];
        v9 = v14;
        v10 = v15;
        v11 = v16;
        v12 = v17;
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
      *(*(*(a1 + 64) + 8) + 24) = v7;
      *(*(*(a1 + 72) + 8) + 24) = v13;
      v18 = *(*(a1 + 80) + 8);
      v18[4] = v9;
      v18[5] = v10;
      v18[6] = v11;
      v18[7] = v12;
    }

    v31.origin.x = v9;
    v31.origin.y = v10;
    v31.size.width = v11;
    v31.size.height = v12;
    if (!CGRectIsNull(v31))
    {
      v19 = [*(a1 + 40) spriteRects];
      v20 = [v19 objectAtIndexedSubscript:a3];
      [v20 CGRectValue];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      (*(*(a1 + 48) + 16))(v22, v24, v26, v28, v9, v10, v11, v12);
    }
  }
}

- (void)enumerateSpritesWithEnumerationOptions:(unint64_t)options referencingOptions:(unint64_t)referencingOptions usingBlock:(id)block
{
  blockCopy = block;
  layout = [(PXGAnchor *)self layout];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__PXGAnchor_enumerateSpritesWithEnumerationOptions_referencingOptions_usingBlock___block_invoke;
  v10[3] = &unk_2782A8B68;
  v11 = layout;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = layout;
  [(PXGAnchor *)self enumerateAllSpriteReferencesUsingBlock:v10];
}

uint64_t __82__PXGAnchor_enumerateSpritesWithEnumerationOptions_referencingOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  result = [*(a1 + 32) spriteIndexForSpriteReference:a2 options:a3];
  if (result != -1)
  {
    v17 = *(*(a1 + 40) + 16);
    v13.n128_f64[0] = a4;
    v14.n128_f64[0] = a5;
    v15.n128_f64[0] = a6;
    v16.n128_f64[0] = a7;

    return v17(v13, v14, v15, v16);
  }

  return result;
}

- (id)copyWithLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [objc_alloc(objc_opt_class()) initWithLayout:layoutCopy];
  *(v5 + 40) = self->_type;
  *(v5 + 48) = self->_priority;
  origin = self->_visibleRect.origin;
  *(v5 + 184) = self->_visibleRect.size;
  *(v5 + 168) = origin;
  *(v5 + 120) = self->_contentSize;
  v22 = layoutCopy;
  v7 = PXMap();
  v8 = [v7 copy];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v21 = MEMORY[0x277D85DD0];
  v10 = v22;
  v11 = PXMap();
  v12 = [v11 copy];
  v13 = *(v5 + 104);
  *(v5 + 104) = v12;

  v14 = [self->_customOffset copy];
  v15 = *(v5 + 112);
  *(v5 + 112) = v14;

  v16 = [(NSArray *)self->_spriteRects copy];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  *(v5 + 72) = self->_referencingOptions;
  *(v5 + 80) = self->_edges;
  v18 = *&self->_padding.top;
  *(v5 + 216) = *&self->_padding.bottom;
  *(v5 + 200) = v18;
  *(v5 + 88) = self->_scrollPosition;
  objc_storeStrong((v5 + 96), self->_date);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak((v5 + 16), WeakRetained);

  objc_storeStrong((v5 + 24), self->_context);
  *(v5 + 8) = self->_delegateRespondsTo.visibleRectOriginForProposedVisibleRectForLayout;
  *(v5 + 136) = self->_visibleLocation;
  *(v5 + 152) = self->_normalizedAnchorPoint;

  return v5;
}

id __28__PXGAnchor_copyWithLayout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 spriteReference];
  if (v4)
  {
    v5 = [v3 copy];

    v6 = [*(a1 + 32) spriteReferenceForSpriteReference:v4];
    [v5 setSpriteReference:v6];

    v3 = v5;
  }

  return v3;
}

- (void)enumerateAllSpriteReferencesUsingBlock:(id)block
{
  blockCopy = block;
  spriteReferences = [(PXGAnchor *)self spriteReferences];
  constraints = [(PXGAnchor *)self constraints];
  if ([spriteReferences count] && objc_msgSend(constraints, "count"))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAnchor.m" lineNumber:511 description:{@"an anchor (%@) cannot have both spriteReferences (%@) and constraints (%@)", self, spriteReferences, constraints}];
  }

  spriteRects = [(PXGAnchor *)self spriteRects];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__PXGAnchor_enumerateAllSpriteReferencesUsingBlock___block_invoke;
  v26[3] = &unk_2782A8AA0;
  v9 = spriteRects;
  v27 = v9;
  v10 = MEMORY[0x21CEE40A0](v26);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__PXGAnchor_enumerateAllSpriteReferencesUsingBlock___block_invoke_2;
  v20[3] = &unk_2782A8AC8;
  v11 = blockCopy;
  v20[4] = self;
  v21 = v11;
  v12 = v10;
  v22 = v12;
  v23 = v24;
  [spriteReferences enumerateObjectsUsingBlock:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__PXGAnchor_enumerateAllSpriteReferencesUsingBlock___block_invoke_3;
  v16[3] = &unk_2782A8AF0;
  v13 = v11;
  v17 = v13;
  v14 = v12;
  v18 = v14;
  v19 = v24;
  [constraints enumerateObjectsUsingBlock:v16];

  _Block_object_dispose(v24, 8);
}

double __52__PXGAnchor_enumerateAllSpriteReferencesUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return *MEMORY[0x277CBF398];
  }

  v3 = [v2 objectAtIndexedSubscript:a2];
  [v3 CGRectValue];
  v5 = v4;

  return v5;
}

void __52__PXGAnchor_enumerateAllSpriteReferencesUsingBlock___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v6 = a1[5];
  v8 = a2;
  v9 = [v7 referencingOptions];
  (*(a1[6] + 16))();
  (*(v6 + 16))(v6, v8, v9, *(a1[7] + 8) + 24);

  *a4 = *(*(a1[7] + 8) + 24);
}

void __52__PXGAnchor_enumerateAllSpriteReferencesUsingBlock___block_invoke_3(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 spriteReference];
  if (v6)
  {
    v7 = a1[4];
    v8 = [v9 referencingOptions];
    (*(a1[5] + 16))();
    (*(v7 + 16))(v7, v6, v8, *(a1[6] + 8) + 24);
    *a4 = *(*(a1[6] + 8) + 24);
  }
}

- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)details appliedToLayout:(id)layout
{
  detailsCopy = details;
  layoutCopy = layout;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5627;
  v26 = __Block_byref_object_dispose__5628;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __76__PXGAnchor_adjustReferencedSpriteIndexesWithChangeDetails_appliedToLayout___block_invoke;
  v13 = &unk_2782A8A78;
  v16 = &v22;
  v8 = detailsCopy;
  v14 = v8;
  v9 = layoutCopy;
  v15 = v9;
  v17 = &v18;
  [(PXGAnchor *)self enumerateAllSpriteReferencesUsingBlock:&v10];
  if ([v23[5] count] && (v19[3] & 1) == 0)
  {
    [(PXGAnchor *)self invalidate];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __76__PXGAnchor_adjustReferencedSpriteIndexesWithChangeDetails_appliedToLayout___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[6] + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(a1[6] + 8) + 40);
  }

  if (([v4 containsObject:v3] & 1) == 0)
  {
    [v8 adjustReferencedSpriteIndexesWithChangeDetails:a1[4] appliedToLayout:a1[5]];
    *(*(a1[7] + 8) + 24) |= [v8 isValid];
    [*(*(a1[6] + 8) + 40) addObject:v8];
  }
}

- (unsigned)anchoredSpriteIndexInLayout:(id)layout
{
  layoutCopy = layout;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  type = [(PXGAnchor *)self type];
  if (type == 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__PXGAnchor_anchoredSpriteIndexInLayout___block_invoke;
    v11[3] = &unk_2782A8A28;
    v11[4] = &v12;
    [(PXGAnchor *)self _enumerateSpriteConstraintsUsingBlock:v11];
  }

  else if (type == 2)
  {
    referencingOptions = [(PXGAnchor *)self referencingOptions];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__PXGAnchor_anchoredSpriteIndexInLayout___block_invoke_2;
    v10[3] = &unk_2782A8A50;
    v10[4] = &v12;
    [(PXGAnchor *)self enumerateSpritesWithEnumerationOptions:0 referencingOptions:referencingOptions usingBlock:v10];
  }

  v7 = *(v13 + 6);
  layout = [(PXGAnchor *)self layout];
  LODWORD(v7) = [layoutCopy convertSpriteIndex:v7 fromLayout:layout];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __41__PXGAnchor_anchoredSpriteIndexInLayout___block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a4 = 1;
  return result;
}

uint64_t __41__PXGAnchor_anchoredSpriteIndexInLayout___block_invoke_2(uint64_t result, int a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a3 = 1;
  return result;
}

- (CGRect)adjustVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  rect = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3010000000;
  v109 = "";
  v110 = *MEMORY[0x277CBF348];
  layout = [(PXGAnchor *)self layout];
  if (([(PXGAnchor *)self scrollPosition]& 0x100) != 0)
  {
    v74 = *(MEMORY[0x277D3CF90] + 8);
    v75 = *MEMORY[0x277D3CF90];
  }

  else
  {
    [layout safeAreaInsets];
    v74 = v10;
    v75 = v9;
  }

  [(PXGAnchor *)self padding];
  PXEdgeInsetsAdd();
  PXEdgeInsetsInsetRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  type = [(PXGAnchor *)self type];
  if (type > 2)
  {
    if (type != 3)
    {
      if (type != 4)
      {
        goto LABEL_22;
      }

      edges = [(PXGAnchor *)self edges];
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __31__PXGAnchor_adjustVisibleRect___block_invoke_5;
      v78[3] = &unk_2782A8A00;
      v81 = a2;
      v82 = edges;
      v78[4] = self;
      v80 = &v106;
      v79 = layout;
      v83 = v12;
      v84 = v14;
      v85 = v16;
      v86 = v18;
      v23 = MEMORY[0x21CEE40A0](v78);
      v23[2](v23, 1);
      v23[2](v23, 2);

      v21 = v79;
      goto LABEL_11;
    }

    v24 = height;
    edges2 = [(PXGAnchor *)self edges];
    if (edges2)
    {
      [(PXGAnchor *)self visibleRect];
      MinY = CGRectGetMinY(v111);
      v112.origin.x = x;
      v112.origin.y = y;
      v112.size.width = rect;
      v112.size.height = height;
      v107[5] = MinY - CGRectGetMinY(v112);
    }

    if ((edges2 & 2) != 0)
    {
      [(PXGAnchor *)self visibleRect];
      MinX = CGRectGetMinX(v113);
      v114.origin.x = x;
      v114.origin.y = y;
      v114.size.width = rect;
      v114.size.height = height;
      v107[4] = MinX - CGRectGetMinX(v114);
    }

    if ((edges2 & 4) != 0)
    {
      [layout contentSize];
      v29 = v28;
      v115.origin.x = x;
      v115.origin.y = y;
      v115.size.width = rect;
      v115.size.height = height;
      MaxY = CGRectGetMaxY(v115);
      [(PXGAnchor *)self contentSize];
      v32 = v31;
      [(PXGAnchor *)self visibleRect];
      v107[5] = v29 - MaxY - v32 + CGRectGetMaxY(v116);
    }

    height = v24;
    if ((edges2 & 8) != 0)
    {
      [layout contentSize];
      v34 = v33;
      v117.origin.x = x;
      v117.origin.y = y;
      v117.size.width = rect;
      v117.size.height = v24;
      MaxX = CGRectGetMaxX(v117);
      [(PXGAnchor *)self contentSize];
      v37 = v36;
      [(PXGAnchor *)self visibleRect];
      v107[4] = v34 - MaxX - v37 + CGRectGetMaxX(v118);
      height = v24;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        [(PXGAnchor *)self visibleRect];
        v104[0] = 0;
        v104[1] = v104;
        v104[2] = 0x2020000000;
        v105 = 0;
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __31__PXGAnchor_adjustVisibleRect___block_invoke;
        v103[3] = &unk_2782A8988;
        v103[4] = v104;
        v103[5] = &v106;
        *&v103[6] = x;
        *&v103[7] = y;
        *&v103[8] = rect;
        *&v103[9] = height;
        v103[10] = v38;
        v103[11] = v39;
        v103[12] = v40;
        v103[13] = v41;
        v103[14] = v12;
        v103[15] = v14;
        v103[16] = v16;
        v103[17] = v18;
        [(PXGAnchor *)self _enumerateSpriteConstraintsUsingBlock:v103];
        _Block_object_dispose(v104, 8);
        break;
      case 2:
        referencingOptions = [(PXGAnchor *)self referencingOptions];
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __31__PXGAnchor_adjustVisibleRect___block_invoke_3;
        v87[3] = &unk_2782A89D8;
        v88 = layout;
        selfCopy = self;
        v91 = v12;
        v92 = v14;
        v93 = v16;
        v94 = v18;
        v90 = &v106;
        v95 = x;
        v96 = y;
        rectCopy = rect;
        v98 = height;
        v99 = x;
        v100 = y;
        rectCopy2 = rect;
        v102 = height;
        [(PXGAnchor *)self enumerateSpritesWithEnumerationOptions:0 referencingOptions:referencingOptions usingBlock:v87];
        v21 = v88;
LABEL_11:

        break;
      case 0:
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAnchor.m" lineNumber:190 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

LABEL_22:
  PXPointApproximatelyEqualToPoint();
  PXPointAdd();
  v43 = v42;
  v45 = v44;
  if (self->_delegateRespondsTo.visibleRectOriginForProposedVisibleRectForLayout)
  {
    delegate = [(PXGAnchor *)self delegate];
    [delegate anchor:self visibleRectOriginForProposedVisibleRect:layout forLayout:{v43, v45, rect, height}];
    v43 = v47;
    v45 = v48;
  }

  superlayout = [layout superlayout];
  if (superlayout)
  {

LABEL_27:
    v50 = v45;
    v51 = v43;
    goto LABEL_28;
  }

  if ([(PXGAnchor *)self isScrollingAnimationAnchor])
  {
    goto LABEL_27;
  }

  [layout scrollableAxis];
  PXEdgesForAxis();
  PXEdgeInsetsForEdges();
  v73 = height;
  PXEdgeInsetsInsetRect();
  v56 = v119.origin.y;
  width = v119.size.width;
  v58 = v119.size.height;
  v72 = v119.origin.x;
  v59 = CGRectGetMaxY(v119);
  [layout contentSize];
  v61 = v60;
  v120.origin.x = v72;
  v120.origin.y = v56;
  v120.size.width = width;
  v120.size.height = v58;
  v62 = CGRectGetMinY(v120);
  v71 = v58;
  v63 = width;
  if (v59 - v61 <= 0.0)
  {
    v64 = v56;
    v50 = v45;
    v51 = v43;
    if (v62 < 0.0)
    {
      v65 = -v62;
      v123.origin.x = v43;
      v123.origin.y = v45;
      v123.size.width = rect;
      v123.size.height = v73;
      v124 = CGRectOffset(v123, 0.0, v65);
      rect = v124.size.width;
      v73 = v124.size.height;
      v51 = v124.origin.x;
      v50 = v124.origin.y;
    }
  }

  else
  {
    v121.origin.x = v43;
    v121.origin.y = v45;
    v121.size.width = rect;
    v121.size.height = v73;
    v122 = CGRectOffset(v121, 0.0, -(v59 - v61));
    rect = v122.size.width;
    v73 = v122.size.height;
    v51 = v122.origin.x;
    v64 = v56;
    if (v122.origin.y >= -v75)
    {
      v50 = v122.origin.y;
    }

    else
    {
      v50 = -v75;
    }
  }

  v125.origin.x = v72;
  v125.origin.y = v64;
  v125.size.width = v63;
  v125.size.height = v71;
  v76 = CGRectGetMinX(v125);
  v126.origin.x = v72;
  v126.origin.y = v64;
  v126.size.width = v63;
  v126.size.height = v71;
  v66 = CGRectGetMaxX(v126);
  [layout contentSize];
  v68 = v66 - v67;
  if (v68 <= 0.0)
  {
    height = v73;
    if (v76 < 0.0)
    {
      v129.origin.x = v51;
      v129.origin.y = v50;
      v129.size.width = rect;
      v129.size.height = v73;
      v130 = CGRectOffset(v129, -v76, 0.0);
      rect = v130.size.width;
      v51 = v130.origin.x;
      v50 = v130.origin.y;
      height = v130.size.height;
    }
  }

  else
  {
    v69 = -v68;
    v127.origin.x = v51;
    v127.origin.y = v50;
    v127.size.width = rect;
    v127.size.height = v73;
    v128 = CGRectOffset(v127, v69, 0.0);
    rect = v128.size.width;
    v50 = v128.origin.y;
    height = v128.size.height;
    if (v128.origin.x >= -v74)
    {
      v51 = v128.origin.x;
    }

    else
    {
      v51 = -v74;
    }
  }

  PXPointSubtract();
  PXPointApproximatelyEqualToPoint();
LABEL_28:

  _Block_object_dispose(&v106, 8);
  v52 = v51;
  v53 = v50;
  rectCopy3 = rect;
  v55 = height;
  result.size.height = v55;
  result.size.width = rectCopy3;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

void __31__PXGAnchor_adjustVisibleRect___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  v19 = a2;
  v20 = [v19 inequality];
  if (v20)
  {
    [v19 inequality];
    [v19 spriteEdge];
    PXRectEdgeValue();
    [v19 visibleRectEdge];
    PXRectEdgeValue();
    [v19 offset];
    PXRectEdgeAxis();
    PXPointValueForAxis();
    PXPointSetValueForAxis();
LABEL_10:
    *(*(*(a1 + 32) + 8) + 24) |= v20 == 0;
    goto LABEL_11;
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __31__PXGAnchor_adjustVisibleRect___block_invoke_2;
    v47[3] = &unk_2782A8960;
    v21 = v19;
    v48 = v21;
    v22 = MEMORY[0x21CEE40A0](v47);
    if ([v21 visiblePortionOnly])
    {
      [v21 padding];
      PXEdgeInsetsInsetRect();
      v51.origin.x = v23;
      v51.origin.y = v24;
      v51.size.width = v25;
      v51.size.height = v26;
      v49.origin.x = a3;
      v49.origin.y = a4;
      v49.size.width = a5;
      v49.size.height = a6;
      v50 = CGRectIntersection(v49, v51);
      v45 = a5;
      v46 = a6;
      x = v50.origin.x;
      y = v50.origin.y;
      v43 = a3;
      v44 = a4;
      width = v50.size.width;
      height = v50.size.height;
      if (CGRectIsEmpty(v50))
      {
        x = v43;
        y = v44;
        width = v45;
        height = v46;
      }

      v31 = v22 + 2;
      v22[2](v22, a7, a8, a9, a10);
      v22[2](v22, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
      PXPointSubtract();
      v32.n128_f64[0] = x;
      v33.n128_f64[0] = y;
      v34.n128_f64[0] = width;
      v35.n128_f64[0] = height;
      (v22[2])(v22, v32, v33, v34, v35);
    }

    else
    {
      v31 = v22 + 2;
      v22[2](v22, a7, a8, a9, a10);
      v22[2](v22, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
      PXPointSubtract();
      v36.n128_f64[0] = a3;
      v37.n128_f64[0] = a4;
      v38.n128_f64[0] = a5;
      v39.n128_f64[0] = a6;
      (v22[2])(v22, v36, v37, v38, v39);
    }

    (*v31)(v22, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
    PXPointSubtract();
    PXPointSubtract();
    v40 = *(*(a1 + 40) + 8);
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;

    goto LABEL_10;
  }

LABEL_11:
}

void __31__PXGAnchor_adjustVisibleRect___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) anchoringRectForSpriteAtIndex:a2];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 40) scrollPosition];
  if ((v13 & 0x80) != 0)
  {
    if (v12 > *(a1 + 80) * 0.5)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  [*(a1 + 40) visibleLocation];
  if ((PXPointIsNull() & 1) == 0)
  {
    [*(a1 + 40) normalizedAnchorPoint];
    PXPointDenormalize();
    v18 = v17 - *(a1 + 96);
    [*(a1 + 40) visibleLocation];
    *(*(*(a1 + 48) + 8) + 40) = v18 - v19;
    goto LABEL_23;
  }

  if (v13)
  {
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    MinY = CGRectGetMinY(v38);
    MidY = CGRectGetMinY(*(a1 + 56));
    goto LABEL_15;
  }

  if ((v13 & 2) != 0)
  {
    v39.origin.x = v6;
    v39.origin.y = v8;
    v39.size.width = v10;
    v39.size.height = v12;
    MinY = CGRectGetMidY(v39);
    MidY = CGRectGetMidY(*(a1 + 56));
    goto LABEL_15;
  }

  if ((v13 & 4) != 0)
  {
    v40.origin.x = v6;
    v40.origin.y = v8;
    v40.size.width = v10;
    v40.size.height = v12;
    MinY = CGRectGetMaxY(v40);
    MidY = CGRectGetMaxY(*(a1 + 56));
LABEL_15:
    *(*(*(a1 + 48) + 8) + 40) = MinY - MidY;
    v14 = 1;
    if ((v13 & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v14 = 0;
  if ((v13 & 8) != 0)
  {
LABEL_10:
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = v10;
    v37.size.height = v12;
    MinX = CGRectGetMinX(v37);
    MidX = CGRectGetMinX(*(a1 + 56));
LABEL_22:
    *(*(*(a1 + 48) + 8) + 32) = MinX - MidX;
    goto LABEL_23;
  }

LABEL_16:
  if ((v13 & 0x10) != 0)
  {
    v42.origin.x = v6;
    v42.origin.y = v8;
    v42.size.width = v10;
    v42.size.height = v12;
    MinX = CGRectGetMidX(v42);
    MidX = CGRectGetMidX(*(a1 + 56));
    goto LABEL_22;
  }

  if ((v13 & 0x20) != 0)
  {
    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v10;
    v43.size.height = v12;
    MinX = CGRectGetMaxX(v43);
    MidX = CGRectGetMaxX(*(a1 + 56));
    goto LABEL_22;
  }

  if ((v14 & 1) == 0)
  {
    v45.origin.x = v6;
    v45.origin.y = v8;
    v45.size.width = v10;
    v45.size.height = v12;
    v41 = CGRectIntersection(*(a1 + 56), v45);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __31__PXGAnchor_adjustVisibleRect___block_invoke_4;
    v27[3] = &unk_2782A89B0;
    v28 = v41;
    v29 = v6;
    v30 = v8;
    v31 = v10;
    v32 = v12;
    v41.origin = *(a1 + 72);
    v33 = *(a1 + 56);
    origin = v41.origin;
    v35 = 0x3FE6666666666666;
    v36 = v13;
    v27[4] = *(a1 + 48);
    v22 = MEMORY[0x21CEE40A0](v27);
    v22[2](v22, 1);
    v22[2](v22, 2);
  }

LABEL_23:
  v23 = [*(a1 + 40) customOffset];
  if (v23)
  {
    v44 = CGRectOffset(*(a1 + 120), *(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40));
    v23[2](v23, *(a1 + 32), v44.origin, *&v44.origin.y, v44.size, *&v44.size.height);
    PXPointAdd();
    v24 = *(*(a1 + 48) + 8);
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
  }

  *a3 = 1;
}

uint64_t __31__PXGAnchor_adjustVisibleRect___block_invoke_5(uint64_t result, uint64_t a2)
{
  v2 = result;
  switch(a2)
  {
    case 1:
      v3 = 4;
      goto LABEL_7;
    case 2:
      v3 = 8;
LABEL_7:
      v4 = a2;
      goto LABEL_8;
    case 0:
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:*(v2 + 56) object:*(v2 + 32) file:@"PXGAnchor.m" lineNumber:339 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v3 = 0;
  v4 = 0;
LABEL_8:
  v5 = *(result + 64);
  if (((v4 | v3) & ~v5) != 0)
  {
    if ((v5 & v4) != 0)
    {
      PXRectGetMinForAxis();
    }

    else
    {
      if ((v5 & v3) == 0)
      {
        return result;
      }

      [*(result + 40) contentSize];
      PXSizeValueForAxis();
      PXRectGetMaxForAxis();
    }
  }

  else
  {
    [*(result + 40) contentSize];
    PXSizeValueForAxis();
    PXRectGetMidForAxis();
  }

  return PXPointSetValueForAxis();
}

uint64_t __31__PXGAnchor_adjustVisibleRect___block_invoke_4(uint64_t a1)
{
  PXRectGetLengthForAxis();
  v3 = v2;
  result = PXRectGetLengthForAxis();
  v6 = v3 / v5;
  if ((*(a1 + 96) <= *(a1 + 128) || v6 <= 0.1) && v6 < *(a1 + 136))
  {
    if (v6 < 0.01 && (*(a1 + 144) & 0x40) != 0)
    {
      PXRectGetMidForAxis();
      PXRectGetMidForAxis();
    }

    else
    {
      PXRectGetMidForAxis();
      v8 = v7;
      PXRectGetMidForAxis();
      if (v8 > v9)
      {
        PXRectGetMaxForAxis();
        PXRectGetMaxForAxis();
        PXPointSetValueForAxis();
        PXPointValueForAxis();
      }

      PXRectGetMinForAxis();
      PXRectGetMinForAxis();
    }

    return PXPointSetValueForAxis();
  }

  return result;
}

double __31__PXGAnchor_adjustVisibleRect___block_invoke_2(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [*(a1 + 32) spriteAttribute];
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v20.origin.x = a2;
      v20.origin.y = a3;
      v20.size.width = a4;
      v20.size.height = a5;
      MidX = CGRectGetMidX(v20);
      goto LABEL_12;
    }

    if (v9 == 2)
    {
      v16.origin.x = a2;
      v16.origin.y = a3;
      v16.size.width = a4;
      v16.size.height = a5;
      v10 = CGRectGetMidX(v16);
      v17.origin.x = a2;
      v17.origin.y = a3;
      v17.size.width = a4;
      v17.size.height = a5;
      CGRectGetMinY(v17);
    }

    else
    {
      v10 = 0.0;
      if (!v9)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGPoint _PXGAnchoredPointInRectForSpriteAttribute(CGRect, PXGSpriteAttribute)"}];
        [v13 handleFailureInFunction:v14 file:@"PXGAnchor.m" lineNumber:88 description:@"Code which should be unreachable has been reached"];

        abort();
      }
    }
  }

  else if (v9 == 3)
  {
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    v10 = CGRectGetMidX(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetMaxY(v19);
  }

  else
  {
    if (v9 == 4)
    {
      v21.origin.x = a2;
      v21.origin.y = a3;
      v21.size.width = a4;
      v21.size.height = a5;
      MidX = CGRectGetMinX(v21);
      goto LABEL_12;
    }

    v10 = 0.0;
    if (v9 == 5)
    {
      v15.origin.x = a2;
      v15.origin.y = a3;
      v15.size.width = a4;
      v15.size.height = a5;
      MidX = CGRectGetMaxX(v15);
LABEL_12:
      v10 = MidX;
      v22.origin.x = a2;
      v22.origin.y = a3;
      v22.size.width = a4;
      v22.size.height = a5;
      CGRectGetMidY(v22);
    }
  }

  return v10;
}

- (BOOL)canBeReused
{
  date = [(PXGAnchor *)self date];
  [date timeIntervalSinceNow];
  v5 = v4;

  if (v5 > 0.0 || v5 <= -120.0)
  {
    v7 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __24__PXGAnchor_canBeReused__block_invoke;
    v9[3] = &unk_2782A8938;
    v9[4] = &v14;
    v9[5] = &v10;
    [(PXGAnchor *)self enumerateAllSpriteReferencesUsingBlock:v9];
    if (v11[3])
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v15 + 24) ^ 1;
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }

  return v7 & 1;
}

uint64_t __24__PXGAnchor_canBeReused__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  result = [a2 hasObjectReference];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (NSString)description
{
  v23 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v24 = NSStringFromClass(v3);
  v4 = @"unknown";
  v5 = @"Default";
  type = self->_type;
  priority = self->_priority;
  if (priority != 1)
  {
    v5 = @"unknown";
  }

  if (!priority)
  {
    v5 = @"Low";
  }

  v22 = v5;
  if (type <= 5)
  {
    v4 = off_2782A8D10[type];
  }

  v8 = v4;
  [(PXGAnchor *)self visibleRect];
  v9 = NSStringFromCGRect(v26);
  WeakRetained = objc_loadWeakRetained(&self->_layout);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = objc_loadWeakRetained(&self->_layout);
  constraints = [(PXGAnchor *)self constraints];
  v14 = [constraints componentsJoinedByString:{@", \n"}];
  spriteReferences = [(PXGAnchor *)self spriteReferences];
  v16 = [spriteReferences componentsJoinedByString:{@", \n"}];
  v17 = v16;
  v18 = &stru_282C556B8;
  if (v16)
  {
    v18 = v16;
  }

  v19 = [v23 stringWithFormat:@"<%@: %p priority = %@; type = %@; visibleRect = %@; layout = <%@: %p>; constraints = [%@]; spriteReferences = [%@];>", v24, self, v22, v8, v9, v11, v12, v14, v18];;

  return v19;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.visibleRectOriginForProposedVisibleRectForLayout = objc_opt_respondsToSelector() & 1;
  }
}

- (PXGAnchor)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = PXGAnchor;
  v5 = [(PXGAnchor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, layoutCopy);
    v6->_priority = 1;
    v6->_visibleLocation = *MEMORY[0x277D3CFB0];
  }

  return v6;
}

- (PXGAnchor)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAnchor.m" lineNumber:121 description:{@"%s is not available as initializer", "-[PXGAnchor init]"}];

  abort();
}

@end