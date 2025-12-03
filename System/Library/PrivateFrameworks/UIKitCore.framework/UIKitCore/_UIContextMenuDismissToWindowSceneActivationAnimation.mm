@interface _UIContextMenuDismissToWindowSceneActivationAnimation
+ (id)animationWithUIController:(id)controller;
- (void)animateAlongsideScenePlatter:(id)platter;
@end

@implementation _UIContextMenuDismissToWindowSceneActivationAnimation

+ (id)animationWithUIController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  [v4 setMenuUIController:controllerCopy];

  return v4;
}

- (void)animateAlongsideScenePlatter:(id)platter
{
  platterCopy = platter;
  menuUIController = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  platterContainerView = [menuUIController platterContainerView];
  [platterContainerView setUserInteractionEnabled:0];

  menuUIController2 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  contentPlatterView = [menuUIController2 contentPlatterView];

  menuUIController3 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  menuView = [menuUIController3 menuView];

  if (contentPlatterView)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __86___UIContextMenuDismissToWindowSceneActivationAnimation_animateAlongsideScenePlatter___block_invoke;
    v70[3] = &unk_1E70F3590;
    v11 = contentPlatterView;
    v71 = v11;
    [UIView performWithoutAnimation:v70];
    v12 = [platterCopy _velocityForKey:@"position"];
    if (v12)
    {
      [menuView _setVelocity:v12 forKey:@"position"];
    }

    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    menuUIController4 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
    currentLayout = [menuUIController4 currentLayout];
    v15 = currentLayout;
    if (currentLayout)
    {
      [currentLayout anchor];
    }

    else
    {
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
    }

    superview = [menuView superview];
    [platterCopy frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    superview2 = [platterCopy superview];
    [superview convertRect:superview2 fromView:{v18, v20, v22, v24}];
    v63 = v27;
    v64 = v26;
    v61 = v29;
    v62 = v28;

    v30 = v67 - 1;
    v31 = 0.5;
    v32 = 0.5;
    if ((v67 - 1) <= 7)
    {
      v31 = dbl_18A6802C8[v30];
      v32 = dbl_18A680308[v30];
    }

    v33 = 1.0;
    if (*(&v67 + 1) == 8)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = v32;
    }

    if (*(&v67 + 1) == 4)
    {
      v34 = v32;
    }

    else
    {
      v33 = v31;
    }

    if (*(&v67 + 1) == 2)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v32;
    }

    if (*(&v67 + 1) == 1)
    {
      v31 = 0.0;
    }

    else
    {
      v32 = v35;
    }

    if (*(&v67 + 1) <= 3)
    {
      v36 = v31;
    }

    else
    {
      v36 = v33;
    }

    if (*(&v67 + 1) <= 3)
    {
      v37 = v32;
    }

    else
    {
      v37 = v34;
    }

    v59 = v37;
    v60 = v36;
    [v11 frame];
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
    MinX = CGRectGetMinX(v72);
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    v43 = MinX + v37 * CGRectGetWidth(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    MinY = CGRectGetMinY(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v45 = MinY + v36 * CGRectGetHeight(v75);
    [menuView center];
    v47 = v46 - v43;
    [menuView center];
    v49 = v48 - v45;
    v76.origin.x = v64;
    v76.origin.y = v63;
    v76.size.width = v62;
    v76.size.height = v61;
    v50 = CGRectGetMinX(v76);
    v77.origin.x = v64;
    v77.origin.y = v63;
    v77.size.width = v62;
    v77.size.height = v61;
    v51 = v47 + v50 + v59 * CGRectGetWidth(v77);
    v78.origin.x = v64;
    v78.origin.y = v63;
    v78.size.width = v62;
    v78.size.height = v61;
    v52 = CGRectGetMinY(v78);
    v79.origin.x = v64;
    v79.origin.y = v63;
    v79.size.width = v62;
    v79.size.height = v61;
    [menuView setCenter:{v51, v49 + v52 + v60 * CGRectGetHeight(v79)}];
  }

  v53 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  morphMenuDismissal = [v53 morphMenuDismissal];
  springAnimationBehavior = [morphMenuDismissal springAnimationBehavior];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __86___UIContextMenuDismissToWindowSceneActivationAnimation_animateAlongsideScenePlatter___block_invoke_2;
  v65[3] = &unk_1E70F3590;
  v66 = menuView;
  v56 = menuView;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v65 completion:0];

  menuUIController5 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  backgroundEffectView = [menuUIController5 backgroundEffectView];
  [backgroundEffectView setAlpha:0.0];
}

@end