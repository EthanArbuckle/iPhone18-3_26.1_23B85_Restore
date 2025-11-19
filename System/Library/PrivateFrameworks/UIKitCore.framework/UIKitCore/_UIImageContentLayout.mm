@interface _UIImageContentLayout
+ (id)layoutForSource:(id)a3 inTarget:(id)a4 withSize:(CGSize)a5;
- (CGAffineTransform)contentsTransform;
- (CGAffineTransform)symbolLayerPositionTransform;
- (CGSize)contentsSize;
- (CGSize)renderSize;
- (NSArray)contentEffects;
- (UIColor)contentsMultiplyColor;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)contentInsets;
- (_UIImageContentRBSymbolConfiguration)rbSymbolConfiguration;
- (id)contents;
- (id)description;
- (unsigned)contentDrawMode;
- (void)_materializeRenditionContents;
- (void)drawInContext:(CGContext *)a3 withSize:(CGSize)a4;
@end

@implementation _UIImageContentLayout

- (UIColor)contentsMultiplyColor
{
  [(_UIImageContentLayout *)self _materializeRenditionContents];
  rendition = self->_contentInfo.rendition;
  if (rendition)
  {
    return rendition->_multiplyColor;
  }

  else
  {
    return 0;
  }
}

- (unsigned)contentDrawMode
{
  [(_UIImageContentLayout *)self _materializeRenditionContents];
  rendition = self->_contentInfo.rendition;
  if (rendition)
  {
    return rendition->_drawMode;
  }

  else
  {
    return 0;
  }
}

- (id)contents
{
  [(_UIImageContentLayout *)self _materializeRenditionContents];
  contents = self->_contentInfo.contents;

  return contents;
}

- (void)_materializeRenditionContents
{
  if (a1)
  {
    v2 = _Block_copy(*(a1 + 16));
    if (v2)
    {
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;

      v2[2](&v8, v2);
      v4 = v8;
      v8 = 0;
      v5 = *(a1 + 24);
      *(a1 + 24) = v4;

      v6 = v9;
      v9 = 0;
      v7 = *(a1 + 32);
      *(a1 + 32) = v6;

      *(a1 + 40) = v10;
    }
  }
}

- (CGAffineTransform)contentsTransform
{
  v3 = *&self[4].b;
  *&retstr->a = *&self[3].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].d;
  return self;
}

- (NSArray)contentEffects
{
  [(_UIImageContentLayout *)self _materializeRenditionContents];
  rendition = self->_contentInfo.rendition;
  if (rendition)
  {
    return rendition->_effects;
  }

  else
  {
    return 0;
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (id)layoutForSource:(id)a3 inTarget:(id)a4 withSize:(CGSize)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    height = a5.height;
    width = a5.width;
    v10 = a4;
    v11 = a3;
    v5 = [a1 alloc];
    v12 = v11;
    v13 = v10;
    if (!v5 || (v143.receiver = v5, v143.super_class = _UIImageContentLayout, (v5 = objc_msgSendSuper2(&v143, sel_init)) == 0))
    {
LABEL_59:

      goto LABEL_60;
    }

    v14 = [v12 content];
    objc_storeStrong(v5 + 3, 0);
    objc_storeStrong(v5 + 4, 0);
    *(v5 + 5) = 0;
    [v14 size];
    *(v5 + 11) = v15;
    *(v5 + 12) = v16;
    v17 = MEMORY[0x1E695EFD0];
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    *(v5 + 184) = *MEMORY[0x1E695EFD0];
    *(v5 + 200) = v18;
    *(v5 + 216) = *(v17 + 32);
    [v13 preferredContentScaleFactor];
    *(v5 + 8) = v19;
    [v14 vectorScale];
    *(v5 + 120) = 0u;
    *(v5 + 6) = v20;
    *(v5 + 136) = 0u;
    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *(v5 + 104) = *MEMORY[0x1E695F060];
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    v5[8] &= ~1u;
    v21 = [v13 contentMode];
    [v12 _fullSize];
    v117 = v23;
    v118 = v22;
    [v14 size];
    v119 = v24;
    v115 = v25;
    [v12 _contentInsets];
    v26 = UISizeRoundToScale(width, height, *(v5 + 8));
    v28 = v27;
    v29 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v13 semanticContentAttribute]);
    v30 = [v12 _imageOrientationConsideringRTLForUserInterfaceLayoutDirection:v29];
    v31 = [v12 _imageOrientationForSymbolLayerConsideringRTLForUserInterfaceLayoutDirection:v29];
    [v12 alignmentRectInsets];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [v13 _additionalAlignmentRectInsetsForRenderingSource:v12];
    v44 = v33 + v43;
    v45 = v35 + v40;
    v46 = v37 + v41;
    *(v5 + 19) = v33 + v43;
    *(v5 + 20) = v35 + v40;
    v47 = v39 + v42;
    *(v5 + 21) = v37 + v41;
    *(v5 + 22) = v39 + v42;
    if (v30 <= 7)
    {
      if (((1 << v30) & 0x22) != 0)
      {
        v48 = v37 + v41;
        v49 = v47;
        v50 = v44;
        v47 = v45;
        goto LABEL_14;
      }

      if (((1 << v30) & 0x44) != 0)
      {
        v48 = v39 + v42;
        v49 = v44;
        v50 = v45;
        v47 = v46;
        goto LABEL_14;
      }

      if (((1 << v30) & 0x88) != 0)
      {
        v48 = v35 + v40;
        v49 = v37 + v41;
        v50 = v47;
        v47 = v44;
        goto LABEL_14;
      }
    }

    v48 = v44;
    v49 = v35 + v40;
    v50 = v37 + v41;
    if (!v30)
    {
      goto LABEL_21;
    }

LABEL_14:
    if (v30 - 6 < 2)
    {
      v51 = v50;
      v52 = v49;
      v50 = v48;
    }

    else
    {
      v51 = v48;
      if (v30 - 4 <= 1)
      {
        v52 = v47;
LABEL_20:
        *(v5 + 19) = v51;
        *(v5 + 20) = v52;
        *(v5 + 21) = v50;
        *(v5 + 22) = v49;
LABEL_21:
        v53 = v28 <= 0.0 || v26 <= 0.0;
        if ((!v53 || v21 >= 4) && v119 > 0.0 && v115 > 0.0)
        {
          if ([v14 canScaleImageToTargetResolution] && !objc_msgSend(v12, "_isResizable"))
          {
            v56 = 1;
          }

          else
          {
            [v14 scale];
            *(v5 + 8) = v54;
            v26 = UISizeRoundToScale(width, height, v54);
            v28 = v55;
            v56 = 0;
          }

          v113 = v14;
          if ([v13 _layoutShouldFlipHorizontalOrientations])
          {
            v57 = v30 - 2;
            if (v30 - 2 <= 5 && ((0x33u >> v57) & 1) != 0)
            {
              v30 = qword_18A67E628[v57];
            }
          }

          v137 = 0;
          v138 = &v137;
          v139 = 0x3010000000;
          v140 = "";
          v141 = v119;
          v142 = v115;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __56___UIImageContentLayout_initWithSource_target_withSize___block_invoke;
          aBlock[3] = &unk_1E710DA80;
          v127 = v119;
          v128 = v115;
          v58 = v12;
          v124 = v58;
          v120 = v21;
          v129 = v21;
          v130 = 0;
          v131 = 0;
          v132 = v26;
          v133 = v28;
          v134 = v118;
          v135 = v117;
          v59 = v5;
          v136 = v56;
          v125 = v59;
          v126 = &v137;
          v116 = _Block_copy(aBlock);
          (v116)[2](&v144);
          v60 = *&v144.c;
          *(v5 + 184) = *&v144.a;
          *(v5 + 200) = v60;
          *(v5 + 216) = *&v144.tx;
          if (v30 == v31)
          {
            v61 = *(v5 + 184);
            v62 = *(v5 + 200);
            *(v59 + 264) = *(v5 + 216);
            *(v59 + 248) = v62;
            *(v59 + 232) = v61;
          }

          else
          {
            (v116)[2](&v144);
            v63 = *&v144.c;
            *(v59 + 232) = *&v144.a;
            *(v59 + 248) = v63;
            *(v59 + 264) = *&v144.tx;
            v59[56] = 1;
          }

          v64 = v138;
          v138[2] = vbslq_s8(vcltzq_f64(v138[2]), vnegq_f64(v138[2]), v138[2]);
          *(v5 + 104) = v64[2];
          [v58 baselineOffsetFromBottom];
          v66 = v65;
          if (v65 == 0.0)
          {
            v67 = *(v5 + 10);
          }

          else
          {
            memset(&v144, 0, sizeof(v144));
            LayerContentModeTransform(v120, &v144, 0.0, 0.0, v26, v28, v118, v117);
            UIRoundToScale(v144.ty + v144.b * 0.0 + v66 * v144.d, *(v5 + 8));
            *(v5 + 10) = v67;
          }

          UIRoundToScale(v28 - v67, *(v5 + 8));
          *(v5 + 9) = v68;
          [v58 _contentInsets];
          v70 = *MEMORY[0x1E695EFF8] + v69;
          v72 = *(MEMORY[0x1E695EFF8] + 8) + v71;
          v74 = v118 - (v69 + v73);
          v76 = v117 - (v71 + v75);
          memset(&v144, 0, sizeof(v144));
          LayerContentModeTransform(v120, &v144, 0.0, 0.0, v26, v28, v118, v117);
          v122 = v144;
          v150.origin.x = v70;
          v150.origin.y = v72;
          v150.size.width = v74;
          v150.size.height = v76;
          v151 = CGRectApplyAffineTransform(v150, &v122);
          x = v151.origin.x;
          y = v151.origin.y;
          v79 = v151.size.width;
          v80 = v151.size.height;
          MinY = CGRectGetMinY(v151);
          v152.origin.x = 0.0;
          v152.origin.y = 0.0;
          v152.size.width = v26;
          v152.size.height = v28;
          v82 = CGRectGetMinY(v152);
          UIRoundToScale(MinY - v82, *(v5 + 8));
          v121 = v83;
          v153.origin.x = x;
          v153.origin.y = y;
          v153.size.width = v79;
          v153.size.height = v80;
          MinX = CGRectGetMinX(v153);
          v154.origin.x = 0.0;
          v154.origin.y = 0.0;
          v154.size.width = v26;
          v154.size.height = v28;
          v85 = CGRectGetMinX(v154);
          UIRoundToScale(MinX - v85, *(v5 + 8));
          v87 = v86;
          v155.origin.x = 0.0;
          v155.origin.y = 0.0;
          v155.size.width = v26;
          v155.size.height = v28;
          MaxY = CGRectGetMaxY(v155);
          v156.origin.x = x;
          v156.origin.y = y;
          v156.size.width = v79;
          v156.size.height = v80;
          v89 = CGRectGetMaxY(v156);
          UIRoundToScale(MaxY - v89, *(v5 + 8));
          v91 = v90;
          v157.origin.x = 0.0;
          v157.origin.y = 0.0;
          v157.size.width = v26;
          v157.size.height = v28;
          MaxX = CGRectGetMaxX(v157);
          v158.origin.x = x;
          v158.origin.y = y;
          v158.size.width = v79;
          v158.size.height = v80;
          v93 = CGRectGetMaxX(v158);
          UIRoundToScale(MaxX - v93, *(v5 + 8));
          *(v5 + 15) = v121;
          *(v59 + 16) = v87;
          *(v59 + 17) = v91;
          *(v59 + 18) = v94;
          v95 = v138[2].f64[0];
          v96 = v138[2].f64[1];
          v97 = v58;
          v98 = v13;
          v99 = [v97 content];
          v100 = *(v5 + 8);
          [v98 preferredContentScaleFactor];
          v102 = v101;
          if ([v98 contentMode] > 3 || v95 != 0.0 && v96 != 0.0)
          {
            v103 = [v98 _renderEnvironmentForSource:v97];
            if (v103)
            {
              v104 = [_UIImageContentRenditionContext contextWithRenderEnvironment:v103 source:v97];
            }

            else
            {
              v104 = 0;
            }

            [v99 size];
            if (vabdd_f64(v96, v106) < 0.00000011920929 && vabdd_f64(v95, v105) < 0.00000011920929 && ([v99 scale], v100 == v107) && objc_msgSend(v98, "_supportsContents") && objc_msgSend(v99, "prefersProvidingNonCGImageContentsDirectlyForRendering"))
            {
              *&v144.a = MEMORY[0x1E69E9820];
              *&v144.b = 3221225472;
              *&v144.c = __61___UIImageContentLayout__prepareContentOfSize_source_target___block_invoke;
              *&v144.d = &unk_1E710DAA8;
              *&v144.tx = v99;
              v144.ty = v102;
              v108 = _Block_copy(&v144);
              v109 = *(v59 + 2);
              *(v59 + 2) = v108;

              v5[8] &= ~1u;
            }

            else
            {
              *&v144.a = MEMORY[0x1E69E9820];
              *&v144.b = 3221225472;
              *&v144.c = __61___UIImageContentLayout__prepareContentOfSize_source_target___block_invoke_2;
              *&v144.d = &unk_1E710DAD0;
              *&v144.tx = v99;
              v145 = v95;
              v146 = v96;
              v147 = v100;
              *&v144.ty = v104;
              v148 = v102;
              v110 = _Block_copy(&v144);
              v111 = *(v59 + 2);
              *(v59 + 2) = v110;

              v5[8] |= 1u;
            }
          }

          _Block_object_dispose(&v137, 8);
          v14 = v114;
        }

        goto LABEL_59;
      }

      v52 = v49;
    }

    v49 = v47;
    goto LABEL_20;
  }

LABEL_60:

  return v5;
}

- (_UIImageContentRBSymbolConfiguration)rbSymbolConfiguration
{
  [(_UIImageContentLayout *)self _materializeRenditionContents];
  rendition = self->_contentInfo.rendition;

  return [(_UIImageContentRendition *)rendition rbSymbolConfiguration];
}

- (void)drawInContext:(CGContext *)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [(_UIImageContentLayout *)self _materializeRenditionContents];
  CGContextSaveGState(a3);
  CGContextScaleCTM(a3, width / self->_renderSize.width, height / self->_renderSize.height);
  contentsScaleFactor = self->_contentsScaleFactor;
  if (contentsScaleFactor <= 0.0)
  {
    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    contentsScaleFactor = v10;
  }

  CGContextScaleCTM(a3, contentsScaleFactor / self->_contentsVectorScale, contentsScaleFactor / self->_contentsVectorScale);
  CGContextTranslateCTM(a3, -self->_contentInsets.left, -self->_contentInsets.top);
  CGContextScaleCTM(a3, 1.0 / self->_contentsScaleFactor, 1.0 / self->_contentsScaleFactor);
  memset(&v16, 0, sizeof(v16));
  CGContextGetCTM(&v16, a3);
  var0 = self->_contentInfo.var0;
  v12 = self->_contentInsets.left * var0;
  v13 = var0 * self->_contentInsets.top;
  v14 = v16;
  CGAffineTransformTranslate(&v15, &v14, v12, v13);
  v16 = v15;
  CGContextSetCTM();
  [_UIImageContentRendition drawInContext:?];
  CGContextRestoreGState(a3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  a = self->_contentsTransform.a;
  b = self->_contentsTransform.b;
  c = self->_contentsTransform.c;
  d = self->_contentsTransform.d;
  tx = self->_contentsTransform.tx;
  ty = self->_contentsTransform.ty;
  if (*&self->_flags)
  {
    v11 = @"(CGImage)";
  }

  else
  {
    v11 = &stru_1EFB14550;
  }

  if (self->_contentInfoGenerator)
  {
    v12 = 0;
    v13 = @"pending";
  }

  else if (self->_contentInfo.contents)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self->_contentInfo.contents];
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = @"none";
  }

  v14 = [v3 stringWithFormat:@"<%@:%p transform=(%g, %g, %g, %g%g, %g) contents=%@%@ scale=%g insets=(%g, %g, %g, %g)>", v4, self, *&a, *&b, *&c, *&d, *&tx, *&ty, v11, v13, *&self->_contentsScaleFactor, *&self->_contentInsets.top, *&self->_contentInsets.left, *&self->_contentInsets.bottom, *&self->_contentInsets.right];;
  if (v12)
  {
  }

  return v14;
}

- (CGAffineTransform)symbolLayerPositionTransform
{
  v3 = *&self[5].b;
  *&retstr->a = *&self[4].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].d;
  return self;
}

- (CGSize)contentsSize
{
  width = self->_contentsSize.width;
  height = self->_contentsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)renderSize
{
  width = self->_renderSize.width;
  height = self->_renderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end