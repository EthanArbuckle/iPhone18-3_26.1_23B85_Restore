@interface _UIContextMenuDismissToWindowSceneActivationAnimation
+ (id)animationWithUIController:(id)a3;
- (void)animateAlongsideScenePlatter:(id)a3;
@end

@implementation _UIContextMenuDismissToWindowSceneActivationAnimation

+ (id)animationWithUIController:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setMenuUIController:v3];

  return v4;
}

- (void)animateAlongsideScenePlatter:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  v6 = [v5 platterContainerView];
  [v6 setUserInteractionEnabled:0];

  v7 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  v8 = [v7 contentPlatterView];

  v9 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  v10 = [v9 menuView];

  if (v8)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __86___UIContextMenuDismissToWindowSceneActivationAnimation_animateAlongsideScenePlatter___block_invoke;
    v70[3] = &unk_1E70F3590;
    v11 = v8;
    v71 = v11;
    [UIView performWithoutAnimation:v70];
    v12 = [v4 _velocityForKey:@"position"];
    if (v12)
    {
      [v10 _setVelocity:v12 forKey:@"position"];
    }

    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    v13 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
    v14 = [v13 currentLayout];
    v15 = v14;
    if (v14)
    {
      [v14 anchor];
    }

    else
    {
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
    }

    v16 = [v10 superview];
    [v4 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [v4 superview];
    [v16 convertRect:v25 fromView:{v18, v20, v22, v24}];
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
    [v10 center];
    v47 = v46 - v43;
    [v10 center];
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
    [v10 setCenter:{v51, v49 + v52 + v60 * CGRectGetHeight(v79)}];
  }

  v53 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  v54 = [v53 morphMenuDismissal];
  v55 = [v54 springAnimationBehavior];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __86___UIContextMenuDismissToWindowSceneActivationAnimation_animateAlongsideScenePlatter___block_invoke_2;
  v65[3] = &unk_1E70F3590;
  v66 = v10;
  v56 = v10;
  [UIView _animateUsingSpringBehavior:v55 tracking:0 animations:v65 completion:0];

  v57 = [(_UIContextMenuDismissToWindowSceneActivationAnimation *)self menuUIController];
  v58 = [v57 backgroundEffectView];
  [v58 setAlpha:0.0];
}

@end