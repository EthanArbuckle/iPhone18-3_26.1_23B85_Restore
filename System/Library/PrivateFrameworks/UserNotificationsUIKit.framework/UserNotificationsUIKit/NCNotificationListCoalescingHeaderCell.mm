@interface NCNotificationListCoalescingHeaderCell
+ (CGSize)_coalescingControlsViewPreferredSize;
+ (double)coalescingHeaderCellHeightForWidth:(double)width title:(id)title;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)dismissModalFullScreenIfNeeded;
- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space;
- (CGRect)_coalescingControlsViewFrameForBounds:(CGRect)bounds;
- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate;
- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)content;
- (void)_configureCoalescingControlsViewIfNecessary;
- (void)_configureHeaderTitleViewIfNecessary;
- (void)_layoutCoalescingControlsView;
- (void)_layoutHeaderTitleView;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)layoutSubviews;
- (void)notificationListCoalescingControlsView:(id)view didTransitionToClearState:(BOOL)state;
- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)interaction;
- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)content;
- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)content;
- (void)notificationListCoalescingControlsViewRequestsClear:(id)clear;
- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)all;
- (void)notificationListCoalescingControlsViewRequestsRestack:(id)restack;
- (void)resetClearButtonStateAnimated:(BOOL)animated;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setClearAllText:(id)text;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCNotificationListCoalescingHeaderCell

+ (CGSize)_coalescingControlsViewPreferredSize
{
  v3 = *(&__coalescingControlsViewPreferredSize + 1);
  v2 = *&__coalescingControlsViewPreferredSize;
  if (*&__coalescingControlsViewPreferredSize == 0.0 && *(&__coalescingControlsViewPreferredSize + 1) == 0.0)
  {
    v4 = objc_alloc_init(NCNotificationListCoalescingControlsView);
    [(NCNotificationListCoalescingControlsView *)v4 setAdjustsFontForContentSizeCategory:1];
    [(NCNotificationListCoalescingControlsView *)v4 sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    *&__coalescingControlsViewPreferredSize = v5;
    *(&__coalescingControlsViewPreferredSize + 1) = v6;

    v3 = *(&__coalescingControlsViewPreferredSize + 1);
    v2 = *&__coalescingControlsViewPreferredSize;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)coalescingHeaderCellHeightForWidth:(double)width title:(id)title
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D74300];
  v7 = *MEMORY[0x277D76A20];
  titleCopy = title;
  v9 = [v6 preferredFontForTextStyle:v7];
  v10 = MEMORY[0x277D76620];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  _NCSizeCategoryIsAX(preferredContentSizeCategory);

  if (!coalescingHeaderCellHeightForWidth_title____drawingContext)
  {
    v12 = objc_alloc_init(MEMORY[0x277D74260]);
    v13 = coalescingHeaderCellHeightForWidth_title____drawingContext;
    coalescingHeaderCellHeightForWidth_title____drawingContext = v12;

    [coalescingHeaderCellHeightForWidth_title____drawingContext setWantsNumberOfLineFragments:1];
  }

  [self _coalescingControlsViewPreferredSize];
  v15 = v14;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v18 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [*v10 activeInterfaceOrientation];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75C80] currentTraitCollection];
    [currentDevice verticalSizeClass];
  }

  v19 = v15 + 0.0;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v22 = userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = ([*v10 activeInterfaceOrientation] - 1) < 2;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75C80] currentTraitCollection];
    v23 = [currentDevice2 verticalSizeClass] == 2;
  }

  v24 = 6.0;
  if (v23)
  {
    v24 = 10.0;
  }

  v25 = width - (v19 + v24);
  v30 = *MEMORY[0x277D740A8];
  v31[0] = v9;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [titleCopy boundingRectWithSize:1 options:v26 attributes:coalescingHeaderCellHeightForWidth_title____drawingContext context:{v25, 0.0}];

  if (v22 != 1)
  {
  }

  if (v18 != 1)
  {
  }

  [v9 lineHeight];
  [coalescingHeaderCellHeightForWidth_title____drawingContext numberOfLineFragments];
  _NCMainScreenScale();
  UICeilToScale();
  v28 = v27;

  return v28;
}

- (void)resetClearButtonStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  coalescingControlsView = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
  [coalescingControlsView resetClearButtonStateAnimated:animatedCopy];
}

- (BOOL)dismissModalFullScreenIfNeeded
{
  coalescingControlsView = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
  dismissModalFullScreenIfNeeded = [coalescingControlsView dismissModalFullScreenIfNeeded];

  return dismissModalFullScreenIfNeeded;
}

- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  coalescingControlsView = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
  v6 = [coalescingControlsView shouldReceiveTouchAtPointInWindowSpace:{x, y}];

  return v6;
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(NCNotificationListHeaderTitleView *)self->_headerTitleView setTitle:titleCopy];
}

- (void)setClearAllText:(id)text
{
  objc_storeStrong(&self->_clearAllText, text);
  textCopy = text;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setClearAllText:textCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListCoalescingHeaderCell;
  [(NCNotificationListCoalescingHeaderCell *)&v3 layoutSubviews];
  [(NCNotificationListCoalescingHeaderCell *)self _configureCoalescingControlsViewIfNecessary];
  [(NCNotificationListCoalescingHeaderCell *)self _configureHeaderTitleViewIfNecessary];
  [(NCNotificationListCoalescingHeaderCell *)self _layoutCoalescingControlsView];
  [(NCNotificationListCoalescingHeaderCell *)self _layoutHeaderTitleView];
}

- (void)notificationListCoalescingControlsViewRequestsClear:(id)clear
{
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v5 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)content
{
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (handlerDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [handlerDelegate containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)all
{
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v5 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewRequestsRestack:(id)restack
{
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v5 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsRestackingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsView:(id)view didTransitionToClearState:(BOOL)state
{
  stateCopy = state;
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v7 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationListCoalescingControlsHandler:self didTransitionToClearState:stateCopy];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)interaction
{
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [handlerDelegate notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:self];
  }
}

- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)content
{
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [handlerDelegate notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:self];
  }
}

- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)content
{
  handlerDelegate = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [handlerDelegate notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:self];
  }
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  objc_storeStrong(&self->_legibilitySettings, change);
  changeCopy = change;
  [(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForLegibilitySettingsChange:changeCopy];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    categoryCopy = category;
    self->_adjustsFontForContentSizeCategory = category;
    coalescingControlsView = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
    [coalescingControlsView setAdjustsFontForContentSizeCategory:categoryCopy];

    headerTitleView = [(NCNotificationListCoalescingHeaderCell *)self headerTitleView];
    [headerTitleView setAdjustsFontForContentSizeCategory:categoryCopy];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  if (!self->_adjustsFontForContentSizeCategory)
  {
    return 0;
  }

  adjustForContentSizeCategoryChange = [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView adjustForContentSizeCategoryChange];
  if (![(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForContentSizeCategoryChange]&& !adjustForContentSizeCategoryChange)
  {
    return 0;
  }

  [(NCNotificationListCoalescingHeaderCell *)self setNeedsLayout];
  return 1;
}

- (void)setMaterialGroupNameBase:(id)base
{
  objc_storeStrong(&self->_materialGroupNameBase, base);
  baseCopy = base;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setMaterialGroupNameBase:self->_materialGroupNameBase];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NCNotificationListCoalescingHeaderCell;
  changeCopy = change;
  [(NCNotificationListCoalescingHeaderCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NCNotificationListCoalescingHeaderCell *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(NCNotificationListCoalescingHeaderCell *)self _contentSizeCategoryDidChange];
  }

  [(NCNotificationListCoalescingHeaderCell *)self setNeedsLayout];
}

- (void)_configureCoalescingControlsViewIfNecessary
{
  if (!self->_coalescingControlsView)
  {
    v3 = [NCNotificationListCoalescingControlsView alloc];
    [(NCNotificationListCoalescingHeaderCell *)self bounds];
    v4 = [(NCNotificationListCoalescingControlsView *)v3 initWithFrame:?];
    coalescingControlsView = self->_coalescingControlsView;
    self->_coalescingControlsView = v4;

    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setDelegate:self];
    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setClearAllText:self->_clearAllText];
    v6 = self->_coalescingControlsView;
    materialGroupNameBase = [(NCNotificationListCoalescingHeaderCell *)self materialGroupNameBase];
    [(NCNotificationListCoalescingControlsView *)v6 setMaterialGroupNameBase:materialGroupNameBase];

    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setAdjustsFontForContentSizeCategory:[(NCNotificationListCoalescingHeaderCell *)self adjustsFontForContentSizeCategory]];
    v8 = self->_coalescingControlsView;

    [(NCNotificationListCoalescingHeaderCell *)self addSubview:v8];
  }
}

- (void)_configureHeaderTitleViewIfNecessary
{
  if (!self->_headerTitleView)
  {
    v3 = [NCNotificationListHeaderTitleView alloc];
    [(NCNotificationListCoalescingHeaderCell *)self bounds];
    v4 = [(NCNotificationListHeaderTitleView *)v3 initWithFrame:?];
    headerTitleView = self->_headerTitleView;
    self->_headerTitleView = v4;

    [(NCNotificationListHeaderTitleView *)self->_headerTitleView setTitle:self->_title];
    [(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForLegibilitySettingsChange:self->_legibilitySettings];
    [(NCNotificationListHeaderTitleView *)self->_headerTitleView setAdjustsFontForContentSizeCategory:[(NCNotificationListCoalescingHeaderCell *)self adjustsFontForContentSizeCategory]];
    [(NCNotificationListCoalescingHeaderCell *)self addSubview:self->_headerTitleView];
    v6 = self->_headerTitleView;

    [(NCNotificationListCoalescingHeaderCell *)self sendSubviewToBack:v6];
  }
}

- (CGRect)_coalescingControlsViewFrameForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView sizeThatFits:bounds.size.width, bounds.size.height];
  BSRectWithSize();
  rect = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x277D76620];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  v18 = IsAX ^ [(NCNotificationListCoalescingHeaderCell *)self _shouldReverseLayoutDirection];
  v19 = 0.0;
  if (!IsAX)
  {
LABEL_6:
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (([*v15 activeInterfaceOrientation] - 1) >= 2)
    {
      v19 = 6.0;
    }

    else
    {
      v19 = 10.0;
    }

    goto LABEL_6;
  }

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection verticalSizeClass] == 2)
  {
    v19 = 10.0;
  }

  else
  {
    v19 = 6.0;
  }

  if (v18)
  {
    goto LABEL_8;
  }

LABEL_7:
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v30 = x;
  v22 = y;
  v23 = CGRectGetWidth(v33);
  v34.origin.x = rect;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v24 = v23 - CGRectGetWidth(v34);
  y = v22;
  x = v30;
  v19 = v24 - v19;
LABEL_8:
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  CGRectGetHeight(v35);
  v36.origin.x = v19;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  CGRectGetHeight(v36);
  _NCMainScreenScale();

  UIRectIntegralWithScale();
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)_layoutCoalescingControlsView
{
  [(NCNotificationListCoalescingHeaderCell *)self bounds];
  [(NCNotificationListCoalescingHeaderCell *)self _coalescingControlsViewFrameForBounds:?];
  coalescingControlsView = self->_coalescingControlsView;

  [(NCNotificationListCoalescingControlsView *)coalescingControlsView setFrame:?];
}

- (void)_layoutHeaderTitleView
{
  [(NCNotificationListCoalescingHeaderCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x277D76620];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  [(NCNotificationListCoalescingHeaderCell *)self _coalescingControlsViewFrameForBounds:v4, v6, v8, v10];
  v42 = v15;
  v43 = v14;
  v40 = v16;
  v41 = v17;
  if (IsAX)
  {
    v18 = 12.0;
  }

  else
  {
    v18 = 22.0;
  }

  headerTitleView = self->_headerTitleView;
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  Width = CGRectGetWidth(v46);
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  [(NCNotificationListHeaderTitleView *)headerTitleView sizeThatFits:Width, CGRectGetHeight(v47) - v18];
  BSRectWithSize();
  v22 = v21;
  rect = v23;
  v25 = v24;
  v27 = v26;
  if ([(NCNotificationListCoalescingHeaderCell *)self _shouldReverseLayoutDirection])
  {
    v48.origin.x = v4;
    v48.origin.y = v6;
    v48.size.width = v8;
    v48.size.height = v10;
    v28 = CGRectGetWidth(v48);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v31 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
    if (v31 == 1)
    {
      v32 = ([*v11 activeInterfaceOrientation] - 1) < 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75C80] currentTraitCollection];
      v32 = [currentDevice verticalSizeClass] == 2;
    }

    v36 = 6.0;
    if (v32)
    {
      v36 = 10.0;
    }

    v37 = v28 - v36;
    v49.origin.x = v22;
    v49.origin.y = rect;
    v49.size.width = v25;
    v49.size.height = v27;
    v35 = v37 - CGRectGetWidth(v49);
    if (v31 == 1)
    {
      if (IsAX)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

LABEL_22:

    if (IsAX)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    currentDevice = [MEMORY[0x277D75C80] currentTraitCollection];
    if ([currentDevice verticalSizeClass] == 2)
    {
      v35 = 10.0;
    }

    else
    {
      v35 = 6.0;
    }

    goto LABEL_22;
  }

  if (([*v11 activeInterfaceOrientation] - 1) >= 2)
  {
    v35 = 6.0;
  }

  else
  {
    v35 = 10.0;
  }

  if (IsAX)
  {
    goto LABEL_26;
  }

LABEL_23:
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  Height = CGRectGetHeight(v50);
  v51.origin.x = v43;
  v51.origin.y = v40;
  v51.size.width = v42;
  v51.size.height = v41;
  if ((Height / CGRectGetHeight(v51)) >= 2)
  {
    v52.origin.x = v35;
    v52.origin.y = rect;
    v52.size.width = v25;
    v52.size.height = v27;
    CGRectGetHeight(v52);
    v53.origin.x = v43;
    v53.origin.y = v40;
    v53.size.width = v42;
    v53.size.height = v41;
    CGRectGetHeight(v53);
  }

  UIRectCenteredYInRect();
LABEL_26:
  _NCMainScreenScale();
  UIRectIntegralWithScale();
  v39 = self->_headerTitleView;

  [(NCNotificationListHeaderTitleView *)v39 setFrame:?];
}

- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerDelegate);

  return WeakRetained;
}

@end