@interface TSDImageLayout
- (BOOL)hasAlpha;
- (BOOL)hasMaskingPath;
- (BOOL)isInvisible;
- (CGAffineTransform)imageDataToVisualSizeTransform;
- (CGAffineTransform)layoutToImageTransform;
- (CGAffineTransform)layoutToMaskTransform;
- (CGRect)boundsInfluencingExteriorWrap;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (CGRect)pathBoundsWithoutStroke;
- (CGSize)sizeOfFrameRectIncludingCoverage;
- (TSDImageInfo)imageInfo;
- (TSDImageLayout)initWithInfo:(id)a3;
- (TSDInfoGeometry)currentInfoGeometry;
- (TSDLayoutGeometry)imageGeometryInRoot;
- (double)descentForInlineLayout;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4;
- (id)childInfosForChildLayouts;
- (id)computeLayoutGeometry;
- (id)i_computeWrapPath;
- (id)imageAdjustments;
- (id)layoutGeometryFromInfo;
- (id)smartPathSource;
- (void)dealloc;
- (void)dynamicImageAdjustmentsChangeDidBegin;
- (void)dynamicImageAdjustmentsChangeDidEnd;
- (void)dynamicImageAdjustmentsUpdateToValue:(id)a3;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)a3 andPerformBlock:(id)a4;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_setDynamicInfoGeometry:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)updateChildrenFromInfo;
@end

@implementation TSDImageLayout

- (TSDImageLayout)initWithInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = TSDImageLayout;
  v3 = [(TSDMediaLayout *)&v13 initWithInfo:a3];
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_imageInfo(v3, v4, v5);
    if (v7)
    {
      v10 = v7;
      v11 = objc_msgSend_maskInfo(v7, v8, v9);

      if (v11)
      {
        v6->mMaskEditMode = 1;
      }
    }

    else
    {
      v10 = v6;
      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  CGPathRelease(self->mPathToStroke);
  v3.receiver = self;
  v3.super_class = TSDImageLayout;
  [(TSDAbstractLayout *)&v3 dealloc];
}

- (TSDInfoGeometry)currentInfoGeometry
{
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  if (mDynamicInfoGeometry)
  {
    v4 = mDynamicInfoGeometry;
  }

  else
  {
    v5 = objc_msgSend_info(self, a2, v2);
    v4 = objc_msgSend_geometry(v5, v6, v7);
  }

  return v4;
}

- (id)layoutGeometryFromInfo
{
  v3 = objc_msgSend_currentInfoGeometry(self, a2, v2);
  v4 = [TSDLayoutGeometry alloc];
  objc_msgSend_size(v3, v5, v6);
  v10 = v9;
  v12 = v11;
  if (v3)
  {
    objc_msgSend_transform(v3, v7, v8);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v13 = objc_msgSend_initWithSize_transform_(v4, v7, v15, v10, v12);

  return v13;
}

- (id)computeLayoutGeometry
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    objc_msgSend_maximumFrameSizeForChild_(v6, v7, self);
  }

  else
  {
    v9 = 1.79769313e308;
    v10 = 1.79769313e308;
  }

  if (self->mLastParentLimitedSize.width != v9 || self->mLastParentLimitedSize.height != v10)
  {
    self->mLastParentLimitedSize.width = v9;
    self->mLastParentLimitedSize.height = v10;
  }

  v14 = objc_msgSend_maskLayout(self, v7, v8);
  if (v14)
  {
    v15 = objc_msgSend_layoutGeometryFromInfo(self, v12, v13);
  }

  else
  {
    v278.receiver = self;
    v278.super_class = TSDImageLayout;
    v15 = [(TSDLayout *)&v278 computeLayoutGeometry];
  }

  v16 = v15;
  objc_storeStrong(&self->mImageGeometry, v15);
  objc_opt_class();
  v19 = objc_msgSend_stroke(self, v17, v18);
  v20 = TSUDynamicCast();

  CGPathRelease(self->mPathToStroke);
  self->mPathToStroke = 0;
  objc_msgSend_setShouldRenderFrameStroke_(self, v21, 0);
  v24 = objc_msgSend_imageInfo(self, v22, v23);
  v27 = v24;
  v272 = v24;
  if (v14)
  {
    v267 = v6;
    objc_msgSend_setPathScale_(v14, v25, v26, 1.0);
    v30 = objc_msgSend_computeLayoutGeometry(v14, v28, v29);
    if (objc_msgSend_layoutState(self, v31, v32) == 3)
    {
      v35 = v16;
    }

    else
    {
      v47 = objc_msgSend_geometry(v27, v33, v34);
      objc_msgSend_angle(v47, v48, v49);
      v51 = v50;
      v54 = objc_msgSend_maskInfo(v27, v52, v53);
      v57 = objc_msgSend_geometry(v54, v55, v56);
      objc_msgSend_angle(v57, v58, v59);
      v61 = v51 + v60;

      objc_msgSend_size(v30, v62, v63);
      v65 = v64;
      v67 = v66;
      CGAffineTransformMakeRotation(&v277, v61 * 0.0174532925);
      objc_msgSend_scaleForInlineClampingUnrotatedSize_withTransform_(self, v68, &v277, v65, v67);
      v70 = v69;
      CGAffineTransformMakeScale(&v277, v69, v69);
      v72 = objc_msgSend_geometryByTransformingBy_(v30, v71, &v277);

      CGAffineTransformMakeScale(&v277, v70, v70);
      v74 = objc_msgSend_geometryByTransformingBy_(v16, v73, &v277);

      objc_msgSend_maskLayout(self, v75, v76);
      v78 = v77 = v20;
      objc_msgSend_setPathScale_(v78, v79, v80, v70);

      v83 = objc_msgSend_maskLayout(self, v81, v82);
      objc_msgSend_setGeometry_(v83, v84, v72);

      v20 = v77;
      objc_storeStrong(&self->mImageGeometry, v74);
      v30 = v72;
      v35 = v74;
    }

    v85 = MEMORY[0x277D81160];
    v86 = objc_msgSend_path(v14, v33, v34);
    v46 = objc_msgSend_bezierPathWithCGPath_(v85, v87, v86);
    objc_msgSend_pathBounds(v14, v88, v89);
    CGAffineTransformMakeTranslation(&v277, -v90, -v91);
    objc_msgSend_transformUsingAffineTransform_(v46, v92, &v277);
  }

  else
  {
    v36 = objc_msgSend_instantAlphaPath(v24, v25, v26);

    if (!v36)
    {
      v174 = MEMORY[0x277CBF2C0];
      v175 = *(MEMORY[0x277CBF2C0] + 16);
      v273 = *MEMORY[0x277CBF2C0];
      *&self->mLayoutToMaskTransform.a = *MEMORY[0x277CBF2C0];
      *&self->mLayoutToMaskTransform.c = v175;
      v268 = *(v174 + 32);
      v270 = v175;
      *&self->mLayoutToMaskTransform.tx = v268;
      self->mMaskIntersectsImage = 0;
      if (v20 && objc_msgSend_shouldRender(v20, v37, v38))
      {
        if (objc_msgSend_isFrame(v20, v176, v177))
        {
          objc_msgSend_size(v16, v178, v179);
          TSURectWithSize();
          v181 = v180;
          v183 = v182;
          v185 = v184;
          v187 = v186;
          objc_msgSend_coverageRect_(v20, v188, v189);
          v191 = v190;
          v193 = v192;
          v195 = v194;
          v197 = v196;
          v160 = objc_msgSend_mutableCopy(v16, v198, v199);
          objc_msgSend_setSize_(v160, v200, v201, v195, v197);
          if (v160)
          {
            objc_msgSend_transform(v160, v202, v203);
          }

          else
          {
            memset(&v277, 0, sizeof(v277));
          }

          CGAffineTransformTranslate(&v274, &v277, v191, v193);
          v277 = v274;
          objc_msgSend_setTransform_(v160, v258, &v277);
          v259 = -v191;
          v260 = -v193;
          CGAffineTransformMakeTranslation(&v277, v259, v260);
          v261 = *&v277.c;
          *&self->mLayoutToImageTransform.a = *&v277.a;
          *&self->mLayoutToImageTransform.c = v261;
          *&self->mLayoutToImageTransform.tx = *&v277.tx;
          v252 = v181;
          v253 = v183;
          v254 = v185;
          v255 = v187;
          v256 = v259;
          v257 = v260;
        }

        else
        {
          objc_msgSend_renderedWidth(v20, v178, v179);
          v246 = v245 * 0.5;
          v160 = objc_msgSend_geometryByOutsettingBy_(v16, v247, v248, v246, v246);
          CGAffineTransformMakeTranslation(&v277, v246, v246);
          v249 = *&v277.c;
          *&self->mLayoutToImageTransform.a = *&v277.a;
          *&self->mLayoutToImageTransform.c = v249;
          *&self->mLayoutToImageTransform.tx = *&v277.tx;
          objc_msgSend_size(v16, v250, v251);
          TSURectWithSize();
          v256 = v246;
          v257 = v246;
        }

        v281 = CGRectOffset(*&v252, v256, v257);
        objc_msgSend_setBoundsForStandardKnobs_(self, v262, v263, v281.origin.x, v281.origin.y, v281.size.width, v281.size.height);
      }

      else
      {
        v16 = v16;
        *&self->mLayoutToImageTransform.a = v273;
        *&self->mLayoutToImageTransform.c = v270;
        *&self->mLayoutToImageTransform.tx = v268;
        objc_msgSend_size(v16, v241, v242);
        TSURectWithSize();
        objc_msgSend_setBoundsForStandardKnobs_(self, v243, v244);
        v160 = v16;
      }

      goto LABEL_59;
    }

    v267 = v6;
    v39 = [TSDLayoutGeometry alloc];
    objc_msgSend_size(self->mImageGeometry, v40, v41);
    v42 = *(MEMORY[0x277CBF2C0] + 16);
    *&v277.a = *MEMORY[0x277CBF2C0];
    *&v277.c = v42;
    *&v277.tx = *(MEMORY[0x277CBF2C0] + 32);
    v30 = objc_msgSend_initWithSize_transform_(v39, v43, &v277);
    v46 = 0;
    v35 = v16;
  }

  v93 = MEMORY[0x277D81160];
  objc_msgSend_size(v35, v44, v45);
  TSURectWithSize();
  v96 = objc_msgSend_bezierPathWithRect_(v93, v94, v95);
  v99 = objc_msgSend_instantAlphaPath(v272, v97, v98);

  if (v99)
  {
    v102 = objc_msgSend_instantAlphaPath(v272, v100, v101);
    v105 = objc_msgSend_copy(v102, v103, v104);

    objc_msgSend_imageDataToVisualSizeTransform(self, v106, v107);
    objc_msgSend_transformUsingAffineTransform_(v105, v108, &v277);
    objc_msgSend_bounds(v105, v109, v110);
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;

    v96 = v105;
    if (v30)
    {
LABEL_21:
      objc_msgSend_transform(v30, v100, v101);
      goto LABEL_24;
    }
  }

  else
  {
    v112 = *MEMORY[0x277CBF3A0];
    v114 = *(MEMORY[0x277CBF3A0] + 8);
    v116 = *(MEMORY[0x277CBF3A0] + 16);
    v118 = *(MEMORY[0x277CBF3A0] + 24);
    if (v30)
    {
      goto LABEL_21;
    }
  }

  memset(&t1, 0, sizeof(t1));
LABEL_24:
  CGAffineTransformInvert(&v277, &t1);
  objc_msgSend_transformUsingAffineTransform_(v96, v119, &v277);
  if (v46)
  {
    v121 = objc_msgSend_intersectBezierPath_(v46, v120, v96);
  }

  else
  {
    v121 = v96;
  }

  v124 = v121;
  v271 = v14;
  v269 = v35;
  if (v121)
  {
    v125 = objc_msgSend_elementCount(v121, v122, v123);
    self->mMaskIntersectsImage = v125 > 1;
    if (v125 > 1)
    {
LABEL_32:
      v264 = v114;
      v126 = v112;
      isFrame = objc_msgSend_isFrame(v20, v122, v123, v264, v118);
      if (v46 && isFrame)
      {
        v128 = v116;
        v129 = v46;
      }

      else
      {
        v128 = v116;
        v129 = v124;
      }

      v131 = v129;
      v134 = objc_msgSend_CGPath(v131, v132, v133);
      v135 = CGPathRetain(v134);
      self->mPathToStroke = v135;
      v137 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v136, v135);
      objc_msgSend_boundsIncludingTSDStroke_(v137, v138, v20);
      v140 = v139;
      v142 = v141;
      v144 = v143;
      v146 = v145;

      objc_msgSend_size(v30, v147, v148);
      TSURectWithSize();
      width = v279.size.width;
      height = v279.size.height;
      v282.origin.x = v140;
      v282.origin.y = v142;
      v282.size.width = v144;
      v282.size.height = v146;
      v280 = CGRectUnion(v279, v282);
      x = v280.origin.x;
      y = v280.origin.y;
      v153 = v280.size.width;
      v154 = v280.size.height;
      v155 = [TSDMutableLayoutGeometry alloc];
      v160 = objc_msgSend_initWithFrame_(v155, v156, v157, x, y, v153, v154);
      if (v30)
      {
        objc_msgSend_transform(v30, v158, v159);
      }

      else
      {
        memset(&v277, 0, sizeof(v277));
      }

      objc_msgSend_transformBy_(v160, v158, &v277);
      if (v35)
      {
        objc_msgSend_transform(v35, v161, v162);
      }

      else
      {
        memset(&v277, 0, sizeof(v277));
      }

      objc_msgSend_transformBy_(v160, v161, &v277);
      v165 = -x;
      v166 = -y;
      if (v14)
      {
        v130 = v267;
        objc_msgSend_setBoundsForStandardKnobs_(self, v163, v164, v165, v166, width, height);
      }

      else
      {
        v130 = v267;
        v167 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v163, v164, v126, v265, v128, v266);
        objc_msgSend_boundsIncludingTSDStroke_(v167, v168, v20);
        TSUSubtractPoints();
        objc_msgSend_setBoundsForStandardKnobs_(self, v169, v170);
      }

      CGAffineTransformMakeTranslation(&v277, v165, v166);
      v173 = *&v277.c;
      *&self->mLayoutToMaskTransform.a = *&v277.a;
      *&self->mLayoutToMaskTransform.c = v173;
      *&self->mLayoutToMaskTransform.tx = *&v277.tx;
      goto LABEL_55;
    }
  }

  else
  {
    self->mMaskIntersectsImage = 0;
  }

  if (objc_msgSend_isFrame(v20, v122, v123))
  {
    goto LABEL_32;
  }

  v130 = v267;
  if (v35)
  {
    objc_msgSend_transform(v35, v122, v123);
  }

  else
  {
    memset(&v277, 0, sizeof(v277));
  }

  v160 = objc_msgSend_geometryByTransformingBy_(v30, v122, &v277);
  objc_msgSend_size(v30, v204, v205);
  TSURectWithSize();
  objc_msgSend_setBoundsForStandardKnobs_(self, v206, v207);
  v208 = MEMORY[0x277CBF2C0];
  v209 = *(MEMORY[0x277CBF2C0] + 16);
  *&self->mLayoutToMaskTransform.a = *MEMORY[0x277CBF2C0];
  *&self->mLayoutToMaskTransform.c = v209;
  *&self->mLayoutToMaskTransform.tx = *(v208 + 32);
LABEL_55:
  if (v30)
  {
    objc_msgSend_transform(v30, v171, v172);
  }

  else
  {
    memset(&v277, 0, sizeof(v277));
  }

  CGAffineTransformInvert(&t1, &v277);
  v210 = *&self->mLayoutToMaskTransform.c;
  *&t2.a = *&self->mLayoutToMaskTransform.a;
  *&t2.c = v210;
  *&t2.tx = *&self->mLayoutToMaskTransform.tx;
  CGAffineTransformConcat(&v277, &t1, &t2);
  v211 = *&v277.c;
  *&self->mLayoutToImageTransform.a = *&v277.a;
  *&self->mLayoutToImageTransform.c = v211;
  *&self->mLayoutToImageTransform.tx = *&v277.tx;

  v6 = v130;
  v14 = v271;
  v16 = v269;
  v27 = v272;
LABEL_59:
  if (objc_msgSend_isFrame(v20, v212, v213))
  {
    mPathToStroke = self->mPathToStroke;
    if (mPathToStroke)
    {
      v216 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v214, mPathToStroke);
      objc_msgSend_bounds(v216, v217, v218);
      v220 = v219;
      v222 = v221;
      v224 = v223;
      v226 = v225;
    }

    else
    {
      objc_msgSend_size(v16, v214, 0);
      TSURectWithSize();
      v220 = v229;
      v222 = v230;
      v224 = v231;
      v226 = v232;
    }

    objc_msgSend_coverageRectWithoutAdornment_(v20, v227, v228, v220, v222, v224, v226);
    shouldRenderForSizeIncludingCoverage = objc_msgSend_shouldRenderForSizeIncludingCoverage_(v20, v233, v234, v235, v236);
    objc_msgSend_setShouldRenderFrameStroke_(self, v238, shouldRenderForSizeIncludingCoverage);
  }

  v239 = v160;

  return v160;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_msgSend_imageInfo(self, a2, a4);
  v11 = objc_msgSend_maskInfo(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_imageInfo(self, v12, v13);
    v17 = objc_msgSend_maskInfo(v14, v15, v16);
    v20 = objc_msgSend_pathSource(v17, v18, v19);
    v23 = objc_msgSend_bezierPath(v20, v21, v22);
    v25 = objc_msgSend_pathSourceWithBezierPath_(TSDBezierPathSource, v24, v23);

    objc_msgSend_setNaturalSize_(v25, v26, v27, width, height);
  }

  else
  {
    v29 = [TSDBezierPathSource alloc];
    v25 = objc_msgSend_initWithNaturalSize_(v29, v30, v31, width, height);
  }

  v32 = *&a4->c;
  v36[0] = *&a4->a;
  v36[1] = v32;
  v36[2] = *&a4->tx;
  objc_msgSend_scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform_withStartingPathSource_(self, v28, v36, v25);
  v34 = v33;

  return v34;
}

- (id)childInfosForChildLayouts
{
  v13.receiver = self;
  v13.super_class = TSDImageLayout;
  v3 = [(TSDLayout *)&v13 childInfosForChildLayouts];
  v6 = objc_msgSend_imageInfo(self, v4, v5);
  v9 = objc_msgSend_maskInfo(v6, v7, v8);

  if (v9)
  {
    v11 = objc_msgSend_arrayByAddingObject_(v3, v10, v9);

    v3 = v11;
  }

  return v3;
}

- (void)updateChildrenFromInfo
{
  v45 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = TSDImageLayout;
  [(TSDLayout *)&v43 updateChildrenFromInfo];
  v5 = objc_msgSend_imageInfo(self, v3, v4);
  v8 = objc_msgSend_maskInfo(v5, v6, v7);

  mMaskLayout = self->mMaskLayout;
  if (v8)
  {
    if (mMaskLayout)
    {
      v12 = objc_msgSend_maskInfo(mMaskLayout, v9, v10);
      v15 = v12;
      if (v12 == v8)
      {
        v16 = objc_msgSend_parent(self->mMaskLayout, v13, v14);

        if (v16 == self)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v17 = self->mMaskLayout;
    self->mMaskLayout = 0;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = objc_msgSend_children(self, v18, v19);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v39, v44, 16);
    if (v22)
    {
      v25 = v22;
      v26 = *v40;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v20);
          }

          v28 = objc_msgSend_info(*(*(&v39 + 1) + 8 * i), v23, v24);

          if (v28 == v8)
          {
            objc_opt_class();
            v29 = TSUCheckedDynamicCast();
            v30 = self->mMaskLayout;
            self->mMaskLayout = v29;

            goto LABEL_17;
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v39, v44, 16);
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    if (!self->mMaskLayout)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSDImageLayout updateChildrenFromInfo]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 531, 0, "invalid nil value for '%{public}s'", "mMaskLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    }
  }

  else
  {
    self->mMaskLayout = 0;
  }

LABEL_19:
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = a3;
  if (self->mMaskLayout)
  {
    if (!self->mPathToStroke)
    {
      goto LABEL_16;
    }

LABEL_6:
    objc_opt_class();
    v12 = objc_msgSend_stroke(self, v10, v11);
    v13 = TSUDynamicCast();

    v15 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v14, self->mPathToStroke);
    memset(&v60, 0, sizeof(v60));
    objc_msgSend_layoutToMaskTransform(self, v16, v17);
    if (v3)
    {
      objc_msgSend_transformInRoot(self, v18, v19);
    }

    else
    {
      objc_msgSend_transform(self, v18, v19);
    }

    CGAffineTransformConcat(&v60, &t1, &t2);
    t1 = v60;
    objc_msgSend_transformUsingAffineTransform_(v15, v20, &t1);
    if (v13 && objc_msgSend_shouldRender(v13, v21, v22))
    {
      if (objc_msgSend_isFrame(v13, v21, v22) && objc_msgSend_shouldRenderFrameStroke(self, v23, v24))
      {
        v25 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v23, self->mPathToStroke);
        objc_msgSend_bounds(v25, v26, v27);
        objc_msgSend_coverageRect_(v13, v28, v29);
        t1 = v60;
        v62 = CGRectApplyAffineTransform(v61, &t1);
        x = v62.origin.x;
        y = v62.origin.y;
        width = v62.size.width;
        height = v62.size.height;

LABEL_25:
        goto LABEL_29;
      }

      objc_msgSend_takeAttributesFromStroke_(v15, v23, v13);
      objc_msgSend_boundsIncludingStroke(v15, v51, v52);
    }

    else
    {
      objc_msgSend_bounds(v15, v21, v22);
    }

    x = v34;
    y = v35;
    width = v36;
    height = v37;
    goto LABEL_25;
  }

  v5 = objc_msgSend_imageInfo(self, a2, a3);
  v8 = objc_msgSend_instantAlphaPath(v5, v6, v7);
  if (v8)
  {
    mPathToStroke = self->mPathToStroke;

    if (mPathToStroke)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_16:
  memset(&v60, 0, sizeof(v60));
  v38 = objc_msgSend_geometry(self, a2, a3);
  v41 = v38;
  if (v38)
  {
    objc_msgSend_fullTransform(v38, v39, v40);
  }

  else
  {
    memset(&v60, 0, sizeof(v60));
  }

  if (v3)
  {
    v44 = objc_msgSend_parent(self, v42, v43);

    if (v44)
    {
      v47 = objc_msgSend_parent(self, v45, v46);
      v50 = v47;
      if (v47)
      {
        objc_msgSend_transformInRoot(v47, v48, v49);
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v57 = v60;
      CGAffineTransformConcat(&t1, &v57, &t2);
      v60 = t1;
    }
  }

  t1 = v60;
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = 1.0;
  v63.size.height = 1.0;
  v64 = CGRectApplyAffineTransform(v63, &t1);
  x = v64.origin.x;
  y = v64.origin.y;
  width = v64.size.width;
  height = v64.size.height;
LABEL_29:
  v53 = x;
  v54 = y;
  v55 = width;
  v56 = height;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v8 = objc_msgSend_geometryByTranslatingBy_(self->mImageGeometry, a2, v3, a3.x, a3.y);
    mImageGeometry = self->mImageGeometry;
    self->mImageGeometry = v8;
  }

  v10.receiver = self;
  v10.super_class = TSDImageLayout;
  [(TSDAbstractLayout *)&v10 offsetGeometryBy:x, y];
}

- (double)descentForInlineLayout
{
  objc_msgSend_captionEdgeInsets(self, a2, v2);
  if (v6 != 0.0)
  {
    return 0.0;
  }

  v7 = objc_msgSend_imageInfo(self, v4, v5);
  objc_msgSend_descentForInlineLayout(v7, v8, v9);
  v11 = v10;

  return v11;
}

- (BOOL)hasAlpha
{
  mHasAlpha = self->mHasAlpha;
  if (!mHasAlpha)
  {
    self->mHasAlpha = 1;
    v5 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
    v8 = objc_msgSend_imageInfo(self, v6, v7);
    v11 = objc_msgSend_imageData(v8, v9, v10);
    v13 = objc_msgSend_providerForData_shouldValidate_(v5, v12, v11, 0);

    objc_opt_class();
    v14 = TSUDynamicCast();
    v17 = v14;
    if (v14 && objc_msgSend_isOpaque(v14, v15, v16))
    {
      self->mHasAlpha = 2;
    }

    mHasAlpha = self->mHasAlpha;
  }

  return mHasAlpha == 1;
}

- (BOOL)isInvisible
{
  v4 = objc_msgSend_pathToStroke(self, a2, v2);
  if (v4)
  {
    BoundingBox = CGPathGetBoundingBox(v4);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
  }

  else
  {
    v11 = objc_msgSend_imageGeometry(self, v5, v6);
    objc_msgSend_size(v11, v12, v13);
    TSURectWithSize();
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;

  return CGRectIsNull(*&v18);
}

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_27669435C;
  v10[3] = &unk_27A6CCA28;
  v10[4] = a3;
  v6 = *&a4->c;
  v9[0] = *&a4->a;
  v9[1] = v6;
  v9[2] = *&a4->tx;
  v7 = a3;
  objc_msgSend_p_calculateClampModelValuesWithAdditionalTransform_andPerformBlock_(self, v8, v9, v10);
}

- (void)p_calculateClampModelValuesWithAdditionalTransform:(CGAffineTransform *)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_imageGeometry(self, v7, v8);
  v10 = *&a3->c;
  v43 = *&a3->a;
  v44 = v10;
  v45 = *&a3->tx;
  v12 = objc_msgSend_geometryByTransformingBy_(v9, v11, &v43);

  if (v12)
  {
    objc_msgSend_fullTransform(v12, v13, v14);
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
  }

  v15 = objc_msgSend_geometryFromFullTransform_(TSDInfoGeometry, v13, &v43);
  v18 = objc_msgSend_maskLayout(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_maskLayout(self, v19, v20);
    v24 = objc_msgSend_pureGeometry(v21, v22, v23);

    v27 = objc_msgSend_maskLayout(self, v25, v26);
    v29 = objc_msgSend_computeInfoGeometryFromPureLayoutGeometry_(v27, v28, v24);

    v32 = objc_msgSend_maskLayout(self, v30, v31);
    v35 = objc_msgSend_pathSource(v32, v33, v34);
    v38 = objc_msgSend_copy(v35, v36, v37);

    objc_msgSend_size(v29, v39, v40);
    objc_msgSend_scaleToNaturalSize_(v38, v41, v42);
    v6[2](v6, v15, v29, v38);
  }

  else
  {
    v6[2](v6, v15, 0, 0);
  }
}

- (id)smartPathSource
{
  v3 = objc_msgSend_maskLayout(self, a2, v2);
  v6 = objc_msgSend_pathSource(v3, v4, v5);
  objc_opt_class();
  v7 = TSUClassAndProtocolCast();

  return v7;
}

- (CGRect)pathBoundsWithoutStroke
{
  v3 = objc_msgSend_smartPathSource(self, a2, v2);
  v6 = objc_msgSend_bezierPath(v3, v4, v5);
  objc_msgSend_bounds(v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (TSDImageInfo)imageInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (TSDLayoutGeometry)imageGeometryInRoot
{
  v4 = objc_msgSend_mutableCopy(self->mImageGeometry, a2, v2);
  v7 = objc_msgSend_parent(self, v5, v6);
  if (v7)
  {
    v10 = v7;
    do
    {
      v11 = objc_msgSend_geometry(v10, v8, v9, v19, v20, v21);
      v14 = v11;
      if (v11)
      {
        objc_msgSend_transform(v11, v12, v13);
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
      }

      objc_msgSend_transformBy_(v4, v12, &v19);

      v17 = objc_msgSend_parent(v10, v15, v16);

      v10 = v17;
    }

    while (v17);
  }

  return v4;
}

- (BOOL)hasMaskingPath
{
  v4 = objc_msgSend_maskLayout(self, a2, v2);
  if (v4)
  {
  }

  else
  {
    v8 = objc_msgSend_imageInfo(self, v5, v6);
    v11 = objc_msgSend_instantAlphaPath(v8, v9, v10);

    if (!v11)
    {
      return 0;
    }
  }

  if (!self->mPathToStroke)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDImageLayout hasMaskingPath]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1277, 0, "If image has masking path it must specify a path to stroke");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  return 1;
}

- (CGSize)sizeOfFrameRectIncludingCoverage
{
  mPathToStroke = self->mPathToStroke;
  if (mPathToStroke)
  {
    v4 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], a2, mPathToStroke);
    v7 = objc_msgSend_stroke(self, v5, v6);
    objc_msgSend_boundsIncludingTSDStroke_(v4, v8, v7);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v4 = objc_msgSend_geometry(self, a2, 0);
    objc_msgSend_size(v4, v13, v14);
    v10 = v15;
    v12 = v16;
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGAffineTransform)layoutToImageTransform
{
  v3 = *&self[9].c;
  *&retstr->a = *&self[9].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].tx;
  return self;
}

- (CGAffineTransform)layoutToMaskTransform
{
  v3 = *&self[10].c;
  *&retstr->a = *&self[10].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].tx;
  return self;
}

- (CGAffineTransform)imageDataToVisualSizeTransform
{
  v6 = objc_msgSend_imageGeometry(self, a3, v3);
  objc_msgSend_size(v6, v7, v8);
  v10 = v9;
  v12 = v11;

  v15 = objc_msgSend_imageInfo(self, v13, v14);
  objc_msgSend_naturalSize(v15, v16, v17);
  v19 = v18;
  v21 = v20;

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  if (v19 <= 0.0 || v21 <= 0.0 || (result = TSUSizeHasNaNComponents(), (result & 1) != 0) || (result = TSUSizeHasNaNComponents(), result))
  {
    v23 = MEMORY[0x277CBF2C0];
    v24 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v24;
    *&retstr->tx = *(v23 + 32);
  }

  else
  {

    return CGAffineTransformMakeScale(retstr, v10 / v19, v12 / v21);
  }

  return result;
}

- (id)imageAdjustments
{
  if (self->mIsUpdatingImageAdjustments)
  {
    v3 = self->mDynamicImageAdjustments;
  }

  else
  {
    v4 = objc_msgSend_imageInfo(self, a2, v2);
    v3 = objc_msgSend_imageAdjustments(v4, v5, v6);
  }

  return v3;
}

- (void)dynamicImageAdjustmentsChangeDidBegin
{
  self->mIsUpdatingImageAdjustments = 1;
  v11 = objc_msgSend_imageInfo(self, a2, v2);
  v6 = objc_msgSend_imageAdjustments(v11, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);
  mDynamicImageAdjustments = self->mDynamicImageAdjustments;
  self->mDynamicImageAdjustments = v9;
}

- (void)dynamicImageAdjustmentsUpdateToValue:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  mDynamicImageAdjustments = self->mDynamicImageAdjustments;
  self->mDynamicImageAdjustments = v4;
}

- (void)dynamicImageAdjustmentsChangeDidEnd
{
  self->mIsUpdatingImageAdjustments = 0;
  mDynamicImageAdjustments = self->mDynamicImageAdjustments;
  self->mDynamicImageAdjustments = 0;
}

- (CGRect)boundsInfluencingExteriorWrap
{
  objc_msgSend_alignmentFrame(self, a2, v2);
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v14 = objc_msgSend_parent(self, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_parent(self, v15, v16);
    objc_msgSend_rectInRoot_(v17, v18, v19, x, y, width, height);
    x = v20;
    y = v21;
    width = v22;
    height = v23;
  }

  v24 = objc_msgSend_info(self, v15, v16);
  v27 = objc_msgSend_exteriorTextWrap(v24, v25, v26);

  if (v27)
  {
    objc_msgSend_margin(v27, v28, v29);
    if (v30 > 0.0)
    {
      v31 = -v30;
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v37 = CGRectInset(v36, v31, v31);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
    }
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (id)i_computeWrapPath
{
  v4 = objc_msgSend_imageInfo(self, a2, v2);
  objc_opt_class();
  v7 = objc_msgSend_stroke(self, v5, v6);
  v8 = TSUDynamicCast();

  if (v8 && objc_msgSend_shouldRender(v8, v9, v10))
  {
    isFrame = objc_msgSend_isFrame(v8, v9, v10);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    isFrame = 0;
  }

  v13 = objc_msgSend_instantAlphaPath(v4, v9, v10);

  v16 = objc_msgSend_maskLayout(self, v14, v15);

  v19 = objc_msgSend_maskLayout(self, v17, v18);
  v22 = objc_msgSend_computeLayoutGeometry(v19, v20, v21);

  memset(&v126, 0, sizeof(v126));
  if (!v16)
  {
    v25 = *(MEMORY[0x277CBF2C0] + 16);
    *&v126.a = *MEMORY[0x277CBF2C0];
    *&v126.c = v25;
    *&v126.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_9:
    v26 = 0;
    if (isFrame)
    {
      goto LABEL_28;
    }

LABEL_10:
    if (v12 && objc_msgSend_hasAlpha(self, v23, v24))
    {
      v27 = MEMORY[0x277D81160];
      objc_msgSend_naturalSize(v4, v23, v24);
      TSURectWithSize();
      v30 = objc_msgSend_bezierPathWithRect_(v27, v28, v29);
      objc_msgSend_bounds(v30, v31, v32);
    }

    else
    {
      v37 = objc_msgSend_tracedPath(v4, v23, v24);
      v30 = objc_msgSend_copy(v37, v38, v39);

      objc_msgSend_bounds(v30, v40, v41);
    }

    if (CGRectIsEmpty(*&v33))
    {
      v44 = MEMORY[0x277D81160];
      v45 = objc_msgSend_geometry(self, v42, v43);
      objc_msgSend_size(v45, v46, v47);
      TSURectWithSize();
      v50 = objc_msgSend_bezierPathWithRect_(v44, v48, v49);

LABEL_24:
      goto LABEL_32;
    }

    v51 = objc_msgSend_imageGeometry(self, v42, v43);
    objc_msgSend_size(v51, v52, v53);
    v55 = v54;
    v57 = v56;

    objc_msgSend_naturalSize(v4, v58, v59);
    memset(&v125, 0, sizeof(v125));
    CGAffineTransformMakeScale(&v125, v55 / v60, v57 / v61);
    v124 = v125;
    objc_msgSend_transformUsingAffineTransform_(v30, v62, &v124);
    if (v16)
    {
      v65 = objc_msgSend_maskLayout(self, v63, v64);
      v124 = v126;
      objc_msgSend_transformUsingAffineTransform_(v30, v66, &v124);
      v67 = MEMORY[0x277D81160];
      v70 = objc_msgSend_path(v65, v68, v69);
      v72 = objc_msgSend_bezierPathWithCGPath_(v67, v71, v70);
      objc_msgSend_pathBounds(v65, v73, v74);
      CGAffineTransformMakeTranslation(&v124, -v75, -v76);
      objc_msgSend_transformUsingAffineTransform_(v72, v77, &v124);
      v50 = objc_msgSend_intersectBezierPath_(v30, v78, v72);

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v50 = v30;
      if (!v13)
      {
LABEL_19:
        if (v12)
        {
          objc_msgSend_takeAttributesFromStroke_(v50, v79, v8);
          v83 = objc_msgSend_strokedCopyAttemptingUsingLivarotFirst(v50, v81, v82);
          v85 = objc_msgSend_uniteWithBezierPath_(v50, v84, v83);
          v88 = v85;
          if (v85 && objc_msgSend_elementCount(v85, v86, v87) >= 1)
          {
            v89 = v88;

            v50 = v89;
          }
        }

        goto LABEL_24;
      }
    }

    v80 = objc_msgSend_intersectBezierPath_(v50, v79, v26);

    v50 = v80;
    goto LABEL_19;
  }

  if (v22)
  {
    objc_msgSend_transform(v22, v23, v24);
  }

  else
  {
    memset(&v125, 0, sizeof(v125));
  }

  CGAffineTransformInvert(&v126, &v125);
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_27:
  v92 = objc_msgSend_instantAlphaPath(v4, v23, v24);
  v26 = objc_msgSend_copy(v92, v93, v94);

  objc_msgSend_imageDataToVisualSizeTransform(self, v95, v96);
  objc_msgSend_transformUsingAffineTransform_(v26, v97, &v125);
  v125 = v126;
  objc_msgSend_transformUsingAffineTransform_(v26, v98, &v125);
  if (!isFrame)
  {
    goto LABEL_10;
  }

LABEL_28:
  v99 = objc_msgSend_geometry(self, v23, v24);
  objc_msgSend_size(v99, v100, v101);
  TSURectWithSize();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;

  if (v13 && !v16)
  {
    objc_msgSend_boundsForPath_(v8, v110, v26);
    v103 = v112;
    v105 = v113;
    v107 = v114;
    v109 = v115;
  }

  v50 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v110, v111, v103, v105, v107, v109);
LABEL_32:
  if (objc_msgSend_elementCount(v50, v90, v91) >= 2)
  {
    objc_msgSend_bounds(v50, v116, v117);
    v119 = fmin(v118, 0.0);
    v121 = fmin(v120, 0.0);
    if ((TSUNearlyEqualPoints() & 1) == 0)
    {
      CGAffineTransformMakeTranslation(&v125, -v119, -v121);
      objc_msgSend_transformUsingAffineTransform_(v50, v122, &v125);
    }
  }

  return v50;
}

- (void)p_createDynamicCopies
{
  if (self->mDynamicInfoGeometry)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageLayout p_createDynamicCopies]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1482, 0, "expected nil value for '%{public}s'", "mDynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = objc_msgSend_imageGeometry(self, a2, v2);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_fullTransform(v11, v12, v13);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v15 = objc_msgSend_geometryFromFullTransform_(TSDInfoGeometry, v12, v17);
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  self->mDynamicInfoGeometry = v15;
}

- (void)p_setDynamicInfoGeometry:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  self->mDynamicInfoGeometry = v4;

  objc_msgSend_invalidateFrame(self, v6, v7);

  objc_msgSend_invalidateAlignmentFrame(self, v8, v9);
}

- (void)p_destroyDynamicCopies
{
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  if (!mDynamicInfoGeometry)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageLayout p_destroyDynamicCopies]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1495, 0, "invalid nil value for '%{public}s'", "mDynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  }

  self->mDynamicInfoGeometry = 0;

  objc_msgSend_invalidateFrame(self, v11, v12);

  objc_msgSend_invalidateAlignmentFrame(self, v13, v14);
}

@end