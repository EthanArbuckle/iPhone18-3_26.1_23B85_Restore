@interface _UISheetPresentationControllerConfiguration
+ (_UISheetPresentationControllerConfiguration)_fullScreenConfiguration;
- (BOOL)_isEqual:(id)equal onlyCheckPropertiesRequiringFencing:(BOOL)fencing;
- (CGRect)_hostParentFullHeightUntransformedFrameForDepthLevel;
- (CGRect)_hostParentStackAlignmentFrame;
- (NSString)description;
- (_UISheetPresentationControllerConfiguration)init;
- (_UISheetPresentationControllerConfiguration)initWithBSXPCCoder:(id)coder;
- (_UISheetPresentationControllerConfiguration)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISheetPresentationControllerConfiguration

- (_UISheetPresentationControllerConfiguration)init
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UISheetPresentationControllerConfiguration;
  v2 = [(_UISheetPresentationControllerConfiguration *)&v17 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 257;
    *(v2 + 24) = xmmword_18A680DA0;
    v4 = _UIFallbackSheetMetrics();
    *(v3 + 5) = [v4 defaultMode];

    *(v3 + 3) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v5 = _UIFallbackSheetMetrics();
    [v5 preferredShadowOpacity];
    *(v3 + 8) = v6;

    v7 = _UIFallbackSheetMetrics();
    [v7 shadowRadius];
    *(v3 + 9) = v8;

    v9 = +[UISheetPresentationControllerDetent largeDetent];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v11 = *(v3 + 10);
    *(v3 + 10) = v10;

    v12 = [_UISheetPresentationControllerAppearance appearancePreferringDimmingVisible:1];
    v13 = *(v3 + 12);
    *(v3 + 12) = v12;

    *(v3 + 8) = 257;
    v14 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 136) = *MEMORY[0x1E695F050];
    *(v3 + 152) = v15;
    *(v3 + 168) = v14;
    *(v3 + 184) = v15;
  }

  return v3;
}

+ (_UISheetPresentationControllerConfiguration)_fullScreenConfiguration
{
  v2 = objc_alloc_init(_UISheetPresentationControllerConfiguration);
  [(_UISheetPresentationControllerConfiguration *)v2 _setWantsFullScreen:1];

  return v2;
}

- (BOOL)_isEqual:(id)equal onlyCheckPropertiesRequiringFencing:(BOOL)fencing
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    _shouldScaleDownBehindDescendantSheets = [(_UISheetPresentationControllerConfiguration *)self _shouldScaleDownBehindDescendantSheets];
    if (_shouldScaleDownBehindDescendantSheets == [v7 _shouldScaleDownBehindDescendantSheets] && (v9 = -[_UISheetPresentationControllerConfiguration _peeksWhenFloating](self, "_peeksWhenFloating"), v9 == objc_msgSend(v7, "_peeksWhenFloating")) && (v10 = -[_UISheetPresentationControllerConfiguration _wantsFullScreen](self, "_wantsFullScreen"), v10 == objc_msgSend(v7, "_wantsFullScreen")) && (v11 = -[_UISheetPresentationControllerConfiguration _wantsBottomAttached](self, "_wantsBottomAttached"), v11 == objc_msgSend(v7, "_wantsBottomAttached")) && (v12 = -[_UISheetPresentationControllerConfiguration _wantsEdgeAttachedInCompactHeight](self, "_wantsEdgeAttachedInCompactHeight"), v12 == objc_msgSend(v7, "_wantsEdgeAttachedInCompactHeight")) && (v13 = -[_UISheetPresentationControllerConfiguration _widthFollowsPreferredContentSizeWhenEdgeAttached](self, "_widthFollowsPreferredContentSizeWhenEdgeAttached"), v13 == objc_msgSend(v7, "_widthFollowsPreferredContentSizeWhenEdgeAttached")) && (v14 = -[_UISheetPresentationControllerConfiguration _prefersGrabberVisible](self, "_prefersGrabberVisible"), v14 == objc_msgSend(v7, "_prefersGrabberVisible")) && (-[_UISheetPresentationControllerConfiguration _grabberTopSpacing](self, "_grabberTopSpacing"), v16 = v15, objc_msgSend(v7, "_grabberTopSpacing"), v16 == v17) && (-[_UISheetPresentationControllerConfiguration _additionalMinimumTopInset](self, "_additionalMinimumTopInset"), v19 = v18, objc_msgSend(v7, "_additionalMinimumTopInset"), v19 == v20) && (v21 = -[_UISheetPresentationControllerConfiguration _insetsPresentedViewForGrabber](self, "_insetsPresentedViewForGrabber"), v21 == objc_msgSend(v7, "_insetsPresentedViewForGrabber")) && (v22 = -[_UISheetPresentationControllerConfiguration _mode](self, "_mode"), v22 == objc_msgSend(v7, "_mode")) && (-[_UISheetPresentationControllerConfiguration _cornerRadiusForPresentationAndDismissal](self, "_cornerRadiusForPresentationAndDismissal"), v24 = v23, objc_msgSend(v7, "_cornerRadiusForPresentationAndDismissal"), v24 == v25) && (-[_UISheetPresentationControllerConfiguration _preferredCornerRadius](self, "_preferredCornerRadius"), v27 = v26, objc_msgSend(v7, "_preferredCornerRadius"), v27 == v28) && (-[_UISheetPresentationControllerConfiguration _preferredShadowOpacity](self, "_preferredShadowOpacity"), v30 = v29, objc_msgSend(v7, "_preferredShadowOpacity"), v30 == v31) && (-[_UISheetPresentationControllerConfiguration _shadowRadius](self, "_shadowRadius"), v33 = v32, objc_msgSend(v7, "_shadowRadius"), v33 == v34))
    {
      _detents = [(_UISheetPresentationControllerConfiguration *)self _detents];
      _detents2 = [v7 _detents];
      if ([_detents isEqual:_detents2])
      {
        _selectedDetentIdentifier = [(_UISheetPresentationControllerConfiguration *)self _selectedDetentIdentifier];
        _selectedDetentIdentifier2 = [v7 _selectedDetentIdentifier];
        if (_deferringTokenEqualToToken(_selectedDetentIdentifier, _selectedDetentIdentifier2))
        {
          _standardAppearance = [(_UISheetPresentationControllerConfiguration *)self _standardAppearance];
          _standardAppearance2 = [v7 _standardAppearance];
          v79 = _standardAppearance;
          if (_deferringTokenEqualToToken(_standardAppearance, _standardAppearance2))
          {
            _edgeAttachedCompactHeightAppearance = [(_UISheetPresentationControllerConfiguration *)self _edgeAttachedCompactHeightAppearance];
            _edgeAttachedCompactHeightAppearance2 = [v7 _edgeAttachedCompactHeightAppearance];
            v78 = _edgeAttachedCompactHeightAppearance;
            if (_deferringTokenEqualToToken(_edgeAttachedCompactHeightAppearance, _edgeAttachedCompactHeightAppearance2))
            {
              _floatingAppearance = [(_UISheetPresentationControllerConfiguration *)self _floatingAppearance];
              _floatingAppearance2 = [v7 _floatingAppearance];
              v76 = _floatingAppearance;
              if (_deferringTokenEqualToToken(_floatingAppearance, _floatingAppearance2) && (v43 = -[_UISheetPresentationControllerConfiguration _detentDirectionWhenFloating](self, "_detentDirectionWhenFloating"), v43 == [v7 _detentDirectionWhenFloating]) && (v44 = -[_UISheetPresentationControllerConfiguration _prefersScrollingResizesWhenDetentDirectionIsDown](self, "_prefersScrollingResizesWhenDetentDirectionIsDown"), v44 == objc_msgSend(v7, "_prefersScrollingResizesWhenDetentDirectionIsDown")) && (v45 = -[_UISheetPresentationControllerConfiguration _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge](self, "_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"), v45 == objc_msgSend(v7, "_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge")) && (-[_UISheetPresentationControllerConfiguration _hostParentStackAlignmentFrame](self, "_hostParentStackAlignmentFrame"), v47 = v46, v49 = v48, v51 = v50, v53 = v52, objc_msgSend(v7, "_hostParentStackAlignmentFrame"), v82.origin.x = v54, v82.origin.y = v55, v82.size.width = v56, v82.size.height = v57, v80.origin.x = v47, v80.origin.y = v49, v80.size.width = v51, v80.size.height = v53, CGRectEqualToRect(v80, v82)))
              {
                [(_UISheetPresentationControllerConfiguration *)self _hostParentFullHeightUntransformedFrameForDepthLevel];
                v59 = v58;
                v61 = v60;
                v63 = v62;
                v65 = v64;
                [v7 _hostParentFullHeightUntransformedFrameForDepthLevel];
                v83.origin.x = v66;
                v83.origin.y = v67;
                v83.size.width = v68;
                v83.size.height = v69;
                v81.origin.x = v59;
                v81.origin.y = v61;
                v81.size.width = v63;
                v81.size.height = v65;
                v70 = CGRectEqualToRect(v81, v83);
              }

              else
              {
                v70 = 0;
              }
            }

            else
            {
              v70 = 0;
            }
          }

          else
          {
            v70 = 0;
          }
        }

        else
        {
          v70 = 0;
        }
      }

      else
      {
        v70 = 0;
      }

      if (fencing)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v70 = 0;
      if (fencing)
      {
LABEL_31:

        goto LABEL_32;
      }
    }

    [(_UISheetPresentationControllerConfiguration *)self _hostParentDepthLevel];
    v72 = v71;
    [v7 _hostParentDepthLevel];
    if (v72 != v73)
    {
      v70 = 0;
    }

    goto LABEL_31;
  }

  v70 = 0;
LABEL_32:

  return v70;
}

- (NSString)description
{
  v33[26] = *MEMORY[0x1E69E9840];
  v32 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  v31 = NSStringFromSelector(sel__shouldScaleDownBehindDescendantSheets);
  v33[0] = v31;
  v30 = NSStringFromSelector(sel__peeksWhenFloating);
  v33[1] = v30;
  v29 = NSStringFromSelector(sel__wantsFullScreen);
  v33[2] = v29;
  v28 = NSStringFromSelector(sel__wantsBottomAttached);
  v33[3] = v28;
  v27 = NSStringFromSelector(sel__wantsEdgeAttachedInCompactHeight);
  v33[4] = v27;
  v26 = NSStringFromSelector(sel__widthFollowsPreferredContentSizeWhenEdgeAttached);
  v33[5] = v26;
  v25 = NSStringFromSelector(sel__prefersGrabberVisible);
  v33[6] = v25;
  v24 = NSStringFromSelector(sel__grabberTopSpacing);
  v33[7] = v24;
  v23 = NSStringFromSelector(sel__additionalMinimumTopInset);
  v33[8] = v23;
  v20 = NSStringFromSelector(sel__insetsPresentedViewForGrabber);
  v33[9] = v20;
  v19 = NSStringFromSelector(sel__mode);
  v33[10] = v19;
  v18 = NSStringFromSelector(sel__cornerRadiusForPresentationAndDismissal);
  v33[11] = v18;
  v17 = NSStringFromSelector(sel__preferredCornerRadius);
  v33[12] = v17;
  v16 = NSStringFromSelector(sel__preferredShadowOpacity);
  v33[13] = v16;
  v15 = NSStringFromSelector(sel__shadowRadius);
  v33[14] = v15;
  v14 = NSStringFromSelector(sel__detents);
  v33[15] = v14;
  v13 = NSStringFromSelector(sel__selectedDetentIdentifier);
  v33[16] = v13;
  v2 = NSStringFromSelector(sel__standardAppearance);
  v33[17] = v2;
  v3 = NSStringFromSelector(sel__edgeAttachedCompactHeightAppearance);
  v33[18] = v3;
  v4 = NSStringFromSelector(sel__floatingAppearance);
  v33[19] = v4;
  v5 = NSStringFromSelector(sel__detentDirectionWhenFloating);
  v33[20] = v5;
  v6 = NSStringFromSelector(sel__prefersScrollingResizesWhenDetentDirectionIsDown);
  v33[21] = v6;
  v7 = NSStringFromSelector(sel__prefersScrollingExpandsToLargerDetentWhenScrolledToEdge);
  v33[22] = v7;
  v8 = NSStringFromSelector(sel__hostParentDepthLevel);
  v33[23] = v8;
  v9 = NSStringFromSelector(sel__hostParentStackAlignmentFrame);
  v33[24] = v9;
  v10 = NSStringFromSelector(sel__hostParentFullHeightUntransformedFrameForDepthLevel);
  v33[25] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:26];
  v22 = [UIDescriptionBuilder descriptionForObject:self keys:v11];

  return v22;
}

- (_UISheetPresentationControllerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = _UISheetPresentationControllerConfiguration;
  v5 = [(_UISheetPresentationControllerConfiguration *)&v35 init];
  if (v5)
  {
    v5->__shouldScaleDownBehindDescendantSheets = [coderCopy decodeBoolForKey:@"_shouldScaleDownBehindDescendantSheets"];
    v5->__peeksWhenFloating = [coderCopy decodeBoolForKey:@"_peeksWhenFloating"];
    v5->__wantsFullScreen = [coderCopy decodeBoolForKey:@"_wantsFullScreen"];
    v5->__wantsBottomAttached = [coderCopy decodeBoolForKey:@"_wantsBottomAttached"];
    v5->__wantsEdgeAttachedInCompactHeight = [coderCopy decodeBoolForKey:@"_wantsEdgeAttachedInCompactHeight"];
    v5->__widthFollowsPreferredContentSizeWhenEdgeAttached = [coderCopy decodeBoolForKey:@"_widthFollowsPreferredContentSizeWhenEdgeAttached"];
    v5->__prefersGrabberVisible = [coderCopy decodeBoolForKey:@"_prefersGrabberVisible"];
    [coderCopy decodeDoubleForKey:@"_grabberTopSpacing"];
    v5->__grabberTopSpacing = v6;
    [coderCopy decodeDoubleForKey:@"_additionalMinimumTopInset"];
    v5->__additionalMinimumTopInset = v7;
    v5->__insetsPresentedViewForGrabber = [coderCopy decodeBoolForKey:@"_insetsPresentedViewForGrabber"];
    v5->__mode = [coderCopy decodeIntegerForKey:@"_mode"];
    [coderCopy decodeDoubleForKey:@"_cornerRadiusForPresentationAndDismissal"];
    v5->__cornerRadiusForPresentationAndDismissal = v8;
    [coderCopy decodeDoubleForKey:@"_preferredCornerRadius"];
    v5->__preferredCornerRadius = v9;
    [coderCopy decodeDoubleForKey:@"_preferredShadowOpacity"];
    v5->__preferredShadowOpacity = v10;
    [coderCopy decodeDoubleForKey:@"_shadowRadius"];
    v5->__shadowRadius = v11;
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_detents"];
    detents = v5->__detents;
    v5->__detents = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_selectedDetentIdentifier"];
    selectedDetentIdentifier = v5->__selectedDetentIdentifier;
    v5->__selectedDetentIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_standardAppearance"];
    standardAppearance = v5->__standardAppearance;
    v5->__standardAppearance = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_edgeAttachedCompactHeightAppearance"];
    edgeAttachedCompactHeightAppearance = v5->__edgeAttachedCompactHeightAppearance;
    v5->__edgeAttachedCompactHeightAppearance = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_floatingAppearance"];
    floatingAppearance = v5->__floatingAppearance;
    v5->__floatingAppearance = v23;

    v5->__detentDirectionWhenFloating = [coderCopy decodeIntegerForKey:@"_detentDirectionWhenFloating"];
    v5->__prefersScrollingResizesWhenDetentDirectionIsDown = [coderCopy decodeBoolForKey:@"_prefersScrollingResizesWhenDetentDirectionIsDown"];
    v5->__prefersScrollingExpandsToLargerDetentWhenScrolledToEdge = [coderCopy decodeBoolForKey:@"_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"];
    [coderCopy decodeDoubleForKey:@"_hostParentDepthLevel"];
    v5->__hostParentDepthLevel = v25;
    [coderCopy decodeCGRectForKey:@"_hostParentStackAlignmentFrame"];
    v5->__hostParentStackAlignmentFrame.origin.x = v26;
    v5->__hostParentStackAlignmentFrame.origin.y = v27;
    v5->__hostParentStackAlignmentFrame.size.width = v28;
    v5->__hostParentStackAlignmentFrame.size.height = v29;
    [coderCopy decodeCGRectForKey:@"_hostParentFullHeightUntransformedFrameForDepthLevel"];
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.origin.x = v30;
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.origin.y = v31;
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.size.width = v32;
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.size.height = v33;
  }

  return v5;
}

- (_UISheetPresentationControllerConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = _UISheetPresentationControllerConfiguration;
  v5 = [(_UISheetPresentationControllerConfiguration *)&v33 init];
  if (v5)
  {
    v5->__shouldScaleDownBehindDescendantSheets = [coderCopy decodeBoolForKey:@"_shouldScaleDownBehindDescendantSheets"];
    v5->__peeksWhenFloating = [coderCopy decodeBoolForKey:@"_peeksWhenFloating"];
    v5->__wantsFullScreen = [coderCopy decodeBoolForKey:@"_wantsFullScreen"];
    v5->__wantsBottomAttached = [coderCopy decodeBoolForKey:@"_wantsBottomAttached"];
    v5->__wantsEdgeAttachedInCompactHeight = [coderCopy decodeBoolForKey:@"_wantsEdgeAttachedInCompactHeight"];
    v5->__widthFollowsPreferredContentSizeWhenEdgeAttached = [coderCopy decodeBoolForKey:@"_widthFollowsPreferredContentSizeWhenEdgeAttached"];
    v5->__prefersGrabberVisible = [coderCopy decodeBoolForKey:@"_prefersGrabberVisible"];
    [coderCopy decodeDoubleForKey:@"_grabberTopSpacing"];
    v5->__grabberTopSpacing = v6;
    [coderCopy decodeDoubleForKey:@"_additionalMinimumTopInset"];
    v5->__additionalMinimumTopInset = v7;
    v5->__insetsPresentedViewForGrabber = [coderCopy decodeBoolForKey:@"_insetsPresentedViewForGrabber"];
    v5->__mode = [coderCopy decodeInt64ForKey:@"_mode"];
    [coderCopy decodeDoubleForKey:@"_cornerRadiusForPresentationAndDismissal"];
    v5->__cornerRadiusForPresentationAndDismissal = v8;
    [coderCopy decodeDoubleForKey:@"_preferredCornerRadius"];
    v5->__preferredCornerRadius = v9;
    [coderCopy decodeDoubleForKey:@"_preferredShadowOpacity"];
    v5->__preferredShadowOpacity = v10;
    [coderCopy decodeDoubleForKey:@"_shadowRadius"];
    v5->__shadowRadius = v11;
    v12 = objc_opt_class();
    v13 = [coderCopy decodeCollectionOfClass:v12 containingClass:objc_opt_class() forKey:@"_detents"];
    detents = v5->__detents;
    v5->__detents = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_selectedDetentIdentifier"];
    selectedDetentIdentifier = v5->__selectedDetentIdentifier;
    v5->__selectedDetentIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_standardAppearance"];
    standardAppearance = v5->__standardAppearance;
    v5->__standardAppearance = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_edgeAttachedCompactHeightAppearance"];
    edgeAttachedCompactHeightAppearance = v5->__edgeAttachedCompactHeightAppearance;
    v5->__edgeAttachedCompactHeightAppearance = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_floatingAppearance"];
    floatingAppearance = v5->__floatingAppearance;
    v5->__floatingAppearance = v21;

    v5->__detentDirectionWhenFloating = [coderCopy decodeInt64ForKey:@"_detentDirectionWhenFloating"];
    v5->__prefersScrollingResizesWhenDetentDirectionIsDown = [coderCopy decodeBoolForKey:@"_prefersScrollingResizesWhenDetentDirectionIsDown"];
    v5->__prefersScrollingExpandsToLargerDetentWhenScrolledToEdge = [coderCopy decodeBoolForKey:@"_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"];
    [coderCopy decodeDoubleForKey:@"_hostParentDepthLevel"];
    v5->__hostParentDepthLevel = v23;
    [coderCopy decodeCGRectForKey:@"_hostParentStackAlignmentFrame"];
    v5->__hostParentStackAlignmentFrame.origin.x = v24;
    v5->__hostParentStackAlignmentFrame.origin.y = v25;
    v5->__hostParentStackAlignmentFrame.size.width = v26;
    v5->__hostParentStackAlignmentFrame.size.height = v27;
    [coderCopy decodeCGRectForKey:@"_hostParentFullHeightUntransformedFrameForDepthLevel"];
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.origin.x = v28;
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.origin.y = v29;
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.size.width = v30;
    v5->__hostParentFullHeightUntransformedFrameForDepthLevel.size.height = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _shouldScaleDownBehindDescendantSheets](self forKey:{"_shouldScaleDownBehindDescendantSheets"), @"_shouldScaleDownBehindDescendantSheets"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _peeksWhenFloating](self forKey:{"_peeksWhenFloating"), @"_peeksWhenFloating"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _wantsFullScreen](self forKey:{"_wantsFullScreen"), @"_wantsFullScreen"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _wantsBottomAttached](self forKey:{"_wantsBottomAttached"), @"_wantsBottomAttached"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _wantsEdgeAttachedInCompactHeight](self forKey:{"_wantsEdgeAttachedInCompactHeight"), @"_wantsEdgeAttachedInCompactHeight"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _widthFollowsPreferredContentSizeWhenEdgeAttached](self forKey:{"_widthFollowsPreferredContentSizeWhenEdgeAttached"), @"_widthFollowsPreferredContentSizeWhenEdgeAttached"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _prefersGrabberVisible](self forKey:{"_prefersGrabberVisible"), @"_prefersGrabberVisible"}];
  [(_UISheetPresentationControllerConfiguration *)self _grabberTopSpacing];
  [coderCopy encodeDouble:@"_grabberTopSpacing" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _additionalMinimumTopInset];
  [coderCopy encodeDouble:@"_additionalMinimumTopInset" forKey:?];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _insetsPresentedViewForGrabber](self forKey:{"_insetsPresentedViewForGrabber"), @"_insetsPresentedViewForGrabber"}];
  [coderCopy encodeInteger:-[_UISheetPresentationControllerConfiguration _mode](self forKey:{"_mode"), @"_mode"}];
  [(_UISheetPresentationControllerConfiguration *)self _cornerRadiusForPresentationAndDismissal];
  [coderCopy encodeDouble:@"_cornerRadiusForPresentationAndDismissal" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _preferredCornerRadius];
  [coderCopy encodeDouble:@"_preferredCornerRadius" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _preferredShadowOpacity];
  [coderCopy encodeDouble:@"_preferredShadowOpacity" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _shadowRadius];
  [coderCopy encodeDouble:@"_shadowRadius" forKey:?];
  _detents = [(_UISheetPresentationControllerConfiguration *)self _detents];
  [coderCopy encodeObject:_detents forKey:@"_detents"];

  _selectedDetentIdentifier = [(_UISheetPresentationControllerConfiguration *)self _selectedDetentIdentifier];
  [coderCopy encodeObject:_selectedDetentIdentifier forKey:@"_selectedDetentIdentifier"];

  _standardAppearance = [(_UISheetPresentationControllerConfiguration *)self _standardAppearance];
  [coderCopy encodeObject:_standardAppearance forKey:@"_standardAppearance"];

  _edgeAttachedCompactHeightAppearance = [(_UISheetPresentationControllerConfiguration *)self _edgeAttachedCompactHeightAppearance];
  [coderCopy encodeObject:_edgeAttachedCompactHeightAppearance forKey:@"_edgeAttachedCompactHeightAppearance"];

  _floatingAppearance = [(_UISheetPresentationControllerConfiguration *)self _floatingAppearance];
  [coderCopy encodeObject:_floatingAppearance forKey:@"_floatingAppearance"];

  [coderCopy encodeInteger:-[_UISheetPresentationControllerConfiguration _detentDirectionWhenFloating](self forKey:{"_detentDirectionWhenFloating"), @"_detentDirectionWhenFloating"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _prefersScrollingResizesWhenDetentDirectionIsDown](self forKey:{"_prefersScrollingResizesWhenDetentDirectionIsDown"), @"_prefersScrollingResizesWhenDetentDirectionIsDown"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge](self forKey:{"_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"), @"_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"}];
  [(_UISheetPresentationControllerConfiguration *)self _hostParentDepthLevel];
  [coderCopy encodeDouble:@"_hostParentDepthLevel" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _hostParentStackAlignmentFrame];
  [coderCopy encodeCGRect:@"_hostParentStackAlignmentFrame" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _hostParentFullHeightUntransformedFrameForDepthLevel];
  [coderCopy encodeCGRect:@"_hostParentFullHeightUntransformedFrameForDepthLevel" forKey:?];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _shouldScaleDownBehindDescendantSheets](self forKey:{"_shouldScaleDownBehindDescendantSheets"), @"_shouldScaleDownBehindDescendantSheets"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _peeksWhenFloating](self forKey:{"_peeksWhenFloating"), @"_peeksWhenFloating"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _wantsFullScreen](self forKey:{"_wantsFullScreen"), @"_wantsFullScreen"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _wantsBottomAttached](self forKey:{"_wantsBottomAttached"), @"_wantsBottomAttached"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _wantsEdgeAttachedInCompactHeight](self forKey:{"_wantsEdgeAttachedInCompactHeight"), @"_wantsEdgeAttachedInCompactHeight"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _widthFollowsPreferredContentSizeWhenEdgeAttached](self forKey:{"_widthFollowsPreferredContentSizeWhenEdgeAttached"), @"_widthFollowsPreferredContentSizeWhenEdgeAttached"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _prefersGrabberVisible](self forKey:{"_prefersGrabberVisible"), @"_prefersGrabberVisible"}];
  [(_UISheetPresentationControllerConfiguration *)self _grabberTopSpacing];
  [coderCopy encodeDouble:@"_grabberTopSpacing" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _additionalMinimumTopInset];
  [coderCopy encodeDouble:@"_additionalMinimumTopInset" forKey:?];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _insetsPresentedViewForGrabber](self forKey:{"_insetsPresentedViewForGrabber"), @"_insetsPresentedViewForGrabber"}];
  [coderCopy encodeInt64:-[_UISheetPresentationControllerConfiguration _mode](self forKey:{"_mode"), @"_mode"}];
  [(_UISheetPresentationControllerConfiguration *)self _cornerRadiusForPresentationAndDismissal];
  [coderCopy encodeDouble:@"_cornerRadiusForPresentationAndDismissal" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _preferredCornerRadius];
  [coderCopy encodeDouble:@"_preferredCornerRadius" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _preferredShadowOpacity];
  [coderCopy encodeDouble:@"_preferredShadowOpacity" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _shadowRadius];
  [coderCopy encodeDouble:@"_shadowRadius" forKey:?];
  _detents = [(_UISheetPresentationControllerConfiguration *)self _detents];
  [coderCopy encodeCollection:_detents forKey:@"_detents"];

  _selectedDetentIdentifier = [(_UISheetPresentationControllerConfiguration *)self _selectedDetentIdentifier];
  [coderCopy encodeObject:_selectedDetentIdentifier forKey:@"_selectedDetentIdentifier"];

  _standardAppearance = [(_UISheetPresentationControllerConfiguration *)self _standardAppearance];
  [coderCopy encodeObject:_standardAppearance forKey:@"_standardAppearance"];

  _edgeAttachedCompactHeightAppearance = [(_UISheetPresentationControllerConfiguration *)self _edgeAttachedCompactHeightAppearance];
  [coderCopy encodeObject:_edgeAttachedCompactHeightAppearance forKey:@"_edgeAttachedCompactHeightAppearance"];

  _floatingAppearance = [(_UISheetPresentationControllerConfiguration *)self _floatingAppearance];
  [coderCopy encodeObject:_floatingAppearance forKey:@"_floatingAppearance"];

  [coderCopy encodeInt64:-[_UISheetPresentationControllerConfiguration _detentDirectionWhenFloating](self forKey:{"_detentDirectionWhenFloating"), @"_detentDirectionWhenFloating"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _prefersScrollingResizesWhenDetentDirectionIsDown](self forKey:{"_prefersScrollingResizesWhenDetentDirectionIsDown"), @"_prefersScrollingResizesWhenDetentDirectionIsDown"}];
  [coderCopy encodeBool:-[_UISheetPresentationControllerConfiguration _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge](self forKey:{"_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"), @"_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"}];
  [(_UISheetPresentationControllerConfiguration *)self _hostParentDepthLevel];
  [coderCopy encodeDouble:@"_hostParentDepthLevel" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _hostParentStackAlignmentFrame];
  [coderCopy encodeCGRect:@"_hostParentStackAlignmentFrame" forKey:?];
  [(_UISheetPresentationControllerConfiguration *)self _hostParentFullHeightUntransformedFrameForDepthLevel];
  [coderCopy encodeCGRect:@"_hostParentFullHeightUntransformedFrameForDepthLevel" forKey:?];
}

- (CGRect)_hostParentStackAlignmentFrame
{
  x = self->__hostParentStackAlignmentFrame.origin.x;
  y = self->__hostParentStackAlignmentFrame.origin.y;
  width = self->__hostParentStackAlignmentFrame.size.width;
  height = self->__hostParentStackAlignmentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_hostParentFullHeightUntransformedFrameForDepthLevel
{
  x = self->__hostParentFullHeightUntransformedFrameForDepthLevel.origin.x;
  y = self->__hostParentFullHeightUntransformedFrameForDepthLevel.origin.y;
  width = self->__hostParentFullHeightUntransformedFrameForDepthLevel.size.width;
  height = self->__hostParentFullHeightUntransformedFrameForDepthLevel.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end