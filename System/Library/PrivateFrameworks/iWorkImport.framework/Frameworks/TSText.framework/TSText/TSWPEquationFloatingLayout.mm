@interface TSWPEquationFloatingLayout
- (TSDInfoGeometry)currentInfoGeometry;
- (id)computeLayoutGeometry;
- (id)layoutGeometryFromInfo;
@end

@implementation TSWPEquationFloatingLayout

- (TSDInfoGeometry)currentInfoGeometry
{
  dynamicInfoGeometry = self->_dynamicInfoGeometry;
  if (dynamicInfoGeometry)
  {
    v4 = dynamicInfoGeometry;
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
  v4 = objc_alloc(MEMORY[0x277D80300]);
  v6 = objc_msgSend_initWithInfoGeometry_(v4, v5, v3);

  return v6;
}

- (id)computeLayoutGeometry
{
  v118.receiver = self;
  v118.super_class = TSWPEquationFloatingLayout;
  computeLayoutGeometry = [(TSWPEquationFloatingLayout *)&v118 computeLayoutGeometry];
  v6 = objc_msgSend_equationInfo(self, v4, v5);
  v9 = objc_msgSend_textProperties(v6, v7, v8);

  v12 = objc_msgSend_equationLayoutContext(self, v10, v11);
  v13 = [TSWPEquationLayoutContext alloc];
  objc_msgSend_size(computeLayoutGeometry, v14, v15);
  v17 = objc_msgSend_initWithTextProperties_targetSize_(v13, v16, v9);
  objc_msgSend_size(computeLayoutGeometry, v18, v19);
  v21 = v20;
  v23 = v22;
  v27 = objc_msgSend_equationLayout(self, v24, v25);
  if (v27 && v12 && (objc_msgSend_isEqual_(v17, v26, v12) & 1) != 0)
  {
    v29 = v27;
  }

  else
  {
    objc_msgSend_setEquationLayoutContext_(self, v26, v17);
    v32 = objc_msgSend_equationInfo(self, v30, v31);
    v35 = objc_msgSend_equation(v32, v33, v34);
    v29 = objc_msgSend_newLayout(v35, v36, v37);

    objc_msgSend_setEquationLayout_(self, v38, v29);
    objc_msgSend_layoutWithContext_(v29, v39, v17);
    objc_msgSend_width(v29, v40, v41);
    if (v44 <= 0.0 || (objc_msgSend_vsize(v29, v42, v43), v46 <= 0.0) || (objc_msgSend_erasableBounds(v29, v42, v45), CGRectGetWidth(v120) <= 0.0))
    {
      objc_msgSend_setEquationIsValid_(self, v42, 0);
    }

    else
    {
      objc_msgSend_erasableBounds(v29, v42, v47);
      v49 = CGRectGetHeight(v121) > 0.0;
      objc_msgSend_setEquationIsValid_(self, v48, v49);
    }
  }

  if (objc_msgSend_equationIsValid(self, v26, v28))
  {
    objc_msgSend_erasableBounds(v29, v50, v51);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    objc_msgSend_height(v29, v60, v61);
    v63 = v62 + v55;
    TSURectWithSize();
    v107 = v65;
    v108 = v64;
    v67 = v66;
    v69 = v68;
    v72 = objc_alloc(MEMORY[0x277D80300]);
    if (computeLayoutGeometry)
    {
      objc_msgSend_transform(computeLayoutGeometry, v70, v71);
    }

    else
    {
      memset(&v117, 0, sizeof(v117));
    }

    v76 = objc_msgSend_initWithSize_transform_(v72, v70, &v117, v57, v59);
    objc_msgSend_setEquationGeometry_(self, v77, v76);

    objc_msgSend_adornmentBoundsWithEquationSize_(self, v78, v79, v57, v59);
    v81 = v80;
    v83 = v82;
    v112 = v84;
    v110 = v85;
    v86 = -v80;
    v87 = -v82;
    CGAffineTransformMakeTranslation(&v116, -v80, -v82);
    v117 = v116;
    objc_msgSend_setLayoutToStrokeTransform_(self, v88, &v117);
    CGAffineTransformMakeTranslation(&v115, v86 - v53, v87 - v63);
    v117 = v115;
    objc_msgSend_setLayoutToEquationTransform_(self, v89, &v117);
    v122.origin.y = v107;
    v122.origin.x = v108;
    v122.size.width = v67;
    v122.size.height = v69;
    v123 = CGRectOffset(v122, v86, v87);
    objc_msgSend_setBoundsForStandardKnobs_(self, v90, v91, v123.origin.x, v123.origin.y, v123.size.width, v123.size.height);
    memset(&v117, 0, sizeof(v117));
    if (computeLayoutGeometry)
    {
      objc_msgSend_transform(computeLayoutGeometry, v92, v93);
    }

    else
    {
      memset(&v114, 0, sizeof(v114));
    }

    CGAffineTransformTranslate(&v117, &v114, v81, v83);
    v103 = objc_alloc(MEMORY[0x277D80300]);
    v114 = v117;
    v102 = objc_msgSend_initWithSize_transform_(v103, v104, &v114, v112, v110);
  }

  else
  {
    v75 = objc_alloc(MEMORY[0x277D80300]);
    if (computeLayoutGeometry)
    {
      objc_msgSend_transform(computeLayoutGeometry, v73, v74);
    }

    else
    {
      memset(&v117, 0, sizeof(v117));
    }

    v94 = objc_msgSend_initWithSize_transform_(v75, v73, &v117, v21, v23);
    objc_msgSend_setEquationGeometry_(self, v95, v94);

    v111 = *(MEMORY[0x277CBF2C0] + 16);
    *&v117.a = *MEMORY[0x277CBF2C0];
    v113 = *&v117.a;
    *&v117.c = v111;
    *&v117.tx = *(MEMORY[0x277CBF2C0] + 32);
    v109 = *&v117.tx;
    objc_msgSend_setLayoutToStrokeTransform_(self, v96, &v117);
    *&v117.a = v113;
    *&v117.c = v111;
    *&v117.tx = v109;
    objc_msgSend_setLayoutToEquationTransform_(self, v97, &v117);
    TSURectWithSize();
    objc_msgSend_setBoundsForStandardKnobs_(self, v98, v99);
    v102 = objc_msgSend_equationGeometry(self, v100, v101);
  }

  v105 = v102;

  return v105;
}

@end