@interface PXGReusableAXInfo
+ (BOOL)_assetHasContentSourceInLayout:(id)a3 atSpriteIndex:(unsigned int)a4;
+ (Class)_viewClassInLayout:(id)a3 atSpriteIndex:(unsigned int)a4;
+ (PXReusableObjectPool)sharedPool;
+ (id)_imageAXLabelInLayout:(id)a3 atSpriteIndex:(unsigned int)a4;
+ (id)_textInLayout:(id)a3 atSpriteIndex:(unsigned int)a4;
+ (id)_titleSubtitleInLayout:(id)a3 atSpriteIndex:(unsigned int)a4;
- ($105A79951CE75EB7BB90BCA93995B378)spriteStyle;
- ($B30C796585FC215A6CA6704F8BA3D5B6)spriteStyleCornerRadius;
- ($C4327F77E24267CF92932F349E1559A2)spriteGeometry;
- (BOOL)_fillForKind:(int64_t)a3 withLayout:(id)a4 spriteIndex:(unsigned int)a5;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)axIsSelected;
- (BOOL)canBecomeFocused;
- (BOOL)fillContentForContentKind:(int64_t)a3 inLayout:(id)a4 atIndex:(unsigned int)a5;
- (CGRect)axFrame;
- (CGRect)frame;
- (NSArray)preferredFocusEnvironments;
- (NSString)axImageName;
- (NSString)axSubtitle;
- (NSString)axText;
- (NSString)axTitle;
- (NSString)description;
- (PXAccessibleDisplayAsset)axAsset;
- (PXAnonymousView)axView;
- (PXGBasicAXGroup)axContainingGroup;
- (PXGReusableAXInfo)init;
- (id)_viewAtSpriteIndex:(unsigned int)a3;
- (int64_t)focusGroupPriority;
- (void)applyToInfo:(id)a3;
- (void)didHintFocusMovement:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setContent:(id)a3 ofContentKind:(int64_t)a4;
- (void)setNeedsFocusUpdate;
- (void)setSpriteGeometry:(id)a3;
- (void)setSpriteStyle:(id *)a3;
- (void)setSpriteStyleCornerRadius:(id)a3;
- (void)updateFocusIfNeeded;
@end

@implementation PXGReusableAXInfo

+ (PXReusableObjectPool)sharedPool
{
  if (sharedPool_onceToken != -1)
  {
    dispatch_once(&sharedPool_onceToken, &__block_literal_global_16360);
  }

  v3 = sharedPool_pool;

  return v3;
}

uint64_t __31__PXGReusableAXInfo_sharedPool__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D3CDA0]);
  v1 = sharedPool_pool;
  sharedPool_pool = v0;

  v2 = sharedPool_pool;

  return [v2 registerReusableObjectForReuseIdentifier:1 creationHandler:&__block_literal_global_3_16363];
}

PXGReusableAXInfo *__31__PXGReusableAXInfo_sharedPool__block_invoke_2()
{
  v0 = objc_alloc_init(PXGReusableAXInfo);

  return v0;
}

- (PXGReusableAXInfo)init
{
  v3.receiver = self;
  v3.super_class = PXGReusableAXInfo;
  result = [(PXGReusableAXInfo *)&v3 init];
  if (result)
  {
    result->_spriteIndex = -1;
    result->_spriteStyleCornerRadius = 0u;
    *&result->_spriteGeometry.center.x = 0u;
    *&result->_spriteGeometry.center.z = 0u;
    result->_focusRingType = 1;
  }

  return result;
}

- (void)prepareForReuse
{
  content = self->_content;
  self->_axContentKind = 0;
  self->_content = 0;

  self->_spriteIndex = -1;
  objc_storeWeak(&self->_axContainingGroup, 0);
  *&self->_spriteGeometry.center.x = 0u;
  *&self->_spriteGeometry.center.z = 0u;
  *&self[1]._spriteGeometry.center.x = xmmword_21AE2E2C0;
  *&self[1]._spriteGeometry.center.z = unk_21AE2E2D0;
  *&self[1]._anon_70[8] = xmmword_21AE2E2E0;
  *&self[2].super.isa = unk_21AE2E2F0;
  *&self[1]._axContainingGroup = xmmword_21AE2E280;
  *&self[1]._alternateUIVisibility = unk_21AE2E290;
  *&self[1]._content = xmmword_21AE2E2A0;
  self[1]._spriteStyleCornerRadius = unk_21AE2E2B0;
  *&self->_spriteStyle.alpha = PXGSpriteStyleDefault;
  *&self[1]._axAccessibleWhenTransparent = unk_21AE2E270;
  self->_alternateUIVisibility = 0;
  axDecorations = self->_axDecorations;
  self->_axDecorations = 0;
}

- (void)didHintFocusMovement:(id)a3
{
  v7 = a3;
  v4 = [(PXGReusableAXInfo *)self axContainingGroup];
  v5 = [v4 axInfoSource];
  if (v5)
  {
    v6 = [(PXGReusableAXInfo *)self spriteIndex];
    if (v6 != -1)
    {
      [v5 axDidReceiveFocusMovementHint:v7 forSpriteAtIndex:v6];
    }
  }
}

- (int64_t)focusGroupPriority
{
  if ([(PXGReusableAXInfo *)self axIsSelected])
  {
    return 2000;
  }

  else
  {
    return 0;
  }
}

- (CGRect)frame
{
  [(PXGReusableAXInfo *)self axFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXGReusableAXInfo *)self axContainingGroup];
  v12 = [v11 axScrollParent];
  v13 = [v12 axGroupSource];
  [v13 axConvertRect:v11 fromDescendantGroup:{v4, v6, v8, v10}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [MEMORY[0x277D759A0] px_mainScreen];
  v23 = [v22 traitCollection];
  v24 = [v23 layoutDirection];

  if (v24 == 1)
  {
    v25 = [v12 axGroupSource];
    [v25 axFrame];
    PXRectFlippedHorizontally();
    v15 = v26;
    v17 = v27;
    v19 = v28;
    v21 = v29;
  }

  v30 = v15;
  v31 = v17;
  v32 = v19;
  v33 = v21;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (BOOL)canBecomeFocused
{
  v4 = [(PXGReusableAXInfo *)self axContainingGroup];
  v5 = [v4 axInfoSource];
  if (v5)
  {
    v6 = [(PXGReusableAXInfo *)self spriteIndex];
    if (v6 == -1)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXGAXInfo+iOS.m" lineNumber:131 description:@"An info should not be getting focus if it has no backing sprite"];
    }

    v7 = [v5 axFocusabilityForSpriteAtIndex:v6] == 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isEligibleForFocusInteraction
{
  v4 = [(PXGReusableAXInfo *)self axContainingGroup];
  if (!v4)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXGAXInfo+iOS.m" lineNumber:107 description:@"An info should not be getting focus if it has no containing group"];
  }

  v5 = [v4 axInfoSource];
  if (v5)
  {
    v6 = [(PXGReusableAXInfo *)self spriteIndex];
    if (v6 == -1)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXGAXInfo+iOS.m" lineNumber:118 description:@"An info should not be getting focus if it has no backing sprite"];
    }

    v7 = [v5 axFocusabilityForSpriteAtIndex:v6] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v28 = a3;
  v6 = [v28 nextFocusedItem];

  v7 = [v28 previouslyFocusedItem];

  if (v6 == self || v7 == self)
  {
    v8 = [(PXGReusableAXInfo *)self axContainingGroup];
    v9 = v8;
    if (v6 == self && !v8)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"PXGAXInfo+iOS.m" lineNumber:71 description:@"An info should not be getting focus if it has no containing group"];
    }

    v10 = [(PXGReusableAXInfo *)self spriteIndex];
    v11 = v10;
    if (v6 == self && v10 == -1)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"PXGAXInfo+iOS.m" lineNumber:74 description:@"An info should not be getting focus if it has no backing sprite"];
    }

    if (v6 == self)
    {
      v12 = [v9 loadLeafAtSpriteIndexIfNeeded:v11 usingOptions:1];
    }

    v13 = [v28 previouslyFocusedItem];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v28 nextFocusedItem];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v14 axContainingGroup];
    v18 = [v16 axContainingGroup];
    v19 = v18;
    if (v17 == v18)
    {
      v21 = [v18 axInfoSource];
      v25 = [v14 spriteIndex];
      v22 = [v16 spriteIndex];
      v23 = v21;
      v24 = v25;
    }

    else
    {
      v20 = [v17 axInfoSource];
      [v20 axDidUpdateFocusFromSpriteAtIndex:objc_msgSend(v14 toSpriteAtIndex:{"spriteIndex"), 0xFFFFFFFFLL}];

      v21 = [v19 axInfoSource];
      v22 = [v16 spriteIndex];
      v23 = v21;
      v24 = 0xFFFFFFFFLL;
    }

    [v23 axDidUpdateFocusFromSpriteAtIndex:v24 toSpriteAtIndex:v22];

    if (v7 == self)
    {
      [v9 unloadLeafAtSpriteIndex:v11 usingOptions:3];
    }
  }
}

- (void)updateFocusIfNeeded
{
  v2 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (void)setNeedsFocusUpdate
{
  v3 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (NSArray)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(PXGReusableAXInfo *)self axContentKind]== 5)
  {
    v3 = [(PXGReusableAXInfo *)self axView];
    v4 = v3;
    if (v3)
    {
      v9[0] = v3;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (void)setSpriteStyleCornerRadius:(id)a3
{
  self->_spriteStyleCornerRadius.var0.var0.topLeft = v3;
  self->_spriteStyleCornerRadius.var0.var0.topRight = v4;
  self->_spriteStyleCornerRadius.var0.var0.bottomLeft = v5;
  self->_spriteStyleCornerRadius.var0.var0.bottomRight = v6;
}

- ($B30C796585FC215A6CA6704F8BA3D5B6)spriteStyleCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (void)setSpriteStyle:(id *)a3
{
  v3 = *(&a3->var1 + 12);
  *&self->_spriteStyle.alpha = *&a3->var0;
  *&self[1]._axAccessibleWhenTransparent = v3;
  v4 = *&a3->var5;
  var1 = a3[1].var1;
  v6 = *&a3[1].var6;
  *&self[1]._content = *&a3[1].var2;
  self[1]._spriteStyleCornerRadius = v6;
  *&self[1]._axContainingGroup = v4;
  *&self[1]._alternateUIVisibility = var1;
  v7 = *(&a3[2].var1 + 4);
  v8 = *&a3[2].var3;
  v9 = *(&a3[3].var1 + 8);
  *&self[1]._anon_70[8] = *&a3[2].var8;
  *&self[2].super.isa = v9;
  *&self[1]._spriteGeometry.center.x = v7;
  *&self[1]._spriteGeometry.center.z = v8;
}

- ($105A79951CE75EB7BB90BCA93995B378)spriteStyle
{
  v3 = *&self[5].var2;
  *(&retstr[2].var1 + 4) = self[5].var1;
  *&retstr[2].var3 = v3;
  v4 = *(&self[6].var1 + 4);
  *&retstr[2].var8 = *&self[5].var6;
  *(&retstr[3].var1 + 8) = v4;
  v5 = *&self[4].var0;
  *&retstr->var5 = *&self[3].var4;
  retstr[1].var1 = v5;
  v6 = *&self[4].var5;
  *&retstr[1].var2 = *(&self[4].var1 + 12);
  *&retstr[1].var6 = v6;
  v7 = *(&self[3].var1 + 8);
  *&retstr->var0 = *&self[2].var8;
  *(&retstr->var1 + 12) = v7;
  return self;
}

- (void)setSpriteGeometry:(id)a3
{
  v4 = *v3;
  *&self->_spriteGeometry.center.z = v3[1];
  *&self->_spriteGeometry.center.x = v4;
}

- ($C4327F77E24267CF92932F349E1559A2)spriteGeometry
{
  v3 = *&self->_spriteGeometry.center.x;
  v4 = *&self->_spriteGeometry.center.z;
  *v2 = v3;
  v2[1] = v4;
  result.var0.var1 = *&v4;
  result.var0.var0 = *&v3;
  return result;
}

- (PXGBasicAXGroup)axContainingGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_axContainingGroup);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  spriteIndex = self->_spriteIndex;
  v6 = [(PXGReusableAXInfo *)self axContentKind];
  if (v6 >= 8)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *_NSStringFromPXGAXInfoKind(PXGAXInfoKind)"];
    [v11 handleFailureInFunction:v12 file:@"PXGAXInfo.m" lineNumber:46 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v7 = off_2782AB338[v6];
  [(PXGReusableAXInfo *)self axFrame];
  v8 = NSStringFromCGRect(v14);
  v9 = [v3 stringWithFormat:@"<%@: %p index: %u, kind: %@, frame: %@>", v4, self, spriteIndex, v7, v8];

  return v9;
}

- (id)_viewAtSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(PXGReusableAXInfo *)self axContainingGroup];
  v5 = [v4 axRootParent];
  v6 = [v4 containingLayout];
  v7 = [v5 containingLayout];
  v8 = [v7 viewForSpriteIndex:{objc_msgSend(v7, "convertSpriteIndex:fromDescendantLayout:", v3, v6)}];

  return v8;
}

- (BOOL)_fillForKind:(int64_t)a3 withLayout:(id)a4 spriteIndex:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v10 = [objc_opt_class() _imageAXLabelInLayout:v8 atSpriteIndex:v5];
        goto LABEL_11;
      case 5:
        v16 = [objc_opt_class() _viewClassInLayout:v8 atSpriteIndex:v5] == 0;
LABEL_13:
        v9 = !v16;
        break;
      case 6:
        v9 = [objc_opt_class() _assetHasContentSourceInLayout:v8 atSpriteIndex:v5];
        break;
    }
  }

  else
  {
    if ((a3 - 2) < 2)
    {
      v10 = [objc_opt_class() _textInLayout:v8 atSpriteIndex:v5];
LABEL_11:
      content = self->_content;
      self->_content = v10;

      v16 = self->_content == 0;
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      v11 = [objc_opt_class() _titleSubtitleInLayout:v8 atSpriteIndex:v5];
      v12 = self->_content;
      self->_content = v11;
      v13 = v11;

      v14 = [v13 first];

      v9 = v14 != 0;
    }
  }

  return v9;
}

- (void)setContent:(id)a3 ofContentKind:(int64_t)a4
{
  v7 = a3;
  if (!v7 && a4 != 5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:164 description:@"Content can only be nil when contentKind is View"];
  }

  [(PXGReusableAXInfo *)self setAxContentKind:a4];
  content = self->_content;
  self->_content = v7;
}

- (void)applyToInfo:(id)a3
{
  *(a3 + 3) = self->_spriteIndex;
  v3 = *&self->_spriteGeometry.center.x;
  *(a3 + 104) = *&self->_spriteGeometry.center.z;
  *(a3 + 88) = v3;
  spriteStyleCornerRadius = self[1]._spriteStyleCornerRadius;
  v6 = *&self[1]._axContainingGroup;
  v5 = *&self[1]._alternateUIVisibility;
  *(a3 + 12) = *&self[1]._content;
  *(a3 + 13) = spriteStyleCornerRadius;
  *(a3 + 10) = v6;
  *(a3 + 11) = v5;
  v7 = *&self[2].super.isa;
  v9 = *&self[1]._spriteGeometry.center.x;
  v8 = *&self[1]._spriteGeometry.center.z;
  *(a3 + 16) = *&self[1]._anon_70[8];
  *(a3 + 17) = v7;
  *(a3 + 14) = v9;
  *(a3 + 15) = v8;
  v10 = *&self[1]._axAccessibleWhenTransparent;
  *(a3 + 8) = *&self->_spriteStyle.alpha;
  *(a3 + 9) = v10;
  *(a3 + 72) = self->_spriteStyleCornerRadius;
  *(a3 + 4) = self->_focusRingType;
  *(a3 + 6) = self->_axContentKind;
  *(a3 + 8) = self->_axAccessibleWhenTransparent;
  objc_storeStrong(a3 + 7, self->_content);
}

- (BOOL)fillContentForContentKind:(int64_t)a3 inLayout:(id)a4 atIndex:(unsigned int)a5
{
  v7 = [(PXGReusableAXInfo *)self _fillForKind:a3 withLayout:a4 spriteIndex:*&a5];
  if (v7)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  [(PXGReusableAXInfo *)self setAxContentKind:v8];
  return v7;
}

- (PXAnonymousView)axView
{
  if ([(PXGReusableAXInfo *)self axContentKind]!= 5)
  {
    v3 = PXAssertGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_21AD38000, v3, OS_LOG_TYPE_FAULT, "Should not request view from element that is not view", v6, 2u);
    }
  }

  v4 = [(PXGReusableAXInfo *)self _viewAtSpriteIndex:self->_spriteIndex];

  return v4;
}

- (PXAccessibleDisplayAsset)axAsset
{
  if ([(PXGReusableAXInfo *)self axContentKind]!= 6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:122 description:@"Should not request asset from element that is not asset"];
  }

  v4 = [(PXGReusableAXInfo *)self axContainingGroup];
  v5 = [v4 containingLayout];

  v6 = [v5 contentSource];
  v7 = [v6 displayAssetFetchResultForSpritesInRange:self->_spriteIndex | 0x100000000 inLayout:v5];
  v8 = [v7 objectAtIndex:self->_spriteIndex];

  return v8;
}

- (NSString)axImageName
{
  if ([(PXGReusableAXInfo *)self axContentKind]!= 4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:116 description:@"Should not request imageName from element that is not namedImage"];
  }

  v4 = self->_content;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    v11 = [v4 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_content", v9, v11}];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_content", v9}];
  }

LABEL_5:

  return v4;
}

- (NSString)axSubtitle
{
  if ([(PXGReusableAXInfo *)self axContentKind]!= 1)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:109 description:@"Should not request title from element that is not titlesubtitle"];
  }

  v4 = self->_content;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:110 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_content", v10}];
LABEL_13:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v4 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:110 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_content", v10, v12}];

    goto LABEL_13;
  }

LABEL_5:
  v5 = [v4 second];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v5 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:111 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"titleSubtitle.second", v15, v16}];
    }
  }

  return v5;
}

- (NSString)axTitle
{
  if ([(PXGReusableAXInfo *)self axContentKind]!= 1)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:102 description:@"Should not request title from element that is not titlesubtitle"];
  }

  v4 = self->_content;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v14 = objc_opt_class();
    v10 = NSStringFromClass(v14);
    v15 = [v4 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:103 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_content", v10, v15}];
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:103 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_content", v10}];
  }

LABEL_5:
  v5 = [v4 first];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    v17 = [v5 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"titleSubtitle.first", v13, v17}];
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"titleSubtitle.first", v13}];
  }

LABEL_7:

  return v5;
}

- (NSString)axText
{
  if ([(PXGReusableAXInfo *)self axContentKind]!= 2 && [(PXGReusableAXInfo *)self axContentKind]!= 3)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:96 description:@"Should not request text from element that is not text/button"];
  }

  v4 = self->_content;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v4 px_descriptionForAssertionMessage];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_content", v8, v10}];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"PXGAXInfo.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_content", v8}];
  }

LABEL_6:

  return v4;
}

- (BOOL)axIsSelected
{
  v2 = self;
  v3 = [(PXGReusableAXInfo *)self axContainingGroup];
  v4 = [v3 axInfoSource];

  v5 = [v4 axSelectedSpriteIndexes];
  LOBYTE(v2) = [v5 containsIndex:{-[PXGReusableAXInfo spriteIndex](v2, "spriteIndex")}];

  return v2;
}

- (CGRect)axFrame
{
  [(PXGReusableAXInfo *)self spriteGeometry];
  PXRectWithCenterAndSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (Class)_viewClassInLayout:(id)a3 atSpriteIndex:(unsigned int)a4
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v13 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__PXGReusableAXInfo__viewClassInLayout_atSpriteIndex___block_invoke;
  v8[3] = &unk_2782AB318;
  v8[4] = &v10;
  v9 = a4;
  [v5 enumerateSpritesInRange:a4 | 0x100000000 usingBlock:v8];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __54__PXGReusableAXInfo__viewClassInLayout_atSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, _BYTE *a9)
{
  v12 = a7;
  v10 = [v12 contentSource];
  v11 = v10;
  if (v10)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v10 viewClassForSpriteAtIndex:*(a1 + 40) inLayout:v12];
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a9 = 1;
  }
}

+ (BOOL)_assetHasContentSourceInLayout:(id)a3 atSpriteIndex:(unsigned int)a4
{
  v5 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__PXGReusableAXInfo__assetHasContentSourceInLayout_atSpriteIndex___block_invoke;
  v7[3] = &unk_2782AB2C8;
  v7[4] = &v8;
  [v5 enumerateSpritesInRange:a4 | 0x100000000 usingBlock:v7];
  LOBYTE(a4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return a4;
}

void __66__PXGReusableAXInfo__assetHasContentSourceInLayout_atSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, _BYTE *a9)
{
  v10 = [a7 contentSource];
  *(*(*(a1 + 32) + 8) + 24) = v10 != 0;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a9 = 1;
  }
}

+ (id)_imageAXLabelInLayout:(id)a3 atSpriteIndex:(unsigned int)a4
{
  v5 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16358;
  v13 = __Block_byref_object_dispose__16359;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PXGReusableAXInfo__imageAXLabelInLayout_atSpriteIndex___block_invoke;
  v8[3] = &unk_2782AB2C8;
  v8[4] = &v9;
  [v5 enumerateSpritesInRange:a4 | 0x100000000 usingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __57__PXGReusableAXInfo__imageAXLabelInLayout_atSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, _BYTE *a9)
{
  v16 = a7;
  v11 = [v16 contentSource];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 imageConfigurationAtIndex:a8 inLayout:v16];
    v14 = [v13 accessibilityLabel];
    v15 = v14;
    if (!v14)
    {
      v15 = [v13 imageName];
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v15);
    if (!v14)
    {
    }
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a9 = 1;
  }
}

+ (id)_titleSubtitleInLayout:(id)a3 atSpriteIndex:(unsigned int)a4
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16358;
  v20 = __Block_byref_object_dispose__16359;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16358;
  v14 = __Block_byref_object_dispose__16359;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__PXGReusableAXInfo__titleSubtitleInLayout_atSpriteIndex___block_invoke;
  v9[3] = &unk_2782AB2F0;
  v9[4] = &v16;
  v9[5] = &v10;
  [v5 enumerateSpritesInRange:a4 | 0x100000000 usingBlock:v9];
  v6 = objc_alloc(MEMORY[0x277D3CE10]);
  v7 = [v6 initWithFirst:v17[5] second:v11[5]];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __58__PXGReusableAXInfo__titleSubtitleInLayout_atSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, _BYTE *a9)
{
  v11 = [a7 contentSource];
  if (v11)
  {
    v18 = v11;
    v12 = [v11 titleForSpriteAtIndex:a8];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [v18 subtitleForSpriteAtIndex:a8];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v11 = v18;
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a9 = 1;
  }
}

+ (id)_textInLayout:(id)a3 atSpriteIndex:(unsigned int)a4
{
  v5 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16358;
  v13 = __Block_byref_object_dispose__16359;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__PXGReusableAXInfo__textInLayout_atSpriteIndex___block_invoke;
  v8[3] = &unk_2782AB2C8;
  v8[4] = &v9;
  [v5 enumerateSpritesInRange:a4 | 0x100000000 usingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __49__PXGReusableAXInfo__textInLayout_atSpriteIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, _BYTE *a9)
{
  v16 = a7;
  v11 = [v16 contentSource];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 attributedStringForSpriteAtIndex:a8 inLayout:v16];
    v14 = [v13 string];
    v15 = v14;
    if (!v14)
    {
      v15 = [v12 stringAtIndex:a8 inLayout:v16];
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v15);
    if (!v14)
    {
    }
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a9 = 1;
  }
}

@end