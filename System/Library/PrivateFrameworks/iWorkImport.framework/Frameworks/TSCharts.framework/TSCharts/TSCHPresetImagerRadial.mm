@interface TSCHPresetImagerRadial
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerRadial

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v69 = *MEMORY[0x277D85DE8];
  v66 = objc_msgSend_seriesStyles(preset, a2, size.width, size.height, scale);
  v17 = objc_msgSend_count(v66, v12, v13, v14, v15);
  v18 = 0;
  v67[0] = xmmword_2764D6F50;
  v67[1] = xmmword_2764D6F60;
  v67[2] = xmmword_2764D6F70;
  memset(v68, 0, sizeof(v68));
  v19 = 0.0;
  do
  {
    v19 = v19 + *&v67[v18] + *(&v67[v18] + 1);
    ++v18;
  }

  while (v18 != 3);
  objc_msgSend_p_squareRectFromSize_inset_(self, v16, width, height, 5.0);
  x = v71.origin.x;
  y = v71.origin.y;
  v22 = v71.size.width;
  v23 = v71.size.height;
  v24 = v71.size.width * 0.5;
  MidX = CGRectGetMidX(v71);
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = v22;
  v72.size.height = v23;
  MidY = CGRectGetMidY(v72);
  hasAllResourcesForFill = 1;
  v28 = 5;
  v29 = 1.57079633;
  do
  {
    v30 = v29;
    CGContextSaveGState(context);
    v35 = objc_msgSend_objectAtIndexedSubscript_(v66, v31, v32, v33, v34, v28 % v17);
    v40 = objc_msgSend_strokeFromStyle_(self, v36, v37, v38, v39, v35);
    v46 = objc_msgSend_fillFromStyle_(self, v41, v42, v43, v44, v35);
    if (hasAllResourcesForFill)
    {
      hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v45, v47, v48, v49, v46);
    }

    else
    {
      hasAllResourcesForFill = 0;
    }

    if (v19 == 0.0)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = *(v67 + v28) / v19 * 6.28318531;
    }

    v29 = v29 + v50;
    v51 = *(v68 + v28);
    v52 = __sincos_stret(v30 + v50 * 0.5);
    sub_27628CE0C(context, MidX + v51 * v52.__cosval, MidY + v51 * v52.__sinval);
    started = objc_msgSend_newMutablePathWithRadius_center_startAngle_endAngle_(self, v53, v24, v54, v55, v30, v29);
    if (v46)
    {
      objc_msgSend_p_fillPath_withFill_inContext_(self, v56, v58, v59, v60, started, v46, context);
    }

    if (v40 && objc_msgSend_shouldRender(v40, v56, v58, v59, v60))
    {
      objc_msgSend_applyToContext_insideStroke_(v40, v61, v62, v63, v64, context, 1);
      CGContextAddPathSafe();
      CGContextClip(context);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
    }

    CGPathRelease(started);
    CGContextRestoreGState(context);

    --v28;
  }

  while (v28 != -1);
  if (cache)
  {
    *cache = hasAllResourcesForFill;
  }
}

@end