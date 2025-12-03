@interface _UIWindowSceneCoordinateSpace
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (UIWindowScene)windowScene;
- (_UIWindowSceneCoordinateSpace)initWithWindowScene:(id)scene effectiveSettings:(id)settings;
@end

@implementation _UIWindowSceneCoordinateSpace

- (CGRect)bounds
{
  [(FBSSceneSettings *)self->_effectiveSettings bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_UIWindowSceneCoordinateSpace)initWithWindowScene:(id)scene effectiveSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = _UIWindowSceneCoordinateSpace;
  v8 = [(_UIWindowSceneCoordinateSpace *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_windowScene, sceneCopy);
    objc_storeStrong(&v9->_effectiveSettings, settings);
  }

  return v9;
}

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  [(_UIWindowSceneCoordinateSpace *)self convertRect:space toCoordinateSpace:point.x, point.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  [(_UIWindowSceneCoordinateSpace *)self convertRect:space fromCoordinateSpace:point.x, point.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v82 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_windowScene);
    screen = [v11 screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];

    v14 = objc_loadWeakRetained(&self->_windowScene);
    screen2 = [v14 screen];
    coordinateSpace = [screen2 coordinateSpace];

    if (space && space != self)
    {
      v17 = objc_loadWeakRetained(&self->_windowScene);
      v18 = v17;
      if (fixedCoordinateSpace == space)
      {
        v29 = __UISceneEffectiveSettings(v17);

        [v29 frame];
        v31 = v30;
        v33 = v32;
        v34 = objc_loadWeakRetained(&self->_windowScene);
        [v34 _referenceBounds];
        v37 = _UIWindowConvertRectFromOrientationToOrientation([v29 interfaceOrientation], 1, x, y, width, height, v35, v36);
        v39 = v38;
        width = v40;
        height = v41;

        x = v31 + v37;
        y = v33 + v39;
      }

      else
      {
        screen3 = [v17 screen];

        if (screen3 != space)
        {
          v20 = objc_opt_self();
          if (objc_opt_isKindOfClass())
          {
            windowScene = [space windowScene];
            v22 = objc_loadWeakRetained(&self->_windowScene);
            v23 = v22;
            if (windowScene == v22)
            {
              _isExternallyPlaced = [space _isExternallyPlaced];

              if ((_isExternallyPlaced & 1) == 0)
              {
                v65 = objc_loadWeakRetained(&self->_windowScene);
                [v65 _referenceBounds];
                v67 = v66;
                v69 = v68;
                v70 = objc_loadWeakRetained(&self->_windowScene);
                _effectiveSettings = [v70 _effectiveSettings];
                v72 = _UIWindowConvertRectFromOrientationToOrientation([_effectiveSettings interfaceOrientation], objc_msgSend(space, "interfaceOrientation"), x, y, width, height, v67, v69);
                v74 = v73;
                width = v75;
                height = v76;

                [space frame];
                x = v72 - v77;
                [space frame];
                y = v74 - v78;
                goto LABEL_21;
              }

              goto LABEL_10;
            }
          }

LABEL_10:
          [(_UIWindowSceneCoordinateSpace *)self convertRect:coordinateSpace toCoordinateSpace:x, y, width, height];
          [coordinateSpace convertRect:space toCoordinateSpace:?];
LABEL_20:
          x = v24;
          y = v25;
          width = v26;
          height = v27;
          goto LABEL_21;
        }

        v42 = objc_loadWeakRetained(&self->_windowScene);
        v43 = __UISceneEffectiveSettings(v42);

        [v43 frame];
        if (v45 != *MEMORY[0x1E695EFF8] || v44 != *(MEMORY[0x1E695EFF8] + 8) || (v46 = objc_loadWeakRetained(&self->_windowScene), [v46 screen], v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "_interfaceOrientation"), v49 = objc_msgSend(v43, "interfaceOrientation"), v47, v46, v48 != v49))
        {
          [(_UIWindowSceneCoordinateSpace *)self convertRect:fixedCoordinateSpace toCoordinateSpace:x, y, width, height];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          [space _referenceBounds];
          v24 = _UIWindowConvertRectFromOrientationToOrientation(1, [space _interfaceOrientation], v51, v53, v55, v57, v58, v59);
          goto LABEL_20;
        }
      }
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v79 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        v80 = 136315138;
        v81 = "[_UIWindowSceneCoordinateSpace convertRect:toCoordinateSpace:]";
        _os_log_fault_impl(&dword_188A29000, v79, OS_LOG_TYPE_FAULT, "%s: Coordinate space conversion with _windowScene = nil. Something is artificially prolonging the life of UIWindowScene's coordinate space object", &v80, 0xCu);
      }
    }

    else
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &convertRect_toCoordinateSpace____s_category_0) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v80 = 136315138;
        v81 = "[_UIWindowSceneCoordinateSpace convertRect:toCoordinateSpace:]";
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "%s: Coordinate space conversion with _windowScene = nil. Something is artificially prolonging the life of UIWindowScene's coordinate space object", &v80, 0xCu);
      }
    }
  }

LABEL_21:
  v60 = x;
  v61 = y;
  v62 = width;
  v63 = height;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v61;
  result.origin.x = v60;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v74 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (!WeakRetained)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      goto LABEL_22;
    }

    if (!os_variant_has_internal_diagnostics())
    {
      v26 = *(__UILogGetCategoryCachedImpl("Assert", &convertRect_fromCoordinateSpace____s_category) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v72 = 136315138;
        v73 = "[_UIWindowSceneCoordinateSpace convertRect:fromCoordinateSpace:]";
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "%s: Coordinate space conversion with _windowScene = nil. Something is artificially prolonging the life of UIWindowScene's coordinate space object", &v72, 0xCu);
      }

      goto LABEL_22;
    }

    v32 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      v72 = 136315138;
      v73 = "[_UIWindowSceneCoordinateSpace convertRect:fromCoordinateSpace:]";
      _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "%s: Coordinate space conversion with _windowScene = nil. Something is artificially prolonging the life of UIWindowScene's coordinate space object", &v72, 0xCu);
    }

LABEL_16:

    goto LABEL_22;
  }

  v11 = objc_loadWeakRetained(&self->_windowScene);
  screen = [v11 screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  v14 = objc_loadWeakRetained(&self->_windowScene);
  screen2 = [v14 screen];
  coordinateSpace = [screen2 coordinateSpace];

  if (!space || space == self)
  {
    goto LABEL_22;
  }

  v17 = objc_loadWeakRetained(&self->_windowScene);
  v18 = v17;
  if (fixedCoordinateSpace == space)
  {
    v27 = __UISceneEffectiveSettings(v17);

    [v27 frame];
    v29 = x - v28;
    v31 = y - v30;
    v32 = objc_loadWeakRetained(&self->_windowScene);
    [v32 _referenceBounds];
    x = _UIWindowConvertRectFromOrientationToOrientation(1, [v27 interfaceOrientation], v29, v31, width, height, v33, v34);
    y = v35;
    width = v36;
    height = v37;
    goto LABEL_16;
  }

  screen3 = [v17 screen];

  if (screen3 != space)
  {
    v20 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      windowScene = [space windowScene];
      v22 = objc_loadWeakRetained(&self->_windowScene);
      v23 = v22;
      if (windowScene == v22)
      {
        _isExternallyPlaced = [space _isExternallyPlaced];

        if ((_isExternallyPlaced & 1) == 0)
        {
          [space frame];
          v58 = x + v57;
          [space frame];
          v60 = y + v59;
          v61 = objc_loadWeakRetained(&self->_windowScene);
          [v61 _referenceBounds];
          v63 = v62;
          v65 = v64;
          interfaceOrientation = [space interfaceOrientation];
          v67 = objc_loadWeakRetained(&self->_windowScene);
          _effectiveSettings = [v67 _effectiveSettings];
          x = _UIWindowConvertRectFromOrientationToOrientation(interfaceOrientation, [_effectiveSettings interfaceOrientation], v58, v60, width, height, v63, v65);
          y = v69;
          width = v70;
          height = v71;

          goto LABEL_22;
        }

        goto LABEL_10;
      }
    }

LABEL_10:
    [coordinateSpace convertRect:space fromCoordinateSpace:{x, y, width, height}];
    selfCopy2 = self;
    v25 = coordinateSpace;
LABEL_21:
    [(_UIWindowSceneCoordinateSpace *)selfCopy2 convertRect:v25 fromCoordinateSpace:?];
    x = v48;
    y = v49;
    width = v50;
    height = v51;
    goto LABEL_22;
  }

  v38 = objc_loadWeakRetained(&self->_windowScene);
  v39 = __UISceneEffectiveSettings(v38);

  [v39 frame];
  if (v41 != *MEMORY[0x1E695EFF8] || v40 != *(MEMORY[0x1E695EFF8] + 8) || (v42 = objc_loadWeakRetained(&self->_windowScene), [v42 screen], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "_interfaceOrientation"), v45 = objc_msgSend(v39, "interfaceOrientation"), v43, v42, v44 != v45))
  {
    [space _referenceBounds];
    _UIWindowConvertRectFromOrientationToOrientation([space _interfaceOrientation], 1, x, y, width, height, v46, v47);
    selfCopy2 = self;
    v25 = fixedCoordinateSpace;
    goto LABEL_21;
  }

LABEL_22:
  v52 = x;
  v53 = y;
  v54 = width;
  v55 = height;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end