@interface PXGItemPlacement
- ($6177562B5C23A5BFFBFF2879F53F8C7A)displayedAssetContentsRect;
- ($B30C796585FC215A6CA6704F8BA3D5B6)cornerRadius;
- (CGRect)normalizedDisplayedAssetRect;
- (CGRect)normalizedSubtitleRect;
- (CGRect)normalizedTitleRect;
- (CGRect)rectInCoordinateSpace:(id)space velocity:(CGRect *)velocity;
- (CGRect)rectInLayout:(id)layout velocity:(CGRect *)velocity;
- (NSString)diagnosticDescription;
- (PXGItemPlacement)adjustedPreferredPlacement;
- (PXGItemPlacement)init;
- (PXGItemPlacement)initWithContext:(id)context configuration:(id)configuration;
- (PXRegionOfInterest)regionOfInterest;
- (id)copyWithConfiguration:(id)configuration;
- (id)copyWithRegionOfInterest:(id)interest;
- (void)adjustPreferredPlacementInSourceWithIdentifier:(id)identifier configuration:(id)configuration;
- (void)registerSourceIdentifier:(id)identifier;
- (void)setCornerRadius:(id)radius;
- (void)setDisplayedAssetContentsRect:(id *)rect;
- (void)setRect:(CGRect)rect velocity:(CGRect)velocity inCoordinateSpace:(id)space;
- (void)setRect:(CGRect)rect velocity:(CGRect)velocity inLayout:(id)layout;
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
  diagnosticDescription = [WeakRetained diagnosticDescription];
  v8 = PXRectDescription();
  v9 = objc_loadWeakRetained(&self->_coordinateSpace);
  v10 = [v3 initWithFormat:@"<%@: %p, context=%@, rect=%@, coordinateSpace=%@, layout=%@, rectReference=%li>", v5, self, diagnosticDescription, v8, v9, self->_layout, self->_rectReference];

  return v10;
}

- (PXGItemPlacement)adjustedPreferredPlacement
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v4 = [WeakRetained _adjustedPreferredPlacementForPlacement:selfCopy];
  v5 = v4;
  if (v4)
  {
    selfCopy = v4;
  }

  v6 = selfCopy;

  return selfCopy;
}

- (void)adjustPreferredPlacementInSourceWithIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained _adjustPreferredPlacementInSourceWithIdentifier:identifierCopy configuration:configurationCopy];
}

- (id)copyWithRegionOfInterest:(id)interest
{
  interestCopy = interest;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__PXGItemPlacement_copyWithRegionOfInterest___block_invoke;
  v8[3] = &unk_2782AB3A0;
  v9 = interestCopy;
  v5 = interestCopy;
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
      rootLayout = [(PXGLayout *)self->_layout rootLayout];
      WeakRetained = [rootLayout coordinateSpace];

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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:215 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  WeakRetained = 0;
LABEL_10:
  v8 = objc_alloc(MEMORY[0x277D3CD98]);
  [(PXGItemPlacement *)self rectInCoordinateSpace:WeakRetained velocity:0];
  v9 = [v8 initWithRect:WeakRetained inCoordinateSpace:?];

  return v9;
}

- (id)copyWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
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
  configurationCopy[2](configurationCopy, v7);

  return v7;
}

- (void)registerSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  registeredSourceIdentifiers = self->_registeredSourceIdentifiers;
  v8 = identifierCopy;
  if (!registeredSourceIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_registeredSourceIdentifiers;
    self->_registeredSourceIdentifiers = v6;

    identifierCopy = v8;
    registeredSourceIdentifiers = self->_registeredSourceIdentifiers;
  }

  [(NSMutableArray *)registeredSourceIdentifiers addObject:identifierCopy];
}

- (void)setCornerRadius:(id)radius
{
  self->_cornerRadius.var0.var0.topLeft = v3;
  self->_cornerRadius.var0.var0.topRight = v4;
  self->_cornerRadius.var0.var0.bottomLeft = v5;
  self->_cornerRadius.var0.var0.bottomRight = v6;
}

- (void)setDisplayedAssetContentsRect:(id *)rect
{
  v3 = *&rect->var0.a;
  v4 = *&rect->var0.tx;
  *&self->_displayedAssetContentsRect.t.c = *&rect->var0.c;
  *&self->_displayedAssetContentsRect.t.tx = v4;
  *&self->_displayedAssetContentsRect.t.a = v3;
}

- (CGRect)rectInLayout:(id)layout velocity:(CGRect *)velocity
{
  v32 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v7 = layoutCopy;
  rectReference = self->_rectReference;
  if (rectReference == 2)
  {
    [layoutCopy convertRect:self->_layout fromLayout:{self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height}];
    v9 = v26;
    v10 = v27;
    v11 = v28;
    v12 = v29;
    if (!velocity)
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
        selfCopy2 = self;
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
      selfCopy2 = self;
      _os_log_error_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "undefined rect reference in %@", &v30, 0xCu);
    }
  }

LABEL_12:
  if (velocity)
  {
LABEL_13:
    size = self->_rectVelocity.size;
    velocity->origin = self->_rectVelocity.origin;
    velocity->size = size;
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

- (void)setRect:(CGRect)rect velocity:(CGRect)velocity inLayout:(id)layout
{
  self->_rect = rect;
  self->_rectVelocity = velocity;
  objc_storeStrong(&self->_layout, layout);
  self->_rectReference = 2;
}

- (CGRect)rectInCoordinateSpace:(id)space velocity:(CGRect *)velocity
{
  v24 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  rectReference = self->_rectReference;
  if (rectReference == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained _convertRect:self->_layout fromLayout:spaceCopy toCoordinateSpace:self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height];
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
    selfCopy = self;
    _os_log_error_impl(&dword_21AD38000, WeakRetained, OS_LOG_TYPE_ERROR, "undefined rect reference in %@", &v22, 0xCu);
  }

LABEL_9:

LABEL_10:
  if (velocity)
  {
    size = self->_rectVelocity.size;
    velocity->origin = self->_rectVelocity.origin;
    velocity->size = size;
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

- (void)setRect:(CGRect)rect velocity:(CGRect)velocity inCoordinateSpace:(id)space
{
  self->_rect = rect;
  self->_rectVelocity = velocity;
  objc_storeWeak(&self->_coordinateSpace, space);
  self->_rectReference = 1;
}

- (PXGItemPlacement)initWithContext:(id)context configuration:(id)configuration
{
  contextCopy = context;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = PXGItemPlacement;
  v8 = [(PXGItemPlacement *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
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
    (configurationCopy)[2](configurationCopy, v9);
    WeakRetained = objc_loadWeakRetained(&v9->_context);
    [WeakRetained _registerOriginalPlacement:v9 forSourceIdentifiers:v9->_registeredSourceIdentifiers];

    registeredSourceIdentifiers = v9->_registeredSourceIdentifiers;
    v9->_registeredSourceIdentifiers = 0;
  }

  return v9;
}

- (PXGItemPlacement)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXGItemPlacement init]"}];

  abort();
}

@end