@interface TSCH3DSwitchSideAxisLabelPositioner
- (tvec3<float>)positionForValue:(double)a3 count:(unint64_t)a4 chartDirection:(void *)a5;
- (unsigned)alignmentForChartDirection:(void *)a3;
@end

@implementation TSCH3DSwitchSideAxisLabelPositioner

- (unsigned)alignmentForChartDirection:(void *)a3
{
  v32.receiver = self;
  v32.super_class = TSCH3DSwitchSideAxisLabelPositioner;
  v5 = [(TSCH3DGenericAxisLabelPositioner *)&v32 alignmentForChartDirection:?];
  LODWORD(v11) = *(a3 + objc_msgSend_p_otherAxis(self, v6, v7, v8, v9));
  if (*&v11 > 0.0)
  {
    HIDWORD(v15) = v5 - 4;
    LODWORD(v15) = v5 - 4;
    v14 = v15 >> 2;
    if (v14 < 8 && ((0x8Bu >> v14) & 1) != 0)
    {
      return dword_2764D6780[v14];
    }

    else
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DSwitchSideAxisLabelPositioner alignmentForChartDirection:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisLabelPositioner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 117, 0, "invalid label position %lu", v5);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }
  }

  return v5;
}

- (tvec3<float>)positionForValue:(double)a3 count:(unint64_t)a4 chartDirection:(void *)a5
{
  v8 = v5;
  v18.receiver = self;
  v18.super_class = TSCH3DSwitchSideAxisLabelPositioner;
  [(TSCH3DGenericAxisLabelPositioner *)&v18 positionForValue:a4 count:a3 chartDirection:?];
  v13 = objc_msgSend_p_otherAxis(self, v9, v10, v11, v12);
  LODWORD(v17) = *(a5 + v13);
  if (*&v17 > 0.0)
  {
    v13 = objc_msgSend_p_otherAxis(self, v14, v17, v15, v16);
    *(v8 + 4 * v13) = 1065353216;
  }

  result.var2 = v14;
  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  return result;
}

@end