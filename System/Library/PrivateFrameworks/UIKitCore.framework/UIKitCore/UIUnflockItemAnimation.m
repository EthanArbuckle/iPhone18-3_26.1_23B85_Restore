@interface UIUnflockItemAnimation
@end

@implementation UIUnflockItemAnimation

void __31___UIUnflockItemAnimation_play__block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = [_UIPortalView alloc];
  [*(a1 + 40) bounds];
  v3 = [(_UIPortalView *)v2 initWithFrame:?];
  [(_UIPortalView *)v3 setSourceView:*(a1 + 40)];
  [(_UIPortalView *)v3 setAllowsBackdropGroups:1];
  [(_UIPortalView *)v3 setMatchesTransform:1];
  [(_UIPortalView *)v3 setMatchesPosition:1];
  v4 = [(UIView *)v3 layer];
  [v4 setAllowsGroupOpacity:1];

  [*(a1 + 48) insertSubview:v3 aboveSubview:*(a1 + 40)];
  [*(a1 + 32) setReparentingPortalView:v3];

  v5 = [_UIUnflockReparentingView alloc];
  [*(a1 + 56) bounds];
  v6 = [(UIView *)v5 initWithFrame:?];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(*(*(a1 + 72) + 8) + 40) _setFlipsHorizontalAxis:{objc_msgSend(*(a1 + 56), "_isRenderedHorizontallyFlipped")}];
  [*(*(*(a1 + 72) + 8) + 40) setUserInteractionEnabled:0];
  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
  v34[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v11 = [*(*(*(a1 + 72) + 8) + 40) layer];
  [v11 setFilters:v10];

  v12 = [*(*(*(a1 + 72) + 8) + 40) layer];
  [v12 setValue:&unk_1EFE2EE38 forKeyPath:@"filters.opacityPair.inputAmount"];

  v13 = [*(a1 + 32) positionReferenceView];

  v14 = *(a1 + 56);
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  if (v13)
  {
    v17 = [*(a1 + 32) positionReferenceView];
    [v14 insertSubview:v16 aboveSubview:v17];
  }

  else
  {
    [*(a1 + 56) addSubview:*(v15 + 40)];
  }

  [*(a1 + 40) center];
  [*(a1 + 40) setCenter:{_UIContextMenuConvertCGPointBetweenViews(*(a1 + 48), *(*(*(a1 + 72) + 8) + 40), v18, v19)}];
  [*(*(*(a1 + 72) + 8) + 40) addSubview:*(a1 + 40)];
  [*(a1 + 32) setReparentingContainerView:*(*(*(a1 + 72) + 8) + 40)];
  _UIContextMenuGetFromPreview_0(*(a1 + 64), (*(*(a1 + 80) + 8) + 32), (*(*(a1 + 88) + 8) + 32), (*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 72) + 8) + 40));
  objc_initWeak(&location, *(a1 + 32));
  v20 = *(*(a1 + 88) + 8);
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);
  [*(a1 + 40) center];
  v25 = sqrt((v23 - v22) * (v23 - v22) + (v24 - v21) * (v24 - v21));
  if (v25 < 1.0)
  {
    v25 = 1.0;
  }

  *(*(*(a1 + 104) + 8) + 24) = v25;
  v26 = objc_opt_new();
  [*(a1 + 32) setPositionTrackingProperty:v26];

  v27 = [*(a1 + 32) positionTrackingProperty];
  v33 = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __31___UIUnflockItemAnimation_play__block_invoke_2;
  v30[3] = &unk_1E7124E30;
  objc_copyWeak(&v31, &location);
  v29 = *(a1 + 72);
  v30[4] = *(a1 + 104);
  v30[5] = v29;
  [UIView _createUnsafeTransformerWithInputAnimatableProperties:v28 modelValueSetter:&__block_literal_global_598 presentationValueSetter:v30];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __31___UIUnflockItemAnimation_play__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained positionTrackingProperty];
  [v2 presentationValue];
  v4 = v3;

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v4 / *(*(*(a1 + 32) + 8) + 24) + -0.7, 0.0) / -0.3 + 1.0}];
  v6 = [WeakRetained reparentingPortalView];
  [v6 _setPresentationValue:v5 forKey:@"opacity"];

  [*(*(*(a1 + 40) + 8) + 40) _setPresentationValue:v5 forKey:@"filters.opacityPair.inputAmount"];
}

@end