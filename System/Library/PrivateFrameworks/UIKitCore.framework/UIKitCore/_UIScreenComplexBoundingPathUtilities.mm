@interface _UIScreenComplexBoundingPathUtilities
+ (BOOL)isScreenSupported:(id)a3;
- (_UIScreenComplexBoundingPathUtilities)initWithScreen:(id)a3;
- (id)boundingPathForWindow:(id)a3;
- (void)_loadBitmapForScreen:(id)a3 type:(int64_t)a4;
@end

@implementation _UIScreenComplexBoundingPathUtilities

+ (BOOL)isScreenSupported:(id)a3
{
  v3 = a3;
  v5 = [v3 _isEmbeddedScreen] && (v4 = objc_msgSend(v3, "_screenType"), v4 != -1) && _UIScreenCornerRadiusForType(v4) != 0.0;

  return v5;
}

- (_UIScreenComplexBoundingPathUtilities)initWithScreen:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _UIScreenComplexBoundingPathUtilities;
  v6 = [(_UIScreenBoundingPathUtilities *)&v12 initWithScreen:v5];
  if (v6)
  {
    v7 = [v5 _screenType];
    if (v7 == -1)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 handleFailureInMethod:a2 object:v6 file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:129 description:{@"Attempted to initialize %@ with an unsupported screen: %@", v11, v5}];
    }

    v6->_type = v7;
    [(_UIScreenComplexBoundingPathUtilities *)v6 _loadBitmapForScreen:v5 type:v7];
  }

  return v6;
}

- (id)boundingPathForWindow:(id)a3
{
  v203 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_UIScreenBoundingPathUtilities *)self _screen];
  v7 = [v5 screen];

  if (v7 != v6)
  {
    v162 = [MEMORY[0x1E696AAA8] currentHandler];
    [v162 handleFailureInMethod:a2 object:self file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:237 description:@"Cannot provide the bounding path for a window associated with a different screen."];
  }

  v8 = [v6 coordinateSpace];
  [v6 scale];
  v10 = v9;
  if (v9 == 0.0)
  {
    v163 = [MEMORY[0x1E696AAA8] currentHandler];
    v164 = NSStringFromSelector(a2);
    [v163 handleFailureInMethod:a2 object:self file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:241 description:{@"Scale cannot be zero in %@", v164}];
  }

  v195 = v8;
  v192 = self;
  if ([v6 _interfaceOrientation])
  {
    v196 = [v6 _interfaceOrientation];
  }

  else
  {
    v196 = 1;
  }

  v11 = v5;
  v12 = [v11 windowScene];
  v13 = [v12 _effectiveSettings];

  v194 = v10;
  if (([v13 isUISubclass] & 1) == 0)
  {

    goto LABEL_34;
  }

  [v13 frame];
  v15 = v14;
  v184 = v17;
  v185 = v16;
  v19 = v18;
  v20 = [v11 screen];
  [v20 _referenceBounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v11 _currentScreenScale];
  v30 = v29;
  v31 = [v11 screen];
  [v31 _displayCornerRadius];
  v33 = llround(v30 * v32);

  v34 = [v13 cornerRadiusConfiguration];
  [v34 topLeft];
  v36 = llround(v30 * v35);
  v187 = v26;
  v189 = v24;
  rect = v28;
  if (v36 == v33 && (v205.origin.x = v15, v205.size.width = v184, v205.origin.y = v185, v205.size.height = v19, v183 = v15, MinX = CGRectGetMinX(v205), v206.origin.x = v22, v206.origin.y = v24, v206.size.width = v26, v206.size.height = v28, v38 = vabdd_f64(MinX, CGRectGetMinX(v206)), v15 = v183, v38 < 0.01) && (v207.origin.x = v183, v207.size.width = v184, v207.origin.y = v185, v207.size.height = v19, MinY = CGRectGetMinY(v207), v208.origin.x = v22, v208.origin.y = v24, v208.size.width = v26, v208.size.height = v28, v40 = vabdd_f64(MinY, CGRectGetMinY(v208)), v15 = v183, v40 < 0.01))
  {
    v42 = v184;
    v41 = v185;
    v43 = v183;
    v36 = 0;
  }

  else
  {
    v42 = v184;
    v41 = v185;
    v43 = v15;
  }

  [v34 bottomLeft];
  v45 = llround(v30 * v44);
  v182 = a2;
  if (v45 == v33)
  {
    v209.origin.x = v43;
    v209.origin.y = v41;
    v209.size.width = v42;
    v209.size.height = v19;
    v46 = CGRectGetMinX(v209);
    v210.origin.x = v22;
    v210.size.width = v187;
    v210.origin.y = v189;
    v210.size.height = rect;
    if (vabdd_f64(v46, CGRectGetMinX(v210)) < 0.01)
    {
      v211.origin.x = v43;
      v211.origin.y = v41;
      v211.size.width = v42;
      v211.size.height = v19;
      MaxY = CGRectGetMaxY(v211);
      v212.origin.x = v22;
      v212.size.width = v187;
      v212.origin.y = v189;
      v212.size.height = rect;
      if (vabdd_f64(MaxY, CGRectGetMaxY(v212)) < 0.01)
      {
        v45 = 0;
      }
    }
  }

  [v34 bottomRight];
  v49 = llround(v30 * v48);
  if (v49 == v33)
  {
    v213.origin.x = v43;
    v213.origin.y = v41;
    v213.size.width = v42;
    v213.size.height = v19;
    MaxX = CGRectGetMaxX(v213);
    v214.origin.x = v22;
    v214.size.width = v187;
    v214.origin.y = v189;
    v214.size.height = rect;
    if (vabdd_f64(MaxX, CGRectGetMaxX(v214)) < 0.01)
    {
      v215.origin.x = v43;
      v215.origin.y = v41;
      v215.size.width = v42;
      v215.size.height = v19;
      v51 = CGRectGetMaxY(v215);
      v216.origin.x = v22;
      v216.size.width = v187;
      v216.origin.y = v189;
      v216.size.height = rect;
      if (vabdd_f64(v51, CGRectGetMaxY(v216)) < 0.01)
      {
        v49 = 0;
      }
    }
  }

  [v34 topRight];
  v53 = llround(v30 * v52);
  if (v53 == v33)
  {
    v217.origin.x = v43;
    v217.origin.y = v41;
    v217.size.width = v42;
    v217.size.height = v19;
    v54 = CGRectGetMaxX(v217);
    v218.origin.x = v22;
    v218.origin.y = v189;
    v218.size.height = rect;
    v218.size.width = v187;
    if (vabdd_f64(v54, CGRectGetMaxX(v218)) < 0.01)
    {
      v219.origin.x = v43;
      v219.origin.y = v41;
      v219.size.width = v42;
      v219.size.height = v19;
      v55 = CGRectGetMinY(v219);
      v220.origin.x = v22;
      v220.origin.y = v189;
      v220.size.height = rect;
      v220.size.width = v187;
      if (vabdd_f64(v55, CGRectGetMinY(v220)) < 0.01)
      {
        v53 = 0;
      }
    }
  }

  v10 = v194;
  if (!(v45 | v36 | v49 | v53))
  {
LABEL_34:
    [v11 bounds];
    v70 = v195;
    [v195 convertRect:v11 fromCoordinateSpace:?];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    CGAffineTransformMakeScale(&v202, v10, v10);
    v224.origin.x = v72;
    v224.origin.y = v74;
    v224.size.width = v76;
    v191 = v78;
    v224.size.height = v78;
    v225 = CGRectApplyAffineTransform(v224, &v202);
    x = v225.origin.x;
    y = v225.origin.y;
    width = v225.size.width;
    height = v225.size.height;
    bitmap = v192->_bitmap;
    if (bitmap)
    {
      [(_UIBoundingPathBitmap *)bitmap bitmapData];
      v84 = v192->_bitmap;
      v85 = v198;
      v86 = v196;
      if (v84)
      {
        [(_UIBoundingPathBitmap *)v84 bitmapData];
        v87 = v197;
        goto LABEL_39;
      }
    }

    else
    {
      v85 = 0.0;
      v86 = v196;
    }

    v87 = 0.0;
LABEL_39:
    v226.origin.x = _UIWindowConvertRectFromOrientationToOrientation(v86, 1, x, y, width, height, v85, v87);
    v227 = CGRectIntegral(v226);
    v88 = v227.origin.x;
    v89 = v227.origin.y;
    if (v227.origin.x >= 0)
    {
      v90 = v227.origin.x;
    }

    else
    {
      v90 = -v88;
    }

    if (v89 >= 0)
    {
      v91 = v227.origin.y;
    }

    else
    {
      v91 = -v89;
    }

    if (!(v90 >> 15) && !(v91 >> 15) && v227.size.width + v88 < 0x8000 && v227.size.height + v89 < 0x8000)
    {
      v92 = v192->_bitmap;
      *&v202.a = v227.origin.x;
      *&v202.b = v227.origin.y;
      *&v202.c = v227.size.width;
      *&v202.d = v227.size.height;
      v93 = [(_UIBoundingPathBitmap *)v92 boundingPathBitmapWithRect:&v202];
LABEL_50:
      v94 = [[_UIComplexBoundingPath alloc] initWithCoordinateSpace:v11 orientation:v86 scale:v93 boundingPathBitmap:v194];

      goto LABEL_113;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v96 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_55;
      }

      v236.origin.x = v72;
      v236.origin.y = v74;
      v236.size.width = v76;
      v236.size.height = v191;
      v97 = NSStringFromCGRect(v236);
      v98 = [v11 windowScene];
      v99 = [(UIWindow *)v11 _fbsScene];
      LODWORD(v202.a) = 138413058;
      *(&v202.a + 4) = v97;
      WORD2(v202.b) = 2112;
      *(&v202.b + 6) = v11;
      HIWORD(v202.c) = 2112;
      *&v202.d = v98;
      LOWORD(v202.tx) = 2112;
      *(&v202.tx + 2) = v99;
      _os_log_fault_impl(&dword_188A29000, v96, OS_LOG_TYPE_FAULT, "Window bounds in screen %@ exceeds limits for bitmap data: %@ %@ %@", &v202, 0x2Au);
    }

    else
    {
      v95 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E6C0) + 8);
      if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
LABEL_56:
        v94 = [_UIScreenRectangularBoundingPathUtilities boundingPathForWindow:v11 inScreenCoordinateSpace:v195];
        goto LABEL_113;
      }

      v96 = v95;
      v228.origin.x = v72;
      v228.origin.y = v74;
      v228.size.width = v76;
      v228.size.height = v191;
      v97 = NSStringFromCGRect(v228);
      v98 = [v11 windowScene];
      v99 = [(UIWindow *)v11 _fbsScene];
      LODWORD(v202.a) = 138413058;
      *(&v202.a + 4) = v97;
      WORD2(v202.b) = 2112;
      *(&v202.b + 6) = v11;
      HIWORD(v202.c) = 2112;
      *&v202.d = v98;
      LOWORD(v202.tx) = 2112;
      *(&v202.tx + 2) = v99;
      _os_log_impl(&dword_188A29000, v96, OS_LOG_TYPE_ERROR, "Window bounds in screen %@ exceeds limits for bitmap data: %@ %@ %@", &v202, 0x2Au);
    }

LABEL_55:
    goto LABEL_56;
  }

  v56 = [v11 windowScene];
  v57 = [v56 _effectiveSettings];

  if (([v57 isUISubclass] & 1) == 0)
  {
    v165 = [MEMORY[0x1E696AAA8] currentHandler];
    [v165 handleFailureInMethod:v182 object:v192 file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:254 description:{@"Expected UIApplicationSceneSettings subclass but got %@", v57}];
  }

  v190 = v57;
  [v57 frame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  CGAffineTransformMakeScale(&v202, v194, v194);
  v221.origin.x = v59;
  v221.origin.y = v61;
  v221.size.width = v63;
  v221.size.height = v65;
  v222 = CGRectApplyAffineTransform(v221, &v202);
  v223 = CGRectIntegral(v222);
  *&v66 = v223.origin.x;
  *&v67 = v223.origin.y;
  if (v196 == 2)
  {
    v68 = v36;
    v69 = v53;
    v53 = v49;
    v49 = v45;
  }

  else if (v196 == 3)
  {
    v68 = v53;
    v69 = v49;
    v53 = v45;
    v49 = v36;
  }

  else
  {
    v68 = v45;
    v69 = v36;
    if (v196 != 4)
    {
      goto LABEL_60;
    }
  }

  v36 = v53;
  v53 = v49;
  v49 = v68;
  v45 = v69;
LABEL_60:
  if (SLODWORD(v66) >= 0)
  {
    v100 = v223.origin.x;
  }

  else
  {
    v100 = -LODWORD(v66);
  }

  if (SLODWORD(v67) >= 0)
  {
    v101 = v223.origin.y;
  }

  else
  {
    v101 = -LODWORD(v67);
  }

  if (v100 >> 15 || v101 >> 15 || (*&v102 = v223.size.width, v223.size.width + *&v66 >= 0x8000) || v223.size.height + *&v67 >= 0x8000)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v166 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
      {
        v238.origin.x = v59;
        v238.origin.y = v61;
        v238.size.width = v63;
        v238.size.height = v65;
        v174 = NSStringFromCGRect(v238);
        v175 = [v11 windowScene];
        v176 = [(UIWindow *)v11 _fbsScene];
        LODWORD(v202.a) = 138412802;
        *(&v202.a + 4) = v174;
        WORD2(v202.b) = 2112;
        *(&v202.b + 6) = v175;
        HIWORD(v202.c) = 2112;
        *&v202.d = v176;
        _os_log_fault_impl(&dword_188A29000, v166, OS_LOG_TYPE_FAULT, "Scene frame %@ exceeds limits for bitmap data: %@ %@", &v202, 0x20u);
      }

      v70 = v195;
      v116 = v190;
    }

    else
    {
      v115 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1146) + 8);
      v70 = v195;
      v116 = v190;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        v117 = v115;
        v230.origin.x = v59;
        v230.origin.y = v61;
        v230.size.width = v63;
        v230.size.height = v65;
        v118 = NSStringFromCGRect(v230);
        v119 = [v11 windowScene];
        v120 = [(UIWindow *)v11 _fbsScene];
        LODWORD(v202.a) = 138412802;
        *(&v202.a + 4) = v118;
        WORD2(v202.b) = 2112;
        *(&v202.b + 6) = v119;
        HIWORD(v202.c) = 2112;
        *&v202.d = v120;
        _os_log_impl(&dword_188A29000, v117, OS_LOG_TYPE_ERROR, "Scene frame %@ exceeds limits for bitmap data: %@ %@", &v202, 0x20u);
      }
    }

    v94 = [_UIScreenRectangularBoundingPathUtilities boundingPathForWindow:v11 inScreenCoordinateSpace:v70];
  }

  else
  {
    if (v36 <= v45)
    {
      v103 = v45;
    }

    else
    {
      v103 = v36;
    }

    if (v53 <= v49)
    {
      v104 = v49;
    }

    else
    {
      v104 = v53;
    }

    if (v103 + v104 <= *&v102 && (v36 <= v53 ? (v105 = v53) : (v105 = v36), v45 <= v49 ? (v106 = v49) : (v106 = v45), v105 + v106 <= v223.size.height))
    {
      v121 = v192->_bitmap;
      *&v202.a = v223.origin.x;
      *&v202.b = v223.origin.y;
      *&v202.c = v223.size.width;
      *&v202.d = v223.size.height;
      v201[0] = v36;
      v201[1] = v45;
      v201[2] = v49;
      v201[3] = v53;
      v114 = [(_UIBoundingPathBitmap *)v121 boundingPathBitmapWithRect:&v202 cornerRadii:v201];
    }

    else
    {
      *&v188 = v223.size.height;
      if (os_variant_has_internal_diagnostics())
      {
        [MEMORY[0x1E696AAA8] currentHandler];
        v168 = v167 = v102;
        [v190 frame];
        v169 = NSStringFromCGRect(v237);
        v170 = [v190 cornerRadiusConfiguration];
        v107 = v192;
        [v168 handleFailureInMethod:v182 object:v192 file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:284 description:{@"Invalid scene settings detected: the scene frame (%@) is too small to fit the scene's rounded corners: %@. Scene settings: %@", v169, v170, v190}];

        v102 = v167;
      }

      else
      {
        v107 = v192;
        if (os_variant_has_internal_diagnostics())
        {
          v171 = v102;
          v172 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_FAULT))
          {
            [v190 frame];
            v177 = NSStringFromCGRect(v239);
            v178 = [v190 cornerRadiusConfiguration];
            LODWORD(v202.a) = 138412546;
            *(&v202.a + 4) = v177;
            WORD2(v202.b) = 2112;
            *(&v202.b + 6) = v178;
            _os_log_fault_impl(&dword_188A29000, v172, OS_LOG_TYPE_FAULT, "Invalid scene settings detected: the scene frame (%@) is too small to fit the scene's rounded corners: %@", &v202, 0x16u);
          }

          v10 = v194;
          v102 = v171;
          v107 = v192;
        }

        else
        {
          v108 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E6B0) + 8);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            v109 = v108;
            [v190 frame];
            NSStringFromCGRect(v229);
            v111 = v110 = v102;
            v112 = [v190 cornerRadiusConfiguration];
            LODWORD(v202.a) = 138412546;
            *(&v202.a + 4) = v111;
            WORD2(v202.b) = 2112;
            *(&v202.b + 6) = v112;
            _os_log_impl(&dword_188A29000, v109, OS_LOG_TYPE_ERROR, "Invalid scene settings detected: the scene frame (%@) is too small to fit the scene's rounded corners: %@", &v202, 0x16u);

            v102 = v110;
          }
        }
      }

      v113 = v107->_bitmap;
      v202.a = v66;
      v202.b = v67;
      v202.c = v102;
      v202.d = v188;
      v114 = [(_UIBoundingPathBitmap *)v113 boundingPathBitmapWithRect:&v202];
    }

    v122 = v114;
    v123 = v11;
    v124 = [v123 layer];
    [v123 bounds];
    [v124 convertRect:0 toLayer:?];
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v132 = v131;

    [v123 _sceneReferenceBounds];
    v134 = v133;
    v136 = v135;
    v137 = [v123 _sceneOrientation];
    v138 = [v123 interfaceOrientation];

    v139 = _UIWindowConvertRectFromOrientationToOrientation(v137, v138, v126, v128, v130, v132, v134, v136);
    v141 = v140;
    v143 = v142;
    v145 = v144;
    CGAffineTransformMakeScale(&v202, v10, v10);
    v231.origin.x = v139;
    v231.origin.y = v141;
    v231.size.width = v143;
    v193 = v145;
    v231.size.height = v145;
    v232 = CGRectApplyAffineTransform(v231, &v202);
    v146 = v232.origin.x;
    v147 = v232.origin.y;
    v148 = v232.size.width;
    v149 = v232.size.height;
    v116 = v190;
    if (v122)
    {
      [v122 bitmapData];
      v150 = v200;
      [v122 bitmapData];
      v151 = v199;
    }

    else
    {
      v151 = 0.0;
      v150 = 0.0;
    }

    v70 = v195;
    v86 = v196;
    v233.origin.x = _UIWindowConvertRectFromOrientationToOrientation(v196, 1, v146, v147, v148, v149, v150, v151);
    v234 = CGRectIntegral(v233);
    v152 = v234.origin.x;
    v153 = v234.origin.y;
    if (v234.origin.x >= 0)
    {
      v154 = v234.origin.x;
    }

    else
    {
      v154 = -v152;
    }

    if (v153 >= 0)
    {
      v155 = v234.origin.y;
    }

    else
    {
      v155 = -v153;
    }

    if (!(v154 >> 15) && !(v155 >> 15) && v234.size.width + v152 < 0x8000 && v234.size.height + v153 < 0x8000)
    {
      *&v202.a = v234.origin.x;
      *&v202.b = v234.origin.y;
      *&v202.c = v234.size.width;
      *&v202.d = v234.size.height;
      v93 = [v122 boundingPathBitmapWithRect:&v202];

      goto LABEL_50;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v173 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
      {
        v240.origin.x = v139;
        v240.origin.y = v141;
        v240.size.width = v143;
        v240.size.height = v193;
        v179 = NSStringFromCGRect(v240);
        v180 = [v123 windowScene];
        v181 = [(UIWindow *)v123 _fbsScene];
        LODWORD(v202.a) = 138413058;
        *(&v202.a + 4) = v179;
        WORD2(v202.b) = 2112;
        *(&v202.b + 6) = v123;
        HIWORD(v202.c) = 2112;
        *&v202.d = v180;
        LOWORD(v202.tx) = 2112;
        *(&v202.tx + 2) = v181;
        _os_log_fault_impl(&dword_188A29000, v173, OS_LOG_TYPE_FAULT, "Window bounds in scene %@ exceeds limits for bitmap data: %@ %@ %@", &v202, 0x2Au);
      }

      v70 = v195;
      v116 = v190;
    }

    else
    {
      v156 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E6B8) + 8);
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        v157 = v156;
        v235.origin.x = v139;
        v235.origin.y = v141;
        v235.size.width = v143;
        v235.size.height = v193;
        v158 = NSStringFromCGRect(v235);
        v159 = [v123 windowScene];
        v160 = [(UIWindow *)v123 _fbsScene];
        LODWORD(v202.a) = 138413058;
        *(&v202.a + 4) = v158;
        WORD2(v202.b) = 2112;
        *(&v202.b + 6) = v123;
        HIWORD(v202.c) = 2112;
        *&v202.d = v159;
        LOWORD(v202.tx) = 2112;
        *(&v202.tx + 2) = v160;
        _os_log_impl(&dword_188A29000, v157, OS_LOG_TYPE_ERROR, "Window bounds in scene %@ exceeds limits for bitmap data: %@ %@ %@", &v202, 0x2Au);

        v70 = v195;
      }
    }

    v94 = [_UIScreenRectangularBoundingPathUtilities boundingPathForWindow:v123 inScreenCoordinateSpace:v70];
  }

LABEL_113:

  return v94;
}

- (void)_loadBitmapForScreen:(id)a3 type:(int64_t)a4
{
  v82[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  [v7 _referenceBounds];
  v9 = v8;
  v11 = v10;
  [v7 scale];
  v13 = v12;

  v14 = round(v13);
  v15 = _UIScreenNativeDisplayBoundsSizeForType(a4);
  v17 = v16;
  v18 = _UIScreenReferenceBoundsSizeForType(a4);
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BoundingPathBitmap-%ldx%ld-%ldx%ld-%.2fx", v15, v17, v18, v19, _UIScreenScaleForType(a4)];
  v21 = v20;
  if ((a4 - 17) < 6 || a4 == 42)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v20, @"A"];
  }

  else
  {
    v22 = v20;
  }

  v23 = v22;
  v24 = v9 * v14;
  v25 = v11 * v14;

  v26 = __UIKitSharedBoundingPathDataManager();
  if (!v26)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:357 description:@"The bounding path data manager should never be nil. This likely means that the BoundingPathData.bundle inside UIKitCore.framework is missing."];
  }

  v59 = v24;
  v27 = v25;
  v28 = [v26 dataNamed:v23];
  v29 = [v28 data];

  v58 = a2;
  if (v29)
  {
    v79 = 0;
    v30 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:&v79];
    v31 = v79;
    bitmap = self->_bitmap;
    self->_bitmap = v30;

    if (!self->_bitmap || v31)
    {
      v47 = [MEMORY[0x1E696AAA8] currentHandler];
      [v47 handleFailureInMethod:a2 object:self file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:363 description:{@"Failed to deserialize bounding path bitmap data. Error: %@", v31}];
    }
  }

  else
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:359 description:{@"Failed to load bounding path bitmap data from the asset manager for asset name: %@", v23}];
  }

  v33 = v25;
  if ((os_variant_has_internal_diagnostics() & 1) != 0 && [MEMORY[0x1E699FAB8] isEmulatedDevice])
  {
    v44 = self->_bitmap;
    if (v44)
    {
      [(_UIBoundingPathBitmap *)v44 bitmapData];
      v45 = self->_bitmap;
      if (v75 != v59)
      {
        goto LABEL_37;
      }

      if (v45)
      {
        [(_UIBoundingPathBitmap *)v45 bitmapData];
        v46 = *(&v71 + 1);
LABEL_35:
        if (v46 == v27)
        {
          goto LABEL_9;
        }

        v45 = self->_bitmap;
LABEL_37:
        if (v45)
        {
          [(_UIBoundingPathBitmap *)v45 bitmapData];
          v48 = self->_bitmap;
          v49 = v67 / v59;
          if (v48)
          {
            [(_UIBoundingPathBitmap *)v48 bitmapData];
            v50 = *(&v63 + 1);
            p_info = (&OBJC_METACLASS____UIKeyboardChangedInformation + 32);
LABEL_42:
            v52 = v50 / v27;
            v53 = objc_alloc((p_info + 116));
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __67___UIScreenComplexBoundingPathUtilities__loadBitmapForScreen_type___block_invoke;
            v62[3] = &unk_1E710C4F0;
            *&v62[5] = v49;
            *&v62[6] = v52;
            v62[4] = self;
            v54 = [v53 initWithSize:v59 containsPoint:{v27, v62}];
            v55 = self->_bitmap;
            self->_bitmap = v54;

            goto LABEL_9;
          }

LABEL_41:
          p_info = &OBJC_METACLASS____UIKeyboardChangedInformation.info;
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          v63 = 0u;
          v50 = 0.0;
          goto LABEL_42;
        }

LABEL_40:
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v49 = 0.0 / v59;
        goto LABEL_41;
      }
    }

    else
    {
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      if (v59)
      {
        goto LABEL_40;
      }
    }

    v46 = 0;
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    goto LABEL_35;
  }

LABEL_9:
  v34 = self->_bitmap;
  if (v34)
  {
    [(_UIBoundingPathBitmap *)v34 bitmapData];
    v35 = v61;
  }

  else
  {
    v35 = 0;
  }

  if (v35 != v59 || ((v36 = self->_bitmap) == 0 ? (v37 = 0) : ([(_UIBoundingPathBitmap *)v36 bitmapData], v37 = v60), v37 != v27))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:v58 object:self file:@"_UIScreenComplexBoundingPathUtilities.m" lineNumber:390 description:{@"The loaded bitmap does not match the expected size. Screen type = %ld; Asset name = '%@'; Expected size = {width=%ld, height=%ld}; Bitmap = %@", a4, v23, v59, v27, self->_bitmap}];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v56 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          v57 = self->_bitmap;
          *buf = 134219010;
          *&buf[4] = a4;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2048;
          v81 = v59;
          LOWORD(v82[0]) = 2048;
          *(v82 + 2) = v27;
          WORD1(v82[1]) = 2112;
          *(&v82[1] + 4) = v57;
          _os_log_fault_impl(&dword_188A29000, v56, OS_LOG_TYPE_FAULT, "The loaded bitmap does not match the expected size. Screen type = %ld; Asset name = '%@'; Expected size = {width=%ld, height=%ld}; Bitmap = %@", buf, 0x34u);
        }

        v33 = v27;
      }

      else
      {
        v38 = *(__UILogGetCategoryCachedImpl("Assert", &_loadBitmapForScreen_type____s_category) + 8);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = self->_bitmap;
          *buf = 134219010;
          *&buf[4] = a4;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2048;
          v81 = v59;
          LOWORD(v82[0]) = 2048;
          *(v82 + 2) = v27;
          WORD1(v82[1]) = 2112;
          *(&v82[1] + 4) = v39;
          _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "The loaded bitmap does not match the expected size. Screen type = %ld; Asset name = '%@'; Expected size = {width=%ld, height=%ld}; Bitmap = %@", buf, 0x34u);
        }
      }

      v40 = [_UIBoundingPathBitmap alloc];
      *buf = v59;
      *&buf[8] = v33;
      *&buf[16] = 0;
      v81 = v33;
      memset(v82, 0, 24);
      v41 = [(_UIBoundingPathBitmap *)v40 initWithBitmapData:buf];
      v42 = self->_bitmap;
      self->_bitmap = v41;
    }
  }
}

@end