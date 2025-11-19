@interface TSCHAreaElementBuilder
- (BOOL)p_addBottomStroke:(id *)a3 toPath:(CGPath *)a4 seriesIndex:(unint64_t)a5 withPointsArray:(id *)a6 withCount:(unint64_t)a7;
- (void)p_addTopStroke:(id *)a3 toPath:(CGPath *)a4 withPointsArray:(id *)a5 withCount:(unint64_t)a6 lineType:(int)a7;
@end

@implementation TSCHAreaElementBuilder

- (void)p_addTopStroke:(id *)a3 toPath:(CGPath *)a4 withPointsArray:(id *)a5 withCount:(unint64_t)a6 lineType:(int)a7
{
  v7 = *&a7;
  v19 = *MEMORY[0x277D85DE8];
  *v13 = *MEMORY[0x277CBF348];
  *&v13[16] = 0;
  v14 = 0;
  *&v15[7] = 0x7FFFFFFFFFFFFFFFLL;
  *v16 = *v13;
  *&v16[16] = 0;
  v17 = 0;
  *&v18[7] = 0x7FFFFFFFFFFFFFFFLL;
  if (a6 == 1)
  {
    *&v16[8] = *&a5->var0.y;
    *v18 = *(&a5->var2 + 1);
    v11 = *v18;
    *&v18[7] = a5->var3;
    *&v13[8] = *&v16[8];
    *v15 = v11;
    *&v15[7] = *&v18[7];
    *v13 = CGRectGetMinX(a3->var2);
    v14 = 1;
    *v16 = CGRectGetMaxX(a3->var2);
    v17 = 1;
    if (v7 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    a5 = v13;
    a6 = 2;
  }

  v12.receiver = self;
  v12.super_class = TSCHAreaElementBuilder;
  [(TSCHScatterElementBuilder *)&v12 p_addTopStroke:a3 toPath:a4 withPointsArray:a5 withCount:a6 lineType:v7];
}

- (BOOL)p_addBottomStroke:(id *)a3 toPath:(CGPath *)a4 seriesIndex:(unint64_t)a5 withPointsArray:(id *)a6 withCount:(unint64_t)a7
{
  if (!a3)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v7, v8, v9, "[TSCHAreaElementBuilder p_addBottomStroke:toPath:seriesIndex:withPointsArray:withCount:]", a4, a5);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 2635, 0, "invalid nil value for '%{public}s'", "state");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  var0 = a3->var0;
  v29 = objc_msgSend_axisIDForAxisType_(a3->var1, a2, v7, v8, v9, 1, a4, a5);
  v34 = objc_msgSend_axisForID_(var0, v30, v31, v32, v33, v29);

  if (!v34)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCHAreaElementBuilder p_addBottomStroke:toPath:seriesIndex:withPointsArray:withCount:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 2640, 0, "invalid nil value for '%{public}s'", "xAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  objc_opt_class();
  v54 = a3->var0;
  v59 = objc_msgSend_axisIDForAxisType_(a3->var1, v55, v56, v57, v58, 2);
  v64 = objc_msgSend_axisForID_(v54, v60, v61, v62, v63, v59);
  v65 = TSUDynamicCast();

  if (!v65)
  {
    v70 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "[TSCHAreaElementBuilder p_addBottomStroke:toPath:seriesIndex:withPointsArray:withCount:]");
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 2642, 0, "invalid nil value for '%{public}s'", "yAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
  }

  objc_msgSend_interceptForAxis_(v65, v66, v67, v68, v69, v34);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v65, v85, v86, v87, v88);
  if (a7 == 1)
  {
    CGRectGetMinX(a3->var2);
    CGRectGetMaxX(a3->var2);
  }

  if (!CGPathIsEmpty(a4))
  {
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
  }

  return 1;
}

@end