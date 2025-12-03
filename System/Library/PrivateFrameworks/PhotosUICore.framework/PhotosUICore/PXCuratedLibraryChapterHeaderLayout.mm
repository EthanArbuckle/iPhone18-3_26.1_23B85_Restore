@interface PXCuratedLibraryChapterHeaderLayout
- (NSAttributedString)attributedTitle;
- (NSAttributedString)floatingAttributedTitle;
- (PXCuratedLibraryChapterHeaderLayout)init;
- (PXSimpleIndexPath)sectionIndexPath;
- (UIEdgeInsets)padding;
- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)_createAttributedTitleWithEmphasizedAttributes:(id)attributes deemphasizedAttributes:(id)deemphasizedAttributes;
- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)axSpriteIndexes;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_handleAsyncRawTitle:(id)title generation:(int64_t)generation;
- (void)_invalidateAttributedTitle;
- (void)_invalidateChevron;
- (void)_updateSprites;
- (void)_updateTitle;
- (void)displayScaleDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceOptionsDidChange;
- (void)referenceSizeDidChange;
- (void)setAssetCollectionReference:(id)reference;
- (void)setRawTitle:(id)title;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)path;
- (void)setSpec:(id)spec;
- (void)setTitleDeemphasizedAttributes:(id)attributes;
- (void)setTitleEmphasizedAttributes:(id)attributes;
- (void)update;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
@end

@implementation PXCuratedLibraryChapterHeaderLayout

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

- (void)setSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[33].item;
  *&retstr->dataSourceIdentifier = *&self[33].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (id)axSpriteIndexes
{
  v2 = [(NSMutableIndexSet *)self->_axSpriteIndexes copy];

  return v2;
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = [(PXCuratedLibraryChapterHeaderLayout *)self spec:*&index];
  chevronImageConfiguration = [v4 chevronImageConfiguration];

  return chevronImageConfiguration;
}

- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *off_1E77220A0;
  v5 = *(off_1E77220A0 + 1);
  v6 = *(off_1E77220A0 + 2);
  v7 = *(off_1E77220A0 + 3);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  v8 = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:index];
  v9 = v8;
  if (v8 == @"PXCuratedLibraryChapterHeaderLayoutItemTitle")
  {
    attributedTitle = [(PXCuratedLibraryChapterHeaderLayout *)self attributedTitle];
  }

  else
  {
    if (v8 != @"PXCuratedLibraryChapterHeaderLayoutItemFloatingTitle")
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:563 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    attributedTitle = [(PXCuratedLibraryChapterHeaderLayout *)self floatingAttributedTitle];
  }

  v11 = attributedTitle;

  return v11;
}

- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  v8 = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:index];
  if (v8 != @"PXCuratedLibraryChapterHeaderLayoutItemTitle" && v8 != @"PXCuratedLibraryChapterHeaderLayoutItemFloatingTitle")
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:546 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  v8 = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:index];
  if (v8 != @"PXCuratedLibraryChapterHeaderLayoutItemTitle" && v8 != @"PXCuratedLibraryChapterHeaderLayoutItemFloatingTitle")
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:538 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return &stru_1F1741150;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (AlternateAppearanceMixAnimatorObservationContext_79802 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:527 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 2) != 0)
  {
    v18 = observableCopy;
    alternateAppearanceMixAnimator = [(PXCuratedLibraryChapterHeaderLayout *)self alternateAppearanceMixAnimator];
    isBeingMutated = [alternateAppearanceMixAnimator isBeingMutated];

    observableCopy = v18;
    if ((isBeingMutated & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_9:
          p_updateFlags->needsUpdate = needsUpdate | 1;
          goto LABEL_10;
        }

LABEL_8:
        if (self->_updateFlags.updated)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout observable:didChange:context:]"];
          [currentHandler2 handleFailureInFunction:v17 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:524 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_9;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_8;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
        observableCopy = v18;
      }
    }
  }

LABEL_10:
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(PXCuratedLibraryChapterHeaderLayout *)self presentedAlternateAppearance])
  {
    v5 = 0;
  }

  else
  {
    assetCollectionReference = [(PXCuratedLibraryChapterHeaderLayout *)self assetCollectionReference];
    v7 = [(PXCuratedLibraryChapterHeaderLayout *)self spriteReferenceForSpriteIndex:v3 objectReference:0];
    v8 = [off_1E7721520 alloc];
    if (assetCollectionReference)
    {
      v9 = [v8 initWithControl:4 spriteReference:v7 layout:self assetCollectionReference:assetCollectionReference];
    }

    else
    {
      v9 = [v8 initWithControl:4 spriteReference:v7 layout:self];
    }

    v5 = v9;
  }

  return v5;
}

- (void)referenceOptionsDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryChapterHeaderLayout;
  [(PXCuratedLibraryChapterHeaderLayout *)&v8 referenceOptionsDidChange];
  [(PXCuratedLibraryChapterHeaderLayout *)self _invalidateAttributedTitle];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 3;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 3) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout referenceOptionsDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:499 description:{@"invalidating %lu after it already has been updated", 3}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 3;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)viewEnvironmentDidChange
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryChapterHeaderLayout;
  [(PXCuratedLibraryChapterHeaderLayout *)&v3 viewEnvironmentDidChange];
  [(PXCuratedLibraryChapterHeaderLayout *)self _invalidateChevron];
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryChapterHeaderLayout;
  [(PXCuratedLibraryChapterHeaderLayout *)&v8 displayScaleDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout displayScaleDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:488 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryChapterHeaderLayout;
  [(PXCuratedLibraryChapterHeaderLayout *)&v8 referenceSizeDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout referenceSizeDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:483 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)visibleRectDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryChapterHeaderLayout;
  [(PXCuratedLibraryChapterHeaderLayout *)&v8 visibleRectDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout visibleRectDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:478 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
  }
}

- (id)_createAttributedTitleWithEmphasizedAttributes:(id)attributes deemphasizedAttributes:(id)deemphasizedAttributes
{
  attributesCopy = attributes;
  deemphasizedAttributesCopy = deemphasizedAttributes;
  rawTitle = [(PXCuratedLibraryChapterHeaderLayout *)self rawTitle];
  v9 = [rawTitle componentsSeparatedByString:@""];

  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  LODWORD(self) = ([(PXCuratedLibraryChapterHeaderLayout *)self referenceOptions]>> 1) & 1;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __109__PXCuratedLibraryChapterHeaderLayout__createAttributedTitleWithEmphasizedAttributes_deemphasizedAttributes___block_invoke;
  v20 = &unk_1E7735A60;
  v11 = v10;
  v21 = v11;
  v25 = v27;
  v12 = attributesCopy;
  v22 = v12;
  v13 = deemphasizedAttributesCopy;
  v23 = v13;
  selfCopy = self;
  v14 = v9;
  v24 = v14;
  [v14 enumerateObjectsUsingBlock:&v17];
  v15 = [v11 copy];

  _Block_object_dispose(v27, 8);

  return v15;
}

void __109__PXCuratedLibraryChapterHeaderLayout__createAttributedTitleWithEmphasizedAttributes_deemphasizedAttributes___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AAB0];
  v7 = a2;
  v8 = [v6 alloc];
  v9 = 48;
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v9 = 40;
  }

  v10 = [v8 initWithString:v7 attributes:*(a1 + v9)];

  [v5 appendAttributedString:v10];
  if (*(a1 + 72) == 1 && [*(a1 + 56) count] - 1 > a3)
  {
    v11 = *(a1 + 32);
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v11 appendAttributedString:v12];
  }

  *(*(*(a1 + 64) + 8) + 24) ^= 1u;
}

- (NSAttributedString)floatingAttributedTitle
{
  floatingAttributedTitle = self->_floatingAttributedTitle;
  if (!floatingAttributedTitle)
  {
    floatingTitleEmphasizedAttributes = [(PXCuratedLibraryChapterHeaderLayout *)self floatingTitleEmphasizedAttributes];
    floatingTitleDeemphasizedAttributes = [(PXCuratedLibraryChapterHeaderLayout *)self floatingTitleDeemphasizedAttributes];
    v6 = [(PXCuratedLibraryChapterHeaderLayout *)self _createAttributedTitleWithEmphasizedAttributes:floatingTitleEmphasizedAttributes deemphasizedAttributes:floatingTitleDeemphasizedAttributes];
    v7 = self->_floatingAttributedTitle;
    self->_floatingAttributedTitle = v6;

    floatingAttributedTitle = self->_floatingAttributedTitle;
  }

  return floatingAttributedTitle;
}

- (NSAttributedString)attributedTitle
{
  attributedTitle = self->_attributedTitle;
  if (!attributedTitle)
  {
    titleEmphasizedAttributes = [(PXCuratedLibraryChapterHeaderLayout *)self titleEmphasizedAttributes];
    titleDeemphasizedAttributes = [(PXCuratedLibraryChapterHeaderLayout *)self titleDeemphasizedAttributes];
    v6 = [(PXCuratedLibraryChapterHeaderLayout *)self _createAttributedTitleWithEmphasizedAttributes:titleEmphasizedAttributes deemphasizedAttributes:titleDeemphasizedAttributes];
    v7 = self->_attributedTitle;
    self->_attributedTitle = v6;

    attributedTitle = self->_attributedTitle;
  }

  return attributedTitle;
}

- (void)_handleAsyncRawTitle:(id)title generation:(int64_t)generation
{
  titleCopy = title;
  v7 = titleCopy;
  if (self->_asyncDateGeneration == generation)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PXCuratedLibraryChapterHeaderLayout__handleAsyncRawTitle_generation___block_invoke;
    block[3] = &unk_1E7749FF8;
    generationCopy = generation;
    block[4] = self;
    v9 = titleCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __71__PXCuratedLibraryChapterHeaderLayout__handleAsyncRawTitle_generation___block_invoke(uint64_t result)
{
  if (*(result + 48) == *(*(result + 32) + 936))
  {
    return [*(result + 32) setRawTitle:*(result + 40)];
  }

  return result;
}

- (void)_updateTitle
{
  v35[3] = *MEMORY[0x1E69E9840];
  spec = [(PXCuratedLibraryChapterHeaderLayout *)self spec];
  titleFont = [spec titleFont];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v6 = [defaultParagraphStyle mutableCopy];

  [v6 setLineBreakMode:4];
  if (([(PXCuratedLibraryChapterHeaderLayout *)self referenceOptions]& 2) != 0)
  {
    [v6 setAlignment:2];
  }

  v7 = *MEMORY[0x1E69DB648];
  v35[0] = titleFont;
  v8 = *MEMORY[0x1E69DB650];
  v33[0] = v7;
  v33[1] = v8;
  titleEmphasizedColor = [spec titleEmphasizedColor];
  v34 = *MEMORY[0x1E69DB688];
  v10 = v34;
  v35[1] = titleEmphasizedColor;
  v35[2] = v6;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v33 count:3];
  [(PXCuratedLibraryChapterHeaderLayout *)self setTitleEmphasizedAttributes:v11];

  v32[0] = titleFont;
  v31[0] = v7;
  v31[1] = v8;
  floatingTitleEmphasizedColor = [spec floatingTitleEmphasizedColor];
  v31[2] = v10;
  v32[1] = floatingTitleEmphasizedColor;
  v32[2] = v6;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
  [(PXCuratedLibraryChapterHeaderLayout *)self setFloatingTitleEmphasizedAttributes:v13];

  v30[0] = titleFont;
  v29[0] = v7;
  v29[1] = v8;
  titleDeemphasizedColor = [spec titleDeemphasizedColor];
  v29[2] = v10;
  v30[1] = titleDeemphasizedColor;
  v30[2] = v6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  [(PXCuratedLibraryChapterHeaderLayout *)self setTitleDeemphasizedAttributes:v15];

  v28[0] = titleFont;
  v27[0] = v7;
  v27[1] = v8;
  floatingTitleDeemphasizedColor = [spec floatingTitleDeemphasizedColor];
  v27[2] = v10;
  v28[1] = floatingTitleDeemphasizedColor;
  v28[2] = v6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
  [(PXCuratedLibraryChapterHeaderLayout *)self setFloatingTitleDeemphasizedAttributes:v17];

  LOBYTE(v17) = [spec shouldAbbreviateMonth];
  assetCollectionReference = [(PXCuratedLibraryChapterHeaderLayout *)self assetCollectionReference];
  assetCollection = [assetCollectionReference assetCollection];

  if (v17)
  {
    v20 = (self->_asyncDateGeneration + 1);
    self->_asyncDateGeneration = v20;
    objc_initWeak(&location, self);
    asyncDateQueue = self->_asyncDateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXCuratedLibraryChapterHeaderLayout__updateTitle__block_invoke;
    block[3] = &unk_1E7735A38;
    v24 = assetCollection;
    v25[1] = 3;
    objc_copyWeak(v25, &location);
    v25[2] = v20;
    dispatch_async(asyncDateQueue, block);
    objc_destroyWeak(v25);

    objc_destroyWeak(&location);
  }

  else
  {
    localizedSubtitle = [assetCollection localizedSubtitle];
    [(PXCuratedLibraryChapterHeaderLayout *)self setRawTitle:localizedSubtitle];
  }
}

void __51__PXCuratedLibraryChapterHeaderLayout__updateTitle__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) localizedDateDescriptionWithOptions:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAsyncRawTitle:v3 generation:*(a1 + 56)];
}

- (void)setTitleDeemphasizedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_titleDeemphasizedAttributes != attributesCopy)
  {
    v9 = attributesCopy;
    v6 = [(NSDictionary *)attributesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      titleDeemphasizedAttributes = self->_titleDeemphasizedAttributes;
      self->_titleDeemphasizedAttributes = v7;

      [(PXCuratedLibraryChapterHeaderLayout *)self _invalidateAttributedTitle];
      v5 = v9;
    }
  }
}

- (void)_invalidateChevron
{
  ++self->_chevronVersion;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout _invalidateChevron]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:371 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateAttributedTitle
{
  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = 0;

  floatingAttributedTitle = self->_floatingAttributedTitle;
  self->_floatingAttributedTitle = 0;

  self->_attributedTitleSize = *off_1E7722230;
  ++self->_titleVersion;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout _invalidateAttributedTitle]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:366 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)setTitleEmphasizedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_titleEmphasizedAttributes != attributesCopy)
  {
    v9 = attributesCopy;
    v6 = [(NSDictionary *)attributesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      titleEmphasizedAttributes = self->_titleEmphasizedAttributes;
      self->_titleEmphasizedAttributes = v7;

      [(PXCuratedLibraryChapterHeaderLayout *)self _invalidateAttributedTitle];
      v5 = v9;
    }
  }
}

- (void)setRawTitle:(id)title
{
  titleCopy = title;
  rawTitle = self->_rawTitle;
  if (rawTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)rawTitle isEqualToString:titleCopy];
    titleCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_rawTitle;
      self->_rawTitle = v7;

      [(PXCuratedLibraryChapterHeaderLayout *)self _invalidateAttributedTitle];
      titleCopy = v9;
    }
  }
}

- (void)setAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v6 = referenceCopy;
  if (self->_assetCollectionReference != referenceCopy)
  {
    v13 = referenceCopy;
    v7 = [(PXAssetCollectionReference *)referenceCopy isEqual:?];
    v6 = v13;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetCollectionReference, reference);
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 2;
LABEL_9:
          v6 = v13;
          goto LABEL_10;
        }

LABEL_7:
        if ((self->_updateFlags.updated & 2) != 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout setAssetCollectionReference:]"];
          [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:342 description:{@"invalidating %lu after it already has been updated", 2}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 2;
      v6 = v13;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)_updateSprites
{
  [(PXCuratedLibraryChapterHeaderLayout *)self sectionIndexPath];
  [(PXCuratedLibraryChapterHeaderLayout *)self referenceSize];
  [(PXCuratedLibraryChapterHeaderLayout *)self displayScale];
  [(PXCuratedLibraryChapterHeaderLayout *)self spec];
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibraryChapterHeaderLayout *)self padding];
  PXEdgeInsetsInsetRect();
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout update]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 2;
    if ((needsUpdate & 2) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
      [(PXCuratedLibraryChapterHeaderLayout *)self _updateTitle];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout update]"];
        [currentHandler2 handleFailureInFunction:v9 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v5)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFELL;
      [(PXCuratedLibraryChapterHeaderLayout *)self _updateSprites];
      v5 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v5)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout update]"];
      [currentHandler3 handleFailureInFunction:v11 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:107 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v12.receiver = self;
  v12.super_class = PXCuratedLibraryChapterHeaderLayout;
  [(PXCuratedLibraryChapterHeaderLayout *)&v12 update];
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_spec != specCopy)
  {
    v13 = specCopy;
    v7 = [(PXCuratedLibraryChapterHeaderLayoutSpec *)specCopy isEqual:?];
    v6 = v13;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, spec);
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 3;
LABEL_9:
          v6 = v13;
          goto LABEL_10;
        }

LABEL_7:
        if ((self->_updateFlags.updated & 3) != 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryChapterHeaderLayout setSpec:]"];
          [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibraryChapterHeaderLayout.m" lineNumber:96 description:{@"invalidating %lu after it already has been updated", 3}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 3;
      v6 = v13;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibraryChapterHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (PXCuratedLibraryChapterHeaderLayout)init
{
  v10.receiver = self;
  v10.super_class = PXCuratedLibraryChapterHeaderLayout;
  v2 = [(PXCuratedLibraryChapterHeaderLayout *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(PXCuratedLibraryChapterHeaderLayout *)v2 setContentSource:v2];
    v3->_attributedTitleSize = *off_1E7722230;
    v3->_chevronSize = xmmword_1A5380D70;
    itemIdentifierBySpriteIndex = v3->_itemIdentifierBySpriteIndex;
    v3->_itemIdentifierBySpriteIndex = MEMORY[0x1E695E0F0];

    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    axSpriteIndexes = v3->_axSpriteIndexes;
    v3->_axSpriteIndexes = v5;

    v7 = [[off_1E77217D0 alloc] initWithValue:0.0 epsilon:0.01];
    alternateAppearanceMixAnimator = v3->_alternateAppearanceMixAnimator;
    v3->_alternateAppearanceMixAnimator = v7;

    [(PXNumberAnimator *)v3->_alternateAppearanceMixAnimator registerChangeObserver:v3 context:AlternateAppearanceMixAnimatorObservationContext_79802];
    if (init_onceToken_79851 != -1)
    {
      dispatch_once(&init_onceToken_79851, &__block_literal_global_79852);
    }

    objc_storeStrong(&v3->_asyncDateQueue, init_asyncDateQueue_79853);
  }

  return v3;
}

void __43__PXCuratedLibraryChapterHeaderLayout_init__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.photos.curatedlibrary-chapter-header-async-dates", v0);
  v2 = init_asyncDateQueue_79853;
  init_asyncDateQueue_79853 = v1;
}

@end