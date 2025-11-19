@interface NCNotificationListCoalescingHeaderCell
+ (CGSize)_coalescingControlsViewPreferredSize;
+ (double)coalescingHeaderCellHeightForWidth:(double)a3 title:(id)a4;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)dismissModalFullScreenIfNeeded;
- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)a3;
- (CGRect)_coalescingControlsViewFrameForBounds:(CGRect)a3;
- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate;
- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)a3;
- (void)_configureCoalescingControlsViewIfNecessary;
- (void)_configureHeaderTitleViewIfNecessary;
- (void)_layoutCoalescingControlsView;
- (void)_layoutHeaderTitleView;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)layoutSubviews;
- (void)notificationListCoalescingControlsView:(id)a3 didTransitionToClearState:(BOOL)a4;
- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)a3;
- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)a3;
- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)a3;
- (void)notificationListCoalescingControlsViewRequestsClear:(id)a3;
- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)a3;
- (void)notificationListCoalescingControlsViewRequestsRestack:(id)a3;
- (void)resetClearButtonStateAnimated:(BOOL)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setClearAllText:(id)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

+ (double)coalescingHeaderCellHeightForWidth:(double)a3 title:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D74300];
  v7 = *MEMORY[0x277D76A20];
  v8 = a4;
  v9 = [v6 preferredFontForTextStyle:v7];
  v10 = MEMORY[0x277D76620];
  v11 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  _NCSizeCategoryIsAX(v11);

  if (!coalescingHeaderCellHeightForWidth_title____drawingContext)
  {
    v12 = objc_alloc_init(MEMORY[0x277D74260]);
    v13 = coalescingHeaderCellHeightForWidth_title____drawingContext;
    coalescingHeaderCellHeightForWidth_title____drawingContext = v12;

    [coalescingHeaderCellHeightForWidth_title____drawingContext setWantsNumberOfLineFragments:1];
  }

  [a1 _coalescingControlsViewPreferredSize];
  v15 = v14;
  v16 = [MEMORY[0x277D75418] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  v18 = v17 & 0xFFFFFFFFFFFFFFFBLL;
  if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [*v10 activeInterfaceOrientation];
  }

  else
  {
    v16 = [MEMORY[0x277D75C80] currentTraitCollection];
    [v16 verticalSizeClass];
  }

  v19 = v15 + 0.0;
  v20 = [MEMORY[0x277D75418] currentDevice];
  v21 = [v20 userInterfaceIdiom];

  v22 = v21 & 0xFFFFFFFFFFFFFFFBLL;
  if ((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = ([*v10 activeInterfaceOrientation] - 1) < 2;
  }

  else
  {
    v20 = [MEMORY[0x277D75C80] currentTraitCollection];
    v23 = [v20 verticalSizeClass] == 2;
  }

  v24 = 6.0;
  if (v23)
  {
    v24 = 10.0;
  }

  v25 = a3 - (v19 + v24);
  v30 = *MEMORY[0x277D740A8];
  v31[0] = v9;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v8 boundingRectWithSize:1 options:v26 attributes:coalescingHeaderCellHeightForWidth_title____drawingContext context:{v25, 0.0}];

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

- (void)resetClearButtonStateAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
  [v4 resetClearButtonStateAnimated:v3];
}

- (BOOL)dismissModalFullScreenIfNeeded
{
  v2 = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
  v3 = [v2 dismissModalFullScreenIfNeeded];

  return v3;
}

- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
  v6 = [v5 shouldReceiveTouchAtPointInWindowSpace:{x, y}];

  return v6;
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(NCNotificationListHeaderTitleView *)self->_headerTitleView setTitle:v5];
}

- (void)setClearAllText:(id)a3
{
  objc_storeStrong(&self->_clearAllText, a3);
  v5 = a3;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setClearAllText:v5];
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

- (void)notificationListCoalescingControlsViewRequestsClear:(id)a3
{
  v4 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)a3
{
  v4 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewRequestsRestack:(id)a3
{
  v4 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsRestackingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsView:(id)a3 didTransitionToClearState:(BOOL)a4
{
  v4 = a4;
  v6 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationListCoalescingControlsHandler:self didTransitionToClearState:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)a3
{
  v4 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:self];
  }
}

- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:self];
  }
}

- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationListCoalescingHeaderCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:self];
  }
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);
  v5 = a3;
  [(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForLegibilitySettingsChange:v5];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    v4 = a3;
    self->_adjustsFontForContentSizeCategory = a3;
    v6 = [(NCNotificationListCoalescingHeaderCell *)self coalescingControlsView];
    [v6 setAdjustsFontForContentSizeCategory:v4];

    v7 = [(NCNotificationListCoalescingHeaderCell *)self headerTitleView];
    [v7 setAdjustsFontForContentSizeCategory:v4];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  if (!self->_adjustsFontForContentSizeCategory)
  {
    return 0;
  }

  v3 = [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView adjustForContentSizeCategoryChange];
  if (![(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForContentSizeCategoryChange]&& !v3)
  {
    return 0;
  }

  [(NCNotificationListCoalescingHeaderCell *)self setNeedsLayout];
  return 1;
}

- (void)setMaterialGroupNameBase:(id)a3
{
  objc_storeStrong(&self->_materialGroupNameBase, a3);
  v5 = a3;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setMaterialGroupNameBase:self->_materialGroupNameBase];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationListCoalescingHeaderCell;
  v4 = a3;
  [(NCNotificationListCoalescingHeaderCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(NCNotificationListCoalescingHeaderCell *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
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
    v7 = [(NCNotificationListCoalescingHeaderCell *)self materialGroupNameBase];
    [(NCNotificationListCoalescingControlsView *)v6 setMaterialGroupNameBase:v7];

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

- (CGRect)_coalescingControlsViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView sizeThatFits:a3.size.width, a3.size.height];
  BSRectWithSize();
  rect = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x277D76620];
  v16 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v16);

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

  v20 = [MEMORY[0x277D75418] currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if ((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

  v29 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([v29 verticalSizeClass] == 2)
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
  v12 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v12);

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
    v29 = [MEMORY[0x277D75418] currentDevice];
    v30 = [v29 userInterfaceIdiom];

    v31 = v30 & 0xFFFFFFFFFFFFFFFBLL;
    if (v31 == 1)
    {
      v32 = ([*v11 activeInterfaceOrientation] - 1) < 2;
    }

    else
    {
      v29 = [MEMORY[0x277D75C80] currentTraitCollection];
      v32 = [v29 verticalSizeClass] == 2;
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

  v33 = [MEMORY[0x277D75418] currentDevice];
  v34 = [v33 userInterfaceIdiom];

  if ((v34 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v29 = [MEMORY[0x277D75C80] currentTraitCollection];
    if ([v29 verticalSizeClass] == 2)
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