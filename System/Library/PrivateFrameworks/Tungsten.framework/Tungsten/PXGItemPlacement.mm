@interface PXGItemPlacement
- ($6177562B5C23A5BFFBFF2879F53F8C7A)displayedAssetContentsRect;
- ($B30C796585FC215A6CA6704F8BA3D5B6)cornerRadius;
- (CGRect)normalizedDisplayedAssetRect;
- (CGRect)normalizedSubtitleRect;
- (CGRect)normalizedTitleRect;
- (CGRect)rectInCoordinateSpace:(id)a3 velocity:(CGRect *)a4;
- (CGRect)rectInLayout:(id)a3 velocity:(CGRect *)a4;
- (NSString)diagnosticDescription;
- (PXGItemPlacement)adjustedPreferredPlacement;
- (PXGItemPlacement)init;
- (PXGItemPlacement)initWithContext:(id)a3 configuration:(id)a4;
- (PXRegionOfInterest)regionOfInterest;
- (id)copyWithConfiguration:(id)a3;
- (id)copyWithRegionOfInterest:(id)a3;
- (void)adjustPreferredPlacementInSourceWithIdentifier:(id)a3 configuration:(id)a4;
- (void)registerSourceIdentifier:(id)a3;
- (void)setCornerRadius:(id)a3;
- (void)setDisplayedAssetContentsRect:(id *)a3;
- (void)setRect:(CGRect)a3 velocity:(CGRect)a4 inCoordinateSpace:(id)a5;
- (void)setRect:(CGRect)a3 velocity:(CGRect)a4 inLayout:(id)a5;
@end

@implementation PXGItemPlacement

- (CGRect)normalizedSubtitleRect
{
  x = self->_normalizedSubtitleRect.origin.x;
  y = self->_normalizedSubtitleRect.origin.y;
  width = self->_normalizedSubtitleRect.size.width;
  height = self->_normalizedSubtitleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedTitleRect
{
  x = self->_normalizedTitleRect.origin.x;
  y = self->_normalizedTitleRect.origin.y;
  width = self->_normalizedTitleRect.size.width;
  height = self->_normalizedTitleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedDisplayedAssetRect
{
  x = self->_normalizedDisplayedAssetRect.origin.x;
  y = self->_normalizedDisplayedAssetRect.origin.y;
  width = self->_normalizedDisplayedAssetRect.size.width;
  height = self->_normalizedDisplayedAssetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($B30C796585FC215A6CA6704F8BA3D5B6)cornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- ($6177562B5C23A5BFFBFF2879F53F8C7A)displayedAssetContentsRect
{
  v3 = *&self[6].var0.c;
  *&retstr->var0.a = *&self[6].var0.a;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[6].var0.tx;
  return self;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v7 = [WeakRetained diagnosticDescription];
  v8 = PXRectDescription();
  v9 = objc_loadWeakRetained(&self->_coordinateSpace);
  v10 = [v3 initWithFormat:@"<%@: %p, context=%@, rect=%@, coordinateSpace=%@, layout=%@, rectReference=%li>", v5, self, v7, v8, v9, self->_layout, self->_rectReference];

  return v10;
}

- (PXGItemPlacement)adjustedPreferredPlacement
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v4 = [WeakRetained _adjustedPreferredPlacementForPlacement:v2];
  v5 = v4;
  if (v4)
  {
    v2 = v4;
  }

  v6 = v2;

  return v2;
}

- (void)adjustPreferredPlacementInSourceWithIdentifier:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _adjustPreferredPlacementInSourceWithIdentifier:v7 configuration:v6];
}

- (id)copyWithRegionOfInterest:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__PXGItemPlacement_copyWithRegionOfInterest___block_invoke;
  v8[3] = &unk_2782AB3A0;
  v9 = v4;
  v5 = v4;
  v6 = [(PXGItemPlacement *)self copyWithConfiguration:v8];

  return v6;
}

void __45__PXGItemPlacement_copyWithRegionOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 coordinateSpace];
  [*(a1 + 32) rectInCoordinateSpace:v5];
  [v4 setRect:v5 velocity:? inCoordinateSpace:?];
}

- (PXRegionOfInterest)regionOfInterest
{
  v15 = *MEMORY[0x277D85DE8];
  rectReference = self->_rectReference;
  switch(rectReference)
  {
    case 1:
LABEL_9:
      WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
      goto LABEL_10;
    case 2:
      v5 = [(PXGLayout *)self->_layout rootLayout];
      WeakRetained = [v5 coordinateSpace];

      if (WeakRetained)
      {
        goto LABEL_10;
      }

      v6 = PXGTungstenGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        layout = self->_layout;
        v13 = 138412290;
        v14 = layout;
        _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "missing coordinate space for item placement from %@", &v13, 0xCu);
      }

      goto LABEL_9;
    case 0:
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:215 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  WeakRetained = 0;
LABEL_10:
  v8 = objc_alloc(MEMORY[0x277D3CD98]);
  [(PXGItemPlacement *)self rectInCoordinateSpace:WeakRetained velocity:0];
  v9 = [v8 initWithRect:WeakRetained inCoordinateSpace:?];

  return v9;
}

- (id)copyWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v7 = [v5 initWithContext:WeakRetained configuration:&__block_literal_global_16576];

  size = self->_rect.size;
  *(v7 + 16) = self->_rect.origin;
  *(v7 + 32) = size;
  v9 = self->_rectVelocity.size;
  *(v7 + 48) = self->_rectVelocity.origin;
  *(v7 + 64) = v9;
  *(v7 + 80) = self->_rectReference;
  v10 = objc_loadWeakRetained(&self->_coordinateSpace);
  objc_storeWeak((v7 + 88), v10);

  objc_storeStrong((v7 + 96), self->_layout);
  *(v7 + 120) = self->_alpha;
  objc_storeStrong((v7 + 128), self->_displayedAsset);
  v11 = *&self->_displayedAssetContentsRect.t.a;
  v12 = *&self->_displayedAssetContentsRect.t.tx;
  *(v7 + 304) = *&self->_displayedAssetContentsRect.t.c;
  *(v7 + 320) = v12;
  *(v7 + 288) = v11;
  *(v7 + 176) = self->_cornerRadius;
  v13 = self->_normalizedDisplayedAssetRect.size;
  *(v7 + 192) = self->_normalizedDisplayedAssetRect.origin;
  *(v7 + 208) = v13;
  v14 = self->_normalizedTitleRect.size;
  *(v7 + 224) = self->_normalizedTitleRect.origin;
  *(v7 + 240) = v14;
  v15 = self->_normalizedSubtitleRect.size;
  *(v7 + 256) = self->_normalizedSubtitleRect.origin;
  *(v7 + 272) = v15;
  *(v7 + 136) = self->_chromeAlpha;
  *(v7 + 144) = self->_scrubberAlpha;
  *(v7 + 152) = self->_legibilityOverlayAlpha;
  *(v7 + 112) = self->_soundVolume;
  objc_storeStrong((v7 + 160), self->_otherItemsPlacement);
  v4[2](v4, v7);

  return v7;
}

- (void)registerSourceIdentifier:(id)a3
{
  v4 = a3;
  registeredSourceIdentifiers = self->_registeredSourceIdentifiers;
  v8 = v4;
  if (!registeredSourceIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_registeredSourceIdentifiers;
    self->_registeredSourceIdentifiers = v6;

    v4 = v8;
    registeredSourceIdentifiers = self->_registeredSourceIdentifiers;
  }

  [(NSMutableArray *)registeredSourceIdentifiers addObject:v4];
}

- (void)setCornerRadius:(id)a3
{
  self->_cornerRadius.var0.var0.topLeft = v3;
  self->_cornerRadius.var0.var0.topRight = v4;
  self->_cornerRadius.var0.var0.bottomLeft = v5;
  self->_cornerRadius.var0.var0.bottomRight = v6;
}

- (void)setDisplayedAssetContentsRect:(id *)a3
{
  v3 = *&a3->var0.a;
  v4 = *&a3->var0.tx;
  *&self->_displayedAssetContentsRect.t.c = *&a3->var0.c;
  *&self->_displayedAssetContentsRect.t.tx = v4;
  *&self->_displayedAssetContentsRect.t.a = v3;
}

- (CGRect)rectInLayout:(id)a3 velocity:(CGRect *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  rectReference = self->_rectReference;
  if (rectReference == 2)
  {
    [v6 convertRect:self->_layout fromLayout:{self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height}];
    v9 = v26;
    v10 = v27;
    v11 = v28;
    v12 = v29;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (rectReference == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);

    if (!WeakRetained)
    {
      v15 = PXAssertGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v30 = 138412290;
        v31 = self;
        _os_log_error_impl(&dword_21AD38000, v15, OS_LOG_TYPE_ERROR, "missing context in %@", &v30, 0xCu);
      }
    }

    v13 = objc_loadWeakRetained(&self->_context);
    v16 = objc_loadWeakRetained(&self->_coordinateSpace);
    [v13 _convertRect:v16 fromCoordinateSpace:v7 toLayout:self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height];
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v10 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
    if (rectReference)
    {
      goto LABEL_12;
    }

    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = self;
      _os_log_error_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "undefined rect reference in %@", &v30, 0xCu);
    }
  }

LABEL_12:
  if (a4)
  {
LABEL_13:
    size = self->_rectVelocity.size;
    a4->origin = self->_rectVelocity.origin;
    a4->size = size;
  }

LABEL_14:

  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)setRect:(CGRect)a3 velocity:(CGRect)a4 inLayout:(id)a5
{
  self->_rect = a3;
  self->_rectVelocity = a4;
  objc_storeStrong(&self->_layout, a5);
  self->_rectReference = 2;
}

- (CGRect)rectInCoordinateSpace:(id)a3 velocity:(CGRect *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  rectReference = self->_rectReference;
  if (rectReference == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained _convertRect:self->_layout fromLayout:v6 toCoordinateSpace:self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height];
    goto LABEL_8;
  }

  if (rectReference == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
LABEL_8:
    v8 = v13;
    v9 = v14;
    v10 = v15;
    v11 = v16;
    goto LABEL_9;
  }

  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  if (rectReference)
  {
    goto LABEL_10;
  }

  WeakRetained = PXAssertGetLog();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    v22 = 138412290;
    v23 = self;
    _os_log_error_impl(&dword_21AD38000, WeakRetained, OS_LOG_TYPE_ERROR, "undefined rect reference in %@", &v22, 0xCu);
  }

LABEL_9:

LABEL_10:
  if (a4)
  {
    size = self->_rectVelocity.size;
    a4->origin = self->_rectVelocity.origin;
    a4->size = size;
  }

  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setRect:(CGRect)a3 velocity:(CGRect)a4 inCoordinateSpace:(id)a5
{
  self->_rect = a3;
  self->_rectVelocity = a4;
  objc_storeWeak(&self->_coordinateSpace, a5);
  self->_rectReference = 1;
}

- (PXGItemPlacement)initWithContext:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = PXGItemPlacement;
  v8 = [(PXGItemPlacement *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v6);
    v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v12 = *MEMORY[0x277CBF398];
    v13 = *(MEMORY[0x277CBF398] + 16);
    v9->_rect.origin = *MEMORY[0x277CBF398];
    v9->_rect.size = v13;
    v14 = *(MEMORY[0x277D3CFB8] + 16);
    v9->_rectVelocity.origin = *MEMORY[0x277D3CFB8];
    v9->_rectVelocity.size = v14;
    v9->_alpha = 1.0;
    v15 = *MEMORY[0x277D3CFE8];
    v16 = *(MEMORY[0x277D3CFE8] + 32);
    *&v9->_displayedAssetContentsRect.t.c = *(MEMORY[0x277D3CFE8] + 16);
    *&v9->_displayedAssetContentsRect.t.tx = v16;
    v9->_cornerRadius = PXGCornerRadiusNull;
    v9->_normalizedDisplayedAssetRect.origin = v12;
    v9->_normalizedDisplayedAssetRect.size = v13;
    v9->_normalizedTitleRect.origin = v12;
    v9->_normalizedSubtitleRect.size = v13;
    *&v9->_displayedAssetContentsRect.t.a = v15;
    v9->_normalizedTitleRect.size = v13;
    v9->_normalizedSubtitleRect.origin = v12;
    __asm { FMOV            V0.2D, #1.0 }

    *&v9->_chromeAlpha = _Q0;
    v9->_legibilityOverlayAlpha = 1.0;
    v9->_soundVolume = 1.0;
    (v7)[2](v7, v9);
    WeakRetained = objc_loadWeakRetained(&v9->_context);
    [WeakRetained _registerOriginalPlacement:v9 forSourceIdentifiers:v9->_registeredSourceIdentifiers];

    registeredSourceIdentifiers = v9->_registeredSourceIdentifiers;
    v9->_registeredSourceIdentifiers = 0;
  }

  return v9;
}

- (PXGItemPlacement)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXGItemPlacement init]"}];

  abort();
}

@end