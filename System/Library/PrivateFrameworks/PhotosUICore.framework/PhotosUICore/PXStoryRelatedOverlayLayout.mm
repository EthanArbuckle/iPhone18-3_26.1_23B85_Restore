@interface PXStoryRelatedOverlayLayout
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)a5;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXStoryRelatedOverlayLayout)init;
- (PXStoryRelatedOverlayLayout)initWithViewModel:(id)a3;
- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)_firstRelatedSublayout;
- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)axSpriteIndexes;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (id)preferredFocusLayouts;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)_offsetForRelatedIndex:(int64_t)a3;
- (int64_t)_relatedIndexForSublayoutIndex:(int64_t)a3;
- (int64_t)_sublayoutIndexForFirstRelated;
- (int64_t)_sublayoutIndexForRelatedIndex:(int64_t)a3;
- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)_arrangeSublayoutAtIndex:(int64_t)a3 frame:(CGRect)a4 zIndex:(int64_t *)a5;
- (void)_autoplayUpNext;
- (void)_considerChangingToSelectedRelatedMemory;
- (void)_createRelatedAnimationIfNeeded;
- (void)_handleCountDownTimer:(id)a3;
- (void)_handleCreateMemoryButton:(id)a3;
- (void)_handleNavigationButton:(id)a3;
- (void)_invalidateAXGroupRole;
- (void)_invalidateContent;
- (void)_invalidateCreateMemoryButton;
- (void)_invalidateNavigationButton;
- (void)_invalidateRelatedSpritesAndSublayouts;
- (void)_invalidateScrollSpritesAndSublayouts;
- (void)_invalidateShouldCountDown;
- (void)_invalidateSublayoutPositions;
- (void)_navigateToRelatedMemoryAtIndex:(int64_t)a3;
- (void)_selectRelatedMemoryAtIndex:(int64_t)a3;
- (void)_updateCreateMemoryButton;
- (void)_updateNavigationButton;
- (void)_updateRelatedSpritesAndSublayouts;
- (void)_updateScrollSpritesAndSublayouts;
- (void)_updateShouldCountDown;
- (void)alphaDidChange;
- (void)dealloc;
- (void)displayScaleDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)scrollContentLayoutScrollOffsetDidChange:(id)a3;
- (void)scrollLayoutWillBeginScrolling:(id)a3;
- (void)scrollLayoutWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6;
- (void)setCountDownTimer:(id)a3;
- (void)setCountDownValue:(int64_t)a3;
- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)a3;
- (void)setNavigationButtonDirection:(int64_t)a3;
- (void)setShouldCountDown:(BOOL)a3;
- (void)setWantsNavigationButton:(BOOL)a3;
- (void)showOrHideFullRelated:(BOOL)a3;
- (void)update;
@end

@implementation PXStoryRelatedOverlayLayout

- (void)_handleCreateMemoryButton:(id)a3
{
  v3 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  [v3 openGenerativeMemory];
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    PXGAXGetElementForUserInfo();
  }

  v10 = [(PXStoryRelatedOverlayLayout *)self axNextResponder];
  v11 = [v10 axGroup:v8 didRequestToPerformAction:a4 userInfo:v9];

  return v11;
}

- (id)preferredFocusLayouts
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PXStoryRelatedOverlayLayout *)self _firstRelatedSublayout];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [v3 copy];

  return v5;
}

- (id)axSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v3 addIndex:self->_titleSpriteIndex];
  v4 = [v3 copy];

  return v4;
}

- (void)scrollLayoutWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6
{
  y = a4.y;
  x = a4.x;
  v10 = [(PXStoryRelatedOverlayLayout *)self scrollContentLayout:a3];
  [v10 scrollOffsetForScrollViewContentOffset:{a5->x, a5->y}];
  v20 = v11;
  v21 = v12;
  v19 = 0;
  v13 = [(PXStoryRelatedOverlayLayout *)self layoutGenerator];
  [v10 scrollOffset];
  [v13 adjustTargetScrollOffset:&v20 forVelocity:&v19 currentScrollOffset:x shouldHideContent:{y, v14, v15}];

  if (v19 == 1)
  {
    v16 = [(PXStoryRelatedOverlayLayout *)self viewModel];
    [v16 performChanges:&__block_literal_global_453_242082];
  }

  [v10 scrollViewContentOffsetForScrollOffset:{v20, v21}];
  a5->x = v17;
  a5->y = v18;
  [(PXStoryRelatedOverlayLayout *)self setNavigationButtonScrollAnimatorTarget:v20];
}

- (void)scrollLayoutWillBeginScrolling:(id)a3
{
  v3 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  [v3 performChanges:&__block_literal_global_451_242084];
}

- (void)scrollContentLayoutScrollOffsetDidChange:(id)a3
{
  if (!self->_shouldIgnoreContentScrollOffsetChanges)
  {
    [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v11 = a3;
  if (ViewModelObservationContext_242086 == a5)
  {
    if ((a4 & 0x100) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateRelatedSpritesAndSublayouts];
    }

    if ((a4 & 0x8100) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateScrollSpritesAndSublayouts];
      [(PXStoryRelatedOverlayLayout *)self _invalidateAXGroupRole];
    }

    if ((a4 & 0x8000) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    }

    if ((a4 & 0x20) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateTitleContent];
    }

    if ((a4 & 0x10020) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
    }

    if ((a4 & 0x10000201) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateShouldCountDown];
    }

    if ((a4 & 0x20000000000000) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _considerChangingToSelectedRelatedMemory];
    }

    if ((a4 & 0x20000000000) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _createRelatedAnimationIfNeeded];
    }

    if ((a4 & 0x40000008000201) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateNavigationButton];
    }
  }

  else if (CountDownAlphaAnimatorObservationContext == a5 || NavigationButtonAlphaAnimatorObservationContext == a5)
  {
    if ((a4 & 2) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    }
  }

  else
  {
    if (NavigationButtonScrollAnimatorObservationContext != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:1074 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((a4 & 6) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
    }
  }
}

- (int64_t)_offsetForRelatedIndex:(int64_t)a3
{
  v5 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  v6 = [v5 wantsMemoryCreationCard];

  if (!v6)
  {
    return 0;
  }

  v7 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  v8 = [v7 index] <= a3;

  return v8;
}

- (id)_firstRelatedSublayout
{
  v3 = [(PXStoryRelatedOverlayLayout *)self _sublayoutIndexForFirstRelated];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PXStoryRelatedOverlayLayout *)self sublayoutAtIndex:v3 loadIfNeeded:0];
  }

  return v4;
}

- (int64_t)_sublayoutIndexForFirstRelated
{
  if (self->_relatedSublayoutIndexRange.length)
  {
    return [(PXStoryRelatedOverlayLayout *)self _sublayoutIndexForRelatedIndex:0];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)_sublayoutIndexForRelatedIndex:(int64_t)a3
{
  if (a3 < 0 || self->_relatedSublayoutIndexRange.length <= a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:990 description:{@"Invalid parameter not satisfying: %@", @"relatedIndex >= 0 && relatedIndex < _relatedSublayoutIndexRange.length"}];
  }

  location = self->_relatedSublayoutIndexRange.location;
  return location + a3 + [(PXStoryRelatedOverlayLayout *)self _offsetForRelatedIndex:a3];
}

- (int64_t)_relatedIndexForSublayoutIndex:(int64_t)a3
{
  location = self->_relatedSublayoutIndexRange.location;
  if (a3 - location < self->_relatedSublayoutIndexRange.length && a3 >= location)
  {
    return a3 - location;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v7 = a3;
  v8 = [(PXStoryRelatedOverlayLayout *)self _relatedIndexForSublayoutIndex:a4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_scrollSublayoutIndex != a4)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:973 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = [(PXStoryRelatedOverlayLayout *)self scrollLayout];
  }

  else
  {
    v10 = v8;
    v11 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
    v12 = [v11 index];

    if (v10 == v12)
    {
      v13 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
      [v13 setMemoryCardVisible:1 animated:0];

      v14 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
      v9 = [v14 layout];
    }

    else
    {
      v15 = [(PXStoryRelatedOverlayLayout *)self viewModel];
      v16 = [v15 relatedModels];
      v17 = [v16 objectAtIndexedSubscript:{-[PXStoryRelatedOverlayLayout _relatedModelIndexOffsetByMemoryCreation:](self, "_relatedModelIndexOffsetByMemoryCreation:", v10)}];

      v9 = [[PXStoryLayout alloc] initWithModel:v17];
    }
  }

  return v9;
}

- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = [(PXStoryRelatedOverlayLayout *)self _relatedIndexForSublayoutIndex:a4];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_scrollSublayoutIndex != a4)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:951 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    v13 = &self->_relatedDefaultFrames[v11];
    width = v13->size.width;
    height = v13->size.height;
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_navigationButtonSpriteIndex == a3)
  {
    v8 = [(PXStoryRelatedOverlayLayout *)self navigationButtonConfiguration];
  }

  else
  {
    if (self->_createButtonSpriteIndex != a3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:939 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = [(PXStoryRelatedOverlayLayout *)self createButtonConfiguration];
  }

  v9 = v8;

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_navigationButtonSpriteIndex != a3 && self->_createButtonSpriteIndex != a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:930 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = objc_opt_class();

  return v8;
}

- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_countDownDecorationSpriteIndex != a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:920 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v10 = [v9 viewLayoutSpec];
  v11 = [v10 upNextCountDownDecorationImageConfiguration];

  return v11;
}

- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
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

- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_countDownSpriteIndex != a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:906 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v10 = [v9 viewLayoutSpec];
  v11 = [v10 upNextCountDownAttributes];

  return v11;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_countDownSpriteIndex != a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:898 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v10 = [v9 viewLayoutSpec];
  v11 = [v10 upNextCountDownFormatter];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXStoryRelatedOverlayLayout countDownValue](self, "countDownValue")}];
  v13 = [v11 stringFromNumber:v12];

  return v13;
}

- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_titleSpriteIndex == a3)
  {
    v8 = 1;
  }

  else
  {
    if (self->_countDownSpriteIndex != a3)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:890 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = 0;
  }

  return v8;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_titleSpriteIndex == a3)
  {
    v8 = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v9 = [v8 viewLayoutSpec];
    v10 = [v9 relatedAttributedTitle];
  }

  else
  {
    if (self->_countDownSpriteIndex != a3)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:880 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = 0;
  }

  return v10;
}

- (void)_invalidateAXGroupRole
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateAXGroupRole]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:845 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }
}

void __45__PXStoryRelatedOverlayLayout__updateContent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  v20 = [v2 viewLayoutSpec];

  v3 = *(a1 + 32);
  if (*(v3 + 1116))
  {
    v4 = *(v3 + 1088);
  }

  else
  {
    v4 = off_1E77221F8;
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  [v20 relatedTitleSize];
  v10 = v9;
  v12 = v11;
  v22 = v5;
  v23.origin.x = v5;
  v23.origin.y = v6;
  v21 = v7;
  v23.size.width = v7;
  v23.size.height = v8;
  MinX = CGRectGetMinX(v23);
  v14 = CGRectGetMinX(*(a1 + 40));
  v15 = [v20 relatedLayoutMetrics];
  [v15 margins];
  v17 = v14 + v16;

  if (MinX >= v17)
  {
    v18 = MinX;
  }

  else
  {
    v18 = v17;
  }

  if ([*(a1 + 32) _needsRTLFlip])
  {
    v24.origin.x = v22;
    v24.origin.y = v6;
    v24.size.width = v21;
    v24.size.height = v8;
    CGRectGetMaxX(v24);
    v25.origin.x = v18;
    v25.origin.y = v6;
    v25.size.width = v10;
    v25.size.height = v12;
    CGRectGetWidth(v25);
    CGRectGetMaxX(*(a1 + 40));
    v26.origin.x = v18;
    v26.origin.y = v6;
    v26.size.width = v10;
    v26.size.height = v12;
    CGRectGetWidth(v26);
    v19 = [v20 relatedLayoutMetrics];
    [v19 margins];
  }

  v27.origin.x = v22;
  v27.origin.y = v6;
  v27.size.width = v21;
  v27.size.height = v8;
  CGRectGetMinY(v27);
  [v20 spacingBetweenRelatedTitleAndMainRelated];
  sub_1A524D1F4();
}

- (void)_updateCreateMemoryButton
{
  v8 = objc_alloc_init(PXStoryChromeButtonConfiguration);
  [(PXStoryChromeButtonConfiguration *)v8 setBackgroundStyle:2];
  [(PXStoryChromeButtonConfiguration *)v8 setTarget:self];
  [(PXStoryChromeButtonConfiguration *)v8 setAction:sel__handleCreateMemoryButton_];
  v3 = [(PXStoryViewModel *)self->_viewModel viewLayoutSpec];
  v4 = [v3 chromeButtonSpec];
  [(PXStoryChromeButtonConfiguration *)v8 setSpec:v4];

  v5 = [MEMORY[0x1E69DC888] labelColor];
  [(PXStoryChromeButtonConfiguration *)v8 setTintColor:v5];

  v6 = PXLocalizedStringFromTable(@"MemoryCreationCreateButtonTitle", @"MemoryCreationLocalizable");
  [(PXStoryChromeButtonConfiguration *)v8 setLabel:v6];

  v7 = PXLocalizedStringFromTable(@"MemoryCreationCreateButtonAccessibilityDescription", @"MemoryCreationLocalizable");
  [(PXStoryChromeButtonConfiguration *)v8 setAxLabel:v7];

  [(PXStoryRelatedOverlayLayout *)self setCreateButtonConfiguration:v8];
}

- (void)_invalidateCreateMemoryButton
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x80;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x80) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateCreateMemoryButton]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:694 description:{@"invalidating %lu after it already has been updated", 128}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 128;
  if (!willPerformUpdate)
  {

    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      goto LABEL_7;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:682 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {
    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }

LABEL_7:

  [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
}

- (void)_updateNavigationButton
{
  v8 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v3 = [v8 viewLayoutSpec];
  [v3 canShowRelatedNavigationButton];
  v5 = v4;

  if (v5 != 0.0)
  {
    if ([v8 wantsRelatedOverlayNavigationButtonsVisible] && (objc_msgSend(v8, "isActive") & 1) != 0)
    {
      v6 = [v8 relatedConfigurations];
      -[PXStoryRelatedOverlayLayout setWantsNavigationButton:](self, "setWantsNavigationButton:", [v6 count] != 0);
    }

    else
    {
      [(PXStoryRelatedOverlayLayout *)self setWantsNavigationButton:0];
    }

    if ([v8 isRelatedOverlayScrolledIntoView])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [(PXStoryRelatedOverlayLayout *)self setNavigationButtonDirection:v7];
  }
}

- (void)_invalidateNavigationButton
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateNavigationButton]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:669 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }
}

- (void)_updateShouldCountDown
{
  v4 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  if ([v4 shouldCountDownToUpNext] && (objc_msgSend(v4, "isActive") & 1) != 0)
  {
    v3 = [v4 relatedConfigurations];
    -[PXStoryRelatedOverlayLayout setShouldCountDown:](self, "setShouldCountDown:", [v3 count] != 0);
  }

  else
  {
    [(PXStoryRelatedOverlayLayout *)self setShouldCountDown:0];
  }
}

- (void)_invalidateShouldCountDown
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      goto LABEL_7;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateShouldCountDown]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:657 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {
    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }

LABEL_7:

  [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
}

- (void)_arrangeSublayoutAtIndex:(int64_t)a3 frame:(CGRect)a4 zIndex:(int64_t *)a5
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v12 = (*a5)++;
    v13 = [(PXStoryRelatedOverlayLayout *)self numberOfSublayouts];
    [(PXStoryRelatedOverlayLayout *)self referenceDepth];
    v15 = v14 / v13;
    [(PXGAbsoluteCompositeLayout *)self setFrame:a3 forSublayoutAtIndex:x, y, width, height];
    [(PXGAbsoluteCompositeLayout *)self setZPosition:a3 forSublayoutAtIndex:v15 * -v12];

    [(PXGAbsoluteCompositeLayout *)self setReferenceDepth:a3 forSublayoutAtIndex:v15];
  }
}

- (void)_invalidateSublayoutPositions
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      goto LABEL_7;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateSublayoutPositions]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:559 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {
    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }

LABEL_7:

  [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
}

- (void)_updateScrollSpritesAndSublayouts
{
  v3 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v4 = [v3 wantsRelatedOverlayScrollable];

  scrollSublayoutIndex = self->_scrollSublayoutIndex;
  if (v4)
  {
    if (scrollSublayoutIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_scrollSublayoutIndex = self->_relatedSublayoutIndexRange.length + self->_relatedSublayoutIndexRange.location;
      v6 = objc_alloc_init(PXStoryScrollContentLayout);
      scrollContentLayout = self->_scrollContentLayout;
      self->_scrollContentLayout = v6;

      [(PXStoryScrollContentLayout *)self->_scrollContentLayout setDelegate:self];
      v8 = [[off_1E77216A8 alloc] initWithContentLayout:self->_scrollContentLayout];
      scrollLayout = self->_scrollLayout;
      self->_scrollLayout = v8;

      [(PXGScrollLayout *)self->_scrollLayout setDelegate:self];
      [(PXGScrollLayout *)self->_scrollLayout setScrollDecelerationRate:1];
      [(PXGAbsoluteCompositeLayout *)self insertSublayoutProvider:self inRange:self->_scrollSublayoutIndex, 1];
    }
  }

  else if (scrollSublayoutIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PXStoryRelatedOverlayLayout *)self removeSublayoutAtIndex:?];
    self->_scrollSublayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
}

- (void)_invalidateScrollSpritesAndSublayouts
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateScrollSpritesAndSublayouts]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:529 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }
}

- (void)_updateRelatedSpritesAndSublayouts
{
  v3 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v4 = [v3 relatedModels];
  v5 = [v4 count];

  relatedSelectionSpriteIndexRange = self->_relatedSelectionSpriteIndexRange;
  self->_relatedSelectionSpriteIndexRange.length = v5;
  [(PXStoryRelatedOverlayLayout *)self removeSpritesInRange:relatedSelectionSpriteIndexRange];
  [(PXStoryRelatedOverlayLayout *)self addSpritesInRange:*&self->_relatedSelectionSpriteIndexRange initialState:0];
  location = self->_relatedSublayoutIndexRange.location;
  length = self->_relatedSublayoutIndexRange.length;
  self->_relatedSublayoutIndexRange.length = v5;
  [(PXGAbsoluteCompositeLayout *)self removeSublayoutsInRange:location, length];
  [(PXGAbsoluteCompositeLayout *)self insertSublayoutProvider:self inRange:self->_relatedSublayoutIndexRange.location, self->_relatedSublayoutIndexRange.length];
  scrollSublayoutIndex = self->_scrollSublayoutIndex;
  if (scrollSublayoutIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_scrollSublayoutIndex = scrollSublayoutIndex - length + self->_relatedSublayoutIndexRange.length;
  }

  [(PXStoryRelatedOverlayLayout *)self _invalidateScrollSpritesAndSublayouts];
  [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
  [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];

  [(PXStoryRelatedOverlayLayout *)self invalidateDecoration];
}

- (void)_invalidateRelatedSpritesAndSublayouts
{
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateRelatedSpritesAndSublayouts]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:503 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryRelatedOverlayLayout *)self setNeedsUpdate];
  }
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
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v12 handleFailureInFunction:v13 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryRelatedOverlayLayout *)self _updateRelatedSpritesAndSublayouts];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
        [v14 handleFailureInFunction:v15 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryRelatedOverlayLayout *)self _updateScrollSpritesAndSublayouts];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v16 handleFailureInFunction:v17 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryRelatedOverlayLayout *)self _updateSublayoutPositions];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v18 handleFailureInFunction:v19 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryRelatedOverlayLayout *)self _updateShouldCountDown];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v20 handleFailureInFunction:v21 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v8 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryRelatedOverlayLayout *)self _updateNavigationButton];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v22 handleFailureInFunction:v23 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v9 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryRelatedOverlayLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v24 handleFailureInFunction:v25 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v10 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x40uLL;
    if ((v10 & 0x40) != 0)
    {
      p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXStoryRelatedOverlayLayout *)self _updateAXGroupRole];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v26 handleFailureInFunction:v27 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v11 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x80uLL;
    if ((v11 & 0x80) != 0)
    {
      p_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFF7FLL;
      [(PXStoryRelatedOverlayLayout *)self _updateCreateMemoryButton];
      v11 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v11)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [v28 handleFailureInFunction:v29 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:498 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v30.receiver = self;
  v30.super_class = PXStoryRelatedOverlayLayout;
  [(PXGCompositeLayout *)&v30 update];
}

- (void)_autoplayUpNext
{
  v2 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  [v2 performChanges:&__block_literal_global_414];
}

- (void)_considerChangingToSelectedRelatedMemory
{
  v3 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v4 = [v3 viewLayoutSpec];
  if ([v4 upNextAnimationStyle] == 2 && (objc_msgSend(v3, "isPerformingCrossfadeTransitionToRelated") & 1) == 0)
  {
    selectedIndex = self->_selectedIndex;

    if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = self->_selectedIndex;
      self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __71__PXStoryRelatedOverlayLayout__considerChangingToSelectedRelatedMemory__block_invoke;
      v7[3] = &__block_descriptor_40_e35_v16__0___PXStoryMutableViewModel__8l;
      v7[4] = v6;
      [v3 performChanges:v7];
    }
  }

  else
  {
  }
}

void __71__PXStoryRelatedOverlayLayout__considerChangingToSelectedRelatedMemory__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setWantsChromeVisible:0];
  [v3 selectRelatedAtIndex:*(a1 + 32)];
}

- (void)_createRelatedAnimationIfNeeded
{
  v13 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v4 = [v13 viewLayoutSpec];
  if ([v4 upNextAnimationStyle] != 1)
  {
LABEL_9:

    v6 = v13;
    goto LABEL_10;
  }

  v5 = [v13 shouldSimplifyUIForAccessibility];

  v6 = v13;
  if ((v5 & 1) == 0)
  {
    v7 = [v13 selectedRelatedIndex];
    v6 = v13;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [(PXStoryRelatedOverlayLayout *)self sublayoutAtIndex:[(PXStoryRelatedOverlayLayout *)self _sublayoutIndexForRelatedIndex:?] loadIfNeeded:0];
      if (!v4)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"sublayout != nil"}];
      }

      v8 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
      v9 = [v8 wantsMemoryCreationCard];

      if (v9)
      {
        v10 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
        [v10 setMemoryCardVisible:0 animated:1];
      }

      v11 = PXStoryRelatedAnimationCreate(v4);
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)setWantsNavigationButton:(BOOL)a3
{
  if (self->_wantsNavigationButton != a3)
  {
    v16 = v6;
    v17 = v5;
    v18 = v3;
    v19 = v4;
    self->_wantsNavigationButton = a3;
    [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    v9 = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v10 = [v9 viewLayoutSpec];
    [v10 relatedNavigationButtonFadeDuration];
    v12 = v11;

    v13 = [(PXStoryRelatedOverlayLayout *)self navigationButtonAlphaAnimator];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__PXStoryRelatedOverlayLayout_setWantsNavigationButton___block_invoke;
    v14[3] = &__block_descriptor_33_e35_v16__0___PXMutableNumberAnimator__8l;
    v15 = a3;
    [v13 performChangesWithDuration:1 curve:v14 changes:v12];
  }
}

uint64_t __56__PXStoryRelatedOverlayLayout_setWantsNavigationButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = 0.0;
  if (*(a1 + 32))
  {
    v2 = 1.0;
  }

  return [a2 setValue:v2];
}

- (void)setNavigationButtonDirection:(int64_t)a3
{
  if (self->_navigationButtonDirection != a3)
  {
    self->_navigationButtonDirection = a3;
    v6 = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v13 = [v6 viewLayoutSpec];

    v7 = objc_alloc_init(PXStoryChromeButtonConfiguration);
    [(PXStoryChromeButtonConfiguration *)v7 setBackgroundStyle:3];
    [(PXStoryChromeButtonConfiguration *)v7 setTarget:self];
    [v13 relatedNavigationButtonSystemImagePointSize];
    [(PXStoryChromeButtonConfiguration *)v7 setPreferredSystemImagePointSize:?];
    v8 = [MEMORY[0x1E69DC888] blackColor];
    [(PXStoryChromeButtonConfiguration *)v7 setTintColor:v8];

    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.75 alpha:1.0];
    [(PXStoryChromeButtonConfiguration *)v7 setSolidBackgroundColor:v9];

    [(PXStoryChromeButtonConfiguration *)v7 setPreferredSystemImageWeight:*MEMORY[0x1E69DB958]];
    [(PXStoryChromeButtonConfiguration *)v7 setAction:sel__handleNavigationButton_];
    v10 = [v13 relatedNavigationChromeButtonSpec];
    [(PXStoryChromeButtonConfiguration *)v7 setSpec:v10];

    if (a3 == 1)
    {
      v11 = @"chevron.left";
    }

    else
    {
      v11 = @"chevron.right";
    }

    [(PXStoryChromeButtonConfiguration *)v7 setSystemImageName:v11];
    [(PXStoryChromeButtonConfiguration *)v7 setBackgroundColorAdaptsToHoveredState:0];
    v12 = PXLocalizedStringFromTable(@"InteractiveMemoryButtonAccessibilityLabelRelatedNavigation", @"PhotosUICore");
    [(PXStoryChromeButtonConfiguration *)v7 setAxLabel:v12];

    [(PXStoryRelatedOverlayLayout *)self setNavigationButtonConfiguration:v7];
    [(PXStoryRelatedOverlayLayout *)self setNavigationButtonVersion:[(PXStoryRelatedOverlayLayout *)self navigationButtonVersion]+ 1];
    [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
  }
}

- (void)showOrHideFullRelated:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PXStoryRelatedOverlayLayout *)self scrollContentLayout];
    [v4 scrollableOutsets];
  }

  [(PXStoryRelatedOverlayLayout *)self navigationButtonScrollAnimatorTarget];
  PXFloatEqualToFloatWithTolerance();
}

void __53__PXStoryRelatedOverlayLayout_showOrHideFullRelated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 scrollContentLayout];
  [v4 scrollOffset];
  [v3 setValue:?];
}

- (void)_handleNavigationButton:(id)a3
{
  v4 = [(PXStoryRelatedOverlayLayout *)self navigationButtonDirection]== 2;

  [(PXStoryRelatedOverlayLayout *)self showOrHideFullRelated:v4];
}

- (void)setCountDownValue:(int64_t)a3
{
  if (self->_countDownValue != a3)
  {
    self->_countDownValue = a3;
    [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
  }
}

- (void)setCountDownTimer:(id)a3
{
  v5 = a3;
  countDownTimer = self->_countDownTimer;
  if (countDownTimer != v5)
  {
    v7 = v5;
    [(NSTimer *)countDownTimer invalidate];
    objc_storeStrong(&self->_countDownTimer, a3);
    v5 = v7;
  }
}

- (void)_handleCountDownTimer:(id)a3
{
  if ([(PXStoryRelatedOverlayLayout *)self countDownValue]< 1)
  {
    [(PXStoryRelatedOverlayLayout *)self _autoplayUpNext];

    [(PXStoryRelatedOverlayLayout *)self setShouldCountDown:0];
  }

  else
  {
    [(PXStoryRelatedOverlayLayout *)self setCountDownValue:[(PXStoryRelatedOverlayLayout *)self countDownValue]- 1];
    v4 = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v10 = [v4 viewLayoutSpec];

    v5 = [(PXStoryRelatedOverlayLayout *)self countDownValue];
    [v10 upNextCountDownInitialVisibleValue];
    if (v6 == v5 && [v10 upNextCountdownPlacement] == 1)
    {
      v7 = [(PXStoryRelatedOverlayLayout *)self countDownAlphaAnimator];
      [v7 performChangesUsingDefaultSpringAnimationWithInitialVelocity:&__block_literal_global_389_242148 changes:0.0];
    }

    v8 = [(PXStoryRelatedOverlayLayout *)self countDownValue];
    [v10 upNextCountDownInitialVisibleValue];
    if (v9 >= v8 && [v10 upNextCountdownPlacement] == 2)
    {
      [(PXStoryRelatedOverlayLayout *)self _setFirstRelatedLayoutCountdownValue:[(PXStoryRelatedOverlayLayout *)self countDownValue]];
    }
  }
}

- (void)setShouldCountDown:(BOOL)a3
{
  if (self->_shouldCountDown != a3)
  {
    self->_shouldCountDown = a3;
    [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    if (self->_shouldCountDown)
    {
      v20 = [MEMORY[0x1E695DFF0] px_timerWithTimeInterval:self weakTarget:sel__handleCountDownTimer_ selector:0 userInfo:1 repeats:1.0];
      v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
      [v5 addTimer:v20 forMode:*MEMORY[0x1E695DA28]];

      v6 = [(PXStoryRelatedOverlayLayout *)self viewModel];
      v7 = [v6 viewLayoutSpec];

      [v7 upNextCountDownAppearDelay];
      v9 = v8;
      [v7 upNextCountDownInitialVisibleValue];
      [(PXStoryRelatedOverlayLayout *)self setCountDownValue:(v9 + v10)];
    }

    else
    {
      v11 = [(PXStoryRelatedOverlayLayout *)self viewModel];
      v12 = [v11 viewLayoutSpec];
      v13 = [v12 upNextCountdownPlacement];

      switch(v13)
      {
        case 1:
          v15 = [(PXStoryRelatedOverlayLayout *)self countDownAlphaAnimator];
          v16 = [(PXStoryRelatedOverlayLayout *)self viewModel];
          v17 = [v16 viewLayoutSpec];
          [v17 upNextCountDownFadeOutDuration];
          v19 = v18;

          [v15 performChangesWithDuration:1 curve:&__block_literal_global_242153 changes:v19];
          break;
        case 2:
          [(PXStoryRelatedOverlayLayout *)self _setFirstRelatedLayoutCountdownValue:0x7FFFFFFFFFFFFFFFLL];
          break;
        case 0:
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:296 description:@"Code which should be unreachable has been reached"];

          abort();
      }

      v20 = 0;
    }

    [(PXStoryRelatedOverlayLayout *)self setCountDownTimer:v20];
  }
}

- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)a3
{
  if (self->_isRelatedOverlayScrolledIntoView != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_isRelatedOverlayScrolledIntoView = a3;
    v6 = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PXStoryRelatedOverlayLayout_setIsRelatedOverlayScrolledIntoView___block_invoke;
    v7[3] = &unk_1E774B048;
    v7[4] = self;
    [v6 performChanges:v7];
  }
}

- (void)_navigateToRelatedMemoryAtIndex:(int64_t)a3
{
  v6 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  v7 = [v6 index];

  if (v7 == a3)
  {
    v11 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
    [v11 openGenerativeMemory];
  }

  else
  {
    v8 = [(PXStoryRelatedOverlayLayout *)self _relatedModelIndexOffsetByMemoryCreation:a3];
    self->_selectedIndex = v8;
    v9 = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PXStoryRelatedOverlayLayout__navigateToRelatedMemoryAtIndex___block_invoke;
    v12[3] = &unk_1E7749EF8;
    v15 = v8;
    v16 = a2;
    v13 = v9;
    v14 = self;
    v10 = v9;
    [v10 performChanges:v12];
  }
}

void __63__PXStoryRelatedOverlayLayout__navigateToRelatedMemoryAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) viewLayoutSpec];
  v4 = [v3 upNextAnimationStyle];

  if (v4 == 1)
  {
    [v7 selectRelatedAtIndex:*(a1 + 48)];
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    [v7 setIsPerformingCrossfadeTransitionToRelated:1];
LABEL_7:
    v5 = v7;
    goto LABEL_8;
  }

  v5 = v7;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PXStoryRelatedOverlayLayout.m" lineNumber:253 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_8:
}

- (void)_selectRelatedMemoryAtIndex:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryRelatedOverlayLayout__selectRelatedMemoryAtIndex___block_invoke;
  v6[3] = &unk_1E7749ED0;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  [v5 requestNavigationPermission:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __59__PXStoryRelatedOverlayLayout__selectRelatedMemoryAtIndex___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 fulfilled];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _navigateToRelatedMemoryAtIndex:*(a1 + 40)];
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  relatedSelectionSpriteIndexRange = self->_relatedSelectionSpriteIndexRange;
  v5 = a3 >= relatedSelectionSpriteIndexRange.location;
  v6 = a3 - relatedSelectionSpriteIndexRange.location;
  v7 = relatedSelectionSpriteIndexRange.length + relatedSelectionSpriteIndexRange.location;
  if (v5 && v7 > a3)
  {
    v10 = [[PXStoryHitTestResult alloc] initWithSpriteIndex:*&a3 layout:self identifier:@"PXStoryHitTestIdentifierRelated"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__PXStoryRelatedOverlayLayout_hitTestResultForSpriteIndex___block_invoke;
    v12[3] = &unk_1E7749EA8;
    v12[4] = self;
    v12[5] = v6;
    v9 = [(PXFeedHitTestResult *)v10 primaryAction:v12];
  }

  else
  {
    v9 = [[PXStoryHitTestResult alloc] initWithSpriteIndex:*&a3 layout:self identifier:@"PXStoryHitTestIdentifierRelated"];
  }

  return v9;
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryRelatedOverlayLayout;
  [(PXStoryRelatedOverlayLayout *)&v3 alphaDidChange];
  [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryRelatedOverlayLayout;
  [(PXGCompositeLayout *)&v3 displayScaleDidChange];
  [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryRelatedOverlayLayout;
  [(PXGCompositeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryRelatedOverlayLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryRelatedOverlayLayout *)self referenceSize];
  [(PXGAbsoluteCompositeLayout *)self setContentSize:?];
  [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
  [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
}

- (void)dealloc
{
  free(self->_relatedDefaultFrames);
  [(NSTimer *)self->_countDownTimer invalidate];
  v3.receiver = self;
  v3.super_class = PXStoryRelatedOverlayLayout;
  [(PXGCompositeLayout *)&v3 dealloc];
}

- (PXStoryRelatedOverlayLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PXStoryRelatedOverlayLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_242086];
    v8 = [PXStoryRelatedLayoutGenerator alloc];
    v9 = [(PXStoryViewModel *)v7->_viewModel viewLayoutSpec];
    v10 = [v9 relatedLayoutMetrics];
    v11 = [(PXStoryRelatedLayoutGenerator *)v8 initWithMetrics:v10];
    layoutGenerator = v7->_layoutGenerator;
    v7->_layoutGenerator = v11;

    v13 = [[off_1E77217D0 alloc] initWithValue:0.0];
    countDownAlphaAnimator = v7->_countDownAlphaAnimator;
    v7->_countDownAlphaAnimator = v13;

    [(PXNumberAnimator *)v7->_countDownAlphaAnimator registerChangeObserver:v7 context:CountDownAlphaAnimatorObservationContext];
    v15 = [[off_1E77217D0 alloc] initWithValue:0.0];
    navigationButtonAlphaAnimator = v7->_navigationButtonAlphaAnimator;
    v7->_navigationButtonAlphaAnimator = v15;

    [(PXNumberAnimator *)v7->_navigationButtonAlphaAnimator registerChangeObserver:v7 context:NavigationButtonAlphaAnimatorObservationContext];
    v17 = [[off_1E77217D0 alloc] initWithValue:0.0];
    navigationButtonScrollAnimator = v7->_navigationButtonScrollAnimator;
    v7->_navigationButtonScrollAnimator = v17;

    [(PXNumberAnimator *)v7->_navigationButtonScrollAnimator registerChangeObserver:v7 context:NavigationButtonScrollAnimatorObservationContext];
    v7->_navigationButtonScrollAnimatorTarget = 0.0;
    v7->_scrollSublayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7->_titleSpriteIndex = 0;
    v7->_countDownSpriteIndex = 1;
    v7->_countDownDecorationSpriteIndex = 2;
    v7->_navigationButtonSpriteIndex = 3;
    v7->_navigationHitTestVisabilitySpriteIndex = 4;
    v7->_createButtonSpriteIndex = 5;
    v7->_relatedSelectionSpriteIndexRange = 6;
    v7->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(PXStoryRelatedOverlayLayout *)v7 addSpriteCount:6 withInitialState:0];
    [(PXStoryRelatedOverlayLayout *)v7 setContentSource:v7];
    [(PXStoryRelatedOverlayLayout *)v7 _invalidateRelatedSpritesAndSublayouts];
    [(PXStoryRelatedOverlayLayout *)v7 _invalidateScrollSpritesAndSublayouts];
    [(PXStoryRelatedOverlayLayout *)v7 _invalidateNavigationButton];
    [(PXStoryRelatedOverlayLayout *)v7 _invalidateAXGroupRole];
    [(PXStoryRelatedOverlayLayout *)v7 _invalidateCreateMemoryButton];
  }

  return v7;
}

- (PXStoryRelatedOverlayLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXStoryRelatedOverlayLayout init]"}];

  abort();
}

@end