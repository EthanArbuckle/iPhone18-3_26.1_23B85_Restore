@interface TSTStrokeOrderedLayer
- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)index;
- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)range;
- (TSTStrokeOrderedLayer)initWithContext:(id)context majorStrokeLayer:(id)layer minorStrokeLayer:(id)strokeLayer;
- (id)findStrokeAndRangeAtIndex:(int64_t)index;
- (id)nextStrokeAndRange:(id)range;
- (id)p_findStrokeAndRangeAtIndex:(int64_t)index highOrderToken:(id)token updatingLowOrderToken:(id *)orderToken lowOrderLayer:(id)layer;
- (int64_t)startingIndex;
- (void)appendStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order;
- (void)enumerateRawStrokesSegmentsUsingBlock:(id)block;
- (void)enumerateStrokesUsingBlock:(id)block;
- (void)insertStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order;
- (void)invalidate;
- (void)invalidateRange:(TSTSimpleRange)range;
@end

@implementation TSTStrokeOrderedLayer

- (TSTStrokeOrderedLayer)initWithContext:(id)context majorStrokeLayer:(id)layer minorStrokeLayer:(id)strokeLayer
{
  contextCopy = context;
  layerCopy = layer;
  strokeLayerCopy = strokeLayer;
  v15 = strokeLayerCopy;
  if (layerCopy)
  {
    if (strokeLayerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStrokeOrderedLayer initWithContext:majorStrokeLayer:minorStrokeLayer:]", v13, v14);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 93, 0, "invalid nil value for '%{public}s'", "majorStrokeLayer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v31 = MEMORY[0x277D81150];
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStrokeOrderedLayer initWithContext:majorStrokeLayer:minorStrokeLayer:]", v13, v14);
  v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v34, v35);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 94, 0, "invalid nil value for '%{public}s'", "minorStrokeLayer");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
LABEL_3:
  v16 = objc_msgSend_columnOrRowIndex(layerCopy, v11, v12, v13, v14);
  v42.receiver = self;
  v42.super_class = TSTStrokeOrderedLayer;
  v17 = [(TSTStrokeLayer *)&v42 initWithContext:contextCopy columnOrRowIndex:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_majorStrokeLayer, layer);
    objc_storeStrong(&v18->_minorStrokeLayer, strokeLayer);
  }

  return v18;
}

- (int64_t)startingIndex
{
  v6 = objc_msgSend_majorStrokeLayer(self, a2, v2, v3, v4);
  v11 = objc_msgSend_startingIndex(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_minorStrokeLayer(self, v12, v13, v14, v15);
  v21 = objc_msgSend_startingIndex(v16, v17, v18, v19, v20);

  if (v11 >= v21)
  {
    return v21;
  }

  else
  {
    return v11;
  }
}

- (id)p_findStrokeAndRangeAtIndex:(int64_t)index highOrderToken:(id)token updatingLowOrderToken:(id *)orderToken lowOrderLayer:(id)layer
{
  tokenCopy = token;
  layerCopy = layer;
  if (orderToken)
  {
    v11 = *orderToken;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (objc_msgSend_range(tokenCopy, v13, v14, v15, v16) <= index || (v21 = objc_msgSend_range(tokenCopy, v17, v18, v19, v20), v21 <= objc_msgSend_range(v12, v22, v23, v24, v25)))
  {
    v50 = objc_msgSend_range(v12, v17, v18, v19, v20);
    if (v50 <= index)
    {
      v55 = 0;
      indexCopy = 0x7FFFFFFFFFFFFFFFLL;
      if (index != 0x7FFFFFFFFFFFFFFFLL)
      {
        v87 = &v51[v50];
        if (&v51[v50] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v55 = (v87 - index);
          if (v87 <= index)
          {
            if (index <= v87)
            {
              indexCopy = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              indexCopy = &v51[v50];
            }

            if (index <= v87)
            {
              v55 = 0;
            }

            else
            {
              v55 = (index - v87);
            }
          }

          else
          {
            indexCopy = index;
          }
        }
      }
    }

    else
    {
      v55 = v51;
      indexCopy = v50;
    }

    if (v12)
    {
      while (1)
      {
        v57 = objc_msgSend_range(tokenCopy, v51, v52, v53, v54);
        if (v57 > indexCopy)
        {
          break;
        }

        if (&v58[v57 - 1] < &v55[indexCopy - 1])
        {
          break;
        }

        v62 = objc_msgSend_order(tokenCopy, v58, v59, v60, v61);
        if (v62 < objc_msgSend_order(v12, v63, v64, v65, v66))
        {
          break;
        }

        v67 = objc_msgSend_nextStrokeAndRange_(layerCopy, v58, v12, v60, v61);

        indexCopy = objc_msgSend_range(v67, v68, v69, v70, v71);
        v55 = v51;
        v12 = v67;
        if (!v67)
        {
          goto LABEL_18;
        }
      }

      v76 = objc_msgSend_range(tokenCopy, v58, v59, v60, v61);
      v77 = v88;
      v92 = objc_msgSend_range(tokenCopy, v88, v89, v90, v91);
      v94 = v93;
      v98 = objc_msgSend_range(v12, v93, v95, v96, v97);
      if (v98 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v94)
        {
          if (v92 <= v98 && &v94[v92 - 1] >= v98)
          {
            v99 = objc_msgSend_order(tokenCopy, v72, v73, v74, v75);
            if (v99 < objc_msgSend_order(v12, v100, v101, v102, v103))
            {
              v104 = objc_msgSend_range(v12, v72, v73, v74, v75);
              v77 = v104 - objc_msgSend_range(tokenCopy, v105, v106, v107, v108);
            }
          }
        }
      }
    }

    else
    {
LABEL_18:
      v76 = objc_msgSend_range(tokenCopy, v51, v52, v53, v54);
      v77 = v72;
      v12 = 0;
    }

    v37 = objc_msgSend_stroke(tokenCopy, v72, v73, v74, v75);
    v82 = objc_msgSend_order(tokenCopy, v78, v79, v80, v81);
  }

  else
  {
    v26 = objc_msgSend_range(v12, v17, v18, v19, v20);
    v28 = v27;
    v32 = objc_msgSend_range(tokenCopy, v27, v29, v30, v31);
    if (v32 == 0x7FFFFFFFFFFFFFFFLL || !v28 || v26 > v32 || &v28[v26 - 1] < v32)
    {
      v37 = objc_msgSend_stroke(v12, v33, v34, v35, v36);
      v42 = objc_msgSend_range(v12, v38, v39, v40, v41);
      v44 = v43;
      v48 = objc_msgSend_order(v12, v43, v45, v46, v47);
      objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v49, v37, v42, v44, v48, 0, 0);
      goto LABEL_21;
    }

    v76 = objc_msgSend_range(v12, v33, v34, v35, v36);
    v113 = objc_msgSend_range(tokenCopy, v109, v110, v111, v112);
    v77 = v113 - objc_msgSend_range(v12, v114, v115, v116, v117);
    v37 = objc_msgSend_stroke(v12, v118, v119, v120, v121);
    v82 = objc_msgSend_order(v12, v122, v123, v124, v125);
  }

  objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v83, v37, v76, v77, v82, 0, 0);
  v84 = LABEL_21:;

  if (orderToken)
  {
    v85 = v12;
    *orderToken = v12;
  }

  return v84;
}

- (id)findStrokeAndRangeAtIndex:(int64_t)index
{
  v7 = objc_msgSend_majorStrokeLayer(self, a2, index, v3, v4);
  v11 = objc_msgSend_findStrokeAndRangeAtIndex_(v7, v8, index, v9, v10);

  v16 = objc_msgSend_minorStrokeLayer(self, v12, v13, v14, v15);
  v20 = objc_msgSend_findStrokeAndRangeAtIndex_(v16, v17, index, v18, v19);

  if (v11 && v20)
  {
    v25 = objc_msgSend_order(v11, v21, v22, v23, v24);
    if (v25 >= objc_msgSend_order(v20, v26, v27, v28, v29))
    {
      v76 = v20;
      v34 = objc_msgSend_minorStrokeLayer(self, v30, v31, v32, v33);
      v36 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v52, index, v11, &v76, v34);
      v37 = v76;
      v38 = v20;
      v20 = v76;
    }

    else
    {
      v75 = v11;
      v34 = objc_msgSend_majorStrokeLayer(self, v30, v31, v32, v33);
      v36 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v35, index, v20, &v75, v34);
      v37 = v75;
      v38 = v11;
      v11 = v75;
    }

    v53 = v37;

    objc_msgSend_setMajorStrokeLayerToken_(v36, v54, v11, v55, v56);
    objc_msgSend_setMinorStrokeLayerToken_(v36, v57, v20, v58, v59);
  }

  else if (v11)
  {
    v39 = objc_msgSend_stroke(v11, v21, v22, v23, v24);
    v44 = objc_msgSend_range(v11, v40, v41, v42, v43);
    v46 = v45;
    v50 = objc_msgSend_order(v11, v45, v47, v48, v49);
    v36 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v51, v39, v44, v46, v50, v11, 0);
  }

  else if (v20)
  {
    v62 = objc_msgSend_stroke(v20, v21, v22, v23, v24);
    v67 = objc_msgSend_range(v20, v63, v64, v65, v66);
    v69 = v68;
    v73 = objc_msgSend_order(v20, v68, v70, v71, v72);
    v36 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v74, v62, v67, v69, v73, 0, v20);

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v36 = 0;
  }

  v60 = v36;

  return v36;
}

- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)index
{
  v33 = objc_msgSend_findStrokeAndRangeAtIndex_(self, index, a4, v4, v5);
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v12 = v7;
  *&retstr->var0 = xmmword_2217E1B70;
  *&retstr->var1.length = xmmword_2217E1B80;
  if (v7)
  {
    v13 = objc_msgSend_stroke(v7, v8, v9, v10, v11);
    objc_msgSend_width(v13, v14, v15, v16, v17);
    retstr->var0 = v18;

    retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
    retstr->var1.origin = objc_msgSend_range(v12, v19, v20, v21, v22);
    retstr->var1.length = v23;
    v27 = objc_msgSend_stroke(v12, v23, v24, v25, v26);
    retstr->var2 = objc_msgSend_isPortalStroke(v27, v28, v29, v30, v31);
  }

  else
  {
    retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)nextStrokeAndRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  v10 = objc_msgSend_majorStrokeLayerToken(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_minorStrokeLayerToken(v5, v11, v12, v13, v14);
  v20 = objc_msgSend_range(v5, v16, v17, v18, v19);
  if (&v21[v20] >= v20)
  {
    v25 = &v21[v20];
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v34 = 0;
    v33 = 0;
    v35 = 0;
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_13:
    v36 = objc_msgSend_range(v15, v21, v22, v23, v24);
    v37 = &v21[v36];
    if (&v21[v36] < v36)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v25 >= v37)
    {
      v38 = objc_msgSend_minorStrokeLayer(self, v21, v22, v23, v24);
      v33 = objc_msgSend_nextStrokeAndRange_(v38, v39, v15, v40, v41);

      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v33 = v15;
      if (!v10)
      {
LABEL_22:
        if (!v10)
        {
          if (v33)
          {
            v77 = objc_msgSend_stroke(v33, v21, v22, v23, v24);
            v82 = objc_msgSend_range(v33, v78, v79, v80, v81);
            v84 = v83;
            v88 = objc_msgSend_order(v33, v83, v85, v86, v87);
            v34 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v89, v77, v82, v84, v88, 0, v33);
          }

          else
          {
            v34 = 0;
          }

          v35 = 0;
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    if (v33)
    {
      v42 = objc_msgSend_order(v10, v21, v22, v23, v24);
      if (v42 >= objc_msgSend_order(v33, v43, v44, v45, v46))
      {
        v91 = v33;
        v51 = objc_msgSend_minorStrokeLayer(self, v47, v48, v49, v50);
        v34 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v68, v25, v10, &v91, v51);
        v53 = v91;
        v54 = v33;
        v33 = v91;
      }

      else
      {
        v90 = v10;
        v51 = objc_msgSend_majorStrokeLayer(self, v47, v48, v49, v50);
        v34 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v52, v25, v33, &v90, v51);
        v53 = v90;
        v54 = v10;
        v10 = v90;
      }

      v69 = v53;

      objc_msgSend_setMajorStrokeLayerToken_(v34, v70, v10, v71, v72);
      objc_msgSend_setMinorStrokeLayerToken_(v34, v73, v33, v74, v75);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v26 = objc_msgSend_range(v10, v21, v22, v23, v24);
  v27 = &v21[v26];
  if (&v21[v26] < v26)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v25 >= v27)
  {
    v28 = objc_msgSend_majorStrokeLayer(self, v21, v22, v23, v24);
    v32 = objc_msgSend_nextStrokeAndRange_(v28, v29, v10, v30, v31);

    v10 = v32;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (v10)
  {
LABEL_23:
    v55 = objc_msgSend_stroke(v10, v21, v22, v23, v24);
    v60 = objc_msgSend_range(v10, v56, v57, v58, v59);
    v62 = v61;
    v66 = objc_msgSend_order(v10, v61, v63, v64, v65);
    v34 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v67, v55, v60, v62, v66, v10, 0);

LABEL_26:
    v35 = v10;
  }

LABEL_27:

  return v34;
}

- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)range
{
  origin = a4->var1.origin;
  v7 = a4->var1.length + origin;
  if (v7 >= origin)
  {
    return objc_msgSend_findWidthAndRangeAtIndex_(self, range, v7, v4, v5);
  }

  else
  {
    return objc_msgSend_findWidthAndRangeAtIndex_(self, range, 0x7FFFFFFFFFFFFFFFLL, v4, v5);
  }
}

- (void)enumerateStrokesUsingBlock:(id)block
{
  blockCopy = block;
  v34 = 0;
  v9 = objc_msgSend_startingIndex(self, v5, v6, v7, v8);
  v17 = objc_msgSend_findStrokeAndRangeAtIndex_(self, v10, v9, v11, v12);
  while (1)
  {
    v18 = objc_msgSend_stroke(v17, v13, v14, v15, v16);
    v23 = objc_msgSend_range(v17, v19, v20, v21, v22);
    v25 = v24;
    v29 = objc_msgSend_order(v17, v24, v26, v27, v28);
    blockCopy[2](blockCopy, v18, v23, v25, v29, &v34);

    if (v34)
    {
      break;
    }

    v33 = objc_msgSend_nextStrokeAndRange_(self, v30, v17, v31, v32);

    v17 = v33;
    if (v34 == 1)
    {
      goto LABEL_6;
    }
  }

  v33 = v17;
LABEL_6:
}

- (void)appendStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order
{
  strokeCopy = stroke;
  v6 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTStrokeOrderedLayer appendStroke:inRange:order:]", v8, v9);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v12, v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 270, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = *MEMORY[0x277CBE658];
  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s: %s", v23, v24, "Do not call method", "[TSTStrokeOrderedLayer appendStroke:inRange:order:]");
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v26, v21, v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

- (void)insertStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order
{
  strokeCopy = stroke;
  v6 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTStrokeOrderedLayer insertStroke:inRange:order:]", v8, v9);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v12, v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v10, v14, 274, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = *MEMORY[0x277CBE658];
  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s: %s", v23, v24, "Do not call method", "[TSTStrokeOrderedLayer insertStroke:inRange:order:]");
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v26, v21, v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

- (void)invalidate
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeOrderedLayer invalidate]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 278, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s: %s", v18, v19, "Do not call method", "[TSTStrokeOrderedLayer invalidate]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, v16, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)invalidateRange:(TSTSimpleRange)range
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeOrderedLayer invalidateRange:]", range.length, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 282, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s: %s", v18, v19, "Do not call method", "[TSTStrokeOrderedLayer invalidateRange:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, v16, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)enumerateRawStrokesSegmentsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_startingIndex(self, v4, v5, v6, v7);
  v13 = objc_msgSend_majorStrokeLayer(self, v9, v10, v11, v12);
  v17 = objc_msgSend_findStrokeAndRangeAtIndex_(v13, v14, v8, v15, v16);

  v22 = objc_msgSend_minorStrokeLayer(self, v18, v19, v20, v21);
  v26 = objc_msgSend_findStrokeAndRangeAtIndex_(v22, v23, v8, v24, v25);

  v99 = 0;
  v31 = v17 != 0;
  v32 = v26 != 0;
  if (v17 | v26)
  {
    while (1)
    {
      v33 = objc_msgSend_range(v17, v27, v28, v29, v30);
      if (v8 == 0x7FFFFFFFFFFFFFFFLL || !v34 || v33 > v8 || &v34[v33 - 1] < v8)
      {
        break;
      }

      v39 = v8;
      if (!v31)
      {
LABEL_24:
        v46 = 0;
        v47 = 0;
        v8 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v32)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }

LABEL_17:
      v41 = objc_msgSend_range(v17, v34, v35, v36, v37);
      if (v39 != 0x7FFFFFFFFFFFFFFFLL && v42 && v41 <= v39 && &v42[v41 - 1] >= v39)
      {
        v56 = objc_msgSend_range(v17, v42, v43, v44, v45);
        v8 = &v57[v56];
        v47 = objc_msgSend_stroke(v17, v57, v58, v59, v60);
        v46 = objc_msgSend_order(v17, v61, v62, v63, v64);
        if (!v32)
        {
LABEL_33:
          v54 = 0;
          v55 = 0;
          goto LABEL_34;
        }
      }

      else
      {
        v8 = objc_msgSend_range(v17, v42, v43, v44, v45);
        v46 = 0;
        v47 = 0;
        if (!v32)
        {
          goto LABEL_33;
        }
      }

LABEL_25:
      v48 = objc_msgSend_range(v26, v34, v35, v36, v37);
      if (v39 != 0x7FFFFFFFFFFFFFFFLL && v49 && v48 <= v39 && &v49[v48 - 1] >= v39)
      {
        v89 = objc_msgSend_range(v26, v49, v50, v51, v52);
        if (v8 >= &v90[v89])
        {
          v8 = &v90[v89];
        }

        v55 = objc_msgSend_stroke(v26, v90, v91, v92, v93);
        v54 = objc_msgSend_order(v26, v94, v95, v96, v97);
      }

      else
      {
        v53 = objc_msgSend_range(v26, v49, v50, v51, v52);
        v54 = 0;
        v55 = 0;
        if (v8 >= v53)
        {
          v8 = v53;
        }
      }

LABEL_34:
      v65 = v39 - v8;
      if (v39 <= v8)
      {
        v66 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v8;
      }

      if (v39 <= v8)
      {
        v65 = 0;
      }

      if (v39 < v8)
      {
        v66 = v39;
        v65 = v8 - v39;
      }

      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v66 = 0x7FFFFFFFFFFFFFFFLL;
        v65 = 0;
      }

      if (v39 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v67 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = v66;
      }

      if (v39 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = 0;
      }

      else
      {
        v68 = v65;
      }

      blockCopy[2](blockCopy, v67, v68, v47, v46, v55, v54, &v99);
      if (v31)
      {
        v73 = objc_msgSend_range(v17, v69, v70, v71, v72);
        if (v8 >= &v69[v73])
        {
          v74 = objc_msgSend_majorStrokeLayer(self, v69, v70, v71, v72);
          v78 = objc_msgSend_nextStrokeAndRange_(v74, v75, v17, v76, v77);

          v17 = v78;
        }

        if (v32)
        {
LABEL_53:
          v79 = objc_msgSend_range(v26, v69, v70, v71, v72);
          if (v8 >= &v80[v79])
          {
            v84 = objc_msgSend_minorStrokeLayer(self, v80, v81, v82, v83);
            v88 = objc_msgSend_nextStrokeAndRange_(v84, v85, v26, v86, v87);

            v26 = v88;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0;
        if (v32)
        {
          goto LABEL_53;
        }
      }

      v26 = 0;
LABEL_57:

      v31 = v17 != 0;
      v32 = v26 != 0;
      if (!(v17 | v26))
      {
        goto LABEL_62;
      }
    }

    v38 = objc_msgSend_range(v26, v34, v35, v36, v37);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || !v34 || v38 > v8 || (v39 = v8, &v34[v38 - 1] < v8))
    {
      if (v31)
      {
        v39 = objc_msgSend_range(v17, v34, v35, v36, v37);
        if (!v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v32)
        {
          goto LABEL_16;
        }
      }

      v40 = objc_msgSend_range(v26, v34, v35, v36, v37);
      if (v39 >= v40)
      {
        v39 = v40;
      }
    }

LABEL_16:
    if (!v31)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_62:
}

@end