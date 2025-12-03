@interface SLAttributionView
+ (void)presentTranscriptForAttributionIdentifier:(id)identifier attachmentGUID:(id)d presentingViewController:(id)controller;
- (BOOL)_crossPlatformIsRTL;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SLAttributionView)initWithHighlight:(id)highlight;
- (SLAttributionViewDelegate)delegate;
- (double)_minHeightForCurrentStyle;
- (id)_backgroundColorEnforcingPolicies;
- (id)additionalContextMenuItemsForHighlightPillView:(id)view;
- (id)contextMenuItems;
- (int64_t)_alignmentEnforcingPolicies;
- (unint64_t)variant;
- (void)_sanitizeFrameIfNecessaryForTAMIC;
- (void)_updateMarqueeRequiredIfNecessary;
- (void)dealloc;
- (void)excludeContextMenuItemsWithIdentifiers:(id)identifiers;
- (void)feedbackForCloseButtonHit;
- (void)highlightPillViewDidLoadNewRemoteContent:(id)content;
- (void)layoutSubviews;
- (void)prepareLayout;
- (void)prepareLayoutWithMaxWidth:(double)width;
- (void)setBlurEffectGroupName:(id)name;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setHideMenuItemTitle:(id)title;
- (void)setSupplementalMenu:(id)menu;
- (void)updateAlignment:(int64_t)alignment;
- (void)updateBackgroundColor:(id)color;
- (void)updateBackgroundStyle:(int64_t)style;
- (void)updateConstraints;
- (void)updateInterfaceStyle:(int64_t)style;
- (void)useBannerLayout;
@end

@implementation SLAttributionView

- (SLAttributionView)initWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v26.receiver = self;
  v26.super_class = SLAttributionView;
  v6 = [(SLAttributionView *)&v26 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    [(SLAttributionView *)v6 _setHostsLayoutEngine:1];
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(SLAttributionView *)v7 initWithHighlight:highlightCopy, v8];
    }

    objc_storeStrong(&v7->_highlight, highlight);
    v7->_isCollaboration = 0;
    objc_opt_class();
    v7->_isCollaboration = objc_opt_isKindOfClass() & 1;
    v7->_preferredBackgroundStyle = -1;
    v7->_preferredAlignment = -1;
    preferredBackgroundColor = v7->_preferredBackgroundColor;
    v7->_preferredBackgroundColor = 0;

    v10 = [(SLAttributionView *)v7 _backgroundStyleEnforcingPolicies]== 1;
    v11 = [SLHighlightPillView alloc];
    highlight = [(SLAttributionView *)v7 highlight];
    [(SLAttributionView *)v7 frame];
    v14 = [(SLHighlightPillView *)v11 initWithHighlight:highlight maxWidth:[(SLAttributionView *)v7 variant] variant:v10 shouldDrawBlur:v13];
    [(SLAttributionView *)v7 setPillView:v14];

    _backgroundColorEnforcingPolicies = [(SLAttributionView *)v7 _backgroundColorEnforcingPolicies];
    pillView = [(SLAttributionView *)v7 pillView];
    [pillView setPreferredBackgroundColor:_backgroundColorEnforcingPolicies];

    pillView2 = [(SLAttributionView *)v7 pillView];
    [(SLAttributionView *)v7 addSubview:pillView2];

    pillView3 = [(SLAttributionView *)v7 pillView];
    [pillView3 setDelegate:v7];

    pillView4 = [(SLAttributionView *)v7 pillView];
    centerYAnchor = [pillView4 centerYAnchor];
    centerYAnchor2 = [(SLAttributionView *)v7 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(SLAttributionView *)v7 setPillCenterYConstraint:v22];

    pillCenterYConstraint = [(SLAttributionView *)v7 pillCenterYConstraint];
    [pillCenterYConstraint setIdentifier:@"SLAttributionViewInternal-PillCenterY"];

    pillView5 = [(SLAttributionView *)v7 pillView];
    [pillView5 setAccessibilityIdentifier:@"AttributionView"];
  }

  return v7;
}

- (void)setBlurEffectGroupName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_blurEffectGroupName isEqualToString:?])
  {
    objc_storeStrong(&self->_blurEffectGroupName, name);
    blurEffectGroupName = self->_blurEffectGroupName;
    pillView = [(SLAttributionView *)self pillView];
    [pillView setBlurEffectGroupName:blurEffectGroupName];
  }
}

- (BOOL)_crossPlatformIsRTL
{
  traitCollection = [(SLAttributionView *)self traitCollection];
  v3 = [traitCollection layoutDirection] == 1;

  return v3;
}

- (void)layoutSubviews
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SLAttributionView *)self frame];
  v18.origin.x = v8;
  v18.origin.y = v9;
  v18.size.width = v10;
  v18.size.height = v11;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectEqualToRect(v16, v18) && width <= 0.0)
  {
    [(SLAttributionView *)self frame];
    v12 = SL_NSStringFromRect(v17);
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView setFrame:];
    }
  }

  [(SLAttributionView *)self _minHeightForCurrentStyle];
  v15.receiver = self;
  v15.super_class = SLAttributionView;
  [(SLAttributionView *)&v15 setFrame:x, y, width, fmax(v14, height)];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(SLAttributionView *)self pillView:fits.width];
  [v4 expectedHeightForMaxWidth:width];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(SLAttributionView *)self frame];
  v4 = v3;
  [(SLAttributionView *)self _minHeightForCurrentStyle];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)prepareLayout
{
  [(SLAttributionView *)self frame];

  [(SLAttributionView *)self prepareLayoutWithMaxWidth:v3];
}

- (void)prepareLayoutWithMaxWidth:(double)width
{
  if (self->_enablesMarquee)
  {
    widthCopy = 10000.0;
  }

  else
  {
    widthCopy = width;
  }

  if ([(SLAttributionView *)self usesBannerLayout])
  {
    closeButton = [(SLAttributionView *)self closeButton];
    [closeButton frame];
    widthCopy = fmax(widthCopy - v7 + -8.0, 0.0);

    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView prepareLayoutWithMaxWidth:];
    }
  }

  if (width <= 0.0)
  {
    v15 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLAttributionView prepareLayoutWithMaxWidth:v15];
    }
  }

  else
  {
    pillView = [(SLAttributionView *)self pillView];
    [pillView maxWidth];
    v11 = SL_CGFloatApproximatelyEqualToFloat(widthCopy, v10);

    if (!v11)
    {
      v12 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SLAttributionView prepareLayoutWithMaxWidth:];
      }

      pillView2 = [(SLAttributionView *)self pillView];
      [pillView2 setMaxWidth:widthCopy];

      pillView3 = [(SLAttributionView *)self pillView];
      [pillView3 setRemoteRenderingEnabled:1];

      [(SLAttributionView *)self _crossPlatformNeedsUpdateConstraints];
      [(SLAttributionView *)self _sanitizeFrameIfNecessaryForTAMIC];
    }
  }
}

- (void)feedbackForCloseButtonHit
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLHighlightPillView %p] _hideMenuItemSelected: Unable to perform hide context menu action without an application identifier.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SLAttributionView_feedbackForCloseButtonHit__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLFrameworkLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) identifier];
      v11 = 134218242;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_INFO, "[SLHighlightPillView %p] _hideMenuItemSelected: Sent hide feedback for highlight: %@. Posting highlights deleted notification.", &v11, 0x16u);
    }

    notify_post("com.apple.spotlight.SyndicatedContentDeleted");
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__SLAttributionView_feedbackForCloseButtonHit__block_invoke_cold_1(a1, v5, v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sanitizeFrameIfNecessaryForTAMIC
{
  if ([(SLAttributionView *)self translatesAutoresizingMaskIntoConstraints])
  {
    pillView = [(SLAttributionView *)self pillView];
    [pillView maxWidth];
    v5 = v4;

    if (v5 != 0.0)
    {
      if (self->_enablesMarquee)
      {
        [(SLAttributionView *)self maxWidthForClippingMarquee];
        v7 = v6;
      }

      else
      {
        pillView2 = [(SLAttributionView *)self pillView];
        [pillView2 maxWidth];
        v7 = v9;
      }

      [(SLAttributionView *)self _minHeightForCurrentStyle];
      v11 = v10;
      [(SLAttributionView *)self frame];
      v13 = fmax(v11, v12);
      [(SLAttributionView *)self frame];
      v15 = v14;
      v17 = v16;
      [(SLAttributionView *)self frame];
      v24.origin.x = v18;
      v24.origin.y = v19;
      v24.size.width = v20;
      v24.size.height = v21;
      v23.origin.x = v15;
      v23.origin.y = v17;
      v23.size.width = v7;
      v23.size.height = v13;
      if (!CGRectEqualToRect(v23, v24))
      {

        [(SLAttributionView *)self setFrame:v15, v17, v7, v13];
      }
    }
  }
}

- (void)updateAlignment:(int64_t)alignment
{
  if ([(SLAttributionView *)self preferredAlignment]!= alignment)
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView updateAlignment:];
    }

    [(SLAttributionView *)self setPreferredAlignment:alignment];
    [(SLAttributionView *)self _updateMarqueeTargetContentAlignment];
    [(SLAttributionView *)self _crossPlatformNeedsUpdateConstraints];
  }
}

- (int64_t)_alignmentEnforcingPolicies
{
  if ([(SLAttributionView *)self preferredAlignment]== -1)
  {
    return 0;
  }

  return [(SLAttributionView *)self preferredAlignment];
}

- (void)updateBackgroundStyle:(int64_t)style
{
  if ([(SLAttributionView *)self preferredBackgroundStyle]!= style)
  {
    [(SLAttributionView *)self setPreferredBackgroundStyle:style];
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView updateBackgroundStyle:];
    }

    pillView = [(SLAttributionView *)self pillView];

    if (pillView)
    {
      v7 = [(SLAttributionView *)self _backgroundStyleEnforcingPolicies]== 1;
      pillView2 = [(SLAttributionView *)self pillView];
      [pillView2 setShouldDrawBackgroundBlur:v7];

      _backgroundColorEnforcingPolicies = [(SLAttributionView *)self _backgroundColorEnforcingPolicies];
      pillView3 = [(SLAttributionView *)self pillView];
      [pillView3 setPreferredBackgroundColor:_backgroundColorEnforcingPolicies];

      [(SLAttributionView *)self _crossPlatformNeedsLayout];
    }
  }
}

- (void)updateInterfaceStyle:(int64_t)style
{
  if (style == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = style == 0;
  }

  [(SLAttributionView *)self setOverrideUserInterfaceStyle:v3];
}

- (void)updateBackgroundColor:(id)color
{
  colorCopy = color;
  preferredBackgroundColor = [(SLAttributionView *)self preferredBackgroundColor];
  v6 = [preferredBackgroundColor isEqual:colorCopy];

  if ((v6 & 1) == 0)
  {
    [(SLAttributionView *)self setPreferredBackgroundColor:colorCopy];
    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView updateBackgroundColor:];
    }

    pillView = [(SLAttributionView *)self pillView];

    if (pillView)
    {
      _backgroundColorEnforcingPolicies = [(SLAttributionView *)self _backgroundColorEnforcingPolicies];
      pillView2 = [(SLAttributionView *)self pillView];
      [pillView2 setPreferredBackgroundColor:_backgroundColorEnforcingPolicies];

      [(SLAttributionView *)self _crossPlatformNeedsLayout];
    }
  }
}

- (id)_backgroundColorEnforcingPolicies
{
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  _backgroundStyleEnforcingPolicies = [(SLAttributionView *)self _backgroundStyleEnforcingPolicies];
  if ([(SLAttributionView *)self _hasiOSBannerVariant]|| _backgroundStyleEnforcingPolicies || ([(SLAttributionView *)self preferredBackgroundColor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    preferredBackgroundColor = [(SLAttributionView *)self preferredBackgroundColor];
    if (preferredBackgroundColor)
    {
      [(SLAttributionView *)self preferredBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] clearColor];
    }
    v7 = ;
  }

  else
  {
    v7 = tertiarySystemFillColor;
  }

  return v7;
}

- (void)setHideMenuItemTitle:(id)title
{
  v24 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  if (![(NSString *)self->_hideMenuItemTitle isEqualToString:titleCopy])
  {
    objc_storeStrong(&self->_hideMenuItemTitle, title);
    hideMenuItemTitle = self->_hideMenuItemTitle;
    if (hideMenuItemTitle)
    {
      v7 = hideMenuItemTitle;
    }

    else
    {
      v8 = SLFrameworkBundle();
      v7 = [v8 localizedStringForKey:@"HIDE_CONTEXTMENU" value:&stru_28468DAB8 table:@"SocialLayer"];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    pillView = [(SLAttributionView *)self pillView];
    contextMenuItems = [pillView contextMenuItems];

    v11 = [contextMenuItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(contextMenuItems);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          identifier = [v15 identifier];
          v17 = [identifier isEqualToString:@"slHideMenuItem"];

          if (v17)
          {
            [v15 setTitle:v7];
            goto LABEL_15;
          }
        }

        v12 = [contextMenuItems countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)presentTranscriptForAttributionIdentifier:(id)identifier attachmentGUID:(id)d presentingViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  controllerCopy = controller;
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = controllerCopy;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "Trying to present Messages Transcript for identifier : %@ and view controller: %@", &v13, 0x16u);
  }

  if (controllerCopy)
  {
    v11 = objc_alloc_init(SLTranscriptController);
    [(SLTranscriptController *)v11 presentTranscriptForMessageGUID:identifierCopy attachmentGUID:dCopy presentingViewController:controllerCopy];
  }

  else
  {
    v11 = SLFrameworkLogHandle();
    if (os_log_type_enabled(&v11->super.super.super, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_231772000, &v11->super.super.super, OS_LOG_TYPE_INFO, "Presenting view controller is nil. Returning.", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)useBannerLayout
{
  if (![(SLAttributionView *)self usesBannerLayout])
  {
    [(SLAttributionView *)self setUsesBannerLayout:1];
    v3 = [(SLAttributionView *)self _backgroundStyleEnforcingPolicies]== 1;
    pillView = [(SLAttributionView *)self pillView];
    [pillView setShouldDrawBackgroundBlur:v3];

    _backgroundColorEnforcingPolicies = [(SLAttributionView *)self _backgroundColorEnforcingPolicies];
    pillView2 = [(SLAttributionView *)self pillView];
    [pillView2 setPreferredBackgroundColor:_backgroundColorEnforcingPolicies];

    if (!self->_closeButton)
    {
      [(SLAttributionView *)self loadCloseButton];
    }

    [(SLAttributionView *)self _crossPlatformNeedsLayout];
  }
}

- (id)contextMenuItems
{
  pillView = [(SLAttributionView *)self pillView];
  contextMenuItems = [pillView contextMenuItems];

  return contextMenuItems;
}

- (void)excludeContextMenuItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (![identifiersCopy count])
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SLAttributionView excludeContextMenuItemsWithIdentifiers:];
    }
  }

  pillView = [(SLAttributionView *)self pillView];
  [pillView excludeContextMenuItemsWithIdentifiers:identifiersCopy];
}

- (unint64_t)variant
{
  if ([(SLAttributionView *)self usesBannerLayout])
  {
    if ([(SLAttributionView *)self isCollaboration])
    {
      return 7;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    LODWORD(result) = [(SLAttributionView *)self isCollaboration];
    v6 = 2;
    if (result)
    {
      v6 = 3;
    }

    if (userInterfaceIdiom == 5)
    {
      return v6;
    }

    else
    {
      return result;
    }
  }
}

- (double)_minHeightForCurrentStyle
{
  pillView = [(SLAttributionView *)self pillView];
  pillView2 = [(SLAttributionView *)self pillView];
  [pillView2 maxWidth];
  [pillView expectedHeightForMaxWidth:?];
  v6 = v5;

  return v6;
}

- (void)updateConstraints
{
  v88.receiver = self;
  v88.super_class = SLAttributionView;
  [(SLAttributionView *)&v88 updateConstraints];
  pillView = [(SLAttributionView *)self pillView];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (([(SLAttributionView *)self translatesAutoresizingMaskIntoConstraints]& 1) == 0)
  {
    pillView2 = [(SLAttributionView *)self pillView];

    if (pillView2)
    {
      if (self->_enablesMarquee)
      {
        v6 = @"SLAttrConstraintWidthAnchorEqualToMarqueeID";
      }

      else
      {
        v6 = @"SLAttrConstraintWidthAnchorEqualToPillID";
      }

      v7 = v6;
      heightAnchor = [(SLAttributionView *)self heightAnchor];
      v85 = pillView;
      heightAnchor2 = [pillView heightAnchor];
      v10 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];

      [v10 setIdentifier:v7];
      ourHeightConstraint = [(SLAttributionView *)self ourHeightConstraint];

      if (ourHeightConstraint)
      {
        ourHeightConstraint2 = [(SLAttributionView *)self ourHeightConstraint];
        identifier = [ourHeightConstraint2 identifier];
        identifier2 = [v10 identifier];
        v15 = [identifier isEqualToString:identifier2];

        if (v15)
        {
          goto LABEL_10;
        }

        ourHeightConstraint3 = [(SLAttributionView *)self ourHeightConstraint];
        [array addObject:ourHeightConstraint3];
      }

      [(SLAttributionView *)self setOurHeightConstraint:v10];
      ourHeightConstraint4 = [(SLAttributionView *)self ourHeightConstraint];
      [array2 addObject:ourHeightConstraint4];

LABEL_10:
      widthAnchor = [(SLAttributionView *)self widthAnchor];
      pillView = v85;
      widthAnchor2 = [v85 widthAnchor];
      v20 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2];

      [v20 setIdentifier:v7];
      ourWidthConstraint = [(SLAttributionView *)self ourWidthConstraint];

      if (ourWidthConstraint)
      {
        ourWidthConstraint2 = [(SLAttributionView *)self ourWidthConstraint];
        identifier3 = [ourWidthConstraint2 identifier];
        identifier4 = [v20 identifier];
        v25 = [identifier3 isEqualToString:identifier4];

        pillView = v85;
        if (v25)
        {
LABEL_14:

          goto LABEL_21;
        }

        ourWidthConstraint3 = [(SLAttributionView *)self ourWidthConstraint];
        [array addObject:ourWidthConstraint3];
      }

      [(SLAttributionView *)self setOurWidthConstraint:v20];
      ourWidthConstraint4 = [(SLAttributionView *)self ourWidthConstraint];
      [array2 addObject:ourWidthConstraint4];

      goto LABEL_14;
    }
  }

  ourHeightConstraint5 = [(SLAttributionView *)self ourHeightConstraint];
  if (ourHeightConstraint5)
  {
    v29 = ourHeightConstraint5;
    ourHeightConstraint6 = [(SLAttributionView *)self ourHeightConstraint];
    isActive = [ourHeightConstraint6 isActive];

    if (isActive)
    {
      ourHeightConstraint7 = [(SLAttributionView *)self ourHeightConstraint];
      [array addObject:ourHeightConstraint7];

      [(SLAttributionView *)self setOurHeightConstraint:0];
    }
  }

  ourWidthConstraint5 = [(SLAttributionView *)self ourWidthConstraint];
  if (ourWidthConstraint5)
  {
    v34 = ourWidthConstraint5;
    ourWidthConstraint6 = [(SLAttributionView *)self ourWidthConstraint];
    isActive2 = [ourWidthConstraint6 isActive];

    if (isActive2)
    {
      ourWidthConstraint7 = [(SLAttributionView *)self ourWidthConstraint];
      [array addObject:ourWidthConstraint7];

      [(SLAttributionView *)self setOurWidthConstraint:0];
    }
  }

LABEL_21:
  _alignmentEnforcingPolicies = [(SLAttributionView *)self _alignmentEnforcingPolicies];
  if (self->_closeButton)
  {
    usesBannerLayout = [(SLAttributionView *)self usesBannerLayout];
  }

  else
  {
    usesBannerLayout = 0;
  }

  v86 = usesBannerLayout;
  if (_alignmentEnforcingPolicies == 2)
  {
    if (usesBannerLayout)
    {
      closeButton = [(SLAttributionView *)self closeButton];
      trailingAnchor = [closeButton trailingAnchor];
      trailingAnchor2 = [(SLAttributionView *)self trailingAnchor];
      v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

      trailingAnchor3 = [pillView trailingAnchor];
      closeButton2 = [(SLAttributionView *)self closeButton];
      leadingAnchor = [closeButton2 leadingAnchor];
      v42 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-8.0];
    }

    else
    {
      trailingAnchor3 = [pillView trailingAnchor];
      closeButton2 = [(SLAttributionView *)self trailingAnchor];
      v42 = [trailingAnchor3 constraintEqualToAnchor:closeButton2];
      v45 = 0;
    }

    v61 = @"SLAttributionViewClient-PillTrailing";
LABEL_39:
    [v42 setIdentifier:v61];
    goto LABEL_40;
  }

  if (_alignmentEnforcingPolicies)
  {
    if (usesBannerLayout)
    {
      closeButton3 = [(SLAttributionView *)self closeButton];
      leadingAnchor2 = [closeButton3 leadingAnchor];
      trailingAnchor4 = [pillView trailingAnchor];
      v45 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor4 constant:8.0];

      LODWORD(closeButton3) = [(SLAttributionView *)self _crossPlatformIsRTL];
      [(UIButton *)self->_closeButton intrinsicContentSize];
      v56 = v55 + 8.0;
      v57 = -0.5;
      if (closeButton3)
      {
        v57 = 0.5;
      }

      v58 = v56 * v57;
      centerXAnchor = [pillView centerXAnchor];
      centerXAnchor2 = [(SLAttributionView *)self centerXAnchor];
      v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:v58];
    }

    else
    {
      centerXAnchor = [pillView centerXAnchor];
      centerXAnchor2 = [(SLAttributionView *)self centerXAnchor];
      v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v45 = 0;
    }

    v61 = @"SLAttributionViewClient-PillCenter";
    goto LABEL_39;
  }

  leadingAnchor3 = [pillView leadingAnchor];
  leadingAnchor4 = [(SLAttributionView *)self leadingAnchor];
  v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  [v42 setIdentifier:@"SLAttributionViewClient-PillLeading"];
  if (usesBannerLayout)
  {
    leadingAnchor5 = [(UIButton *)self->_closeButton leadingAnchor];
    trailingAnchor5 = [pillView trailingAnchor];
    v45 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:8.0];
  }

  else
  {
    v45 = 0;
  }

LABEL_40:
  pillHorizontalAlignmentConstraint = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];

  if (!pillHorizontalAlignmentConstraint)
  {
LABEL_43:
    [(SLAttributionView *)self setPillHorizontalAlignmentConstraint:v42];
    pillHorizontalAlignmentConstraint2 = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];
    [array2 addObject:pillHorizontalAlignmentConstraint2];

    goto LABEL_44;
  }

  pillHorizontalAlignmentConstraint3 = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];
  firstAttribute = [pillHorizontalAlignmentConstraint3 firstAttribute];
  firstAttribute2 = [v42 firstAttribute];

  if (firstAttribute != firstAttribute2)
  {
    pillHorizontalAlignmentConstraint4 = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];
    [array addObject:pillHorizontalAlignmentConstraint4];

    goto LABEL_43;
  }

LABEL_44:
  closeButtonXDimensionConstraint = [(SLAttributionView *)self closeButtonXDimensionConstraint];

  if (closeButtonXDimensionConstraint || !v45)
  {
    closeButtonXDimensionConstraint2 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
    if (!closeButtonXDimensionConstraint2 || !v45)
    {
      v69 = v45;
      goto LABEL_52;
    }

    closeButtonXDimensionConstraint3 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
    firstAttribute3 = [closeButtonXDimensionConstraint3 firstAttribute];
    v69 = v45;
    firstAttribute4 = [v45 firstAttribute];
    v74 = pillView;
    v75 = firstAttribute4;

    v76 = firstAttribute3 == v75;
    pillView = v74;
    if (v76)
    {
      goto LABEL_53;
    }

    closeButtonXDimensionConstraint4 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
    [array addObject:closeButtonXDimensionConstraint4];

    v45 = v69;
  }

  v69 = v45;
  [(SLAttributionView *)self setCloseButtonXDimensionConstraint:v45];
  closeButtonXDimensionConstraint2 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
  [array2 addObject:closeButtonXDimensionConstraint2];
LABEL_52:

LABEL_53:
  pillCenterYConstraint = [(SLAttributionView *)self pillCenterYConstraint];
  isActive3 = [pillCenterYConstraint isActive];

  if ((isActive3 & 1) == 0)
  {
    pillCenterYConstraint2 = [(SLAttributionView *)self pillCenterYConstraint];
    [array2 addObject:pillCenterYConstraint2];
  }

  if (v86 && !self->_closeButtonVerticalConstraint)
  {
    centerYAnchor = [(UIButton *)self->_closeButton centerYAnchor];
    centerYAnchor2 = [(SLAttributionView *)self centerYAnchor];
    v83 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    closeButtonVerticalConstraint = self->_closeButtonVerticalConstraint;
    self->_closeButtonVerticalConstraint = v83;

    [array2 addObject:self->_closeButtonVerticalConstraint];
  }

  if ([array count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:array];
  }

  if ([array2 count])
  {
    [MEMORY[0x277CCAAD0] activateConstraints:array2];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    pillView = [(SLAttributionView *)self pillView];
    [pillView refreshContextMenuItems];

    v5 = obj;
  }
}

- (void)setSupplementalMenu:(id)menu
{
  menuCopy = menu;
  if (([menuCopy isEqual:self->_supplementalMenu] & 1) == 0)
  {
    objc_storeStrong(&self->_supplementalMenu, menu);
    pillView = [(SLAttributionView *)self pillView];
    [pillView refreshContextMenuItems];
  }
}

- (id)additionalContextMenuItemsForHighlightPillView:(id)view
{
  array = [MEMORY[0x277CBEB18] array];
  delegate = [(SLAttributionView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SLAttributionView *)self delegate];
    v8 = [delegate2 contextMenuItemsForAttributionView:self];
    v9 = [v8 mutableCopy];

    array = v9;
  }

  supplementalMenu = [(SLAttributionView *)self supplementalMenu];

  if (supplementalMenu)
  {
    supplementalMenu2 = [(SLAttributionView *)self supplementalMenu];
    [array addObject:supplementalMenu2];
  }

  v12 = [array count];
  v13 = SLFrameworkLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      [(SLAttributionView *)array additionalContextMenuItemsForHighlightPillView:v13];
    }
  }

  else if (v14)
  {
    [SLAttributionView additionalContextMenuItemsForHighlightPillView:];
  }

  return array;
}

- (void)highlightPillViewDidLoadNewRemoteContent:(id)content
{
  [(SLAttributionView *)self _crossPlatformNeedsUpdateConstraints];
  [(SLAttributionView *)self _sanitizeFrameIfNecessaryForTAMIC];

  [(SLAttributionView *)self _updateMarqueeRequiredIfNecessary];
}

- (void)_updateMarqueeRequiredIfNecessary
{
  if (self->_enablesMarquee)
  {
    [(SLAttributionView *)self bounds];
    v5 = v4;
    pillView = [(SLAttributionView *)self pillView];
    [pillView frame];
    [(SLAttributionView *)self setMarqueeRequired:v5 < v6];
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (SLAttributionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithHighlight:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 identifier];
  v7 = 134218242;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_231772000, a3, OS_LOG_TYPE_DEBUG, "[SLAttributionView: %p] Initializing with with highlight: [%@].", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFrame:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4(&dword_231772000, v0, v1, "[SLAttributionView: %p] frame width was set to 0.0. Content will not display and remote content will not be updated until a non-zero width is set. Previous frame was [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)prepareLayoutWithMaxWidth:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)prepareLayoutWithMaxWidth:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__SLAttributionView_feedbackForCloseButtonHit__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) identifier];
  v8 = 134218498;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[SLHighlightPillView %p] _hideMenuItemSelected error sending hide feedback for highlight: [%@] error: [%@].", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateAlignment:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4(&dword_231772000, v0, v1, "[SLAttributionView: %p] Client updated the preferred alignment: %ld", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundStyle:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4(&dword_231772000, v0, v1, "[SLAttributionView: %p] Client updated the preferred background style to: %ld", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateBackgroundColor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4(&dword_231772000, v0, v1, "[SLAttributionView: %p] Client updated the preferred background color to: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)excludeContextMenuItemsWithIdentifiers:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "Not excluding context menu items with identifiers: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)additionalContextMenuItemsForHighlightPillView:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "%lu additional context menu items from delegate", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end