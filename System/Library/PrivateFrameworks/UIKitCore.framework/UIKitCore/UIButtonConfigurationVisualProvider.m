@interface UIButtonConfigurationVisualProvider
+ (id)visualProviderForButton:(id)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)baselineOffsetsAtSize:(CGSize)a3;
- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_debugLayoutData;
- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_layoutDataInBounds:(SEL)a3;
- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_layoutDataInBounds:(SEL)a3 forConfiguration:(CGRect)a4;
- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_layoutDataUpdatingIfNecessary;
- (BOOL)_updateBackgroundViewWithConfiguration:(id)a3;
- (BOOL)_updateImageViewWithConfiguration:(id)a3;
- (BOOL)_updateIndicatorWithConfiguration:(id)a3;
- (BOOL)_updateProgressIndicatorWithConfiguration:(id)a3;
- (BOOL)_updateSubtitleLabelWithConfiguration:(id)a3;
- (BOOL)_updateTitleLabelWithConfiguration:(id)a3;
- (BOOL)hasBaseline;
- (BOOL)hasMultilineText;
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CGRect)_layoutBounds;
- (CGRect)contentRectForBounds:(CGRect)a3;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGRect)visualBoundsWithCornerRadius:(double *)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)intrinsicSizeWithinSize:(CGSize)a3;
- (UIButtonConfigurationVisualProvider)init;
- (UIEdgeInsets)alignmentRectInsets;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)defaultFocusEffect;
- (id)effectiveContentView;
- (id)imageViewCreateIfNeeded:(BOOL)a3;
- (id)pointerEffectPreviewParameters;
- (id)pointerEffectWithPreview:(id)a3;
- (id)pointerShapeInContainer:(id)a3 proposal:(id)a4;
- (id)preferredHoverEffect;
- (id)subtitleViewCreateIfNeeded:(BOOL)a3;
- (id)titleViewCreateIfNeeded:(BOOL)a3;
- (void)_animateContentIfNeededWithBlock:(id)a3;
- (void)_applyButtonValuesToConfiguration:(id)a3;
- (void)_executeConfigurationUpdate;
- (void)_layoutContent;
- (void)_transitionContentIfNeededOn:(id)a3 WithBlock:(id)a4;
- (void)alignmentRectInsetsHaveChangedForChildImageView:(id)a3;
- (void)applyConfiguration;
- (void)automaticallyUpdateConfigurationIfNecessary:(id)a3;
- (void)cleanupForVisualProvider:(id)a3;
- (void)contextMenuInteraction:(id)a3 updateStyleForMenuWithConfiguration:(id)a4 style:(id)a5;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBaselineInformationDependentOnBounds;
- (void)updateConfigurationIfNecessary;
- (void)updatedAppliedCornerRadius:(double)a3;
- (void)updatedAppliedCornersAreContinuous:(BOOL)a3;
@end

@implementation UIButtonConfigurationVisualProvider

- (void)layoutSubviews
{
  if (!self->_avoidDefaultTitleAndImageLayout)
  {
    [(UIButtonConfigurationVisualProvider *)self _layoutContent];
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    currentlyAppliedCornerRadius = backgroundView->_currentlyAppliedCornerRadius;
  }

  else
  {
    currentlyAppliedCornerRadius = 0.0;
  }

  [(UIButtonConfigurationVisualProvider *)self updatedAppliedCornerRadius:currentlyAppliedCornerRadius];
  v5 = self->_backgroundView;
  if (v5)
  {
    v6 = *&v5->_systemBackgroundViewFlags & 1;
  }

  else
  {
    v6 = 0;
  }

  [(UIButtonConfigurationVisualProvider *)self updatedAppliedCornersAreContinuous:v6];
  v7 = [(UIView *)self->_button hoverStyle];
  [v7 _invalidateAutomaticHoverShape];
}

- (void)_layoutContent
{
  [(UIButtonConfigurationVisualProvider *)self _layoutDataUpdatingIfNecessary];
  v4 = 0.0;
  v3 = 0.0;
  v6 = 0.0;
  v5 = 0.0;
  v7 = [(UIButton *)self->_button _currentConfiguration];
  [(UIButtonConfigurationVisualProvider *)self _updateBackgroundViewWithConfiguration:v7];

  v8 = dyld_program_sdk_at_least();
  backgroundView = self->_backgroundView;
  if (v8)
  {
    [(_UISystemBackgroundView *)backgroundView frameInContainerView:self->_button];
    v3 = v10;
    v4 = v11;
    v5 = v12;
    v6 = v13;
    backgroundView = self->_backgroundView;
  }

  [(_UISystemBackgroundView *)backgroundView setFrame:v3, v4, v5, v6];
  if ((*&self->_layoutData.flags & 0x20) != 0)
  {
    [(UILabel *)self->_subtitleLabel setFrame:0, 0];
  }
}

- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_layoutDataUpdatingIfNecessary
{
  v3 = self;
  if ((LOBYTE(self[1].var1.width) & 1) == 0)
  {
    [($FAF8FB4E17ADDBD5CADBCA981CDA5A29 *)self _layoutBounds];
    self = [($FAF8FB4E17ADDBD5CADBCA981CDA5A29 *)v3 _layoutDataInBounds:?];
    v5 = v25;
    *&v3->var6.var1 = v26;
    v6 = v28;
    v3[1].var0.origin = v27;
    v3[1].var0.size = v6;
    v7 = v21;
    *&v3->var4.origin.y = v22;
    v8 = v24;
    *&v3->var4.size.height = v23;
    *&v3->var5.origin.y = v8;
    *&v3->var5.size.height = v5;
    v9 = v17;
    *&v3->var2.origin.y = v18;
    v10 = v20;
    *&v3->var2.size.height = v19;
    *&v3->var3.origin.y = v10;
    *&v3->var3.size.height = v7;
    v3[1].var1.width = v29;
    *&v3->var1.height = v9;
  }

  v11 = *&v3->var6.var1;
  size = v3[1].var0.size;
  retstr->var5.size = v3[1].var0.origin;
  retstr->var6 = size;
  *&retstr->var7 = v3[1].var1.width;
  v13 = *&v3->var4.origin.y;
  v14 = *&v3->var5.origin.y;
  retstr->var3.size = *&v3->var4.size.height;
  retstr->var4.origin = v14;
  retstr->var4.size = *&v3->var5.size.height;
  retstr->var5.origin = v11;
  v15 = *&v3->var2.origin.y;
  v16 = *&v3->var3.origin.y;
  retstr->var1 = *&v3->var2.size.height;
  retstr->var2.origin = v16;
  retstr->var2.size = *&v3->var3.size.height;
  retstr->var3.origin = v13;
  retstr->var0.origin = *&v3->var1.height;
  retstr->var0.size = v15;
  return self;
}

- (CGRect)_layoutBounds
{
  if (-[UIView _wantsAutolayout](self->_button, "_wantsAutolayout") && ((-[UIView superview](self->_button, "superview"), (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, -[UIView superview](self->_button, "superview"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _is_needsLayout], v5, v4, v6)))
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    widthForMultilineTextLayout = self->_widthForMultilineTextLayout;
    v10 = 0.0;
  }

  else
  {
    [(UIView *)self->_button bounds];
  }

  result.size.height = v10;
  result.size.width = widthForMultilineTextLayout;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)updateConfigurationIfNecessary
{
  if (*&self->_flags)
  {
    *&self->_flags &= ~1u;
    if (_UIObservationTrackingEnabled())
    {
      button = self->_button;

      [(UIButton *)button _updateConfigurationWithObservationTracking:self];
    }

    else
    {

      [(UIButtonConfigurationVisualProvider *)self _executeConfigurationUpdate];
    }
  }
}

- (id)effectiveContentView
{
  if (_UISolariumEnabled())
  {
    p_contentView = &self->_contentView;
    contentView = self->_contentView;
    if (contentView)
    {
      goto LABEL_6;
    }

    v5 = [UIView alloc];
    [(UIView *)self->_button bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    v7 = self->_contentView;
    self->_contentView = v6;
  }

  else
  {
    p_contentView = &self->_button;
  }

  contentView = *p_contentView;
LABEL_6:

  return contentView;
}

- (BOOL)hasMultilineText
{
  [(UIButtonConfigurationVisualProvider *)self updateConfigurationIfNecessary];
  v3 = [(UIButton *)self->_button _currentConfiguration];
  if ([v3 _hasMultilineTitle])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 _hasMultilineSubtitle];
  }

  return v4;
}

- (void)_executeConfigurationUpdate
{
  v3 = _UISetCurrentFallbackEnvironment(self->_button);
  memset(__src, 0, sizeof(__src));
  _UIBeginTrackingTraitUsage(self->_button, 0, __src);
  v4 = [(UIButton *)self->_button _currentConfiguration];
  if (v4)
  {
    [(UIButtonConfigurationVisualProvider *)self _applyButtonValuesToConfiguration:v4];
    [(UIButtonConfigurationVisualProvider *)self automaticallyUpdateConfigurationIfNecessary:v4];
  }

  button = self->_button;
  v6 = [(UIButton *)button _configurationState];
  [(UIButton *)button _updateConfigurationUsingState:v6];

  [(UIButton *)self->_button updateConfiguration];
  v7 = [(UIButton *)self->_button configurationUpdateHandler];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, self->_button);
  }

  [(UIButtonConfigurationVisualProvider *)self applyConfiguration];
  memcpy(v15, __src, sizeof(v15));
  TraitCollectionTSD = GetTraitCollectionTSD();
  memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
  memcpy(TraitCollectionTSD + 16, v15, 0x170uLL);
  v10 = __dst[22] & ~*&__src[11];
  v11 = *&__src[11] & ~__dst[22];
  v12 = __dst[22] & *&__src[11];
  v13 = self->_button;
  v14 = [(UIButton *)v13 methodForSelector:sel_updateConfiguration];
  *&v15[0] = v10;
  *(&v15[0] + 1) = v11;
  *&v15[1] = v12;
  [(UIView *)v13 _recordTraitUsage:v15 trackedStateDiff:v14 insideMethod:sel_setNeedsUpdateConfiguration withInvalidationAction:?];
  _UITraitUsageTrackingResultDestroy(__dst);
  _UIRestorePreviousFallbackEnvironment(v3);
}

- (UIButtonConfigurationVisualProvider)init
{
  v5.receiver = self;
  v5.super_class = UIButtonConfigurationVisualProvider;
  v2 = [(UIButtonConfigurationVisualProvider *)&v5 init];
  if (v2 && [objc_opt_class() wantsConfigurationUpdateForButtonShapes])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v2->_accessibilityButtonShapesChangedToken = [v3 _addObserver:v2 selector:sel__accessibilityButtonShapesChangedNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0 options:0];
  }

  return v2;
}

- (void)applyConfiguration
{
  v3 = [(UIButton *)self->_button _currentConfiguration];
  if (v3)
  {
    v11 = v3;
    v4 = [(UIButtonConfigurationVisualProvider *)self _updateImageViewWithConfiguration:v3];
    v5 = [(UIButtonConfigurationVisualProvider *)self _updateIndicatorWithConfiguration:v11];
    v6 = [(UIButtonConfigurationVisualProvider *)self _updateProgressIndicatorWithConfiguration:v11];
    v7 = [(UIButtonConfigurationVisualProvider *)self _updateTitleLabelWithConfiguration:v11];
    v8 = [(UIButtonConfigurationVisualProvider *)self _updateSubtitleLabelWithConfiguration:v11];
    v9 = [(UIButtonConfigurationVisualProvider *)self _updateBackgroundViewWithConfiguration:v11];
    if (v4 || v5 || v6 || v7 || v8 || v9)
    {
      [(UIButtonConfigurationVisualProvider *)self invalidateLayoutData];
      [(UIView *)self->_button invalidateIntrinsicContentSize];
      [(UIButton *)self->_button setNeedsLayout];
    }

    v10 = [(UIView *)self->_button hoverStyle];
    [v10 _invalidateAutomaticHoverEffect];

    v3 = v11;
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIButtonConfigurationVisualProvider *)self intrinsicSizeWithinSize:self->_widthForMultilineTextLayout, 0.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dealloc
{
  _unregisterAccessibilityNotifications(self);
  v3.receiver = self;
  v3.super_class = UIButtonConfigurationVisualProvider;
  [(UIButtonConfigurationVisualProvider *)&v3 dealloc];
}

- (BOOL)hasBaseline
{
  [(UIButtonConfigurationVisualProvider *)self updateConfigurationIfNecessary];
  v3 = [(UIButton *)self->_button _currentConfiguration];
  v4 = [v3 image];
  if (v4 || ([v3 showsActivityIndicator] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7 = [v3 attributedTitle];
    if ([v7 length])
    {
      v5 = 1;
    }

    else
    {
      v8 = [v3 attributedSubtitle];
      v5 = [v8 length] != 0;
    }
  }

  return v5;
}

- (void)updateBaselineInformationDependentOnBounds
{
  if (self->_vendsBaselineInformationToAutoLayout)
  {
    v3 = [(UIView *)self->_button _layoutEngine];
    if (v3)
    {
      [(UIButtonConfigurationVisualProvider *)self _layoutDataInBounds:[(UIView *)self->_button _nsis_compatibleBoundsInEngine:v3]];
      v4 = v5;
      if (v5 != self->_previousFirstBaselineOffsetForAttributeLowering || (v4 = v6, v6 != self->_previousLastBaselineOffsetForAttributeLowering))
      {
        [(UIView *)self->_button _invalidateBaselineConstraints];
      }
    }
  }
}

+ (id)visualProviderForButton:(id)a3
{
  v3 = objc_opt_new();
  v3[256] |= 1u;

  return v3;
}

- (void)cleanupForVisualProvider:(id)a3
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  [(UIView *)self->_imageView removeFromSuperview];
  [(UIView *)self->_titleLabel removeFromSuperview];
  [(UIView *)self->_subtitleLabel removeFromSuperview];

  _unregisterAccessibilityNotifications(self);
}

- (void)updatedAppliedCornerRadius:(double)a3
{
  if (_UISolariumEnabled())
  {
    v5 = [(UIView *)self->_button layer];
    [v5 setCornerRadius:a3];
  }
}

- (void)updatedAppliedCornersAreContinuous:(BOOL)a3
{
  v3 = MEMORY[0x1E69796E8];
  if (!a3)
  {
    v3 = MEMORY[0x1E69796E0];
  }

  v4 = *v3;
  v5 = [(UIView *)self->_button layer];
  [v5 setCornerCurve:v4];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__UIButtonConfigurationVisualProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E70F6A70;
  v6[4] = self;
  v4 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __93__UIButtonConfigurationVisualProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 288) menu];
  v5 = [*(*(a1 + 32) + 288) _menuProvider];

  if (v5)
  {
    v6 = [*(*(a1 + 32) + 288) _menuProvider];
    v7 = (v6)[2](v6, *(a1 + 32), v3);

    v4 = v7;
    if (!v7)
    {
      if ([*(*(a1 + 32) + 288) showsMenuAsPrimaryAction])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v15 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = *(*(a1 + 32) + 288);
            *buf = 138412290;
            v20 = v16;
            _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Client configured a button (%@) with a menuProvider and contextMenuIsPrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
          }
        }

        else
        {
          v9 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_2) + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = *(*(a1 + 32) + 288);
            *buf = 138412290;
            v20 = v10;
            _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Client configured a button (%@) with a menuProvider and contextMenuIsPrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
          }
        }

        v11 = [*(*(a1 + 32) + 288) titleForState:0];
        v12 = [*(*(a1 + 32) + 288) imageForState:0];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __93__UIButtonConfigurationVisualProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_12;
        v17[3] = &unk_1E70F4708;
        v17[4] = *(a1 + 32);
        v13 = [UIAction actionWithTitle:v11 image:v12 identifier:0 handler:v17];

        v18 = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        v4 = [UIMenu menuWithChildren:v14];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v3 = _UIControlMenuSupportTargetedPreviewOverViews(self->_button, self->_titleLabel, self->_imageView);
  v4 = [v3 target];
  v5 = [v4 container];

  v6 = [v3 view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v11 = [v3 target];
  [v11 center];
  v13 = round(v12 - v10 * 0.5);
  v15 = round(v14 - v8 * 0.5);
  v16 = [v5 _window];
  [v5 convertRect:v16 toView:{v15, v13, v8, v10}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [v5 _window];
  v26 = _UIControlMenuAttachmentPointForRectInContainer(v25, v18, v20, v22, v24);
  v28 = v27;

  v29 = v26;
  v30 = v28;
  result.y = v30;
  result.x = v29;
  return result;
}

- (void)contextMenuInteraction:(id)a3 updateStyleForMenuWithConfiguration:(id)a4 style:(id)a5
{
  if (a5)
  {
    button = self->_button;
    titleLabel = self->_titleLabel;
    imageView = self->_imageView;
    v10 = a5;
    v11 = a4;
    v16 = _UIControlMenuSupportTargetedPreviewOverViews(button, titleLabel, imageView);
    [(UIButton *)self->_button menuAttachmentPointForConfiguration:v11];
    v13 = v12;
    v15 = v14;

    _UIControlMenuSupportUpdateStyle(v10, self->_button, v16, v13, v15);
  }
}

- (CGRect)visualBoundsWithCornerRadius:(double *)a3
{
  v5 = +[_UIPointerSettingsDomain rootSettings];
  v6 = [v5 buttonSettings];

  v7 = [(UIButton *)self->_button _currentConfiguration];
  if (![v7 _isRoundButton])
  {
    if ([v7 _hasObscuringBackground])
    {
      [(UIView *)self->_backgroundView frame];
      v17 = v25;
      v19 = v26;
      v21 = v27;
      v23 = v28;
      backgroundView = self->_backgroundView;
      if (backgroundView)
      {
        currentlyAppliedCornerRadius = backgroundView->_currentlyAppliedCornerRadius;
        if (!a3)
        {
          goto LABEL_30;
        }
      }

      else
      {
        currentlyAppliedCornerRadius = 0.0;
        if (!a3)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_29;
    }

    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if ([v7 showsActivityIndicator])
    {
      v34 = 16;
    }

    else
    {
      v35 = [v7 _resolvedImage];

      if (!v35)
      {
        v40 = 0;
LABEL_15:
        v41 = [v7 _resolvedTitle];
        v42 = [v41 length];
        v43 = v42 != 0;

        if (v42)
        {
          [(UIView *)self->_titleLabel frame];
          v99.origin.x = v44;
          v99.origin.y = v45;
          v99.size.width = v46;
          v99.size.height = v47;
          v91.origin.x = x;
          v91.origin.y = y;
          v91.size.width = width;
          v91.size.height = height;
          v92 = CGRectUnion(v91, v99);
          x = v92.origin.x;
          y = v92.origin.y;
          width = v92.size.width;
          height = v92.size.height;
        }

        v48 = [v7 _resolvedSubtitle];
        v49 = [v48 length];

        if (v49)
        {
          [(UIView *)self->_subtitleLabel frame];
          v100.origin.x = v50;
          v100.origin.y = v51;
          v100.size.width = v52;
          v100.size.height = v53;
          v93.origin.x = x;
          v93.origin.y = y;
          v93.size.width = width;
          v93.size.height = height;
          v94 = CGRectUnion(v93, v100);
          x = v94.origin.x;
          y = v94.origin.y;
          width = v94.size.width;
          height = v94.size.height;
          v43 = 1;
        }

        v54 = [v7 _resolvedIndicator];

        if (v54)
        {
          [(UIView *)self->_indicatorView frame];
          v101.origin.x = v55;
          v101.origin.y = v56;
          v101.size.width = v57;
          v101.size.height = v58;
          v95.origin.x = x;
          v95.origin.y = y;
          v95.size.width = width;
          v95.size.height = height;
          v96 = CGRectUnion(v95, v101);
          x = v96.origin.x;
          y = v96.origin.y;
          width = v96.size.width;
          height = v96.size.height;
          v40 = 1;
        }

        v59 = [(UIView *)self->_button effectiveUserInterfaceLayoutDirection];
        if ((v43 & v40) == 1)
        {
          v60 = v59 == UIUserInterfaceLayoutDirectionRightToLeft;
          [v6 mixedButtonOutsetLeading];
          v88 = v61;
          [v6 mixedButtonOutsetTrailing];
          v63 = v62;
          [v6 mixedButtonOutsetTop];
          v65 = v64;
          [v6 mixedButtonOutsetBottom];
          v67 = v66;
          [v6 mixedButtonMinWidth];
          v69 = v68;
          [v6 mixedButtonMinHeight];
        }

        else if (v40)
        {
          v60 = v59 == UIUserInterfaceLayoutDirectionRightToLeft;
          [v6 imageButtonOutsetLeading];
          v88 = v70;
          [v6 imageButtonOutsetTrailing];
          v63 = v71;
          [v6 imageButtonOutsetTop];
          v65 = v72;
          [v6 imageButtonOutsetBottom];
          v67 = v73;
          [v6 imageButtonMinWidth];
          v69 = v74;
          [v6 imageButtonMinHeight];
        }

        else
        {
          if (!v43)
          {
            [(UIView *)self->_button bounds];
LABEL_28:
            v17 = v80;
            v19 = v81;
            v21 = v82;
            v23 = v83;
            currentlyAppliedCornerRadius = -1.0;
            if (!a3)
            {
              goto LABEL_30;
            }

LABEL_29:
            *a3 = currentlyAppliedCornerRadius;
            goto LABEL_30;
          }

          v60 = v59 == UIUserInterfaceLayoutDirectionRightToLeft;
          [v6 textButtonOutsetLeading];
          v88 = v75;
          [v6 textButtonOutsetTrailing];
          v63 = v76;
          [v6 textButtonOutsetTop];
          v65 = v77;
          [v6 textButtonOutsetBottom];
          v67 = v78;
          [v6 textButtonMinWidth];
          v69 = v79;
          [v6 textButtonMinHeight];
        }

        v80 = __outsetRectWithMinimumSize(v60, 0, x, y, width, height, v88, v63, v65, v67, v69);
        goto LABEL_28;
      }

      v34 = 264;
    }

    [*(&self->super.isa + v34) frame];
    v98.origin.x = v36;
    v98.origin.y = v37;
    v98.size.width = v38;
    v98.size.height = v39;
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    v90 = CGRectUnion(v89, v98);
    x = v90.origin.x;
    y = v90.origin.y;
    width = v90.size.width;
    height = v90.size.height;
    v40 = 1;
    goto LABEL_15;
  }

  v8 = [(UIView *)self->_button effectiveUserInterfaceLayoutDirection];
  v9 = 0.0;
  if (([v7 _hasObscuringBackground] & 1) == 0)
  {
    [v6 roundButtonOutset];
    v9 = v10;
  }

  [v6 roundButtonMinSize];
  v12 = v11;
  [(UIView *)self->_button bounds];
  v17 = __outsetRectWithMinimumSize(v8 == UIUserInterfaceLayoutDirectionRightToLeft, 1, v13, v14, v15, v16, v9, v9, v9, v9, v12);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  currentlyAppliedCornerRadius = v20 * 0.5;
  if (a3)
  {
    goto LABEL_29;
  }

LABEL_30:

  v84 = v17;
  v85 = v19;
  v86 = v21;
  v87 = v23;
  result.size.height = v87;
  result.size.width = v86;
  result.origin.y = v85;
  result.origin.x = v84;
  return result;
}

- (id)pointerEffectPreviewParameters
{
  v3 = objc_opt_new();
  v4 = [(UIButton *)self->_button _currentConfiguration];
  v5 = [v4 _hasObscuringBackground];

  if (v5)
  {
    v6 = [(_UISystemBackgroundView *)self->_backgroundView currentVisiblePathInContainerView:self->_button];
    [v3 setShadowPath:v6];
  }

  return v3;
}

- (id)pointerEffectWithPreview:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(UIButton *)self->_button _currentConfiguration];
  v7 = [v6 _hasObscuringBackground];

  if (v7)
  {
    v5 = objc_opt_class();
  }

  v8 = [v5 effectWithPreview:v4];

  return v8;
}

- (id)pointerShapeInContainer:(id)a3 proposal:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || ((*(v7 + 2))(v7), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = 0.0;
    [(UIButtonConfigurationVisualProvider *)self visualBoundsWithCornerRadius:&v13];
    v10 = v13;
    [(UIView *)self->_button convertRect:v6 toView:?];
    if (v10 >= 0.0)
    {
      [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
    }

    else
    {
      [UIPointerShape shapeWithRoundedRect:?];
    }
    v9 = ;
  }

  v11 = v9;

  return v11;
}

- (id)preferredHoverEffect
{
  v2 = [(UIButton *)self->_button _currentConfiguration];
  v3 = [v2 _hasObscuringBackground];

  if (v3)
  {
    v4 = +[UIHoverLiftEffect effect];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)defaultFocusEffect
{
  if (-[UIView isDescendantOfView:](self->_backgroundView, "isDescendantOfView:", self->_button) && (-[UIButton _currentConfiguration](self->_button, "_currentConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _hasObscuringBackground], v3, v4))
  {
    v5 = [(_UISystemBackgroundView *)self->_backgroundView currentVisiblePathInContainerView:self->_button];
    if (v5)
    {
      [UIFocusHaloEffect effectWithPath:v5];
    }

    else
    {
      backgroundView = self->_backgroundView;
      [(UIView *)backgroundView bounds];
      [(UIView *)backgroundView convertRect:self->_button toView:?];
      [UIFocusHaloEffect effectWithRect:?];
    }
    v6 = ;
    [v6 setReferenceView:self->_backgroundView];
  }

  else
  {
    [(UIView *)self->_button bounds];
    v6 = [UIFocusHaloEffect effectWithRect:?];
  }

  [v6 setContainerView:self->_button];

  return v6;
}

- (id)imageViewCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_imageView)
  {
    v4 = objc_opt_new();
    imageView = self->_imageView;
    self->_imageView = v4;
  }

  v6 = self->_imageView;

  return v6;
}

- (id)titleViewCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_titleLabel)
  {
    v4 = objc_opt_new();
    titleLabel = self->_titleLabel;
    self->_titleLabel = v4;
  }

  v6 = self->_titleLabel;

  return v6;
}

- (id)subtitleViewCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_subtitleLabel)
  {
    v4 = objc_opt_new();
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v4;
  }

  v6 = self->_subtitleLabel;

  return v6;
}

- (CGRect)contentRectForBounds:(CGRect)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = a3;
  button = self->_button;
  v11 = v5;
  v7 = [v5 previouslyFocusedView];
  v8 = v7;
  if (button == v7)
  {
  }

  else
  {
    v9 = self->_button;
    v10 = [v11 nextFocusedView];

    if (v9 != v10)
    {
      goto LABEL_6;
    }
  }

  [(UIButton *)self->_button setNeedsUpdateConfiguration];
LABEL_6:
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIButtonConfigurationVisualProvider *)self updateConfigurationIfNecessary];
  [(UIView *)self->_button bounds];
  v9 = width != 0.0 && width == v6 && height == v7;
  if (!v9 || height == 0.0)
  {
    if ((*&self->_layoutData.flags & 1) != 0 && (width == *MEMORY[0x1E695F060] ? (v11 = height == *(MEMORY[0x1E695F060] + 8)) : (v11 = 0), v11 && (self->_layoutData.idealSize.width == self->_layoutData.buttonBounds.size.width ? (v12 = self->_layoutData.idealSize.height == self->_layoutData.buttonBounds.size.height) : (v12 = 0), v12)))
    {
      baselineOffsets = self->_layoutData.baselineOffsets;
    }

    else if ([(UIView *)self->_button _wantsAutolayout]&& (([(UIButton *)self->_button _activeSizeToFitLayoutEngine], (v13 = objc_claimAutoreleasedReturnValue()) != 0) || ([(UIView *)self->_button _layoutEngine], (v13 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      v14 = v13;
      [(UIButtonConfigurationVisualProvider *)self _layoutDataInBounds:[(UIView *)self->_button _nsis_compatibleBoundsInEngine:v13]];

      baselineOffsets = v17;
    }

    else
    {
      [(UIButtonConfigurationVisualProvider *)self _layoutDataInBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
      baselineOffsets = v16;
    }
  }

  else
  {
    [(UIButtonConfigurationVisualProvider *)self _layoutDataUpdatingIfNecessary];
    baselineOffsets = v18;
  }

  lastFromBottom = baselineOffsets.lastFromBottom;
  result.var0 = baselineOffsets.firstFromTop;
  result.var1 = lastFromBottom;
  return result;
}

- (void)intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  imageView = self->_imageView;
  if (imageView == a3 && [(UIImageView *)imageView _hasBaseline])
  {

    [(UIButtonConfigurationVisualProvider *)self updateBaselineInformationDependentOnBounds];
  }
}

- (void)alignmentRectInsetsHaveChangedForChildImageView:(id)a3
{
  imageView = self->_imageView;
  if (imageView == a3 && [(UIImageView *)imageView _hasBaseline])
  {

    [(UIButtonConfigurationVisualProvider *)self updateBaselineInformationDependentOnBounds];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    button = self->_button;

    [(UIButton *)button setNeedsUpdateConfiguration];
  }
}

- (void)automaticallyUpdateConfigurationIfNecessary:(id)a3
{
  v9 = a3;
  v5 = [(UIButton *)self->_button automaticallyUpdatesConfiguration];
  v6 = v9;
  if (v5)
  {
    v7 = [v9 _updateFromButton:self->_button];
    if (!v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UIButtonConfigurationVisualProvider.m" lineNumber:778 description:{@"Updated configuration was nil for configuration: %@", v9}];
    }

    [(UIButton *)self->_button _setCurrentConfiguration:v7];

    v6 = v9;
  }
}

- (CGSize)intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIButtonConfigurationVisualProvider *)self updateConfigurationIfNecessary];
  [(UIButtonConfigurationVisualProvider *)self _layoutDataInBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height, 0, 0, 0, 0];
  v7 = 0.0;
  v6 = 0.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_debugLayoutData
{
  v3 = *&self->var6.var1;
  size = self[1].var0.size;
  retstr->var5.size = self[1].var0.origin;
  retstr->var6 = size;
  *&retstr->var7 = self[1].var1.width;
  v5 = *&self->var4.origin.y;
  v6 = *&self->var5.origin.y;
  retstr->var3.size = *&self->var4.size.height;
  retstr->var4.origin = v6;
  retstr->var4.size = *&self->var5.size.height;
  retstr->var5.origin = v3;
  v7 = *&self->var2.origin.y;
  v8 = *&self->var3.origin.y;
  retstr->var1 = *&self->var2.size.height;
  retstr->var2.origin = v8;
  retstr->var2.size = *&self->var3.size.height;
  retstr->var3.origin = v5;
  retstr->var0.origin = *&self->var1.height;
  retstr->var0.size = v7;
  return self;
}

- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_layoutDataInBounds:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(UIButtonConfigurationVisualProvider *)self updateConfigurationIfNecessary];
  v10 = [(UIButton *)self->_button _currentConfiguration];
  [(UIButtonConfigurationVisualProvider *)self _layoutDataInBounds:v10 forConfiguration:x, y, width, height];

  return result;
}

- ($FAF8FB4E17ADDBD5CADBCA981CDA5A29)_layoutDataInBounds:(SEL)a3 forConfiguration:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v371 = a5;
  v11 = [(UIView *)self->_button effectiveUserInterfaceLayoutDirection];
  v379.origin.x = x;
  v379.origin.y = y;
  v379.size.width = width;
  v379.size.height = height;
  if (CGRectGetWidth(v379) <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v380.origin.x = x;
    v380.origin.y = y;
    v380.size.width = width;
    v380.size.height = height;
    v12 = CGRectGetWidth(v380) < 3.40282347e38;
  }

  v381.origin.x = x;
  v381.origin.y = y;
  v381.size.width = width;
  v381.size.height = height;
  if (CGRectGetHeight(v381) <= 0.0)
  {
    r1_12 = 0;
  }

  else
  {
    v382.origin.x = x;
    v382.origin.y = y;
    v382.size.width = width;
    v382.size.height = height;
    r1_12 = CGRectGetHeight(v382) < 3.40282347e38;
  }

  v13 = 0.0;
  if (v12)
  {
    v383.origin.x = x;
    v383.origin.y = y;
    v383.size.width = width;
    v383.size.height = height;
    v13 = CGRectGetWidth(v383);
  }

  if (r1_12)
  {
    v384.origin.x = x;
    v384.origin.y = y;
    v384.size.width = width;
    v384.size.height = height;
    CGRectGetHeight(v384);
  }

  v303 = v12;
  v345 = [v371 _hasMultilineTitle];
  v354 = [v371 _hasMultilineSubtitle];
  v14 = [v371 _resolvedImage];

  v15 = [v371 showsActivityIndicator];
  v16 = (v14 != 0) | v15;
  v17 = [v371 _resolvedIndicator];

  v18 = [v371 _resolvedTitle];
  v19 = [v371 _resolvedSubtitle];
  v290 = v18;
  v20 = [v18 length];
  v289 = v19;
  v328 = [v19 length];
  v304 = (v20 | v328) != 0;
  v21 = [v371 imagePlacement];
  v288 = v16;
  v283 = (v20 | v328) == 0;
  v295 = v16 ^ 1;
  v22 = v16 ^ 1 | ((v20 | v328) == 0);
  r2_8 = 0.0;
  v23 = 0.0;
  if (!((v16 ^ 1) & 1 | ((v20 | v328) == 0)))
  {
    [v371 imagePadding];
    v23 = v24;
  }

  if (v20)
  {
    v25 = v328 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  if (!v25)
  {
    [v371 titlePadding];
    r2_8 = v27;
  }

  v28 = v371;
  v294 = v21;
  v302 = v20;
  if (v17)
  {
    [v371 _resolvedIndicatorPadding];
    v28 = v371;
    v30 = v29;
  }

  else
  {
    v30 = 0.0;
  }

  [v28 _resolvedImageReservation];
  rect = v31;
  [v371 contentInsets];
  v338 = v32;
  v34 = v33;
  dx = v35;
  v37 = v36;
  v38 = [v371 _hasOversizedTitle];
  v39 = [v371 _hasOversizedSubtitle];
  v40 = v39;
  if ((v38 & 1) == 0 && !v39)
  {
    v41 = v294;
    goto LABEL_82;
  }

  v372 = 0.0;
  v373 = 0.0;
  if (v26)
  {
    v42 = v13;
    v314 = v30;
    v297 = v23;
    r2_16 = v37;
    v356 = v34;
    v43 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    if (v38)
    {
      v47 = [UILabel _insetsForAttributedString:v290 withDefaultFont:0 inView:self->_button];
      v46 = v48;
      v45 = v49;
      v44 = v50;
    }

    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    if (v40)
    {
      v53 = [UILabel _insetsForAttributedString:v289 withDefaultFont:0 inView:self->_button];
      v43 = v54;
    }

    v377 = -v47;
    v375 = -v51;
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      if (v44 <= v43)
      {
        v55 = v44;
      }

      else
      {
        v55 = v43;
      }

      v56 = -v55;
      if (v46 <= v52)
      {
        v52 = v46;
      }
    }

    else
    {
      if (v46 <= v52)
      {
        v52 = v46;
      }

      v56 = -v52;
      if (v44 <= v43)
      {
        v52 = v44;
      }

      else
      {
        v52 = v43;
      }
    }

    v41 = v294;
    v37 = r2_16;
    v23 = v297;
    v13 = v42;
    v376 = v56;
    v374 = -v52;
    v62 = -(v45 + v53);
    v34 = v356;
    v30 = v314;
  }

  else
  {
    if (v38)
    {
      v57 = v290;
    }

    else
    {
      v57 = v289;
    }

    v377 = [UILabel _insetsForAttributedString:v57];
    v375 = -v59;
    v61 = -v60;
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v376 = -v58;
      v374 = v61;
    }

    else
    {
      v376 = v61;
      v374 = -v58;
    }

    v62 = 0.0;
    v41 = v294;
  }

  if (v288)
  {
    v63 = v41;
  }

  else
  {
    v63 = 0;
  }

  v64 = &v373;
  if (v63 > 3)
  {
    if (v63 == 4)
    {
      v64 = &v375;
      goto LABEL_64;
    }

    if (v63 == 8)
    {
      v64 = &v374;
      goto LABEL_64;
    }
  }

  else
  {
    if (v63 == 1)
    {
      v64 = &v377;
      goto LABEL_64;
    }

    if (v63 == 2)
    {
      v64 = &v376;
LABEL_64:
      v373 = *v64;
    }
  }

  *v64 = 0.0;
  if (v17)
  {
    v372 = v374;
    v65 = &v374;
  }

  else
  {
    v65 = &v372;
  }

  *v65 = 0.0;
  if (v34 < v376)
  {
    v34 = v376;
  }

  if (v37 < v374)
  {
    v37 = v374;
  }

  v66 = v338;
  if (v338 < v377)
  {
    v66 = v377;
  }

  v338 = v66;
  v67 = dx;
  if (dx < v375)
  {
    v67 = v375;
  }

  dx = v67;
  v68 = r2_8;
  if (r2_8 < v62)
  {
    v68 = v62;
  }

  r2_8 = v68;
  if (v23 < v373)
  {
    v23 = v373;
  }

  if (v30 < v372)
  {
    v30 = v372;
  }

LABEL_82:
  v69 = MEMORY[0x1E695EFF8];
  v357 = v34;
  r2_16a = v37;
  if (v15)
  {
    v70 = *MEMORY[0x1E695F060];
    v342 = *(MEMORY[0x1E695F060] + 8);
    [(UIActivityIndicatorView *)self->_progressIndicatorView sizeThatFits:*MEMORY[0x1E695F060]];
    v72 = v71;
    v362 = v73;
    if (!v17)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v70 = *MEMORY[0x1E695F060];
  v342 = *(MEMORY[0x1E695F060] + 8);
  if (v14)
  {
    imageView = self->_imageView;
    v87 = v23;
    v88 = v13;
    v89 = width;
    v90 = height;
    v91 = v30;
    v92 = *MEMORY[0x1E695EFF8];
    v93 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIImageView *)imageView sizeThatFits:v70];
    v95 = v94;
    v96 = imageView;
    v41 = v294;
    v97 = v92;
    v30 = v91;
    height = v90;
    width = v89;
    v13 = v88;
    v23 = v87;
    v37 = r2_16a;
    [(UIView *)v96 alignmentRectForFrame:v97, v93, v95, v98];
    v72 = v99;
    v362 = v100;
    if (!v17)
    {
      goto LABEL_85;
    }

LABEL_84:
    [(UIImageView *)self->_indicatorView sizeThatFits:v70, v342];
    v70 = v74;
    v342 = v75;
    goto LABEL_85;
  }

  v362 = *(MEMORY[0x1E695F060] + 8);
  v72 = *MEMORY[0x1E695F060];
  if (v17)
  {
    goto LABEL_84;
  }

LABEL_85:
  v76 = v41 & 0xA;
  v368 = v72;
  v77 = v13 - (v23 + v72);
  v78 = 0.0;
  v79 = fmax(v77, 0.0);
  if ((v13 <= 0.0) | v295 & 1 | (v76 == 0))
  {
    v79 = v13;
  }

  if (v17)
  {
    v80 = v79 <= 0.0;
  }

  else
  {
    v80 = 1;
  }

  v315 = v30;
  v307 = v30 + v70;
  v81 = fmax(v79 - (v30 + v70), 0.0);
  if (!v80)
  {
    v79 = v81;
  }

  v82 = fmax(v79 - (v37 + v357), 0.0);
  if (v79 <= 0.0)
  {
    v83 = v79;
  }

  else
  {
    v83 = v82;
  }

  v284 = width;
  v286 = height;
  v298 = v23;
  v309 = v70;
  if (v83 <= 0.0)
  {
    v85 = 3.40282347e38;
  }

  else
  {
    UICeilToViewScale(self->_button);
    v85 = v84;
  }

  v101 = *MEMORY[0x1E695F058];
  r1 = *(MEMORY[0x1E695F058] + 8);
  v103 = *(MEMORY[0x1E695F058] + 24);
  r1_24 = *(MEMORY[0x1E695F058] + 16);
  v102 = r1_24;
  v326 = v103;
  v104 = 0.0;
  v351 = *MEMORY[0x1E695F058];
  v349 = v103;
  r2_24 = r1_24;
  v365 = *MEMORY[0x1E695F058];
  if (v304)
  {
    v349 = *(MEMORY[0x1E695F058] + 24);
    v105 = *(MEMORY[0x1E695F058] + 16);
    if (v302)
    {
      [(UILabel *)self->_titleLabel sizeThatFits:v85, 3.40282347e38];
      v105 = v106;
      v349 = v107;
      if (!(v345 & 1 | !v303) && v106 >= v83)
      {
        v105 = v83;
      }
    }

    v108 = v103;
    v109 = r1_24;
    if (v328)
    {
      [(UILabel *)self->_subtitleLabel sizeThatFits:v85, 3.40282347e38];
      if (!(v354 & 1 | !v303) && v109 >= v83)
      {
        v109 = v83;
      }
    }

    v110 = v108;
    v111 = v109;
    v385.origin.x = v365;
    v385.origin.y = r1;
    r2_24 = v105;
    v385.size.width = v105;
    v385.size.height = v349;
    v104 = CGRectGetWidth(v385);
    v386.origin.x = v365;
    v386.origin.y = r1;
    r1_24 = v111;
    v326 = v110;
    v386.size.width = v111;
    v386.size.height = v110;
    v78 = CGRectGetWidth(v386);
    if (v302)
    {
      if (v328)
      {
        v112 = [v371 _resolvedTitleAlignment];
        if (v112 == 2 || (v113 = 0.0, (v11 == UIUserInterfaceLayoutDirectionRightToLeft) != (v112 == 3)))
        {
          UIFloorToViewScale(self->_button);
        }

        v114 = v365 + v113;
        if (v104 >= v78)
        {
          v115 = v114;
        }

        else
        {
          v115 = v365;
        }

        v351 = v115;
        if (v104 >= v78)
        {
          v101 = v365;
        }

        else
        {
          v101 = v114;
        }
      }

      else
      {
        v101 = v365;
        v351 = v365;
      }
    }

    else
    {
      v351 = v365;
      v101 = v365;
    }
  }

  r2 = *v69;
  v355 = v69[1];
  if ((v41 & 0xA) != 0)
  {
    v116 = 0.0;
    v117 = v368;
    v118 = v303;
    if (rect > v368)
    {
      v117 = rect;
      UIRoundToViewScale(self->_button);
      v116 = v119;
    }

    v120 = v101;
    v121 = 2;
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v121 = 8;
    }

    if ((v41 & v121) != 0)
    {
      v122 = v102 + v298 + v117;
      v387.origin.x = v365;
      v123 = r1;
      v387.origin.y = r1;
      v387.size.width = v122;
      v387.size.height = v103;
      MaxX = CGRectGetMaxX(v387);
      v120 = v120 + MaxX;
      v125 = v351 + MaxX;
      if (v104 >= v78)
      {
        v126 = v104;
      }

      else
      {
        v126 = v78;
      }

      v127 = v126 + v122;
      v128 = r2;
    }

    else
    {
      if (v104 >= v78)
      {
        v134 = v104;
      }

      else
      {
        v134 = v78;
      }

      v135 = v102 + v298 + v134;
      v388.origin.x = v365;
      v123 = r1;
      v388.origin.y = r1;
      v388.size.width = v135;
      v388.size.height = v103;
      v128 = CGRectGetMaxX(v388);
      v127 = v135 + v117;
      v125 = v351;
    }

    v389.origin.x = v116 + v128;
    v346 = v389.origin.x;
    v389.origin.y = v355;
    v389.size.width = v368;
    v389.size.height = v362;
    v136 = CGRectGetHeight(v389);
    r1_16 = v120;
    v390.origin.x = v120;
    v390.origin.y = v123;
    v390.size.width = r2_24;
    v390.size.height = v349;
    v137 = CGRectGetHeight(v390);
    v352 = v125;
    v391.origin.x = v125;
    v391.origin.y = v123;
    v391.size.width = r1_24;
    v391.size.height = v326;
    v138 = v137 + CGRectGetHeight(v391);
    if (v136 >= v138)
    {
      v138 = v136;
    }

    v131 = v338;
    v132 = v357;
    v139 = v123;
  }

  else
  {
    if (v104 >= v78)
    {
      v127 = v104;
    }

    else
    {
      v127 = v78;
    }

    v118 = v303;
    if (v22 & 1 | (v368 == v127))
    {
      v129 = r2;
      v130 = r2_24;
      v131 = v338;
      v132 = v357;
      v133 = v351;
    }

    else
    {
      UIFloorToViewScale(self->_button);
      v141 = v101 + v140;
      v133 = v351;
      v142 = v351 + v140;
      if (v368 >= v127)
      {
        v129 = r2;
      }

      else
      {
        v129 = r2 + v140;
      }

      if (v368 >= v127)
      {
        v133 = v142;
        v101 = v141;
      }

      v130 = r2_24;
      v131 = v338;
      v132 = v357;
    }

    if (v368 >= v127)
    {
      v127 = v368;
    }

    v346 = v129;
    v143 = v355;
    v144 = v368;
    v145 = v362;
    v146 = CGRectGetHeight(*&v129);
    if (v146 >= rect)
    {
      v147 = v146;
    }

    else
    {
      v147 = rect;
    }

    r1_16 = v101;
    v392.origin.x = v101;
    v392.origin.y = r1;
    v392.size.width = v130;
    v392.size.height = v349;
    v148 = CGRectGetHeight(v392) + v147;
    v352 = v133;
    v393.origin.x = v133;
    v139 = r1;
    v393.origin.y = r1;
    v393.size.width = r1_24;
    v393.size.height = v326;
    v138 = v298 + CGRectGetHeight(v393) + v148;
  }

  v149 = r2_8 + v138;
  v150 = v371;
  if (v17)
  {
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v151 = v307;
      v346 = v307 + v346;
      r1_16 = v307 + r1_16;
      v352 = v307 + v352;
      v339 = v365;
      v152 = v342;
    }

    else
    {
      v394.origin.x = v365;
      v394.origin.y = v139;
      v394.size.width = v127;
      v394.size.height = v149;
      v153 = CGRectGetMaxX(v394);
      v150 = v371;
      v339 = v315 + v153;
      v152 = v342;
      v151 = v307;
    }

    v127 = v151 + v127;
    if (v149 < v152)
    {
      v149 = v152;
    }
  }

  else
  {
    v339 = r2;
  }

  if ([v150 _isRoundButton])
  {
    v395.origin.x = v365;
    v395.origin.y = v139;
    v395.size.width = v127;
    v395.size.height = v149;
    CGRectGetWidth(v395);
    v154 = r2_16a;
    UIRoundToViewScale(self->_button);
    v156 = v155;
    v396.origin.x = v365;
    v396.origin.y = v139;
    v396.size.width = v127;
    v396.size.height = v149;
    CGRectGetHeight(v396);
    UIRoundToViewScale(self->_button);
    v158 = (v156 - v157) * 0.5;
    if ([v371 _hasSymbolImage] || v158 <= 0.0)
    {
      v132 = v132 - v158;
      v154 = r2_16a - v158;
    }

    else
    {
      v131 = v131 + v158;
      dx = dx + v158;
    }
  }

  else
  {
    v154 = r2_16a;
  }

  v358 = v132;
  r2_16b = v154;
  if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v159 = v154;
  }

  else
  {
    v159 = v132;
  }

  v397.origin.x = v365;
  v397.origin.y = v139;
  v397.size.width = v127;
  v397.size.height = v149;
  v398 = CGRectOffset(v397, v159, v131);
  v160 = v398.origin.x;
  v305 = v398.origin.y;
  v316 = v398.size.width;
  v296 = v398.size.height;
  v398.origin.x = v346;
  v398.origin.y = v355;
  v398.size.width = v368;
  v398.size.height = v362;
  v399 = CGRectOffset(v398, v159, v131);
  v366 = v399.origin.x;
  v369 = v399.origin.y;
  v363 = v399.size.width;
  v161 = v399.size.height;
  v399.origin.x = v339;
  v399.size.height = v342;
  v399.origin.y = v355;
  v399.size.width = v309;
  v400 = CGRectOffset(v399, v159, v131);
  v306 = v400.origin.x;
  v308 = v400.size.width;
  v343 = v400.origin.y;
  v310 = v400.size.height;
  v400.origin.x = r1_16;
  v400.origin.y = v139;
  v400.size.width = r2_24;
  v400.size.height = v349;
  v401 = CGRectOffset(v400, v159, v131);
  v162 = v139;
  v163 = v401.origin.x;
  v164 = v401.origin.y;
  v165 = v131;
  v166 = v401.size.width;
  v167 = v401.size.height;
  v401.origin.x = v352;
  v401.origin.y = v162;
  v401.size.width = r1_24;
  v401.size.height = v326;
  v340 = v165;
  v402 = CGRectOffset(v401, v159, v165);
  r2_24a = v402.origin.x;
  v350 = v402.size.width;
  v353 = v402.size.height;
  r1a = v163;
  v402.origin.x = v163;
  r1_16a = v164;
  r1_24a = v166;
  v402.origin.y = v164;
  v402.size.width = v166;
  v327 = v167;
  v402.size.height = v167;
  r2_8a = r2_8 + CGRectGetMaxY(v402);
  v347 = v161;
  v301 = v160;
  if (v22)
  {
    v168 = v340;
    v169 = r2_16b;
    v170 = v316;
    v171 = v305;
    if (v17)
    {
LABEL_178:
      v403.origin.x = v160;
      v403.origin.y = v171;
      v403.size.width = v170;
      v172 = v296;
      v403.size.height = v296;
      CGRectGetMidY(v403);
      v404.origin.x = v306;
      v404.size.width = v308;
      v404.origin.y = v343;
      v404.size.height = v310;
      CGRectGetMidY(v404);
      UIFloorToViewScale(self->_button);
      v343 = v343 + v173;
      v170 = v316;
      goto LABEL_188;
    }
  }

  else if ((v41 & 0xA) != 0)
  {
    v405.origin.x = v163;
    v405.origin.y = v164;
    v405.size.width = v166;
    v405.size.height = v167;
    v456.origin.x = r2_24a;
    v456.origin.y = r2_8a;
    v456.size.width = v350;
    v456.size.height = v353;
    v406 = CGRectUnion(v405, v456);
    v174 = v406.origin.y;
    v175 = v406.size.width;
    v299 = v406.origin.x;
    recta = v406.size.height;
    CGRectGetMidY(v406);
    v407.origin.x = v366;
    v407.origin.y = v369;
    v407.size.width = v363;
    v407.size.height = v161;
    CGRectGetMidY(v407);
    UIRoundToViewScale(self->_button);
    if (v176 != 0.0)
    {
      v177 = v176;
      v408.origin.x = v366;
      v408.origin.y = v369;
      v408.size.width = v363;
      v408.size.height = v161;
      v178 = CGRectGetHeight(v408);
      v409.origin.x = v299;
      v409.origin.y = v174;
      v409.size.width = v175;
      v409.size.height = recta;
      if (v178 <= CGRectGetHeight(v409))
      {
        v369 = v369 + v177;
      }

      else
      {
        r1_16a = v164 - v177;
        r2_8a = r2_8a - v177;
      }
    }

    v168 = v340;
    v169 = r2_16b;
    v170 = v316;
    v171 = v305;
    v160 = v301;
    if (v17)
    {
      goto LABEL_178;
    }
  }

  else
  {
    v410.origin.x = v366;
    v410.origin.y = v369;
    v410.size.width = v363;
    v410.size.height = v161;
    v179 = CGRectGetHeight(v410);
    v180 = rect;
    if (rect <= v179)
    {
      v182 = 0.0;
      v180 = v179;
    }

    else
    {
      UIRoundToViewScale(self->_button);
      v182 = v181;
    }

    v168 = v340;
    v169 = r2_16b;
    v170 = v316;
    if (v41)
    {
      r1_16a = r1_16a + v298 + v180;
      r2_8a = r2_8a + v298 + v180;
      v232 = v369;
    }

    else
    {
      v428.origin.x = r2_24a;
      v428.origin.y = r2_8a;
      v428.size.width = v350;
      v428.size.height = v353;
      v232 = v298 + CGRectGetMaxY(v428);
    }

    v171 = v305;
    v369 = v182 + v232;
    if (v17)
    {
      goto LABEL_178;
    }
  }

  v172 = v296;
LABEL_188:
  v411.origin.x = v160;
  v411.origin.y = v171;
  v411.size.width = v170;
  v411.size.height = v172;
  CGRectGetWidth(v411);
  UIRoundToViewScale(self->_button);
  v412.size.width = v170;
  v184 = v183;
  v412.origin.x = v160;
  v412.origin.y = v171;
  v412.size.height = v172;
  CGRectGetHeight(v412);
  UIRoundToViewScale(self->_button);
  if (v118 && r1_12)
  {
    v186 = v284;
  }

  else
  {
    v186 = v184;
  }

  if (v118 && r1_12)
  {
    v187 = v286;
  }

  else
  {
    v187 = v185;
  }

  v300 = v184;
  rectb = v185;
  v188 = v186 == v184 && v187 == v185;
  v341 = v186;
  r2_16c = v187;
  if (v188)
  {
    v196 = v302;
    v197 = v304;
    v198 = v366;
    v199 = v369;
    v200 = v343;
    v201 = v347;
    v202 = v363;
    goto LABEL_247;
  }

  v189 = r2 + v159;
  v190 = v186 - (v169 + v358);
  v191 = v187 - (dx + v168);
  v192 = [(UIControl *)self->_button contentHorizontalAlignment];
  if (v192 == UIControlContentHorizontalAlignmentTrailing)
  {
    v193 = v296;
    v194 = v316;
    v195 = v305;
    if (v11 != UIUserInterfaceLayoutDirectionRightToLeft)
    {
      goto LABEL_209;
    }

    goto LABEL_208;
  }

  v193 = v296;
  v194 = v316;
  v195 = v305;
  if (v192 == UIControlContentHorizontalAlignmentLeading)
  {
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      goto LABEL_209;
    }

    goto LABEL_208;
  }

  if ((v76 == 0) | v295 & 1 | (v192 != UIControlContentHorizontalAlignmentFill) | v283)
  {
    if (v192 == UIControlContentHorizontalAlignmentRight)
    {
LABEL_209:
      v415.origin.x = v189;
      v415.origin.y = v355 + v168;
      v415.size.width = v190;
      v415.size.height = v191;
      CGRectGetMaxX(v415);
      v416.origin.x = v301;
      v416.origin.y = v195;
      v416.size.width = v194;
      v416.size.height = v193;
      CGRectGetMaxX(v416);
      goto LABEL_210;
    }

    if (v192 != UIControlContentHorizontalAlignmentLeft)
    {
      v454.origin.x = v189;
      v454.origin.y = v355 + v168;
      v454.size.width = v190;
      v454.size.height = v191;
      CGRectGetMidX(v454);
      v455.origin.x = v301;
      v455.origin.y = v305;
      v455.size.width = v316;
      v455.size.height = v296;
      CGRectGetMidX(v455);
      goto LABEL_210;
    }

LABEL_208:
    v413.origin.x = v189;
    v413.origin.y = v355 + v168;
    v413.size.width = v190;
    v413.size.height = v191;
    CGRectGetMinX(v413);
    v414.origin.x = v301;
    v414.origin.y = v195;
    v414.size.width = v194;
    v414.size.height = v193;
    CGRectGetMinX(v414);
LABEL_210:
    button = self->_button;
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      UICeilToViewScale(button);
    }

    else
    {
      UIFloorToViewScale(button);
    }

    v359 = v204;
    dxa = v204;
    goto LABEL_214;
  }

  v430.origin.x = v189;
  v430.origin.y = v355 + v168;
  v430.size.width = v190;
  v430.size.height = v191;
  CGRectGetMinX(v430);
  v431.origin.x = v301;
  v431.origin.y = v305;
  v431.size.width = v316;
  v431.size.height = v296;
  CGRectGetMinX(v431);
  v432.origin.x = v189;
  v432.origin.y = v355 + v168;
  v432.size.width = v190;
  v432.size.height = v191;
  CGRectGetMaxX(v432);
  v433.origin.x = v301;
  v433.origin.y = v305;
  v433.size.width = v316;
  v433.size.height = v296;
  CGRectGetMaxX(v433);
  v233 = self->_button;
  if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    UICeilToViewScale(v233);
    v359 = v234;
    UICeilToViewScale(self->_button);
  }

  else
  {
    UIFloorToViewScale(v233);
    v359 = v281;
    UIFloorToViewScale(self->_button);
  }

  dxa = v235;
  v193 = v296;
  v195 = v305;
LABEL_214:
  v205 = [(UIControl *)self->_button contentVerticalAlignment];
  v206 = v205;
  if (v76)
  {
    v207 = 0;
  }

  else
  {
    v207 = v205 == UIControlContentVerticalAlignmentFill;
  }

  v208 = v207;
  v282 = v190;
  v285 = v189;
  v287 = v355 + v168;
  if ((v288 & v304 & v208) == 1)
  {
    v417.origin.x = v189;
    v417.origin.y = v355 + v168;
    v417.size.width = v190;
    v417.size.height = v191;
    CGRectGetMinY(v417);
    v418.origin.y = v195;
    v418.origin.x = v301;
    v418.size.width = v194;
    v418.size.height = v193;
    CGRectGetMinY(v418);
    v419.origin.x = v189;
    v419.origin.y = v355 + v168;
    v419.size.width = v190;
    v209 = v191;
    v419.size.height = v191;
    CGRectGetMaxY(v419);
    v420.origin.x = v301;
    v420.origin.y = v305;
    v420.size.width = v194;
    v420.size.height = v193;
    CGRectGetMaxY(v420);
    UIFloorToViewScale(self->_button);
    v211 = v210;
    UIFloorToViewScale(self->_button);
    v213 = v212;
    v196 = v302;
    if (v17)
    {
LABEL_222:
      v214 = v285;
      v215 = v355 + v168;
      v216 = v190;
      v217 = v209;
      if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        MinX = CGRectGetMinX(*&v214);
        v421.origin.x = v301;
        v421.origin.y = v305;
        v421.size.width = v316;
        v421.size.height = v193;
        v219 = CGRectGetMinX(v421);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v214);
        v423.origin.x = v301;
        v423.origin.y = v305;
        v423.size.width = v316;
        v423.size.height = v193;
        v219 = CGRectGetMaxX(v423);
      }

      v224 = MinX - v219;
      v197 = v304;
      if (v206 == UIControlContentVerticalAlignmentBottom)
      {
        v425.origin.x = v285;
        v425.origin.y = v287;
        v425.size.width = v190;
        v425.size.height = v209;
        MaxY = CGRectGetMaxY(v425);
        v426.origin.x = v301;
        v426.origin.y = v305;
        v426.size.width = v316;
        v426.size.height = v193;
        MinY = CGRectGetMaxY(v426);
      }

      else
      {
        v225 = v287;
        v226 = v285;
        v227 = v190;
        v228 = v209;
        if (v206 == UIControlContentVerticalAlignmentTop)
        {
          MaxY = CGRectGetMinY(*&v226);
          v424.origin.x = v301;
          v424.origin.y = v305;
          v424.size.width = v316;
          v424.size.height = v193;
          MinY = CGRectGetMinY(v424);
        }

        else
        {
          MaxY = CGRectGetMidY(*&v226);
          v427.origin.x = v301;
          v427.origin.y = v305;
          v427.size.width = v316;
          v427.size.height = v193;
          MinY = CGRectGetMidY(v427);
        }
      }

      v231 = MaxY - MinY;
      goto LABEL_246;
    }
  }

  else
  {
    v196 = v302;
    v220 = v189;
    v221 = v355 + v168;
    v222 = v190;
    v209 = v191;
    v223 = v191;
    if (v205 == UIControlContentVerticalAlignmentBottom)
    {
      CGRectGetMaxY(*&v220);
      v429.origin.x = v301;
      v429.origin.y = v195;
      v429.size.width = v194;
      v429.size.height = v193;
      CGRectGetMaxY(v429);
    }

    else if (v205 == UIControlContentVerticalAlignmentTop)
    {
      CGRectGetMinY(*&v220);
      v422.origin.x = v301;
      v422.origin.y = v195;
      v422.size.width = v194;
      v422.size.height = v193;
      CGRectGetMinY(v422);
    }

    else
    {
      CGRectGetMidY(*&v220);
      v434.origin.x = v301;
      v434.origin.y = v195;
      v434.size.width = v194;
      v434.size.height = v193;
      CGRectGetMidY(v434);
    }

    UIFloorToViewScale(self->_button);
    v211 = v236;
    v213 = v236;
    if (v17)
    {
      goto LABEL_222;
    }
  }

  v224 = 0.0;
  v231 = 0.0;
  v197 = v304;
LABEL_246:
  v435.origin.x = v366;
  v435.origin.y = v369;
  v435.size.width = v363;
  v435.size.height = v347;
  v436 = CGRectOffset(v435, dxa, v213);
  v198 = v436.origin.x;
  v199 = v436.origin.y;
  v202 = v436.size.width;
  v201 = v436.size.height;
  v436.origin.x = v306;
  v436.size.width = v308;
  v436.origin.y = v343;
  v436.size.height = v310;
  v437 = CGRectOffset(v436, v224, v231);
  v306 = v437.origin.x;
  v308 = v437.size.width;
  v200 = v437.origin.y;
  v310 = v437.size.height;
  v437.origin.x = r1a;
  v437.origin.y = r1_16a;
  v437.size.width = r1_24a;
  v437.size.height = v327;
  v438 = CGRectOffset(v437, v359, v211);
  r1a = v438.origin.x;
  r1_16a = v438.origin.y;
  r1_24a = v438.size.width;
  v327 = v438.size.height;
  v438.origin.x = r2_24a;
  v438.origin.y = r2_8a;
  v438.size.width = v350;
  v438.size.height = v353;
  v439 = CGRectOffset(v438, v359, v211);
  r2_24a = v439.origin.x;
  r2_8a = v439.origin.y;
  v350 = v439.size.width;
  v353 = v439.size.height;
LABEL_247:
  v367 = v198;
  v370 = v199;
  v364 = v202;
  v348 = v201;
  [(UIView *)self->_imageView frameForAlignmentRect:v198, v199, v202, v201];
  v360 = v237;
  v317 = v238;
  v240 = v239;
  v242 = v241;
  v243 = 0.0;
  if ((v14 == 0) | v15 & 1)
  {
    v244 = 0.0;
  }

  else
  {
    v244 = 0.0;
    if ([(UIImageView *)self->_imageView _hasBaseline])
    {
      [(UIImageView *)self->_imageView _baselineOffsetsAtSize:v240, v242];
      v246 = v245;
      v248 = v247;
      [(UIImageView *)self->_imageView alignmentRectInsets];
      v243 = v246 + v249;
      v244 = v248 + v250;
    }
  }

  v344 = v200;
  if (v197)
  {
    if (v196)
    {
      v251 = 24;
    }

    else
    {
      v251 = 32;
    }

    v252 = *(&self->super.isa + v251);
    dxb = v242;
    if (v196)
    {
      v253 = v327;
    }

    else
    {
      v253 = v353;
    }

    if (v196)
    {
      v254 = r1_24a;
    }

    else
    {
      v254 = v350;
    }

    v255 = v252;
    [v255 _baselineOffsetsAtSize:{v254, v253}];
    v257 = v256;
    if (v328)
    {
      v258 = 32;
    }

    else
    {
      v258 = 24;
    }

    v118 = v303;
    v259 = *(&self->super.isa + v258);
    if (v328)
    {
      v260 = v353;
    }

    else
    {
      v260 = v327;
    }

    if (v328)
    {
      v261 = v350;
    }

    else
    {
      v261 = r1_24a;
    }

    v262 = v259;
    v263 = v261;
    v242 = dxb;
    [v262 _baselineOffsetsAtSize:{v263, v260}];
    v265 = v264;

    if (!v14)
    {
      goto LABEL_278;
    }
  }

  else
  {
    v265 = 0.0;
    v257 = 0.0;
    if (!v14)
    {
      if ((v15 & 1) == 0)
      {
        v318 = 0.0;
        v361 = 0.0;
        goto LABEL_285;
      }

      goto LABEL_280;
    }
  }

  if ((v15 & 1) != 0 || [(UIImageView *)self->_imageView _hasBaseline]|| v283)
  {
    if ((v295 | v197))
    {
      v266 = [(UIImageView *)self->_imageView _hasBaseline];
      v267 = 0.0;
      v268 = 0.0;
      if (v266 && v197)
      {
        v440.origin.x = v360;
        v440.origin.y = v317;
        v440.size.width = v240;
        v440.size.height = v242;
        CGRectGetMinY(v440);
        v441.origin.x = r2;
        v441.origin.y = v355;
        v441.size.width = v341;
        v441.size.height = r2_16c;
        CGRectGetMaxY(v441);
        v442.origin.x = v360;
        v442.origin.y = v317;
        v442.size.width = v240;
        v442.size.height = v242;
        CGRectGetMaxY(v442);
        v443.origin.x = r1a;
        v443.origin.y = r1_16a;
        v443.size.width = r1_24a;
        v443.size.height = v327;
        CGRectGetMinY(v443);
        v444.origin.x = r2;
        v444.origin.y = v355;
        v444.size.width = v341;
        v444.size.height = r2_16c;
        CGRectGetMaxY(v444);
        v445.origin.x = r2_24a;
        v445.origin.y = r2_8a;
        v445.size.width = v350;
        v445.size.height = v353;
        CGRectGetMaxY(v445);
        UIRoundToViewScale(self->_button);
        v268 = v269;
        UIRoundToViewScale(self->_button);
      }

      goto LABEL_282;
    }

LABEL_280:
    v448.origin.x = v360;
    v448.origin.y = v317;
    v448.size.width = v240;
    v448.size.height = v242;
    v268 = v243 + CGRectGetMinY(v448);
    v449.origin.x = r2;
    v449.origin.y = v355;
    v449.size.width = v341;
    v449.size.height = r2_16c;
    v270 = CGRectGetMaxY(v449);
    goto LABEL_281;
  }

LABEL_278:
  v446.origin.x = r1a;
  v446.origin.y = r1_16a;
  v446.size.width = r1_24a;
  v446.size.height = v327;
  v268 = v257 + CGRectGetMinY(v446);
  v447.origin.x = r2;
  v447.origin.y = v355;
  v447.size.width = v341;
  v447.size.height = r2_16c;
  v270 = CGRectGetMaxY(v447);
  v360 = r2_24a;
  v317 = r2_8a;
  v240 = v350;
  v242 = v353;
  v244 = v265;
LABEL_281:
  v450.origin.x = v360;
  v450.origin.y = v317;
  v450.size.width = v240;
  v450.size.height = v242;
  v267 = v244 + v270 - CGRectGetMaxY(v450);
  if (v14)
  {
LABEL_282:
    v318 = v267;
    v361 = v268;
    [(UIView *)self->_imageView frameForAlignmentRect:v367, v370, v202, v348, *&v282];
    v364 = v272;
    v367 = v271;
    v274 = v273;
    v348 = v275;
    goto LABEL_286;
  }

  v318 = v267;
  v361 = v268;
LABEL_285:
  v274 = v370;
LABEL_286:
  v451.origin.x = r1a;
  v451.origin.y = r1_16a;
  v451.size.width = r1_24a;
  v451.size.height = v327;
  v457.origin.x = r2_24a;
  v457.origin.y = r2_8a;
  v457.size.width = v350;
  v457.size.height = v353;
  v458 = CGRectUnion(v451, v457);
  v452.origin.x = v367;
  v452.origin.y = v274;
  v452.size.width = v364;
  v452.size.height = v348;
  v453 = CGRectUnion(v452, v458);
  if (v300 >= v453.size.width)
  {
    v276 = v300;
  }

  else
  {
    v276 = v453.size.width;
  }

  if (v118)
  {
    v276 = v300;
  }

  *&retstr->var7 = 0;
  if (rectb >= v453.size.height)
  {
    v277 = rectb;
  }

  else
  {
    v277 = v453.size.height;
  }

  retstr->var0.origin.x = r2;
  retstr->var0.origin.y = v355;
  if (r1_12)
  {
    v277 = rectb;
  }

  retstr->var0.size.width = v341;
  retstr->var0.size.height = r2_16c;
  retstr->var1.width = v276;
  retstr->var1.height = v277;
  retstr->var2.origin.x = v367;
  retstr->var2.origin.y = v274;
  retstr->var2.size.width = v364;
  retstr->var2.size.height = v348;
  retstr->var3.origin.x = v306;
  retstr->var3.origin.y = v344;
  retstr->var3.size.width = v308;
  retstr->var3.size.height = v310;
  retstr->var4.origin.x = r1a;
  retstr->var4.origin.y = r1_16a;
  retstr->var4.size.width = r1_24a;
  retstr->var4.size.height = v327;
  retstr->var5.origin.x = r2_24a;
  retstr->var5.origin.y = r2_8a;
  retstr->var5.size.width = v350;
  retstr->var5.size.height = v353;
  retstr->var6.var0 = v361;
  retstr->var6.var1 = v318;
  if (v15)
  {
    v278 = 8;
  }

  else
  {
    v278 = 0;
  }

  if (v14)
  {
    v279 = 3;
  }

  else
  {
    v279 = 1;
  }

  *&retstr->var7 = v278 | v279 | (4 * (v17 != 0)) | (16 * (v196 != 0)) | (32 * (v328 != 0));

  return result;
}

- (void)_applyButtonValuesToConfiguration:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIControl *)self->_button state];
  v6 = [(UIButton *)self->_button _attributedTitleForState:v5];
  if (v6)
  {
    [v4 setAttributedTitle:v6];
  }

  else
  {
    v7 = [(UIButton *)self->_button _titleForState:v5];
    v8 = [(UIButton *)self->_button _titleColorForState:v5];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
        v10 = objc_alloc(MEMORY[0x1E696AAB0]);
        v15 = *off_1E70EC920;
        v16[0] = v9;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v12 = [v10 initWithString:v7 attributes:v11];
        [v4 setAttributedTitle:v12];
      }

      else
      {
        [v4 setTitle:v7];
      }
    }
  }

  v13 = [(UIButton *)self->_button _imageForState:v5 applyingConfiguration:0 usesImageForNormalState:0];
  if (v13)
  {
    [v4 setImage:v13];
    if ([v13 isSymbolImage])
    {
      v14 = [(UIButton *)self->_button _preferredConfigurationForState:v5 includeDefault:0];
      if (v14)
      {
        [v4 setPreferredSymbolConfigurationForImage:v14];
      }
    }
  }
}

- (void)_animateContentIfNeededWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_flags & 2) != 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__UIButtonConfigurationVisualProvider__animateContentIfNeededWithBlock___block_invoke;
    v6[3] = &unk_1E70F0F78;
    v7 = v4;
    [UIView animateWithDuration:v6 animations:0 completion:0.25];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_transitionContentIfNeededOn:(id)a3 WithBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((*&self->_flags & 2) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__UIButtonConfigurationVisualProvider__transitionContentIfNeededOn_WithBlock___block_invoke;
    v8[3] = &unk_1E70F0F78;
    v9 = v6;
    [UIView _transitionBackingOutermostLayerWithView:a3 duration:5242880 options:v8 animations:0 completion:0.25];
  }

  else
  {
    v6[2](v6);
  }
}

- (BOOL)_updateImageViewWithConfiguration:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _resolvedImage];
  if (!v5)
  {
    LOBYTE(v12) = [(UIView *)self->_imageView _removeFromSuperviewIfNeeded];
    goto LABEL_21;
  }

  v6 = [v4 _resolvedSymbolConfiguration];
  v7 = [(UIView *)self->_imageView superview];
  if (v7)
  {
    v8 = [(UIImageView *)self->_imageView image];
    v9 = v5;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8)
      {
        LOBYTE(v12) = 1;
LABEL_17:

        goto LABEL_18;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        LOBYTE(v12) = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    v10 = [(UIImageView *)self->_imageView preferredSymbolConfiguration];
    v13 = v6;
    v14 = v13;
    if (v10 == v13)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      LOBYTE(v12) = 1;
      if (v13 && v10)
      {
        v12 = [v10 isEqual:v13] ^ 1;
      }
    }

    goto LABEL_17;
  }

  LOBYTE(v12) = 1;
LABEL_19:

  v15 = [(UIButtonConfigurationVisualProvider *)self imageViewCreateIfNeeded:1];
  if (!self->_imageView)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        button = self->_button;
        *buf = 138412290;
        v29 = button;
        _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "UIKIT INTERNAL ERROR: Failed to create an image view for configuration based button %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &_updateImageViewWithConfiguration____s_category) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = self->_button;
        *buf = 138412290;
        v29 = v20;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "UIKIT INTERNAL ERROR: Failed to create an image view for configuration based button %@", buf, 0xCu);
      }
    }
  }

  v16 = [(UIButtonConfigurationVisualProvider *)self effectiveContentView];
  [v16 addSubview:self->_imageView];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__UIButtonConfigurationVisualProvider__updateImageViewWithConfiguration___block_invoke;
  v23[3] = &unk_1E70F6B40;
  v24 = v4;
  v25 = self;
  v26 = v5;
  v27 = v6;
  v17 = v6;
  [(UIButtonConfigurationVisualProvider *)self _animateContentIfNeededWithBlock:v23];

LABEL_21:
  return v12;
}

void __73__UIButtonConfigurationVisualProvider__updateImageViewWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolvedSymbolContentTransition];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 264);
  v11 = v2;
  if (v2)
  {
    v5 = [v2 contentTransition];
    v6 = [v11 options];
    [v4 setSymbolImage:v3 withContentTransition:v5 options:v6];
  }

  else
  {
    [v4 setImage:v3];
  }

  [*(*(a1 + 40) + 264) setPreferredSymbolConfiguration:*(a1 + 56)];
  v7 = [*(a1 + 32) _resolvedImageColor];
  [*(*(a1 + 40) + 264) setTintColor:v7];

  if ([*(*(a1 + 40) + 288) _allowsSymbolAnimations])
  {
    v8 = [*(*(a1 + 40) + 288) state];
    v9 = *(*(a1 + 40) + 264);
    v10 = [MEMORY[0x1E6982290] scaleDownEffect];
    if (v8)
    {
      [v9 addSymbolEffect:v10];
    }

    else
    {
      [v9 removeSymbolEffectOfType:v10];
    }
  }
}

- (BOOL)_updateIndicatorWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 _resolvedIndicator];
  indicatorView = self->_indicatorView;
  if (v5)
  {
    if (!indicatorView)
    {
      v7 = objc_opt_new();
      v8 = self->_indicatorView;
      self->_indicatorView = v7;
    }

    v9 = [(UIButtonConfigurationVisualProvider *)self effectiveContentView];
    [v9 addSubview:self->_indicatorView];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__UIButtonConfigurationVisualProvider__updateIndicatorWithConfiguration___block_invoke;
    v14[3] = &unk_1E70F6228;
    v14[4] = self;
    v10 = v5;
    v15 = v10;
    v16 = v4;
    [(UIButtonConfigurationVisualProvider *)self _animateContentIfNeededWithBlock:v14];
    v11 = [(UIImageView *)self->_indicatorView image];
    v12 = [v11 isEqual:v10] ^ 1;
  }

  else
  {
    LOBYTE(v12) = [(UIView *)indicatorView _removeFromSuperviewIfNeeded];
  }

  return v12;
}

void __73__UIButtonConfigurationVisualProvider__updateIndicatorWithConfiguration___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setImage:*(a1 + 40)];
  v2 = [*(a1 + 48) _resolvedIndicatorSymbolConfiguration];
  [*(*(a1 + 32) + 8) setPreferredSymbolConfiguration:v2];

  v3 = [*(a1 + 48) _resolvedIndicatorColor];
  [*(*(a1 + 32) + 8) setTintColor:v3];
}

- (BOOL)_updateProgressIndicatorWithConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 showsActivityIndicator])
  {
    [(UIView *)self->_imageView removeFromSuperview];
    if (!self->_progressIndicatorView)
    {
      v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:16];
      progressIndicatorView = self->_progressIndicatorView;
      self->_progressIndicatorView = v5;
    }

    [v4 _resolvedActivityIndicatorSize];
    UIRoundToViewScale(self->_button);
    [(UIActivityIndicatorView *)self->_progressIndicatorView _setCustomWidth:?];
    [(UIActivityIndicatorView *)self->_progressIndicatorView startAnimating];
    v7 = [(UIButtonConfigurationVisualProvider *)self effectiveContentView];
    [v7 addSubview:self->_progressIndicatorView];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__UIButtonConfigurationVisualProvider__updateProgressIndicatorWithConfiguration___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v4;
    [(UIButtonConfigurationVisualProvider *)self _animateContentIfNeededWithBlock:v10];

    v8 = 1;
  }

  else
  {
    v8 = [(UIView *)self->_progressIndicatorView _removeFromSuperviewIfNeeded];
  }

  return v8;
}

void __81__UIButtonConfigurationVisualProvider__updateProgressIndicatorWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _resolvedActivityIndicatorColor];
  [*(*(a1 + 32) + 16) setColor:v2];
}

- (BOOL)_updateTitleLabelWithConfiguration:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _resolvedTitle];
  if (v5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v6 = [(UIButtonConfigurationVisualProvider *)self titleViewCreateIfNeeded:1];
    if (!self->_titleLabel)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v14 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          button = self->_button;
          *buf = 138412290;
          v24 = button;
          _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "UIKIT INTERNAL ERROR: Failed to create a title label for configuration based button %@", buf, 0xCu);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_updateTitleLabelWithConfiguration____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_button;
          *buf = 138412290;
          v24 = v13;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "UIKIT INTERNAL ERROR: Failed to create a title label for configuration based button %@", buf, 0xCu);
        }
      }
    }

    v7 = [(UIButtonConfigurationVisualProvider *)self effectiveContentView];
    [v7 addSubview:self->_titleLabel];

    titleLabel = self->_titleLabel;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__UIButtonConfigurationVisualProvider__updateTitleLabelWithConfiguration___block_invoke;
    v16[3] = &unk_1E70FB728;
    v18 = &v19;
    v16[4] = self;
    v17 = v5;
    [(UIButtonConfigurationVisualProvider *)self _transitionContentIfNeededOn:titleLabel WithBlock:v16];
    LODWORD(titleLabel) = [v4 _hasMultilineTitle];
    if ([(UILabel *)self->_titleLabel numberOfLines]!= (titleLabel ^ 1))
    {
      [(UILabel *)self->_titleLabel setNumberOfLines:?];
      *(v20 + 24) = 1;
    }

    v9 = [(UILabel *)self->_titleLabel lineBreakMode];
    if (v9 == [v4 titleLineBreakMode])
    {
      v10 = *(v20 + 24);
    }

    else
    {
      -[UILabel setLineBreakMode:](self->_titleLabel, "setLineBreakMode:", [v4 titleLineBreakMode]);
      v10 = 1;
      *(v20 + 24) = 1;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v10 = [(UIView *)self->_titleLabel _removeFromSuperviewIfNeeded];
  }

  return v10 & 1;
}

uint64_t __74__UIButtonConfigurationVisualProvider__updateTitleLabelWithConfiguration___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) attributedText];
  *(*(a1[6] + 8) + 24) |= [v2 isEqualToAttributedString:a1[5]] ^ 1;

  v3 = a1[5];
  v4 = *(a1[4] + 24);

  return [v4 setAttributedText:v3];
}

- (BOOL)_updateSubtitleLabelWithConfiguration:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _resolvedSubtitle];
  if (v5)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v6 = [(UIButtonConfigurationVisualProvider *)self subtitleViewCreateIfNeeded:1];
    if (!self->_subtitleLabel)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v16 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          button = self->_button;
          *buf = 138412290;
          v26 = button;
          _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "UIKIT INTERNAL ERROR: Failed to create a subtitle label for configuration based button %@", buf, 0xCu);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_updateSubtitleLabelWithConfiguration____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_button;
          *buf = 138412290;
          v26 = v13;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "UIKIT INTERNAL ERROR: Failed to create a subtitle label for configuration based button %@", buf, 0xCu);
        }
      }

      if (!self->_subtitleLabel)
      {
        v14 = objc_opt_new();
        subtitleLabel = self->_subtitleLabel;
        self->_subtitleLabel = v14;
      }
    }

    v7 = [(UIButtonConfigurationVisualProvider *)self effectiveContentView];
    [v7 addSubview:self->_subtitleLabel];

    v8 = self->_subtitleLabel;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__UIButtonConfigurationVisualProvider__updateSubtitleLabelWithConfiguration___block_invoke;
    v18[3] = &unk_1E70FB728;
    v20 = &v21;
    v18[4] = self;
    v19 = v5;
    [(UIButtonConfigurationVisualProvider *)self _transitionContentIfNeededOn:v8 WithBlock:v18];
    LODWORD(v8) = [v4 _hasMultilineTitle];
    if ([(UILabel *)self->_subtitleLabel numberOfLines]!= (v8 ^ 1))
    {
      [(UILabel *)self->_subtitleLabel setNumberOfLines:?];
      *(v22 + 24) = 1;
    }

    v9 = [(UILabel *)self->_subtitleLabel lineBreakMode];
    if (v9 == [v4 subtitleLineBreakMode])
    {
      v10 = *(v22 + 24);
    }

    else
    {
      -[UILabel setLineBreakMode:](self->_subtitleLabel, "setLineBreakMode:", [v4 subtitleLineBreakMode]);
      v10 = 1;
      *(v22 + 24) = 1;
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = [(UIView *)self->_subtitleLabel _removeFromSuperviewIfNeeded];
  }

  return v10 & 1;
}

uint64_t __77__UIButtonConfigurationVisualProvider__updateSubtitleLabelWithConfiguration___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) attributedText];
  *(*(a1[6] + 8) + 24) |= [v2 isEqualToAttributedString:a1[5]] ^ 1;

  v3 = a1[5];
  v4 = *(a1[4] + 32);

  return [v4 setAttributedText:v3];
}

- (BOOL)_updateBackgroundViewWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 cornerStyle];
  v6 = [v4 background];
  if (!v6)
  {
    LOBYTE(v15) = 0;
    goto LABEL_35;
  }

  v7 = v6;
  if (v5 != -1)
  {
    v8 = [v6 copy];

    v7 = v8;
  }

  if (_UISolariumEnabled())
  {
    v9 = [(UIButtonConfigurationVisualProvider *)self effectiveContentView];
    v10 = [v9 superview];
    v11 = v10;
    if (!v10 || v10 == self->_backgroundView)
    {
      [v7 _setContentView:v9];
      v12 = [v4 _resolvedMonochromaticTreatment];
      if (v12 == -1)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      [(UIView *)self->_imageView _setMonochromaticTreatment:v13];
      [(UIView *)self->_titleLabel _setMonochromaticTreatment:v13];
      [(UIView *)self->_subtitleLabel _setMonochromaticTreatment:v13];
      v14 = ![(UIControl *)self->_button isSelected]&& [(UIControl *)self->_button isEnabled];
      [(UIView *)self->_imageView _setEnableMonochromaticTreatment:v14];
      [(UIView *)self->_titleLabel _setEnableMonochromaticTreatment:v14];
      [(UIView *)self->_subtitleLabel _setEnableMonochromaticTreatment:v14];
      v16 = [v4 _resolvedColorMaterialRenderingMode];
      v17 = [(UIView *)self->_contentView traitOverrides];
      v18 = objc_opt_self();
      if (v16 < 1)
      {
        [v17 removeTrait:v18];
      }

      else
      {
        [v17 setNSIntegerValue:v16 forTrait:v18];
      }

      [v7 _setContentViewIgnoresBackgroundInsets:1];
    }
  }

  [v7 cornerRadius];
  v20 = v19;
  v21 = [v4 cornerStyle];
  if (v21 <= 1)
  {
    if (!v21)
    {
      v32 = +[UIFontMetrics defaultMetrics];
      v33 = [(UIView *)self->_button traitCollection];
      [v32 scaledValueForValue:v33 compatibleWithTraitCollection:v20];
      [v7 setCornerRadius:?];

      goto LABEL_31;
    }

    if (v21 != 1)
    {
      goto LABEL_31;
    }

    [(UIView *)self->_button bounds];
    v24 = 0.25;
LABEL_28:
    v22 = v23 * v24 * 0.5;
    goto LABEL_30;
  }

  switch(v21)
  {
    case 2:
      [(UIView *)self->_button bounds];
      v24 = 0.35;
      goto LABEL_28;
    case 3:
      [(UIView *)self->_button bounds];
      v22 = v25 * 0.5 * 0.5;
      goto LABEL_30;
    case 4:
      v22 = 1.79769313e308;
LABEL_30:
      [v7 setCornerRadius:v22];
      break;
  }

LABEL_31:
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    v27 = [(_UISystemBackgroundView *)backgroundView configuration];
    v15 = [v27 _isEqualToInternalConfigurationLayoutOnly:v7] ^ 1;

    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __78__UIButtonConfigurationVisualProvider__updateBackgroundViewWithConfiguration___block_invoke;
    v37 = &unk_1E70F35B8;
    v38 = self;
    v39 = v7;
    v28 = v7;
    [(UIButtonConfigurationVisualProvider *)self _animateContentIfNeededWithBlock:&v34];

    [UIView performWithoutAnimation:&__block_literal_global_332, v34, v35, v36, v37, v38];
  }

  else
  {
    v29 = [[_UISystemBackgroundView alloc] initWithConfiguration:v7];
    v30 = self->_backgroundView;
    self->_backgroundView = v29;

    [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    [(UIView *)self->_button insertSubview:self->_backgroundView atIndex:0];
    [(_UISystemBackgroundView *)self->_backgroundView setFlexInteractionGestureView:self->_button];
    LOBYTE(v15) = 1;
  }

LABEL_35:
  return v15;
}

@end