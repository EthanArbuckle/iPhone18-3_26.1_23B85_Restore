@interface TSCH3DChartPieResizer
+ (float)perspectiveness;
+ (tvec2<float>)adjustLabelWrapSize:(void *)a3;
- (tvec2<BOOL>)canImprove;
- (tvec2<float>)squareSize:(const void *)a3;
- (tvec2<float>)updateDirectionsFromRequestedSize:(void *)a3 startingSize:(void *)a4;
- (tvec2<float>)updateResizerFromRequestedSize:(void *)a3 startingSize:(void *)a4;
- (tvec3<float>)adjust:(void *)a3 by:(float)a4;
- (void)setScale:(void *)a3;
@end

@implementation TSCH3DChartPieResizer

+ (tvec2<float>)adjustLabelWrapSize:(void *)a3
{
  v4 = *a3;
  if (*a3 >= *(a3 + 1))
  {
    v4 = *(a3 + 1);
  }

  *v3 = v4;
  v3[1] = v4;
  return a1;
}

+ (float)perspectiveness
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSCH3DChartPieResizer;
  objc_msgSendSuper2(&v4, sel_perspectiveness);
  return v2 + 0.3;
}

- (tvec2<BOOL>)canImprove
{
  v4 = v2;
  v8.receiver = self;
  v8.super_class = TSCH3DChartPieResizer;
  v5 = [(TSCH3DChartResizer *)&v8 canImprove];
  v6 = v9 == 1 && self->_directions.var0.var0;
  v7 = v10 == 1 && self->_directions.var1.var0;
  *v4 = v6;
  v4[1] = v7;
  return v5;
}

- (void)setScale:(void *)a3
{
  v3 = *a3;
  if (*a3 <= *(a3 + 1))
  {
    v3 = *(a3 + 1);
  }

  v5[0] = v3;
  v5[1] = v3;
  v5[2] = *(a3 + 2);
  v4.receiver = self;
  v4.super_class = TSCH3DChartPieResizer;
  [(TSCH3DChartResizer *)&v4 setScale:v5];
}

- (tvec3<float>)adjust:(void *)a3 by:(float)a4
{
  v5 = *(a3 + 2) * a4;
  *v4 = vmul_n_f32(*a3, a4);
  v4[1].f32[0] = v5;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec2<float>)squareSize:(const void *)a3
{
  v4 = 4;
  if (self->_directions.var0.var0)
  {
    v4 = 0;
  }

  v5 = *(a3 + v4);
  *v3 = v5;
  v3[1] = v5;
  return self;
}

- (tvec2<float>)updateDirectionsFromRequestedSize:(void *)a3 startingSize:(void *)a4
{
  v11 = v4;
  if (a4)
  {
    v12 = a4;
    LODWORD(v5) = *(a4 + 1);
  }

  else
  {
    layout = self->super._layout;
    if (layout)
    {
      v12 = __p;
      objc_msgSend_resizingSize(layout, a2, v5, v6, v7);
      LODWORD(v5) = HIDWORD(__p[0]);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v5 = 0.0;
      v12 = __p;
      v77 = 0;
    }
  }

  v14 = *v12 + 0.5;
  LODWORD(v7) = *a3;
  v15 = *(a3 + 1);
  *&v6 = v14 - *a3;
  *&v5 = (*&v5 + 0.5) - v15;
  v16 = *&v6 != 0;
  if (v16 && *&v5 != 0)
  {
    v16 = *a3 < v15;
  }

  self->_directions.var0.var0 = v16;
  self->_directions.var1.var0 = !v16;
  v17 = objc_msgSend_squareSize_(self, a2, v5, v6, v7, a3);
  if (byte_280A46430 == 1)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    v20 = MEMORY[0x277CCACA8];
    v73 = *a3;
    sub_276152FD4("vec2(%f, %f)", v21, v22, v23, v24, v25, v26, v27, SLOBYTE(v73));
    if (v77 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v20, v28, v29, v30, v31, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v20, v28, v29, v30, v31, __p[0]);
    }
    v39 = ;
    if (SHIBYTE(v77) < 0)
    {
      operator delete(__p[0]);
    }

    v40 = MEMORY[0x277CCACA8];
    v74 = v14;
    sub_276152FD4("vec2(%f, %f)", v32, v33, v34, v35, v36, v37, v38, SLOBYTE(v74));
    if (v77 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v40, v41, v42, v43, v44, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v40, v41, v42, v43, v44, __p[0]);
    }
    v52 = ;
    if (SHIBYTE(v77) < 0)
    {
      operator delete(__p[0]);
    }

    v53 = MEMORY[0x277CCACA8];
    if (self->_directions.var0.var0)
    {
      v54 = "true";
    }

    else
    {
      v54 = "false";
    }

    sub_276152FD4("bvec2(%s, %s)", v45, v46, v47, v48, v49, v50, v51, v54);
    if (v77 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v53, v55, v56, v57, v58, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v53, v55, v56, v57, v58, __p[0]);
    }
    v66 = ;
    if (SHIBYTE(v77) < 0)
    {
      operator delete(__p[0]);
    }

    v67 = MEMORY[0x277CCACA8];
    v75 = *v11;
    sub_276152FD4("vec2(%f, %f)", v59, v60, v61, v62, v63, v64, v65, SLOBYTE(v75));
    if (v77 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v67, v68, v69, v70, v71, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v67, v68, v69, v70, v71, __p[0]);
    }
    v72 = ;
    if (SHIBYTE(v77) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PRequestCurren.isa, v18, self, v19, v39, v52, v66, v72);
  }

  return v17;
}

- (tvec2<float>)updateResizerFromRequestedSize:(void *)a3 startingSize:(void *)a4
{
  v11.receiver = self;
  v11.super_class = TSCH3DChartPieResizer;
  [(TSCH3DChartResizer *)&v11 updateResizerFromRequestedSize:a3 startingSize:?];
  return objc_msgSend_updateDirectionsFromRequestedSize_startingSize_(self, v6, v7, v8, v9, v12, a4);
}

@end