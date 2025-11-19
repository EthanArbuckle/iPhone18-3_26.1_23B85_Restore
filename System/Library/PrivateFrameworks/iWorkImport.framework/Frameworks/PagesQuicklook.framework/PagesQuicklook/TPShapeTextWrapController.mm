@interface TPShapeTextWrapController
- (id)beginWrappingToColumn:(id)a3 columnTransformFromWP:(CGAffineTransform *)a4 target:(id)a5 hasWrappables:(BOOL *)a6;
@end

@implementation TPShapeTextWrapController

- (id)beginWrappingToColumn:(id)a3 columnTransformFromWP:(CGAffineTransform *)a4 target:(id)a5 hasWrappables:(BOOL *)a6
{
  v119 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [TPTextWrapCookie alloc];
  v16 = objc_msgSend_initWithColumn_targetLayout_(v10, v11, v12, v13, v14, v15, v8, v9);
  objc_opt_class();
  v22 = objc_msgSend_parent(v9, v17, v18, v19, v20, v21);
  v23 = TSUDynamicCast();

  if (v23)
  {
    v29 = objc_msgSend_pathSource(v23, v24, v25, v26, v27, v28);
    isRectangular = objc_msgSend_isRectangular(v29, v30, v31, v32, v33, v34);

    if ((isRectangular & 1) == 0)
    {
      v36 = objc_msgSend_interiorWrapSegments(v23, v24, v25, v26, v27, v28);
      objc_msgSend_setInteriorWrapSegments_(v16, v37, v38, v39, v40, v41, v36);
    }
  }

  v112 = v8;
  objc_msgSend_frameBounds(v8, v24, v25, v26, v27, v28);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  objc_opt_class();
  v55 = objc_msgSend_pageLayout(v9, v50, v51, v52, v53, v54);
  v56 = TSUDynamicCast();

  v62 = objc_msgSend_layoutsCausingWrapOnTextLayoutTarget_ignoreIntersection_(v56, v57, v58, v59, v60, v61, v9, 1);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, 0, v64, v65, v66, &v114, v118, 16);
  if (v67)
  {
    v73 = v67;
    v74 = *v115;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v115 != v74)
        {
          objc_enumerationMutation(v62);
        }

        v76 = *(*(&v114 + 1) + 8 * i);
        objc_msgSend_boundsInfluencingExteriorWrap(v76, v68, v69, v70, v71, v72);
        v82 = v78.n128_f64[0];
        v83 = v79.n128_f64[0];
        v84 = v80.n128_f64[0];
        v85 = v81.n128_f64[0];
        if (v16)
        {
          objc_msgSend_targetInverseTransformInRoot(v16, v77, v78, v79, v80, v81);
        }

        else
        {
          memset(&v113, 0, sizeof(v113));
        }

        v121.origin.x = v82;
        v121.origin.y = v83;
        v121.size.width = v84;
        v121.size.height = v85;
        v122 = CGRectApplyAffineTransform(v121, &v113);
        v123.origin.x = v43;
        v123.origin.y = v45;
        v123.size.width = v47;
        v123.size.height = v49;
        if (CGRectIntersectsRect(v122, v123))
        {
          objc_msgSend_addFloatingWrappable_(v16, v68, v69, v70, v71, v72, v76);
        }
      }

      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v68, v69, v70, v71, v72, &v114, v118, 16);
    }

    while (v73);
  }

  v86 = *&a4->c;
  *&v113.a = *&a4->a;
  *&v113.c = v86;
  *&v113.tx = *&a4->tx;
  objc_msgSend_setUpCanvasToWrapSpaceAffineTransformation_(self, v68, *&v113.tx, v86, v71, v72, &v113);
  v92 = objc_msgSend_pathSource(v23, v87, v88, v89, v90, v91);
  if (objc_msgSend_isRectangular(v92, v93, v94, v95, v96, v97))
  {
    v103 = objc_msgSend_floatingWrappables(v16, v98, v99, v100, v101, v102);
    *a6 = objc_msgSend_count(v103, v104, v105, v106, v107, v108) != 0;
  }

  else
  {
    *a6 = 1;
  }

  return v16;
}

@end