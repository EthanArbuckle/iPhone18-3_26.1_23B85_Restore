@interface SLAttributionView
+ (void)presentTranscriptForAttributionIdentifier:(id)a3 attachmentGUID:(id)a4 presentingViewController:(id)a5;
- (BOOL)_crossPlatformIsRTL;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SLAttributionView)initWithHighlight:(id)a3;
- (SLAttributionViewDelegate)delegate;
- (double)_minHeightForCurrentStyle;
- (id)_backgroundColorEnforcingPolicies;
- (id)additionalContextMenuItemsForHighlightPillView:(id)a3;
- (id)contextMenuItems;
- (int64_t)_alignmentEnforcingPolicies;
- (unint64_t)variant;
- (void)_sanitizeFrameIfNecessaryForTAMIC;
- (void)_updateMarqueeRequiredIfNecessary;
- (void)dealloc;
- (void)excludeContextMenuItemsWithIdentifiers:(id)a3;
- (void)feedbackForCloseButtonHit;
- (void)highlightPillViewDidLoadNewRemoteContent:(id)a3;
- (void)layoutSubviews;
- (void)prepareLayout;
- (void)prepareLayoutWithMaxWidth:(double)a3;
- (void)setBlurEffectGroupName:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHideMenuItemTitle:(id)a3;
- (void)setSupplementalMenu:(id)a3;
- (void)updateAlignment:(int64_t)a3;
- (void)updateBackgroundColor:(id)a3;
- (void)updateBackgroundStyle:(int64_t)a3;
- (void)updateConstraints;
- (void)updateInterfaceStyle:(int64_t)a3;
- (void)useBannerLayout;
@end

@implementation SLAttributionView

- (SLAttributionView)initWithHighlight:(id)a3
{
  v5 = a3;
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
      [(SLAttributionView *)v7 initWithHighlight:v5, v8];
    }

    objc_storeStrong(&v7->_highlight, a3);
    v7->_isCollaboration = 0;
    objc_opt_class();
    v7->_isCollaboration = objc_opt_isKindOfClass() & 1;
    v7->_preferredBackgroundStyle = -1;
    v7->_preferredAlignment = -1;
    preferredBackgroundColor = v7->_preferredBackgroundColor;
    v7->_preferredBackgroundColor = 0;

    v10 = [(SLAttributionView *)v7 _backgroundStyleEnforcingPolicies]== 1;
    v11 = [SLHighlightPillView alloc];
    v12 = [(SLAttributionView *)v7 highlight];
    [(SLAttributionView *)v7 frame];
    v14 = [(SLHighlightPillView *)v11 initWithHighlight:v12 maxWidth:[(SLAttributionView *)v7 variant] variant:v10 shouldDrawBlur:v13];
    [(SLAttributionView *)v7 setPillView:v14];

    v15 = [(SLAttributionView *)v7 _backgroundColorEnforcingPolicies];
    v16 = [(SLAttributionView *)v7 pillView];
    [v16 setPreferredBackgroundColor:v15];

    v17 = [(SLAttributionView *)v7 pillView];
    [(SLAttributionView *)v7 addSubview:v17];

    v18 = [(SLAttributionView *)v7 pillView];
    [v18 setDelegate:v7];

    v19 = [(SLAttributionView *)v7 pillView];
    v20 = [v19 centerYAnchor];
    v21 = [(SLAttributionView *)v7 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [(SLAttributionView *)v7 setPillCenterYConstraint:v22];

    v23 = [(SLAttributionView *)v7 pillCenterYConstraint];
    [v23 setIdentifier:@"SLAttributionViewInternal-PillCenterY"];

    v24 = [(SLAttributionView *)v7 pillView];
    [v24 setAccessibilityIdentifier:@"AttributionView"];
  }

  return v7;
}

- (void)setBlurEffectGroupName:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_blurEffectGroupName isEqualToString:?])
  {
    objc_storeStrong(&self->_blurEffectGroupName, a3);
    blurEffectGroupName = self->_blurEffectGroupName;
    v6 = [(SLAttributionView *)self pillView];
    [v6 setBlurEffectGroupName:blurEffectGroupName];
  }
}

- (BOOL)_crossPlatformIsRTL
{
  v2 = [(SLAttributionView *)self traitCollection];
  v3 = [v2 layoutDirection] == 1;

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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [(SLAttributionView *)self pillView:a3.width];
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

- (void)prepareLayoutWithMaxWidth:(double)a3
{
  if (self->_enablesMarquee)
  {
    v5 = 10000.0;
  }

  else
  {
    v5 = a3;
  }

  if ([(SLAttributionView *)self usesBannerLayout])
  {
    v6 = [(SLAttributionView *)self closeButton];
    [v6 frame];
    v5 = fmax(v5 - v7 + -8.0, 0.0);

    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView prepareLayoutWithMaxWidth:];
    }
  }

  if (a3 <= 0.0)
  {
    v15 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLAttributionView prepareLayoutWithMaxWidth:v15];
    }
  }

  else
  {
    v9 = [(SLAttributionView *)self pillView];
    [v9 maxWidth];
    v11 = SL_CGFloatApproximatelyEqualToFloat(v5, v10);

    if (!v11)
    {
      v12 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SLAttributionView prepareLayoutWithMaxWidth:];
      }

      v13 = [(SLAttributionView *)self pillView];
      [v13 setMaxWidth:v5];

      v14 = [(SLAttributionView *)self pillView];
      [v14 setRemoteRenderingEnabled:1];

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
    v3 = [(SLAttributionView *)self pillView];
    [v3 maxWidth];
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
        v8 = [(SLAttributionView *)self pillView];
        [v8 maxWidth];
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

- (void)updateAlignment:(int64_t)a3
{
  if ([(SLAttributionView *)self preferredAlignment]!= a3)
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView updateAlignment:];
    }

    [(SLAttributionView *)self setPreferredAlignment:a3];
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

- (void)updateBackgroundStyle:(int64_t)a3
{
  if ([(SLAttributionView *)self preferredBackgroundStyle]!= a3)
  {
    [(SLAttributionView *)self setPreferredBackgroundStyle:a3];
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView updateBackgroundStyle:];
    }

    v6 = [(SLAttributionView *)self pillView];

    if (v6)
    {
      v7 = [(SLAttributionView *)self _backgroundStyleEnforcingPolicies]== 1;
      v8 = [(SLAttributionView *)self pillView];
      [v8 setShouldDrawBackgroundBlur:v7];

      v9 = [(SLAttributionView *)self _backgroundColorEnforcingPolicies];
      v10 = [(SLAttributionView *)self pillView];
      [v10 setPreferredBackgroundColor:v9];

      [(SLAttributionView *)self _crossPlatformNeedsLayout];
    }
  }
}

- (void)updateInterfaceStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3 == 0;
  }

  [(SLAttributionView *)self setOverrideUserInterfaceStyle:v3];
}

- (void)updateBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(SLAttributionView *)self preferredBackgroundColor];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [(SLAttributionView *)self setPreferredBackgroundColor:v4];
    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SLAttributionView updateBackgroundColor:];
    }

    v8 = [(SLAttributionView *)self pillView];

    if (v8)
    {
      v9 = [(SLAttributionView *)self _backgroundColorEnforcingPolicies];
      v10 = [(SLAttributionView *)self pillView];
      [v10 setPreferredBackgroundColor:v9];

      [(SLAttributionView *)self _crossPlatformNeedsLayout];
    }
  }
}

- (id)_backgroundColorEnforcingPolicies
{
  v3 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v4 = [(SLAttributionView *)self _backgroundStyleEnforcingPolicies];
  if ([(SLAttributionView *)self _hasiOSBannerVariant]|| v4 || ([(SLAttributionView *)self preferredBackgroundColor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(SLAttributionView *)self preferredBackgroundColor];
    if (v6)
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
    v7 = v3;
  }

  return v7;
}

- (void)setHideMenuItemTitle:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSString *)self->_hideMenuItemTitle isEqualToString:v5])
  {
    objc_storeStrong(&self->_hideMenuItemTitle, a3);
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
    v9 = [(SLAttributionView *)self pillView];
    v10 = [v9 contextMenuItems];

    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = [v16 isEqualToString:@"slHideMenuItem"];

          if (v17)
          {
            [v15 setTitle:v7];
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

+ (void)presentTranscriptForAttributionIdentifier:(id)a3 attachmentGUID:(id)a4 presentingViewController:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "Trying to present Messages Transcript for identifier : %@ and view controller: %@", &v13, 0x16u);
  }

  if (v9)
  {
    v11 = objc_alloc_init(SLTranscriptController);
    [(SLTranscriptController *)v11 presentTranscriptForMessageGUID:v7 attachmentGUID:v8 presentingViewController:v9];
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
    v4 = [(SLAttributionView *)self pillView];
    [v4 setShouldDrawBackgroundBlur:v3];

    v5 = [(SLAttributionView *)self _backgroundColorEnforcingPolicies];
    v6 = [(SLAttributionView *)self pillView];
    [v6 setPreferredBackgroundColor:v5];

    if (!self->_closeButton)
    {
      [(SLAttributionView *)self loadCloseButton];
    }

    [(SLAttributionView *)self _crossPlatformNeedsLayout];
  }
}

- (id)contextMenuItems
{
  v2 = [(SLAttributionView *)self pillView];
  v3 = [v2 contextMenuItems];

  return v3;
}

- (void)excludeContextMenuItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SLAttributionView excludeContextMenuItemsWithIdentifiers:];
    }
  }

  v6 = [(SLAttributionView *)self pillView];
  [v6 excludeContextMenuItemsWithIdentifiers:v4];
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
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    LODWORD(result) = [(SLAttributionView *)self isCollaboration];
    v6 = 2;
    if (result)
    {
      v6 = 3;
    }

    if (v5 == 5)
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
  v3 = [(SLAttributionView *)self pillView];
  v4 = [(SLAttributionView *)self pillView];
  [v4 maxWidth];
  [v3 expectedHeightForMaxWidth:?];
  v6 = v5;

  return v6;
}

- (void)updateConstraints
{
  v88.receiver = self;
  v88.super_class = SLAttributionView;
  [(SLAttributionView *)&v88 updateConstraints];
  v3 = [(SLAttributionView *)self pillView];
  v87 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  if (([(SLAttributionView *)self translatesAutoresizingMaskIntoConstraints]& 1) == 0)
  {
    v5 = [(SLAttributionView *)self pillView];

    if (v5)
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
      v8 = [(SLAttributionView *)self heightAnchor];
      v85 = v3;
      v9 = [v3 heightAnchor];
      v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];

      [v10 setIdentifier:v7];
      v11 = [(SLAttributionView *)self ourHeightConstraint];

      if (v11)
      {
        v12 = [(SLAttributionView *)self ourHeightConstraint];
        v13 = [v12 identifier];
        v14 = [v10 identifier];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          goto LABEL_10;
        }

        v16 = [(SLAttributionView *)self ourHeightConstraint];
        [v87 addObject:v16];
      }

      [(SLAttributionView *)self setOurHeightConstraint:v10];
      v17 = [(SLAttributionView *)self ourHeightConstraint];
      [v4 addObject:v17];

LABEL_10:
      v18 = [(SLAttributionView *)self widthAnchor];
      v3 = v85;
      v19 = [v85 widthAnchor];
      v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];

      [v20 setIdentifier:v7];
      v21 = [(SLAttributionView *)self ourWidthConstraint];

      if (v21)
      {
        v22 = [(SLAttributionView *)self ourWidthConstraint];
        v23 = [v22 identifier];
        v24 = [v20 identifier];
        v25 = [v23 isEqualToString:v24];

        v3 = v85;
        if (v25)
        {
LABEL_14:

          goto LABEL_21;
        }

        v26 = [(SLAttributionView *)self ourWidthConstraint];
        [v87 addObject:v26];
      }

      [(SLAttributionView *)self setOurWidthConstraint:v20];
      v27 = [(SLAttributionView *)self ourWidthConstraint];
      [v4 addObject:v27];

      goto LABEL_14;
    }
  }

  v28 = [(SLAttributionView *)self ourHeightConstraint];
  if (v28)
  {
    v29 = v28;
    v30 = [(SLAttributionView *)self ourHeightConstraint];
    v31 = [v30 isActive];

    if (v31)
    {
      v32 = [(SLAttributionView *)self ourHeightConstraint];
      [v87 addObject:v32];

      [(SLAttributionView *)self setOurHeightConstraint:0];
    }
  }

  v33 = [(SLAttributionView *)self ourWidthConstraint];
  if (v33)
  {
    v34 = v33;
    v35 = [(SLAttributionView *)self ourWidthConstraint];
    v36 = [v35 isActive];

    if (v36)
    {
      v37 = [(SLAttributionView *)self ourWidthConstraint];
      [v87 addObject:v37];

      [(SLAttributionView *)self setOurWidthConstraint:0];
    }
  }

LABEL_21:
  v38 = [(SLAttributionView *)self _alignmentEnforcingPolicies];
  if (self->_closeButton)
  {
    v39 = [(SLAttributionView *)self usesBannerLayout];
  }

  else
  {
    v39 = 0;
  }

  v86 = v39;
  if (v38 == 2)
  {
    if (v39)
    {
      v46 = [(SLAttributionView *)self closeButton];
      v47 = [v46 trailingAnchor];
      v48 = [(SLAttributionView *)self trailingAnchor];
      v45 = [v47 constraintEqualToAnchor:v48];

      v49 = [v3 trailingAnchor];
      v50 = [(SLAttributionView *)self closeButton];
      v51 = [v50 leadingAnchor];
      v42 = [v49 constraintEqualToAnchor:v51 constant:-8.0];
    }

    else
    {
      v49 = [v3 trailingAnchor];
      v50 = [(SLAttributionView *)self trailingAnchor];
      v42 = [v49 constraintEqualToAnchor:v50];
      v45 = 0;
    }

    v61 = @"SLAttributionViewClient-PillTrailing";
LABEL_39:
    [v42 setIdentifier:v61];
    goto LABEL_40;
  }

  if (v38)
  {
    if (v39)
    {
      v52 = [(SLAttributionView *)self closeButton];
      v53 = [v52 leadingAnchor];
      v54 = [v3 trailingAnchor];
      v45 = [v53 constraintEqualToAnchor:v54 constant:8.0];

      LODWORD(v52) = [(SLAttributionView *)self _crossPlatformIsRTL];
      [(UIButton *)self->_closeButton intrinsicContentSize];
      v56 = v55 + 8.0;
      v57 = -0.5;
      if (v52)
      {
        v57 = 0.5;
      }

      v58 = v56 * v57;
      v59 = [v3 centerXAnchor];
      v60 = [(SLAttributionView *)self centerXAnchor];
      v42 = [v59 constraintEqualToAnchor:v60 constant:v58];
    }

    else
    {
      v59 = [v3 centerXAnchor];
      v60 = [(SLAttributionView *)self centerXAnchor];
      v42 = [v59 constraintEqualToAnchor:v60];
      v45 = 0;
    }

    v61 = @"SLAttributionViewClient-PillCenter";
    goto LABEL_39;
  }

  v40 = [v3 leadingAnchor];
  v41 = [(SLAttributionView *)self leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  [v42 setIdentifier:@"SLAttributionViewClient-PillLeading"];
  if (v39)
  {
    v43 = [(UIButton *)self->_closeButton leadingAnchor];
    v44 = [v3 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:8.0];
  }

  else
  {
    v45 = 0;
  }

LABEL_40:
  v62 = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];

  if (!v62)
  {
LABEL_43:
    [(SLAttributionView *)self setPillHorizontalAlignmentConstraint:v42];
    v67 = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];
    [v4 addObject:v67];

    goto LABEL_44;
  }

  v63 = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];
  v64 = [v63 firstAttribute];
  v65 = [v42 firstAttribute];

  if (v64 != v65)
  {
    v66 = [(SLAttributionView *)self pillHorizontalAlignmentConstraint];
    [v87 addObject:v66];

    goto LABEL_43;
  }

LABEL_44:
  v68 = [(SLAttributionView *)self closeButtonXDimensionConstraint];

  if (v68 || !v45)
  {
    v70 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
    if (!v70 || !v45)
    {
      v69 = v45;
      goto LABEL_52;
    }

    v71 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
    v72 = [v71 firstAttribute];
    v69 = v45;
    v73 = [v45 firstAttribute];
    v74 = v3;
    v75 = v73;

    v76 = v72 == v75;
    v3 = v74;
    if (v76)
    {
      goto LABEL_53;
    }

    v77 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
    [v87 addObject:v77];

    v45 = v69;
  }

  v69 = v45;
  [(SLAttributionView *)self setCloseButtonXDimensionConstraint:v45];
  v70 = [(SLAttributionView *)self closeButtonXDimensionConstraint];
  [v4 addObject:v70];
LABEL_52:

LABEL_53:
  v78 = [(SLAttributionView *)self pillCenterYConstraint];
  v79 = [v78 isActive];

  if ((v79 & 1) == 0)
  {
    v80 = [(SLAttributionView *)self pillCenterYConstraint];
    [v4 addObject:v80];
  }

  if (v86 && !self->_closeButtonVerticalConstraint)
  {
    v81 = [(UIButton *)self->_closeButton centerYAnchor];
    v82 = [(SLAttributionView *)self centerYAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];
    closeButtonVerticalConstraint = self->_closeButtonVerticalConstraint;
    self->_closeButtonVerticalConstraint = v83;

    [v4 addObject:self->_closeButtonVerticalConstraint];
  }

  if ([v87 count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v87];
  }

  if ([v4 count])
  {
    [MEMORY[0x277CCAAD0] activateConstraints:v4];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v6 = [(SLAttributionView *)self pillView];
    [v6 refreshContextMenuItems];

    v5 = obj;
  }
}

- (void)setSupplementalMenu:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_supplementalMenu] & 1) == 0)
  {
    objc_storeStrong(&self->_supplementalMenu, a3);
    v5 = [(SLAttributionView *)self pillView];
    [v5 refreshContextMenuItems];
  }
}

- (id)additionalContextMenuItemsForHighlightPillView:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(SLAttributionView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SLAttributionView *)self delegate];
    v8 = [v7 contextMenuItemsForAttributionView:self];
    v9 = [v8 mutableCopy];

    v4 = v9;
  }

  v10 = [(SLAttributionView *)self supplementalMenu];

  if (v10)
  {
    v11 = [(SLAttributionView *)self supplementalMenu];
    [v4 addObject:v11];
  }

  v12 = [v4 count];
  v13 = SLFrameworkLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      [(SLAttributionView *)v4 additionalContextMenuItemsForHighlightPillView:v13];
    }
  }

  else if (v14)
  {
    [SLAttributionView additionalContextMenuItemsForHighlightPillView:];
  }

  return v4;
}

- (void)highlightPillViewDidLoadNewRemoteContent:(id)a3
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
    v7 = [(SLAttributionView *)self pillView];
    [v7 frame];
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