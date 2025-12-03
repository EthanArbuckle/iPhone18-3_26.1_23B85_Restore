@interface _TVRUIControlCenterSheetPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (void)presentationTransitionWillBegin;
@end

@implementation _TVRUIControlCenterSheetPresentationController

- (void)presentationTransitionWillBegin
{
  v7.receiver = self;
  v7.super_class = _TVRUIControlCenterSheetPresentationController;
  [(_TVRUIControlCenterSheetPresentationController *)&v7 presentationTransitionWillBegin];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(_TVRUIControlCenterSheetPresentationController *)self frameOfPresentedViewInContainerView];
  v4 = [v3 initWithFrame:?];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v4 setBackgroundColor:blackColor];

  CCUIExpandedModuleContinuousCornerRadius();
  [v4 _setContinuousCornerRadius:?];
  [v4 setClipsToBounds:1];
  containerView = [(_TVRUIControlCenterSheetPresentationController *)self containerView];
  [containerView setMaskView:v4];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  presentingViewController = [(_TVRUIControlCenterSheetPresentationController *)self presentingViewController];
  view = [presentingViewController view];
  [view bounds];
  v6 = v5;
  v39 = v7;
  v40 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sourceViewController = [(_TVRUIControlCenterSheetPresentationController *)self sourceViewController];
  view2 = [sourceViewController view];

  [view2 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  containerView = [(_TVRUIControlCenterSheetPresentationController *)self containerView];
  [containerView convertRect:view2 fromView:{v16, v18, v20, v22}];
  v44 = v25;
  v45 = v24;
  v42 = v27;
  v43 = v26;

  v46.origin.x = v6;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  v28 = CGRectGetWidth(v46) * 0.5;
  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v41 = v28 - CGRectGetWidth(v47) * 0.5;
  v48.origin.y = v39;
  v48.origin.x = v40;
  v48.size.width = v10;
  v48.size.height = v12;
  v29 = CGRectGetHeight(v48) * 0.5;
  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  v30 = v29 - CGRectGetHeight(v49) * 0.5;
  v50.origin.x = v16;
  v50.origin.y = v18;
  v50.size.width = v20;
  v50.size.height = v22;
  Width = CGRectGetWidth(v50);
  v51.origin.x = v16;
  v51.origin.y = v18;
  v51.size.width = v20;
  v51.size.height = v22;
  Height = CGRectGetHeight(v51);
  layoutStyle = [(_TVRUIControlCenterSheetPresentationController *)self layoutStyle];
  if (layoutStyle == 2)
  {
    v34 = v41;
  }

  else
  {
    v34 = v45;
  }

  if (layoutStyle != 2)
  {
    v30 = v44;
    Width = v43;
    Height = v42;
  }

  v35 = v34;
  v36 = v30;
  v37 = Width;
  v38 = Height;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

@end