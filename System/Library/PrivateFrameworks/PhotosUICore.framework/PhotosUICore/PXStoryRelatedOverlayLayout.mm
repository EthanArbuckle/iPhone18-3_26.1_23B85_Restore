@interface PXStoryRelatedOverlayLayout
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)size;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXStoryRelatedOverlayLayout)init;
- (PXStoryRelatedOverlayLayout)initWithViewModel:(id)model;
- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)_firstRelatedSublayout;
- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)axSpriteIndexes;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
- (id)preferredFocusLayouts;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)_offsetForRelatedIndex:(int64_t)index;
- (int64_t)_relatedIndexForSublayoutIndex:(int64_t)index;
- (int64_t)_sublayoutIndexForFirstRelated;
- (int64_t)_sublayoutIndexForRelatedIndex:(int64_t)index;
- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_arrangeSublayoutAtIndex:(int64_t)index frame:(CGRect)frame zIndex:(int64_t *)zIndex;
- (void)_autoplayUpNext;
- (void)_considerChangingToSelectedRelatedMemory;
- (void)_createRelatedAnimationIfNeeded;
- (void)_handleCountDownTimer:(id)timer;
- (void)_handleCreateMemoryButton:(id)button;
- (void)_handleNavigationButton:(id)button;
- (void)_invalidateAXGroupRole;
- (void)_invalidateContent;
- (void)_invalidateCreateMemoryButton;
- (void)_invalidateNavigationButton;
- (void)_invalidateRelatedSpritesAndSublayouts;
- (void)_invalidateScrollSpritesAndSublayouts;
- (void)_invalidateShouldCountDown;
- (void)_invalidateSublayoutPositions;
- (void)_navigateToRelatedMemoryAtIndex:(int64_t)index;
- (void)_selectRelatedMemoryAtIndex:(int64_t)index;
- (void)_updateCreateMemoryButton;
- (void)_updateNavigationButton;
- (void)_updateRelatedSpritesAndSublayouts;
- (void)_updateScrollSpritesAndSublayouts;
- (void)_updateShouldCountDown;
- (void)alphaDidChange;
- (void)dealloc;
- (void)displayScaleDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)scrollContentLayoutScrollOffsetDidChange:(id)change;
- (void)scrollLayoutWillBeginScrolling:(id)scrolling;
- (void)scrollLayoutWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)setCountDownTimer:(id)timer;
- (void)setCountDownValue:(int64_t)value;
- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)view;
- (void)setNavigationButtonDirection:(int64_t)direction;
- (void)setShouldCountDown:(BOOL)down;
- (void)setWantsNavigationButton:(BOOL)button;
- (void)showOrHideFullRelated:(BOOL)related;
- (void)update;
@end

@implementation PXStoryRelatedOverlayLayout

- (void)_handleCreateMemoryButton:(id)button
{
  generativeMemoryController = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  [generativeMemoryController openGenerativeMemory];
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if (action == 1)
  {
    PXGAXGetElementForUserInfo();
  }

  axNextResponder = [(PXStoryRelatedOverlayLayout *)self axNextResponder];
  v11 = [axNextResponder axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return v11;
}

- (id)preferredFocusLayouts
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _firstRelatedSublayout = [(PXStoryRelatedOverlayLayout *)self _firstRelatedSublayout];
  if (_firstRelatedSublayout)
  {
    [v3 addObject:_firstRelatedSublayout];
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

- (void)scrollLayoutWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  y = velocity.y;
  x = velocity.x;
  v10 = [(PXStoryRelatedOverlayLayout *)self scrollContentLayout:scrolling];
  [v10 scrollOffsetForScrollViewContentOffset:{offset->x, offset->y}];
  v20 = v11;
  v21 = v12;
  v19 = 0;
  layoutGenerator = [(PXStoryRelatedOverlayLayout *)self layoutGenerator];
  [v10 scrollOffset];
  [layoutGenerator adjustTargetScrollOffset:&v20 forVelocity:&v19 currentScrollOffset:x shouldHideContent:{y, v14, v15}];

  if (v19 == 1)
  {
    viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
    [viewModel performChanges:&__block_literal_global_453_242082];
  }

  [v10 scrollViewContentOffsetForScrollOffset:{v20, v21}];
  offset->x = v17;
  offset->y = v18;
  [(PXStoryRelatedOverlayLayout *)self setNavigationButtonScrollAnimatorTarget:v20];
}

- (void)scrollLayoutWillBeginScrolling:(id)scrolling
{
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  [viewModel performChanges:&__block_literal_global_451_242084];
}

- (void)scrollContentLayoutScrollOffsetDidChange:(id)change
{
  if (!self->_shouldIgnoreContentScrollOffsetChanges)
  {
    [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_242086 == context)
  {
    if ((change & 0x100) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateRelatedSpritesAndSublayouts];
    }

    if ((change & 0x8100) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateScrollSpritesAndSublayouts];
      [(PXStoryRelatedOverlayLayout *)self _invalidateAXGroupRole];
    }

    if ((change & 0x8000) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    }

    if ((change & 0x20) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateTitleContent];
    }

    if ((change & 0x10020) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
    }

    if ((change & 0x10000201) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateShouldCountDown];
    }

    if ((change & 0x20000000000000) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _considerChangingToSelectedRelatedMemory];
    }

    if ((change & 0x20000000000) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _createRelatedAnimationIfNeeded];
    }

    if ((change & 0x40000008000201) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateNavigationButton];
    }
  }

  else if (CountDownAlphaAnimatorObservationContext == context || NavigationButtonAlphaAnimatorObservationContext == context)
  {
    if ((change & 2) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    }
  }

  else
  {
    if (NavigationButtonScrollAnimatorObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:1074 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((change & 6) != 0)
    {
      [(PXStoryRelatedOverlayLayout *)self _invalidateSublayoutPositions];
    }
  }
}

- (int64_t)_offsetForRelatedIndex:(int64_t)index
{
  generativeMemoryController = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  wantsMemoryCreationCard = [generativeMemoryController wantsMemoryCreationCard];

  if (!wantsMemoryCreationCard)
  {
    return 0;
  }

  generativeMemoryController2 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  v8 = [generativeMemoryController2 index] <= index;

  return v8;
}

- (id)_firstRelatedSublayout
{
  _sublayoutIndexForFirstRelated = [(PXStoryRelatedOverlayLayout *)self _sublayoutIndexForFirstRelated];
  if (_sublayoutIndexForFirstRelated == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PXStoryRelatedOverlayLayout *)self sublayoutAtIndex:_sublayoutIndexForFirstRelated loadIfNeeded:0];
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

- (int64_t)_sublayoutIndexForRelatedIndex:(int64_t)index
{
  if (index < 0 || self->_relatedSublayoutIndexRange.length <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:990 description:{@"Invalid parameter not satisfying: %@", @"relatedIndex >= 0 && relatedIndex < _relatedSublayoutIndexRange.length"}];
  }

  location = self->_relatedSublayoutIndexRange.location;
  return location + index + [(PXStoryRelatedOverlayLayout *)self _offsetForRelatedIndex:index];
}

- (int64_t)_relatedIndexForSublayoutIndex:(int64_t)index
{
  location = self->_relatedSublayoutIndexRange.location;
  if (index - location < self->_relatedSublayoutIndexRange.length && index >= location)
  {
    return index - location;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  layoutCopy = layout;
  v8 = [(PXStoryRelatedOverlayLayout *)self _relatedIndexForSublayoutIndex:index];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_scrollSublayoutIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:973 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    scrollLayout = [(PXStoryRelatedOverlayLayout *)self scrollLayout];
  }

  else
  {
    v10 = v8;
    generativeMemoryController = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
    index = [generativeMemoryController index];

    if (v10 == index)
    {
      generativeMemoryController2 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
      [generativeMemoryController2 setMemoryCardVisible:1 animated:0];

      generativeMemoryController3 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
      scrollLayout = [generativeMemoryController3 layout];
    }

    else
    {
      viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
      relatedModels = [viewModel relatedModels];
      v17 = [relatedModels objectAtIndexedSubscript:{-[PXStoryRelatedOverlayLayout _relatedModelIndexOffsetByMemoryCreation:](self, "_relatedModelIndexOffsetByMemoryCreation:", v10)}];

      scrollLayout = [[PXStoryLayout alloc] initWithModel:v17];
    }
  }

  return scrollLayout;
}

- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v11 = [(PXStoryRelatedOverlayLayout *)self _relatedIndexForSublayoutIndex:index];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_scrollSublayoutIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:951 description:@"Code which should be unreachable has been reached"];

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

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_navigationButtonSpriteIndex == index)
  {
    navigationButtonConfiguration = [(PXStoryRelatedOverlayLayout *)self navigationButtonConfiguration];
  }

  else
  {
    if (self->_createButtonSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:939 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    navigationButtonConfiguration = [(PXStoryRelatedOverlayLayout *)self createButtonConfiguration];
  }

  v9 = navigationButtonConfiguration;

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_navigationButtonSpriteIndex != index && self->_createButtonSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:930 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = objc_opt_class();

  return v8;
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_countDownDecorationSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:920 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  upNextCountDownDecorationImageConfiguration = [viewLayoutSpec upNextCountDownDecorationImageConfiguration];

  return upNextCountDownDecorationImageConfiguration;
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

- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_countDownSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:906 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  upNextCountDownAttributes = [viewLayoutSpec upNextCountDownAttributes];

  return upNextCountDownAttributes;
}

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_countDownSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:898 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  upNextCountDownFormatter = [viewLayoutSpec upNextCountDownFormatter];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXStoryRelatedOverlayLayout countDownValue](self, "countDownValue")}];
  v13 = [upNextCountDownFormatter stringFromNumber:v12];

  return v13;
}

- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_titleSpriteIndex == index)
  {
    v8 = 1;
  }

  else
  {
    if (self->_countDownSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:890 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = 0;
  }

  return v8;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_titleSpriteIndex == index)
  {
    viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
    viewLayoutSpec = [viewModel viewLayoutSpec];
    relatedAttributedTitle = [viewLayoutSpec relatedAttributedTitle];
  }

  else
  {
    if (self->_countDownSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:880 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    relatedAttributedTitle = 0;
  }

  return relatedAttributedTitle;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateAXGroupRole]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:845 description:{@"invalidating %lu after it already has been updated", 64}];

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
  viewLayoutSpec = [(PXStoryViewModel *)self->_viewModel viewLayoutSpec];
  chromeButtonSpec = [viewLayoutSpec chromeButtonSpec];
  [(PXStoryChromeButtonConfiguration *)v8 setSpec:chromeButtonSpec];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(PXStoryChromeButtonConfiguration *)v8 setTintColor:labelColor];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateCreateMemoryButton]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:694 description:{@"invalidating %lu after it already has been updated", 128}];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:682 description:{@"invalidating %lu after it already has been updated", 16}];

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
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  [viewLayoutSpec canShowRelatedNavigationButton];
  v5 = v4;

  if (v5 != 0.0)
  {
    if ([viewModel wantsRelatedOverlayNavigationButtonsVisible] && (objc_msgSend(viewModel, "isActive") & 1) != 0)
    {
      relatedConfigurations = [viewModel relatedConfigurations];
      -[PXStoryRelatedOverlayLayout setWantsNavigationButton:](self, "setWantsNavigationButton:", [relatedConfigurations count] != 0);
    }

    else
    {
      [(PXStoryRelatedOverlayLayout *)self setWantsNavigationButton:0];
    }

    if ([viewModel isRelatedOverlayScrolledIntoView])
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateNavigationButton]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:669 description:{@"invalidating %lu after it already has been updated", 32}];

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
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  if ([viewModel shouldCountDownToUpNext] && (objc_msgSend(viewModel, "isActive") & 1) != 0)
  {
    relatedConfigurations = [viewModel relatedConfigurations];
    -[PXStoryRelatedOverlayLayout setShouldCountDown:](self, "setShouldCountDown:", [relatedConfigurations count] != 0);
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateShouldCountDown]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:657 description:{@"invalidating %lu after it already has been updated", 8}];

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

- (void)_arrangeSublayoutAtIndex:(int64_t)index frame:(CGRect)frame zIndex:(int64_t *)zIndex
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v12 = (*zIndex)++;
    numberOfSublayouts = [(PXStoryRelatedOverlayLayout *)self numberOfSublayouts];
    [(PXStoryRelatedOverlayLayout *)self referenceDepth];
    v15 = v14 / numberOfSublayouts;
    [(PXGAbsoluteCompositeLayout *)self setFrame:index forSublayoutAtIndex:x, y, width, height];
    [(PXGAbsoluteCompositeLayout *)self setZPosition:index forSublayoutAtIndex:v15 * -v12];

    [(PXGAbsoluteCompositeLayout *)self setReferenceDepth:index forSublayoutAtIndex:v15];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateSublayoutPositions]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:559 description:{@"invalidating %lu after it already has been updated", 4}];

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
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  wantsRelatedOverlayScrollable = [viewModel wantsRelatedOverlayScrollable];

  scrollSublayoutIndex = self->_scrollSublayoutIndex;
  if (wantsRelatedOverlayScrollable)
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateScrollSpritesAndSublayouts]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:529 description:{@"invalidating %lu after it already has been updated", 2}];

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
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  relatedModels = [viewModel relatedModels];
  v5 = [relatedModels count];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout _invalidateRelatedSpritesAndSublayouts]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:503 description:{@"invalidating %lu after it already has been updated", 1}];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler handleFailureInFunction:v13 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
        [currentHandler2 handleFailureInFunction:v15 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler3 handleFailureInFunction:v17 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler4 handleFailureInFunction:v19 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler5 handleFailureInFunction:v21 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler6 handleFailureInFunction:v23 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler7 handleFailureInFunction:v25 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler8 handleFailureInFunction:v27 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryRelatedOverlayLayout update]"];
      [currentHandler9 handleFailureInFunction:v29 file:@"PXStoryRelatedOverlayLayout.m" lineNumber:498 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v30.receiver = self;
  v30.super_class = PXStoryRelatedOverlayLayout;
  [(PXGCompositeLayout *)&v30 update];
}

- (void)_autoplayUpNext
{
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  [viewModel performChanges:&__block_literal_global_414];
}

- (void)_considerChangingToSelectedRelatedMemory
{
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  if ([viewLayoutSpec upNextAnimationStyle] == 2 && (objc_msgSend(viewModel, "isPerformingCrossfadeTransitionToRelated") & 1) == 0)
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
      [viewModel performChanges:v7];
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
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  if ([viewLayoutSpec upNextAnimationStyle] != 1)
  {
LABEL_9:

    v6 = viewModel;
    goto LABEL_10;
  }

  shouldSimplifyUIForAccessibility = [viewModel shouldSimplifyUIForAccessibility];

  v6 = viewModel;
  if ((shouldSimplifyUIForAccessibility & 1) == 0)
  {
    selectedRelatedIndex = [viewModel selectedRelatedIndex];
    v6 = viewModel;
    if (selectedRelatedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      viewLayoutSpec = [(PXStoryRelatedOverlayLayout *)self sublayoutAtIndex:[(PXStoryRelatedOverlayLayout *)self _sublayoutIndexForRelatedIndex:?] loadIfNeeded:0];
      if (!viewLayoutSpec)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"sublayout != nil"}];
      }

      generativeMemoryController = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
      wantsMemoryCreationCard = [generativeMemoryController wantsMemoryCreationCard];

      if (wantsMemoryCreationCard)
      {
        generativeMemoryController2 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
        [generativeMemoryController2 setMemoryCardVisible:0 animated:1];
      }

      v11 = PXStoryRelatedAnimationCreate(viewLayoutSpec);
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)setWantsNavigationButton:(BOOL)button
{
  if (self->_wantsNavigationButton != button)
  {
    v16 = v6;
    v17 = v5;
    v18 = v3;
    v19 = v4;
    self->_wantsNavigationButton = button;
    [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
    viewLayoutSpec = [viewModel viewLayoutSpec];
    [viewLayoutSpec relatedNavigationButtonFadeDuration];
    v12 = v11;

    navigationButtonAlphaAnimator = [(PXStoryRelatedOverlayLayout *)self navigationButtonAlphaAnimator];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__PXStoryRelatedOverlayLayout_setWantsNavigationButton___block_invoke;
    v14[3] = &__block_descriptor_33_e35_v16__0___PXMutableNumberAnimator__8l;
    buttonCopy = button;
    [navigationButtonAlphaAnimator performChangesWithDuration:1 curve:v14 changes:v12];
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

- (void)setNavigationButtonDirection:(int64_t)direction
{
  if (self->_navigationButtonDirection != direction)
  {
    self->_navigationButtonDirection = direction;
    viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
    viewLayoutSpec = [viewModel viewLayoutSpec];

    v7 = objc_alloc_init(PXStoryChromeButtonConfiguration);
    [(PXStoryChromeButtonConfiguration *)v7 setBackgroundStyle:3];
    [(PXStoryChromeButtonConfiguration *)v7 setTarget:self];
    [viewLayoutSpec relatedNavigationButtonSystemImagePointSize];
    [(PXStoryChromeButtonConfiguration *)v7 setPreferredSystemImagePointSize:?];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(PXStoryChromeButtonConfiguration *)v7 setTintColor:blackColor];

    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.75 alpha:1.0];
    [(PXStoryChromeButtonConfiguration *)v7 setSolidBackgroundColor:v9];

    [(PXStoryChromeButtonConfiguration *)v7 setPreferredSystemImageWeight:*MEMORY[0x1E69DB958]];
    [(PXStoryChromeButtonConfiguration *)v7 setAction:sel__handleNavigationButton_];
    relatedNavigationChromeButtonSpec = [viewLayoutSpec relatedNavigationChromeButtonSpec];
    [(PXStoryChromeButtonConfiguration *)v7 setSpec:relatedNavigationChromeButtonSpec];

    if (direction == 1)
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

- (void)showOrHideFullRelated:(BOOL)related
{
  if (related)
  {
    scrollContentLayout = [(PXStoryRelatedOverlayLayout *)self scrollContentLayout];
    [scrollContentLayout scrollableOutsets];
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

- (void)_handleNavigationButton:(id)button
{
  v4 = [(PXStoryRelatedOverlayLayout *)self navigationButtonDirection]== 2;

  [(PXStoryRelatedOverlayLayout *)self showOrHideFullRelated:v4];
}

- (void)setCountDownValue:(int64_t)value
{
  if (self->_countDownValue != value)
  {
    self->_countDownValue = value;
    [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
  }
}

- (void)setCountDownTimer:(id)timer
{
  timerCopy = timer;
  countDownTimer = self->_countDownTimer;
  if (countDownTimer != timerCopy)
  {
    v7 = timerCopy;
    [(NSTimer *)countDownTimer invalidate];
    objc_storeStrong(&self->_countDownTimer, timer);
    timerCopy = v7;
  }
}

- (void)_handleCountDownTimer:(id)timer
{
  if ([(PXStoryRelatedOverlayLayout *)self countDownValue]< 1)
  {
    [(PXStoryRelatedOverlayLayout *)self _autoplayUpNext];

    [(PXStoryRelatedOverlayLayout *)self setShouldCountDown:0];
  }

  else
  {
    [(PXStoryRelatedOverlayLayout *)self setCountDownValue:[(PXStoryRelatedOverlayLayout *)self countDownValue]- 1];
    viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
    viewLayoutSpec = [viewModel viewLayoutSpec];

    countDownValue = [(PXStoryRelatedOverlayLayout *)self countDownValue];
    [viewLayoutSpec upNextCountDownInitialVisibleValue];
    if (v6 == countDownValue && [viewLayoutSpec upNextCountdownPlacement] == 1)
    {
      countDownAlphaAnimator = [(PXStoryRelatedOverlayLayout *)self countDownAlphaAnimator];
      [countDownAlphaAnimator performChangesUsingDefaultSpringAnimationWithInitialVelocity:&__block_literal_global_389_242148 changes:0.0];
    }

    countDownValue2 = [(PXStoryRelatedOverlayLayout *)self countDownValue];
    [viewLayoutSpec upNextCountDownInitialVisibleValue];
    if (v9 >= countDownValue2 && [viewLayoutSpec upNextCountdownPlacement] == 2)
    {
      [(PXStoryRelatedOverlayLayout *)self _setFirstRelatedLayoutCountdownValue:[(PXStoryRelatedOverlayLayout *)self countDownValue]];
    }
  }
}

- (void)setShouldCountDown:(BOOL)down
{
  if (self->_shouldCountDown != down)
  {
    self->_shouldCountDown = down;
    [(PXStoryRelatedOverlayLayout *)self _invalidateContent];
    if (self->_shouldCountDown)
    {
      v20 = [MEMORY[0x1E695DFF0] px_timerWithTimeInterval:self weakTarget:sel__handleCountDownTimer_ selector:0 userInfo:1 repeats:1.0];
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [currentRunLoop addTimer:v20 forMode:*MEMORY[0x1E695DA28]];

      viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
      viewLayoutSpec = [viewModel viewLayoutSpec];

      [viewLayoutSpec upNextCountDownAppearDelay];
      v9 = v8;
      [viewLayoutSpec upNextCountDownInitialVisibleValue];
      [(PXStoryRelatedOverlayLayout *)self setCountDownValue:(v9 + v10)];
    }

    else
    {
      viewModel2 = [(PXStoryRelatedOverlayLayout *)self viewModel];
      viewLayoutSpec2 = [viewModel2 viewLayoutSpec];
      upNextCountdownPlacement = [viewLayoutSpec2 upNextCountdownPlacement];

      switch(upNextCountdownPlacement)
      {
        case 1:
          countDownAlphaAnimator = [(PXStoryRelatedOverlayLayout *)self countDownAlphaAnimator];
          viewModel3 = [(PXStoryRelatedOverlayLayout *)self viewModel];
          viewLayoutSpec3 = [viewModel3 viewLayoutSpec];
          [viewLayoutSpec3 upNextCountDownFadeOutDuration];
          v19 = v18;

          [countDownAlphaAnimator performChangesWithDuration:1 curve:&__block_literal_global_242153 changes:v19];
          break;
        case 2:
          [(PXStoryRelatedOverlayLayout *)self _setFirstRelatedLayoutCountdownValue:0x7FFFFFFFFFFFFFFFLL];
          break;
        case 0:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:296 description:@"Code which should be unreachable has been reached"];

          abort();
      }

      v20 = 0;
    }

    [(PXStoryRelatedOverlayLayout *)self setCountDownTimer:v20];
  }
}

- (void)setIsRelatedOverlayScrolledIntoView:(BOOL)view
{
  if (self->_isRelatedOverlayScrolledIntoView != view)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_isRelatedOverlayScrolledIntoView = view;
    viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PXStoryRelatedOverlayLayout_setIsRelatedOverlayScrolledIntoView___block_invoke;
    v7[3] = &unk_1E774B048;
    v7[4] = self;
    [viewModel performChanges:v7];
  }
}

- (void)_navigateToRelatedMemoryAtIndex:(int64_t)index
{
  generativeMemoryController = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
  index = [generativeMemoryController index];

  if (index == index)
  {
    generativeMemoryController2 = [(PXStoryRelatedOverlayLayout *)self generativeMemoryController];
    [generativeMemoryController2 openGenerativeMemory];
  }

  else
  {
    v8 = [(PXStoryRelatedOverlayLayout *)self _relatedModelIndexOffsetByMemoryCreation:index];
    self->_selectedIndex = v8;
    viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PXStoryRelatedOverlayLayout__navigateToRelatedMemoryAtIndex___block_invoke;
    v12[3] = &unk_1E7749EF8;
    v15 = v8;
    v16 = a2;
    v13 = viewModel;
    selfCopy = self;
    v10 = viewModel;
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

- (void)_selectRelatedMemoryAtIndex:(int64_t)index
{
  objc_initWeak(&location, self);
  viewModel = [(PXStoryRelatedOverlayLayout *)self viewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXStoryRelatedOverlayLayout__selectRelatedMemoryAtIndex___block_invoke;
  v6[3] = &unk_1E7749ED0;
  objc_copyWeak(v7, &location);
  v7[1] = index;
  [viewModel requestNavigationPermission:v6];

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

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  relatedSelectionSpriteIndexRange = self->_relatedSelectionSpriteIndexRange;
  v5 = index >= relatedSelectionSpriteIndexRange.location;
  v6 = index - relatedSelectionSpriteIndexRange.location;
  v7 = relatedSelectionSpriteIndexRange.length + relatedSelectionSpriteIndexRange.location;
  if (v5 && v7 > index)
  {
    v10 = [[PXStoryHitTestResult alloc] initWithSpriteIndex:*&index layout:self identifier:@"PXStoryHitTestIdentifierRelated"];
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
    v9 = [[PXStoryHitTestResult alloc] initWithSpriteIndex:*&index layout:self identifier:@"PXStoryHitTestIdentifierRelated"];
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

- (PXStoryRelatedOverlayLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v20.receiver = self;
  v20.super_class = PXStoryRelatedOverlayLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_242086];
    v8 = [PXStoryRelatedLayoutGenerator alloc];
    viewLayoutSpec = [(PXStoryViewModel *)v7->_viewModel viewLayoutSpec];
    relatedLayoutMetrics = [viewLayoutSpec relatedLayoutMetrics];
    v11 = [(PXStoryRelatedLayoutGenerator *)v8 initWithMetrics:relatedLayoutMetrics];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayLayout.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXStoryRelatedOverlayLayout init]"}];

  abort();
}

@end