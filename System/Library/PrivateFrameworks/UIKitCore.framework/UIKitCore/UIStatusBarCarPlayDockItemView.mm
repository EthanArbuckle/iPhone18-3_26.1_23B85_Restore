@interface UIStatusBarCarPlayDockItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (UIStatusBarCarPlayDockItemView)initWithFrame:(CGRect)frame;
- (UIView)preferredItemViewToFocus;
- (double)_neededSizeWithCallTimer;
- (double)neededSizeForImageSet:(id)set;
- (id)_toItemViewForBundleIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)preferredFocusEnvironments;
- (unint64_t)_numberOfEnabledItems;
- (void)_updateInCallDurationIfNecessary:(id)necessary;
- (void)layoutSubviews;
- (void)updateForNewStyle:(id)style;
@end

@implementation UIStatusBarCarPlayDockItemView

- (UIStatusBarCarPlayDockItemView)initWithFrame:(CGRect)frame
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = UIStatusBarCarPlayDockItemView;
  v3 = [(UIView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIStatusBarCarPlayDockAppItemButton alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(UIStatusBarCarPlayDockAppItemButton *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    itemOneButton = v3->_itemOneButton;
    v3->_itemOneButton = v9;

    [(UIView *)v3 addSubview:v3->_itemOneButton];
    v11 = [[UIStatusBarCarPlayDockAppItemButton alloc] initWithFrame:v5, v6, v7, v8];
    itemTwoButton = v3->_itemTwoButton;
    v3->_itemTwoButton = v11;

    [(UIView *)v3 addSubview:v3->_itemTwoButton];
    v13 = [[UIStatusBarCarPlayDockAppItemButton alloc] initWithFrame:v5, v6, v7, v8];
    itemThreeButton = v3->_itemThreeButton;
    v3->_itemThreeButton = v13;

    [(UIView *)v3 addSubview:v3->_itemThreeButton];
    v15 = [[UILabel alloc] initWithFrame:v5, v6, v7, v8];
    inCallDurationLabel = v3->_inCallDurationLabel;
    v3->_inCallDurationLabel = v15;

    [(UIView *)v3->_inCallDurationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3 addSubview:v3->_inCallDurationLabel];
    [(UIView *)v3->_inCallDurationLabel setHidden:1];
    firstBaselineAnchor = [(UIView *)v3->_inCallDurationLabel firstBaselineAnchor];
    bottomAnchor = [(UIView *)v3->_itemThreeButton bottomAnchor];
    v19 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:5.5];
    inCallLabelSpacingConstraint = v3->_inCallLabelSpacingConstraint;
    v3->_inCallLabelSpacingConstraint = v19;

    v27[0] = v3->_inCallLabelSpacingConstraint;
    centerXAnchor = [(UIView *)v3->_inCallDurationLabel centerXAnchor];
    centerXAnchor2 = [(UIView *)v3 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v27[1] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

    [MEMORY[0x1E69977A0] activateConstraints:v24];
  }

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  v18.receiver = self;
  v18.super_class = UIStatusBarCarPlayDockItemView;
  v6 = [(UIView *)&v18 hitTest:event withEvent:test.x];
  itemOneButton = [(UIStatusBarCarPlayDockItemView *)self itemOneButton];
  if (v6 != itemOneButton)
  {
    goto LABEL_2;
  }

  isActive = [v6 isActive];

  if (isActive)
  {
    itemTwoButton = [(UIStatusBarCarPlayDockItemView *)self itemTwoButton];
    [itemTwoButton frame];
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      v16 = v10;
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      v10 = v16;
    }

    v11 = 15.0;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v14 = _UIInternalPreference_CarPlayDockSecondItemHitTestExtension;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_CarPlayDockSecondItemHitTestExtension)
      {
        v15 = _UIInternalPreferencesRevisionVar;
        v17 = v10;
        while (v15 >= v14)
        {
          _UIInternalPreferenceSync(v15, &_UIInternalPreference_CarPlayDockSecondItemHitTestExtension, @"CarPlayDockSecondItemHitTestExtension", _UIInternalPreferenceUpdateDouble);
          v14 = _UIInternalPreference_CarPlayDockSecondItemHitTestExtension;
          if (v15 == _UIInternalPreference_CarPlayDockSecondItemHitTestExtension)
          {
            v10 = v17;
            v11 = 15.0;
            goto LABEL_7;
          }
        }

        v11 = *&qword_1EA95E668;
        v10 = v17;
      }
    }

LABEL_7:
    v12 = v10 - v11;

    if (y > v12)
    {
      [(UIStatusBarCarPlayDockItemView *)self itemTwoButton];
      v6 = itemOneButton = v6;
LABEL_2:
    }
  }

  return v6;
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  UIRoundToViewScale(self);
  v6 = v5;
  v7 = v5 + 38.0;
  v8 = v5 + 38.0 + 38.0;
  itemOneButton = [(UIStatusBarCarPlayDockItemView *)self itemOneButton];
  [itemOneButton setFrame:{0.0, v6, v4, 38.0}];

  itemTwoButton = [(UIStatusBarCarPlayDockItemView *)self itemTwoButton];
  [itemTwoButton setFrame:{0.0, v7, v4, 38.0}];

  itemThreeButton = [(UIStatusBarCarPlayDockItemView *)self itemThreeButton];
  [itemThreeButton setFrame:{0.0, v8, v4, 38.0}];
}

- (double)_neededSizeWithCallTimer
{
  inCallDurationLabel = [(UIStatusBarCarPlayDockItemView *)self inCallDurationLabel];
  [inCallDurationLabel frame];
  v5 = v4;
  inCallDurationLabel2 = [(UIStatusBarCarPlayDockItemView *)self inCallDurationLabel];
  [inCallDurationLabel2 _firstBaselineOffsetFromTop];
  v8 = v5 + v7 + 8.0;

  return v8;
}

- (double)neededSizeForImageSet:(id)set
{
  if ([(UIStatusBarCarPlayDockItemView *)self isShowingCallTimer])
  {

    [(UIStatusBarCarPlayDockItemView *)self _neededSizeWithCallTimer];
  }

  else
  {

    [(UIStatusBarCarPlayDockItemView *)self _neededSizeWithoutCallTimer];
  }

  return result;
}

- (void)updateForNewStyle:(id)style
{
  styleCopy = style;
  v5 = [styleCopy untintedImageNamed:@"AppIcon_Highlight_Sliced"];
  v6 = [v5 imageWithRenderingMode:2];
  v7 = +[UIColor externalSystemTealColor];
  v29 = [v6 _flatImageWithColor:v7];

  v8 = [v29 resizableImageWithCapInsets:{12.0, 12.0, 12.0, 12.0}];
  itemOneButton = [(UIStatusBarCarPlayDockItemView *)self itemOneButton];
  iconHighlightImageView = [itemOneButton iconHighlightImageView];
  [iconHighlightImageView setImage:v8];

  itemTwoButton = [(UIStatusBarCarPlayDockItemView *)self itemTwoButton];
  iconHighlightImageView2 = [itemTwoButton iconHighlightImageView];
  [iconHighlightImageView2 setImage:v8];

  itemThreeButton = [(UIStatusBarCarPlayDockItemView *)self itemThreeButton];
  iconHighlightImageView3 = [itemThreeButton iconHighlightImageView];
  [iconHighlightImageView3 setImage:v8];

  v15 = [styleCopy untintedImageNamed:@"Dock_Badge"];
  v16 = +[UIColor redColor];
  v17 = [v15 _flatImageWithColor:v16];

  itemOneButton2 = [(UIStatusBarCarPlayDockItemView *)self itemOneButton];
  badgeView = [itemOneButton2 badgeView];
  [badgeView setImage:v17];

  itemTwoButton2 = [(UIStatusBarCarPlayDockItemView *)self itemTwoButton];
  badgeView2 = [itemTwoButton2 badgeView];
  [badgeView2 setImage:v17];

  itemThreeButton2 = [(UIStatusBarCarPlayDockItemView *)self itemThreeButton];
  badgeView3 = [itemThreeButton2 badgeView];
  [badgeView3 setImage:v17];

  v24 = [styleCopy textFontForStyle:4];

  inCallDurationLabel = [(UIStatusBarCarPlayDockItemView *)self inCallDurationLabel];
  [inCallDurationLabel setFont:v24];

  v26 = +[UIColor whiteColor];
  inCallDurationLabel2 = [(UIStatusBarCarPlayDockItemView *)self inCallDurationLabel];
  [inCallDurationLabel2 setTextColor:v26];

  inCallDurationLabel3 = [(UIStatusBarCarPlayDockItemView *)self inCallDurationLabel];
  [inCallDurationLabel3 setTextAlignment:1];
}

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  v4 = *&actions;
  dataCopy = data;
  if ((v4 & 0x100) != 0)
  {
    foregroundView = [(UIStatusBarItemView *)self foregroundView];
    statusBar = [foregroundView statusBar];
    dockDataProvider = [statusBar dockDataProvider];

    if (!dockDataProvider)
    {
LABEL_28:

      v7 = 1;
      goto LABEL_29;
    }

    bundleIdentifiers = [dockDataProvider bundleIdentifiers];
    activeBundleIdentifier = [dockDataProvider activeBundleIdentifier];
    currentBundleIdentifiers = [(UIStatusBarCarPlayDockItemView *)self currentBundleIdentifiers];
    v14 = [bundleIdentifiers count];
    if (v14)
    {
      firstObject = [bundleIdentifiers firstObject];
      if (v14 == 1)
      {
        v14 = 0;
        v16 = 0;
      }

      else
      {
        v16 = [bundleIdentifiers objectAtIndex:1];
        if (v14 < 3)
        {
          v14 = 0;
        }

        else
        {
          v14 = [bundleIdentifiers objectAtIndex:2];
        }
      }
    }

    else
    {
      v16 = 0;
      firstObject = 0;
    }

    v53 = firstObject;
    v51 = [dockDataProvider shouldDisplayBadgeForBundleIdentifier:firstObject];
    v52 = v16;
    v17 = [dockDataProvider shouldDisplayBadgeForBundleIdentifier:v16];
    v57 = v14;
    v18 = [dockDataProvider shouldDisplayBadgeForBundleIdentifier:v14];
    itemOneButton = [(UIStatusBarCarPlayDockItemView *)self itemOneButton];
    itemTwoButton = [(UIStatusBarCarPlayDockItemView *)self itemTwoButton];
    itemThreeButton = [(UIStatusBarCarPlayDockItemView *)self itemThreeButton];
    v50 = v17;
    if ([bundleIdentifiers isEqualToArray:currentBundleIdentifiers])
    {
      currentActiveBundleIdentifier = [(UIStatusBarCarPlayDockItemView *)self currentActiveBundleIdentifier];
      v20 = currentActiveBundleIdentifier;
      if ((activeBundleIdentifier != 0) != (currentActiveBundleIdentifier == 0))
      {
        currentActiveBundleIdentifier2 = [(UIStatusBarCarPlayDockItemView *)self currentActiveBundleIdentifier];
        if (!currentActiveBundleIdentifier2)
        {

LABEL_31:
          [itemOneButton setHasBadge:v51];
          [itemOneButton setBadgeHidden:objc_msgSend(itemOneButton animated:{"shouldShowBadge") ^ 1, 1}];
          [itemTwoButton setHasBadge:v17];
          [itemTwoButton setBadgeHidden:objc_msgSend(itemTwoButton animated:{"shouldShowBadge") ^ 1, 1}];
          [itemThreeButton setHasBadge:v18];
          [itemThreeButton setBadgeHidden:objc_msgSend(itemThreeButton animated:{"shouldShowBadge") ^ 1, 1}];
LABEL_27:
          callDuration = [dockDataProvider callDuration];
          [(UIStatusBarCarPlayDockItemView *)self _updateInCallDurationIfNecessary:callDuration];

          goto LABEL_28;
        }

        v22 = currentActiveBundleIdentifier2;
        [(UIStatusBarCarPlayDockItemView *)self currentActiveBundleIdentifier];
        v24 = v23 = v18;
        v46 = [v24 isEqualToString:activeBundleIdentifier];

        v18 = v23;
        v17 = v50;

        if (v46)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    v49 = v18;
    traitCollection = [(UIView *)self traitCollection];
    v26 = [dockDataProvider dockImageForBundleIdentifier:v53 format:9 traitCollection:traitCollection];

    traitCollection2 = [(UIView *)self traitCollection];
    v47 = [dockDataProvider dockImageForBundleIdentifier:v52 format:9 traitCollection:traitCollection2];

    traitCollection3 = [(UIView *)self traitCollection];
    v44 = [dockDataProvider dockImageForBundleIdentifier:v57 format:9 traitCollection:traitCollection3];

    [itemOneButton setUserInteractionEnabled:0];
    [itemTwoButton setUserInteractionEnabled:0];
    [itemThreeButton setUserInteractionEnabled:0];
    v113[0] = 0;
    v113[1] = v113;
    v113[2] = 0x3032000000;
    v113[3] = __Block_byref_object_copy__174;
    v113[4] = __Block_byref_object_dispose__174;
    if (v53)
    {
      v29 = [(UIStatusBarCarPlayDockItemView *)self _toItemViewForBundleIdentifier:v53];
    }

    else
    {
      v29 = 0;
    }

    v114 = v29;
    if (v52)
    {
      v30 = [(UIStatusBarCarPlayDockItemView *)self _toItemViewForBundleIdentifier:v52];
    }

    else
    {
      v30 = 0;
    }

    if (v57)
    {
      v41 = [(UIStatusBarCarPlayDockItemView *)self _toItemViewForBundleIdentifier:?];
    }

    else
    {
      v41 = 0;
    }

    v111[0] = 0;
    v111[1] = v111;
    v111[2] = 0x3032000000;
    v111[3] = __Block_byref_object_copy__174;
    v111[4] = __Block_byref_object_dispose__174;
    v112 = 0;
    v109[0] = 0;
    v109[1] = v109;
    v109[2] = 0x3032000000;
    v109[3] = __Block_byref_object_copy__174;
    v109[4] = __Block_byref_object_dispose__174;
    v110 = 0;
    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x3032000000;
    v107[3] = __Block_byref_object_copy__174;
    v107[4] = __Block_byref_object_dispose__174;
    v108 = 0;
    v105[0] = 0;
    v105[1] = v105;
    v105[2] = 0x3032000000;
    v105[3] = __Block_byref_object_copy__174;
    v105[4] = __Block_byref_object_dispose__174;
    v106 = 0;
    v103[0] = 0;
    v103[1] = v103;
    v103[2] = 0x3032000000;
    v103[3] = __Block_byref_object_copy__174;
    v103[4] = __Block_byref_object_dispose__174;
    v104 = 0;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke;
    v78[3] = &unk_1E711F4B8;
    v94 = v113;
    v79 = currentBundleIdentifiers;
    v39 = bundleIdentifiers;
    v40 = bundleIdentifiers;
    v80 = v40;
    selfCopy = self;
    v95 = v103;
    v96 = v109;
    v82 = v53;
    v97 = v107;
    v83 = v52;
    v38 = v30;
    v84 = v38;
    v98 = v105;
    v85 = v57;
    v42 = v41;
    v86 = v42;
    v43 = v26;
    v87 = v43;
    v31 = itemOneButton;
    v88 = v31;
    v32 = itemTwoButton;
    v89 = v32;
    v33 = itemThreeButton;
    v90 = v33;
    v99 = v111;
    v34 = activeBundleIdentifier;
    v91 = v34;
    v48 = v47;
    v92 = v48;
    v45 = v44;
    v93 = v45;
    v100 = v51;
    v101 = v50;
    v102 = v49;
    [UIView performWithoutAnimation:v78];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke_3;
    v68[3] = &unk_1E711F4E0;
    v73 = v109;
    v74 = v107;
    v75 = v105;
    v35 = v34;
    v69 = v35;
    v76 = v103;
    v70 = v31;
    v71 = v32;
    v72 = v33;
    v77 = v111;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke_4;
    v59[3] = &unk_1E711F508;
    v60 = v70;
    v61 = v71;
    v62 = v72;
    selfCopy2 = self;
    v64 = v109;
    v65 = v103;
    v66 = v107;
    v67 = v105;
    [UIView animateWithDuration:v68 animations:v59 completion:0.4];
    [(UIStatusBarCarPlayDockItemView *)self setCurrentBundleIdentifiers:v40];
    [(UIStatusBarCarPlayDockItemView *)self setCurrentActiveBundleIdentifier:v35];

    _Block_object_dispose(v103, 8);
    _Block_object_dispose(v105, 8);

    _Block_object_dispose(v107, 8);
    _Block_object_dispose(v109, 8);

    _Block_object_dispose(v111, 8);
    _Block_object_dispose(v113, 8);

    bundleIdentifiers = v39;
    goto LABEL_27;
  }

  v58.receiver = self;
  v58.super_class = UIStatusBarCarPlayDockItemView;
  v7 = [(UIStatusBarItemView *)&v58 updateForNewData:dataCopy actions:v4];
LABEL_29:

  return v7;
}

void __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 152) + 8) + 40))
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke_2;
    v45 = &unk_1E711F490;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v46 = v3;
    v47 = v4;
    v48 = *(a1 + 152);
    [v2 enumerateObjectsUsingBlock:&v42];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [*(*(*(a1 + 152) + 8) + 40) copy];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((*(*(a1 + 168) + 8) + 40), v6);
  if (v5)
  {
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = [*(a1 + 72) copy];
  }

  else
  {
    v8 = 0;
  }

  v9 = a1 + 176;
  objc_storeStrong((*(*(a1 + 176) + 8) + 40), v8);
  if (v7)
  {
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = [*(a1 + 88) copy];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong((*(*(a1 + 184) + 8) + 40), v11);
  if (v10)
  {
  }

  if (*(*(*(a1 + 160) + 8) + 40))
  {
    v12 = *(a1 + 96);
    v13 = [*(*(*(a1 + 168) + 8) + 40) iconImageView];
    [v13 setImage:v12];
  }

  [*(*(*(a1 + 168) + 8) + 40) setUserInteractionEnabled:{0, v42, v43, v44, v45}];
  [*(*(*(a1 + 176) + 8) + 40) setUserInteractionEnabled:0];
  [*(*(*(a1 + 184) + 8) + 40) setUserInteractionEnabled:0];
  [*(*(*(a1 + 160) + 8) + 40) setUserInteractionEnabled:0];
  [*(a1 + 48) addSubview:*(*(*(a1 + 184) + 8) + 40)];
  [*(a1 + 48) addSubview:*(*(*(a1 + 176) + 8) + 40)];
  [*(a1 + 48) addSubview:*(*(*(a1 + 168) + 8) + 40)];
  [*(a1 + 48) addSubview:*(*(*(a1 + 160) + 8) + 40)];
  v14 = *(*(*(a1 + 168) + 8) + 40);
  [*(*(*(a1 + 152) + 8) + 40) frame];
  [v14 setFrame:?];
  v15 = *(*(*(a1 + 176) + 8) + 40);
  [*(a1 + 72) frame];
  [v15 setFrame:?];
  v16 = *(*(*(a1 + 184) + 8) + 40);
  [*(a1 + 88) frame];
  [v16 setFrame:?];
  [*(a1 + 104) setHidden:1];
  [*(a1 + 112) setHidden:1];
  [*(a1 + 120) setHidden:1];
  [*(*(*(a1 + 168) + 8) + 40) setShowsTouchWhenHighlighted:0];
  [*(*(*(a1 + 176) + 8) + 40) setShowsTouchWhenHighlighted:0];
  [*(*(*(a1 + 184) + 8) + 40) setShowsTouchWhenHighlighted:0];
  [*(*(*(a1 + 168) + 8) + 40) layoutIfNeeded];
  [*(*(*(a1 + 176) + 8) + 40) layoutIfNeeded];
  [*(*(*(a1 + 184) + 8) + 40) layoutIfNeeded];
  [*(*(*(a1 + 160) + 8) + 40) layoutIfNeeded];
  if ([*(a1 + 104) isFocused] && !objc_msgSend(*(a1 + 104), "isActive") || (objc_msgSend(*(a1 + 112), "isFocused") & 1) != 0 || (v9 = a1 + 184, objc_msgSend(*(a1 + 120), "isFocused")))
  {
    objc_storeStrong((*(*(a1 + 192) + 8) + 40), *(*(*v9 + 8) + 40));
  }

  if (*(a1 + 128))
  {
    v17 = [*(*(*(a1 + 192) + 8) + 40) iconHighlightImageView];
    [v17 setAlpha:0.0];

    v18 = [*(*(*(a1 + 192) + 8) + 40) iconHighlightImageView];
    [v18 setHidden:0];
  }

  [*(a1 + 104) setBundleIdentifier:*(a1 + 56)];
  v19 = *(a1 + 96);
  v20 = [*(a1 + 104) iconImageView];
  [v20 setImage:v19];

  [*(a1 + 112) setBundleIdentifier:*(a1 + 64)];
  v21 = *(a1 + 136);
  v22 = [*(a1 + 112) iconImageView];
  [v22 setImage:v21];

  [*(a1 + 120) setBundleIdentifier:*(a1 + 80)];
  v23 = *(a1 + 144);
  v24 = [*(a1 + 120) iconImageView];
  [v24 setImage:v23];

  v25 = [*(*(*(a1 + 168) + 8) + 40) badgeView];
  [v25 setHidden:0];

  v26 = [*(*(*(a1 + 176) + 8) + 40) badgeView];
  [v26 setHidden:0];

  v27 = [*(*(*(a1 + 184) + 8) + 40) badgeView];
  [v27 setHidden:0];

  v28 = [*(*(*(a1 + 168) + 8) + 40) badgeView];
  v29 = [*(*(*(a1 + 152) + 8) + 40) badgeView];
  if ([v29 isHidden])
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  [v28 setAlpha:v30];

  v31 = [*(*(*(a1 + 176) + 8) + 40) badgeView];
  v32 = [*(a1 + 72) badgeView];
  if ([v32 isHidden])
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0;
  }

  [v31 setAlpha:v33];

  v34 = [*(*(*(a1 + 184) + 8) + 40) badgeView];
  v35 = [*(a1 + 88) badgeView];
  if ([v35 isHidden])
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  [v34 setAlpha:v36];

  v37 = *(a1 + 104);
  v38 = [v37 bundleIdentifier];
  [v37 setActive:{objc_msgSend(v38, "isEqualToString:", *(a1 + 128))}];

  [*(a1 + 104) setEnabled:{objc_msgSend(*(a1 + 104), "isActive") ^ 1}];
  [*(a1 + 104) setHasBadge:*(a1 + 200)];
  [*(a1 + 112) setHasBadge:*(a1 + 201)];
  [*(a1 + 120) setHasBadge:*(a1 + 202)];
  v39 = [*(a1 + 104) badgeView];
  [v39 setHidden:{objc_msgSend(*(a1 + 104), "shouldShowBadge") ^ 1}];

  v40 = [*(a1 + 112) badgeView];
  [v40 setHidden:{objc_msgSend(*(a1 + 112), "shouldShowBadge") ^ 1}];

  v41 = [*(a1 + 120) badgeView];
  [v41 setHidden:{objc_msgSend(*(a1 + 120), "shouldShowBadge") ^ 1}];
}

void __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v6 = [*(a1 + 40) _toItemViewForBundleIdentifier:v14];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(*(*(a1 + 48) + 8) + 40) copy];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(a1 + 48);
    v13 = *(*(*(a1 + 56) + 8) + 40);
    [*(*(v12 + 8) + 40) frame];
    [v13 setFrame:?];
    *a4 = 1;
  }
}

void __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(*(a1 + 64) + 8) + 40) iconHighlightImageView];
  [v2 setAlpha:0.0];

  v3 = [*(*(*(a1 + 72) + 8) + 40) iconHighlightImageView];
  [v3 setAlpha:0.0];

  v4 = [*(*(*(a1 + 80) + 8) + 40) iconHighlightImageView];
  [v4 setAlpha:0.0];

  [*(*(*(a1 + 64) + 8) + 40) setActive:*(a1 + 32) != 0];
  [*(*(*(a1 + 72) + 8) + 40) setActive:0];
  [*(*(*(a1 + 80) + 8) + 40) setActive:0];
  [*(*(*(a1 + 88) + 8) + 40) setActive:*(a1 + 32) != 0];
  v5 = [*(*(*(a1 + 64) + 8) + 40) badgeView];
  if ([*(a1 + 40) shouldShowBadge])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [v5 setAlpha:v6];

  v7 = [*(*(*(a1 + 72) + 8) + 40) badgeView];
  if ([*(a1 + 48) shouldShowBadge])
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v7 setAlpha:v8];

  v9 = [*(*(*(a1 + 80) + 8) + 40) badgeView];
  if ([*(a1 + 56) shouldShowBadge])
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  [v9 setAlpha:v10];

  [*(*(*(a1 + 64) + 8) + 40) layoutIfNeeded];
  [*(*(*(a1 + 72) + 8) + 40) layoutIfNeeded];
  [*(*(*(a1 + 80) + 8) + 40) layoutIfNeeded];
  [*(*(*(a1 + 88) + 8) + 40) layoutIfNeeded];
  v11 = *(*(*(a1 + 64) + 8) + 40);
  [*(a1 + 40) frame];
  [v11 setFrame:?];
  v12 = *(*(*(a1 + 72) + 8) + 40);
  [*(a1 + 48) frame];
  [v12 setFrame:?];
  v13 = *(*(*(a1 + 80) + 8) + 40);
  [*(a1 + 56) frame];
  [v13 setFrame:?];
  v14 = *(*(*(a1 + 88) + 8) + 40);
  [*(a1 + 40) frame];
  [v14 setFrame:?];
  [*(*(*(a1 + 88) + 8) + 40) setAlpha:0.0];
  if (*(a1 + 32))
  {
    v15 = [*(*(*(a1 + 96) + 8) + 40) iconHighlightImageView];
    [v15 setAlpha:1.0];
  }
}

uint64_t __59__UIStatusBarCarPlayDockItemView_updateForNewData_actions___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 bundleIdentifier];
  [v2 setHidden:v3 == 0];

  v4 = *(a1 + 40);
  v5 = [v4 bundleIdentifier];
  [v4 setHidden:v5 == 0];

  v6 = *(a1 + 48);
  v7 = [v6 bundleIdentifier];
  [v6 setHidden:v7 == 0];

  [*(a1 + 32) setUserInteractionEnabled:1];
  [*(a1 + 40) setUserInteractionEnabled:1];
  [*(a1 + 48) setUserInteractionEnabled:1];
  if ([*(a1 + 32) isFocused])
  {
    [*(a1 + 56) setPreferredItemViewToFocus:*(a1 + 40)];
    [*(a1 + 56) setNeedsFocusUpdate];
    [*(a1 + 56) updateFocusIfNeeded];
  }

  [*(*(*(a1 + 64) + 8) + 40) removeFromSuperview];
  [*(*(*(a1 + 72) + 8) + 40) removeFromSuperview];
  [*(*(*(a1 + 80) + 8) + 40) removeFromSuperview];
  [*(*(*(a1 + 88) + 8) + 40) removeFromSuperview];
  v8 = *(a1 + 56);

  return [v8 updateContentsAndWidth];
}

- (id)_toItemViewForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__174;
  v16 = __Block_byref_object_dispose__174;
  v17 = 0;
  subviews = [(UIView *)self subviews];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__UIStatusBarCarPlayDockItemView__toItemViewForBundleIdentifier___block_invoke;
  v9[3] = &unk_1E711F530;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [subviews enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__UIStatusBarCarPlayDockItemView__toItemViewForBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 bundleIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)_updateInCallDurationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  inCallDurationLabel = [(UIStatusBarCarPlayDockItemView *)self inCallDurationLabel];
  isShowingCallTimer = [(UIStatusBarCarPlayDockItemView *)self isShowingCallTimer];
  if (!necessaryCopy)
  {
    if (!isShowingCallTimer)
    {
      goto LABEL_8;
    }

    [(UIStatusBarCarPlayDockItemView *)self setShowingCallTimer:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__UIStatusBarCarPlayDockItemView__updateInCallDurationIfNecessary___block_invoke_3;
    v11[3] = &unk_1E70F35B8;
    v11[4] = self;
    v12 = inCallDurationLabel;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__UIStatusBarCarPlayDockItemView__updateInCallDurationIfNecessary___block_invoke_4;
    v9[3] = &unk_1E70F5AC0;
    v10 = v12;
    [UIView animateWithDuration:v11 animations:v9 completion:0.4];

    v7 = v12;
LABEL_7:

    goto LABEL_8;
  }

  if (!isShowingCallTimer)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__UIStatusBarCarPlayDockItemView__updateInCallDurationIfNecessary___block_invoke;
    v16[3] = &unk_1E70F6228;
    v16[4] = self;
    v8 = inCallDurationLabel;
    v17 = v8;
    v18 = necessaryCopy;
    [UIView performWithoutAnimation:v16];
    [(UIStatusBarCarPlayDockItemView *)self setShowingCallTimer:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__UIStatusBarCarPlayDockItemView__updateInCallDurationIfNecessary___block_invoke_2;
    v13[3] = &unk_1E70F35B8;
    v14 = v8;
    selfCopy = self;
    [UIView animateWithDuration:v13 animations:0.4];

    v7 = v17;
    goto LABEL_7;
  }

  [inCallDurationLabel setText:necessaryCopy];
  [inCallDurationLabel sizeToFit];
LABEL_8:
}

uint64_t __67__UIStatusBarCarPlayDockItemView__updateInCallDurationIfNecessary___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69977A0];
  v3 = [*(a1 + 32) inCallLabelSpacingConstraint];
  v15[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v2 deactivateConstraints:v4];

  v5 = [*(a1 + 32) itemThreeButton];
  LODWORD(v3) = [v5 itemHasBundleIdentifier];

  v6 = [*(a1 + 40) firstBaselineAnchor];
  v7 = 8;
  if (v3)
  {
    v7 = 9;
  }

  v8 = [*(*(a1 + 32) + OBJC_IVAR___UIStatusBarCarPlayDockAppItemButton__iconImageView[v7]) bottomAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:5.5];
  [*(a1 + 32) setInCallLabelSpacingConstraint:v9];

  v10 = MEMORY[0x1E69977A0];
  v11 = [*(a1 + 32) inCallLabelSpacingConstraint];
  v14 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v10 activateConstraints:v12];

  [*(a1 + 40) setText:*(a1 + 48)];
  [*(a1 + 40) sizeToFit];
  [*(a1 + 40) setAlpha:0.0];
  return [*(a1 + 40) setHidden:0];
}

void __67__UIStatusBarCarPlayDockItemView__updateInCallDurationIfNecessary___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v3 = [*(a1 + 40) layoutManager];
  v2 = *(a1 + 40);
  [v2 updateContentsAndWidth];
  [v3 itemView:v2 sizeChangedBy:?];
}

uint64_t __67__UIStatusBarCarPlayDockItemView__updateInCallDurationIfNecessary___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutManager];
  v3 = *(a1 + 32);
  [v3 updateContentsAndWidth];
  [v2 itemView:v3 sizeChangedBy:?];

  v4 = *(a1 + 40);

  return [v4 setAlpha:0.0];
}

- (unint64_t)_numberOfEnabledItems
{
  itemOneButton = [(UIStatusBarCarPlayDockItemView *)self itemOneButton];
  itemHasBundleIdentifier = [itemOneButton itemHasBundleIdentifier];

  itemTwoButton = [(UIStatusBarCarPlayDockItemView *)self itemTwoButton];
  v6 = [itemTwoButton itemHasBundleIdentifier] + itemHasBundleIdentifier;

  itemThreeButton = [(UIStatusBarCarPlayDockItemView *)self itemThreeButton];
  v8 = v6 + [itemThreeButton itemHasBundleIdentifier];

  return v8;
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x1E69E9840];
  preferredItemViewToFocus = [(UIStatusBarCarPlayDockItemView *)self preferredItemViewToFocus];
  if (preferredItemViewToFocus)
  {
    preferredItemViewToFocus2 = [(UIStatusBarCarPlayDockItemView *)self preferredItemViewToFocus];
    v8[0] = preferredItemViewToFocus2;
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIStatusBarCarPlayDockItemView;
    preferredFocusEnvironments = [(UIView *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (UIView)preferredItemViewToFocus
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredItemViewToFocus);

  return WeakRetained;
}

@end