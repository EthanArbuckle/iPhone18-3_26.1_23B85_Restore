@interface TSCEDecimalMatrix
+ (id)identityMatrixOfSize:(unsigned int)a3;
- (TSCEDecimalMatrix)init;
- (TSCEDecimalMatrix)initWithDimensions:(const TSCEGridDimensions *)a3;
- (TSUDecimal)cofactorAtCoord:(TSCEGridCoord)a3;
- (TSUDecimal)determinantWithError:(id *)a3;
- (TSUDecimal)productOfDiagonal;
- (TSUDecimal)simpleRecursiveDeterminant;
- (TSUDecimal)valueAt1DIndex:(unint64_t)a3;
- (TSUDecimal)valueAtCoord:(const TSCEGridCoord *)a3;
- (id).cxx_construct;
- (id)adjointMatrix;
- (id)cofactorMatrix;
- (id)copyWithZone:(_NSZone *)a3;
- (id)inverseWithError:(id *)a3;
- (id)multiplyBy:(id)a3 outError:(id *)a4;
- (id)pivotMatrixOutDet:(TSUDecimal *)a3;
- (id)transpose;
- (unint64_t)classifyMatrix;
- (vector<TSCEDecimalMatrix)pluDecompositionWithPivotDet:(TSCEDecimalMatrix *)self;
- (void)enumerateValuesUsingBlock:(id)a3;
- (void)multiplyByScalar:(const TSUDecimal *)a3;
- (void)setValue:(const TSUDecimal *)a3 atCoord:(const TSCEGridCoord *)a4;
- (void)swapColumnAtIndex:(unsigned int)a3 withColumnAtIndex:(unsigned int)a4;
- (void)swapRowAtIndex:(unsigned int)a3 withRowAtIndex:(unsigned int)a4;
- (void)swapValueAtCoord:(const TSCEGridCoord *)a3 withCoord:(const TSCEGridCoord *)a4;
@end

@implementation TSCEDecimalMatrix

- (TSCEDecimalMatrix)init
{
  v3.receiver = self;
  v3.super_class = TSCEDecimalMatrix;
  result = [(TSCEDecimalMatrix *)&v3 init];
  if (result)
  {
    result->_dimensions = 0;
  }

  return result;
}

- (TSCEDecimalMatrix)initWithDimensions:(const TSCEGridDimensions *)a3
{
  v7.receiver = self;
  v7.super_class = TSCEDecimalMatrix;
  v4 = [(TSCEDecimalMatrix *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_dimensions = *a3;
    sub_2215A4C10(&v4->_values.__begin_, a3->height * a3->width);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEDecimalMatrix alloc];
  v8 = objc_msgSend_initWithDimensions_(v4, v5, &self->_dimensions, v6, v7);
  v9 = v8;
  if (v8 != self)
  {
    sub_2210BD068(&v8->_values.__begin_, self->_values.__begin_, self->_values.__end_, self->_values.__end_ - self->_values.__begin_);
  }

  return v9;
}

+ (id)identityMatrixOfSize:(unsigned int)a3
{
  v4 = [TSCEDecimalMatrix alloc];
  v14[0] = a3;
  v14[1] = a3;
  v8 = objc_msgSend_initWithDimensions_(v4, v5, v14, v6, v7);
  TSUDecimal::operator=();
  if (a3)
  {
    v11 = 0;
    do
    {
      v13[0] = v11;
      v13[1] = v11;
      objc_msgSend_setValue_atCoord_(v8, v9, v14, v13, v10);
      ++v11;
    }

    while (a3 != v11);
  }

  return v8;
}

- (TSUDecimal)valueAtCoord:(const TSCEGridCoord *)a3
{
  TSUDecimal::operator=();
  if (a3->row < self->_dimensions.height && a3->column < self->_dimensions.width)
  {
    v8 = TSCEGridDimensions::oneDIndexForCoord(&self->_dimensions, a3);
    begin = self->_values.__begin_;
    if (v8 >= self->_values.__end_ - begin)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEDecimalMatrix valueAtCoord:]", v6, v7);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDecimalMatrix.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 89, 0, "Vector index exceeds current size: %lu", v8);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
      begin = self->_values.__begin_;
    }

    v23 = begin[v8];
  }

  v22 = v23._decimal.w[1];
  v21 = v23._decimal.w[0];
  result._decimal.w[1] = v22;
  result._decimal.w[0] = v21;
  return result;
}

- (TSUDecimal)valueAt1DIndex:(unint64_t)a3
{
  begin = self->_values.__begin_;
  if (a3 >= self->_values.__end_ - begin)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDecimalMatrix valueAt1DIndex:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDecimalMatrix.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 99, 0, "Vector index exceeds current size: %lu", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    begin = self->_values.__begin_;
  }

  v19 = &begin[a3];
  v20 = v19->_decimal.w[0];
  v21 = v19->_decimal.w[1];
  result._decimal.w[1] = v21;
  result._decimal.w[0] = v20;
  return result;
}

- (void)setValue:(const TSUDecimal *)a3 atCoord:(const TSCEGridCoord *)a4
{
  if (a4->row >= self->_dimensions.height || a4->column >= self->_dimensions.width)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDecimalMatrix setValue:atCoord:]", a4, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDecimalMatrix.mm", v13, v14);
    v20 = sub_2211786FC(a4, v16, v17, v18, v19);
    v25 = TSCEGridDimensions::description(&self->_dimensions, v21, v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v26, v11, v15, 112, 0, "ERROR: Can't set at %@, outside matrix dimensions: %@", v20, v25);

    v31 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v31, v27, v28, v29, v30);
  }

  else
  {
    v8 = TSCEGridDimensions::oneDIndexForCoord(&self->_dimensions, a4);
    begin = self->_values.__begin_;
    if (v8 < self->_values.__end_ - begin)
    {
      begin[v8] = *a3;
    }
  }
}

- (void)enumerateValuesUsingBlock:(id)a3
{
  v4 = a3;
  v16 = 0;
  if (objc_msgSend_area(self, v5, v6, v7, v8))
  {
    v15 = 0;
    do
    {
      v14[0] = objc_msgSend_valueAtCoord_(self, v9, &v15, v10, v11);
      v14[1] = v12;
      v4[2](v4, &v15, v14, &v16);
      v13 = TSCEGridDimensions::nextCoordRowMajorOrder(&self->_dimensions, &v15);
      v15 = v13;
    }

    while ((v16 & 1) == 0 && v13 != 0x7FFFFFFFLL && (v13 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  }
}

- (void)swapValueAtCoord:(const TSCEGridCoord *)a3 withCoord:(const TSCEGridCoord *)a4
{
  if (*a3 != *a4)
  {
    v16[0] = objc_msgSend_valueAtCoord_(self, a2, a4, a4, v4);
    v16[1] = v8;
    v15[0] = objc_msgSend_valueAtCoord_(self, v8, a3, v9, v10);
    v15[1] = v11;
    objc_msgSend_setValue_atCoord_(self, v11, v15, a4, v12);
    objc_msgSend_setValue_atCoord_(self, v13, v16, a3, v14);
  }
}

- (void)swapRowAtIndex:(unsigned int)a3 withRowAtIndex:(unsigned int)a4
{
  if (a3 != a4)
  {
    v12 = v5;
    v13 = v6;
    v8 = 0;
    v11[1] = a3;
    v10[1] = a4;
    v9 = self->_dimensions.width - 1;
    do
    {
      v11[0] = v8;
      v10[0] = v8;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v11, v10, v4);
      ++v8;
    }

    while (v8 <= v9);
  }
}

- (void)swapColumnAtIndex:(unsigned int)a3 withColumnAtIndex:(unsigned int)a4
{
  if (a3 != a4)
  {
    v12 = v5;
    v13 = v6;
    v8 = 0;
    v11[0] = a3;
    v10[0] = a4;
    v9 = self->_dimensions.height - 1;
    do
    {
      v11[1] = v8;
      v10[1] = v8;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v11, v10, v4);
      ++v8;
    }

    while (v8 <= v9);
  }
}

- (unint64_t)classifyMatrix
{
  p_dimensions = &self->_dimensions;
  width = self->_dimensions.width;
  v8 = 8;
  if (objc_msgSend_isSquareMatrix(self, a2, v2, v3, v4) && width)
  {
    TSUIndexSet::TSUIndexSet(&v23);
    TSUIndexSet::TSUIndexSet(&v22);
    v12 = 0;
    v13 = 0;
    v21 = 0;
    do
    {
      v20._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v9, &v21, v10, v11);
      v20._decimal.w[1] = v14;
      if ((TSUDecimal::isZero(&v20) & 1) == 0)
      {
        TSUIndexSet::addIndex(&v23);
        TSUIndexSet::addIndex(&v22);
        v15 = (v21.column < v21.row) | v12;
        if (v21.column <= v21.row)
        {
          v16 = v13;
        }

        else
        {
          v16 = 1;
        }

        if (v21.column > v21.row)
        {
          v15 = v12;
        }

        if (v21.row != v21.column)
        {
          v13 = v16;
          v12 = v15;
        }
      }

      v17 = TSCEGridDimensions::nextCoordRowMajorOrder(p_dimensions, &v21);
      v21 = v17;
    }

    while (v17 != 0x7FFFFFFF && (v17 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
    if (v12)
    {
      v8 = (v13 & 1) == 0;
    }

    else
    {
      v8 = ((v13 & 1) == 0) | 2;
    }

    v18 = TSUIndexSet::count(&v23);
    if (v18 != width || TSUIndexSet::count(&v22) != v18)
    {
      v8 |= 4uLL;
    }

    TSUIndexSet::~TSUIndexSet(&v22);
    TSUIndexSet::~TSUIndexSet(&v23);
  }

  return v8;
}

- (id)transpose
{
  p_dimensions = &self->_dimensions;
  v19 = vrev64_s32(self->_dimensions);
  v4 = [TSCEDecimalMatrix alloc];
  v11 = objc_msgSend_initWithDimensions_(v4, v5, &v19, v6, v7);
  v18 = 0;
  do
  {
    v17[0] = objc_msgSend_valueAtCoord_(self, v8, &v18, v9, v10);
    v17[1] = v12;
    v16 = vrev64_s32(v18);
    objc_msgSend_setValue_atCoord_(v11, v12, v17, &v16, v13);
    v14 = TSCEGridDimensions::nextCoordRowMajorOrder(p_dimensions, &v18);
    v18 = v14;
  }

  while (v14 != 0x7FFFFFFF && (v14 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);

  return v11;
}

- (id)multiplyBy:(id)a3 outError:(id *)a4
{
  v6 = a3;
  dimensions = self->_dimensions;
  v12 = objc_msgSend_dimensions(v6, v8, v9, v10, v11);
  v17 = v12;
  if (dimensions.height * dimensions.width)
  {
    v18 = HIDWORD(v12) * v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = objc_msgSend_emptyArrayError(TSCEError, v13, v14, v15, v16);
LABEL_19:
    v24 = 0;
    *a4 = v19;
    goto LABEL_20;
  }

  if (dimensions.width != HIDWORD(v12))
  {
    v19 = objc_msgSend_wrongSizeForMatrixMultiplyError(TSCEError, v13, v14, v15, v16);
    goto LABEL_19;
  }

  v41[0] = v12;
  v41[1] = dimensions.height;
  v20 = [TSCEDecimalMatrix alloc];
  v24 = objc_msgSend_initWithDimensions_(v20, v21, v41, v22, v23);
  TSUDecimal::operator=();
  if (HIDWORD(*&dimensions))
  {
    v25 = 0;
    do
    {
      if (v17)
      {
        for (i = 0; i != v17; ++i)
        {
          TSUDecimal::operator=();
          if (dimensions.width)
          {
            v30 = 0;
            do
            {
              v37._decimal.w[0] = __PAIR64__(v25, v30);
              v38._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v27, &v37, v28, v29);
              v38._decimal.w[1] = v31;
              v36[0] = i;
              v36[1] = v30;
              v37._decimal.w[0] = objc_msgSend_valueAtCoord_(v6, v31, v36, v32, v33);
              v37._decimal.w[1] = v34;
              TSUDecimal::multiply(&v38, &v37, &v40);
              TSUDecimal::operator+=();
              ++v30;
            }

            while (dimensions.width != v30);
          }

          v38._decimal.w[0] = __PAIR64__(v25, i);
          objc_msgSend_setValue_atCoord_(v24, v27, v39, &v38, v29);
        }
      }

      ++v25;
    }

    while (v25 != dimensions.height);
  }

LABEL_20:

  return v24;
}

- (void)multiplyByScalar:(const TSUDecimal *)a3
{
  v13 = 0;
  do
  {
    v12._decimal.w[0] = objc_msgSend_valueAtCoord_(self, a2, &v13, v3, v4);
    v12._decimal.w[1] = v7;
    TSUDecimal::operator=();
    TSUDecimal::multiply(&v12, a3, &v11);
    objc_msgSend_setValue_atCoord_(self, v8, &v11, &v13, v9);
    v10 = TSCEGridDimensions::nextCoordRowMajorOrder(&self->_dimensions, &v13);
    v13 = v10;
  }

  while (v10 != 0x7FFFFFFF && (v10 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
}

- (id)pivotMatrixOutDet:(TSUDecimal *)a3
{
  v6 = objc_msgSend_identityMatrixOfSize_(TSCEDecimalMatrix, a2, self->_dimensions.width, v3, v4);
  TSUDecimal::operator=();
  width = self->_dimensions.width;
  if (width)
  {
    v8 = 0;
    height = self->_dimensions.height;
    do
    {
      TSUDecimal::operator=();
      v13 = 0x7FFFFFFFLL;
      if (v8 < height)
      {
        v14 = v8;
        do
        {
          v17[0] = v8;
          v17[1] = v14;
          v18._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v10, v17, v11, v12);
          v18._decimal.w[1] = v15;
          TSUDecimal::abs(&v18);
          if (v13 == 0x7FFFFFFF || (TSUDecimal::operator<=() & 1) == 0)
          {
            v19 = v18;
            v13 = v14;
          }

          v14 = (v14 + 1);
        }

        while (height != v14);
      }

      if (v8 != v13)
      {
        objc_msgSend_swapRowAtIndex_withRowAtIndex_(v6, v10, v8, v13, v12);
        TSUDecimal::operator=();
        TSUDecimal::operator*=();
      }

      v8 = (v8 + 1);
    }

    while (v8 != width);
  }

  return v6;
}

- (TSUDecimal)productOfDiagonal
{
  TSUDecimal::operator=();
  width = self->_dimensions.width;
  if (width)
  {
    for (i = 0; i != width; ++i)
    {
      v11[0] = i;
      v11[1] = i;
      v12 = objc_msgSend_valueAtCoord_(self, v3, v11, v4, v5);
      v13 = v8;
      TSUDecimal::operator*=();
    }
  }

  v9 = v14;
  v10 = v15;
  result._decimal.w[1] = v10;
  result._decimal.w[0] = v9;
  return result;
}

- (vector<TSCEDecimalMatrix)pluDecompositionWithPivotDet:(TSCEDecimalMatrix *)self
{
  v6 = self;
  v11 = objc_msgSend_dimensions(v6, v7, v8, v9, v10);
  v80 = objc_msgSend_pivotMatrixOutDet_(v6, v12, a4, v13, v14);
  v79 = 0;
  v68 = v6;
  v17 = objc_msgSend_multiplyBy_outError_(v80, v15, v6, &v79, v16);
  v67 = v79;
  v21 = objc_msgSend_identityMatrixOfSize_(TSCEDecimalMatrix, v18, v11, v19, v20);
  v66 = retstr;
  v78 = v21;
  v22 = [TSCEDecimalMatrix alloc];
  v81 = objc_msgSend_dimensions(v6, v23, v24, v25, v26);
  v30 = objc_msgSend_initWithDimensions_(v22, v27, &v81, v28, v29);
  v77 = v30;
  if (v11)
  {
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = 0;
      do
      {
        TSUDecimal::operator=();
        if (v33)
        {
          for (i = 0; i != v33; ++i)
          {
            v73 = v31;
            v74 = i;
            v38 = objc_msgSend_valueAtCoord_(v30, v34, &v73, v35, v36, v66);
            v40 = v39;
            v69 = i;
            v70 = v33;
            v71 = objc_msgSend_valueAtCoord_(v21, v39, &v69, v41, v42);
            v72 = v43;
            v81 = v38;
            v82 = v40;
            TSUDecimal::operator*=();
            v75 = v81;
            v76 = v82;
            TSUDecimal::operator+=();
          }
        }

        v75 = __PAIR64__(v33, v31);
        v81 = objc_msgSend_valueAtCoord_(v17, v34, &v75, v35, v36, v66);
        v82 = v44;
        TSUDecimal::operator-=();
        v75 = __PAIR64__(v33, v31);
        objc_msgSend_setValue_atCoord_(v30, v45, &v81, &v75, v46);
        ++v33;
      }

      while (v33 != v32);
      v47 = v31;
      do
      {
        TSUDecimal::operator=();
        if (v31)
        {
          for (j = 0; j != v31; ++j)
          {
            v73 = v31;
            v74 = j;
            v52 = objc_msgSend_valueAtCoord_(v30, v48, &v73, v49, v50);
            v54 = v53;
            v21 = v78;
            v69 = j;
            v70 = v47;
            v71 = objc_msgSend_valueAtCoord_(v78, v53, &v69, v55, v56);
            v72 = v57;
            v81 = v52;
            v82 = v54;
            TSUDecimal::operator*=();
            v75 = v81;
            v76 = v82;
            TSUDecimal::operator+=();
          }
        }

        v75 = __PAIR64__(v47, v31);
        v81 = objc_msgSend_valueAtCoord_(v17, v48, &v75, v49, v50);
        v82 = v58;
        TSUDecimal::operator-=();
        LODWORD(v71) = v31;
        HIDWORD(v71) = v31;
        v75 = objc_msgSend_valueAtCoord_(v30, v59, &v71, v60, v61);
        v76 = v62;
        TSUDecimal::operator/=();
        v71 = __PAIR64__(v47, v31);
        objc_msgSend_setValue_atCoord_(v21, v63, &v81, &v71, v64);
        ++v47;
      }

      while (v47 != v11);
      ++v31;
      ++v32;
    }

    while (v31 != v11);
  }

  v66->var0 = 0;
  v66->var1 = 0;
  v66->var2 = 0;
  sub_2215A5D94(v66, &v80);
  sub_2215A5D94(v66, &v78);
  sub_2215A5D94(v66, &v77);

  return result;
}

- (TSUDecimal)determinantWithError:(id *)a3
{
  if ((objc_msgSend_isSquareMatrix(self, a2, a3, v3, v4) & 1) == 0)
  {
    *a3 = objc_msgSend_matrixNotSquareError(TSCEError, v7, v8, v9, v10);
    goto LABEL_8;
  }

  width = self->_dimensions.width;
  if (width > 1)
  {
    switch(width)
    {
      case 2:
        *&v193[0] = 0;
        v94 = objc_msgSend_valueAtCoord_(self, v7, v193, v9, v10);
        v96 = v95;
        *&v193[0] = 1;
        v99 = objc_msgSend_valueAtCoord_(self, v95, v193, v97, v98);
        v101 = v100;
        *&v193[0] = 0x100000000;
        v206._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v100, v193, v102, v103);
        v206._decimal.w[1] = v104;
        *&v193[0] = 0x100000001;
        v204._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v104, v193, v105, v106);
        v204._decimal.w[1] = v107;
        *&v193[0] = v94;
        *(&v193[0] + 1) = v96;
        TSUDecimal::operator*=();
        v108 = v193[0];
        *&v193[0] = v99;
        *(&v193[0] + 1) = v101;
        TSUDecimal::operator*=();
        v203 = v193[0];
        v193[0] = v108;
        goto LABEL_14;
      case 3:
        *&v193[0] = 0;
        v109 = objc_msgSend_valueAtCoord_(self, v7, v193, v9, v10);
        v111 = v110;
        *&v193[0] = 1;
        v114 = objc_msgSend_valueAtCoord_(self, v110, v193, v112, v113);
        v116 = v115;
        *&v193[0] = 2;
        v119 = objc_msgSend_valueAtCoord_(self, v115, v193, v117, v118);
        v191 = v120;
        v192 = v119;
        *&v193[0] = 0x100000000;
        v123 = objc_msgSend_valueAtCoord_(self, v120, v193, v121, v122);
        v125 = v124;
        *&v193[0] = 0x100000001;
        v128 = objc_msgSend_valueAtCoord_(self, v124, v193, v126, v127);
        v130 = v129;
        *&v193[0] = 0x100000002;
        v206._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v129, v193, v131, v132);
        v206._decimal.w[1] = v133;
        *&v193[0] = 0x200000000;
        v204._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v133, v193, v134, v135);
        v204._decimal.w[1] = v136;
        *&v193[0] = 0x200000001;
        *&v203 = objc_msgSend_valueAtCoord_(self, v136, v193, v137, v138);
        *(&v203 + 1) = v139;
        *&v193[0] = 0x200000002;
        *&v202 = objc_msgSend_valueAtCoord_(self, v139, v193, v140, v141);
        *(&v202 + 1) = v142;
        *&v193[0] = v128;
        *(&v193[0] + 1) = v130;
        TSUDecimal::operator*=();
        v143 = v193[0];
        v193[0] = v206;
        TSUDecimal::operator*=();
        v200 = v193[0];
        v193[0] = v143;
        TSUDecimal::operator-=();
        v201 = v193[0];
        *&v193[0] = v109;
        *(&v193[0] + 1) = v111;
        TSUDecimal::operator*=();
        v144 = v193[0];
        *&v193[0] = v123;
        *(&v193[0] + 1) = v125;
        TSUDecimal::operator*=();
        v145 = v193[0];
        v193[0] = v204;
        TSUDecimal::operator*=();
        v197 = v193[0];
        v193[0] = v145;
        TSUDecimal::operator-=();
        v198 = v193[0];
        *&v193[0] = v114;
        *(&v193[0] + 1) = v116;
        TSUDecimal::operator*=();
        v199 = v193[0];
        v193[0] = v144;
        TSUDecimal::operator-=();
        v146 = v193[0];
        *&v193[0] = v123;
        *(&v193[0] + 1) = v125;
        TSUDecimal::operator*=();
        v147 = v193[0];
        *&v193[0] = v128;
        *(&v193[0] + 1) = v130;
        TSUDecimal::operator*=();
        v194 = v193[0];
        v193[0] = v147;
        TSUDecimal::operator-=();
        v195 = v193[0];
        *&v193[0] = v192;
        *(&v193[0] + 1) = v191;
        TSUDecimal::operator*=();
        v196 = v193[0];
        v193[0] = v146;
        TSUDecimal::operator+=();
        goto LABEL_16;
      case 4:
        *&v193[0] = 0;
        v12 = objc_msgSend_valueAtCoord_(self, v7, v193, v9, v10);
        v175 = v13;
        v177 = v12;
        *&v193[0] = 1;
        v16 = objc_msgSend_valueAtCoord_(self, v13, v193, v14, v15);
        v179 = v17;
        v181 = v16;
        *&v193[0] = 2;
        v20 = objc_msgSend_valueAtCoord_(self, v17, v193, v18, v19);
        v183 = v21;
        v184 = v20;
        *&v193[0] = 3;
        v24 = objc_msgSend_valueAtCoord_(self, v21, v193, v22, v23);
        v185 = v25;
        v186 = v24;
        *&v193[0] = 0x100000000;
        v187 = objc_msgSend_valueAtCoord_(self, v25, v193, v26, v27);
        v29 = v28;
        *&v193[0] = 0x100000001;
        v32 = objc_msgSend_valueAtCoord_(self, v28, v193, v30, v31);
        v189 = v33;
        v34 = v33;
        *&v193[0] = 0x100000002;
        v37 = objc_msgSend_valueAtCoord_(self, v33, v193, v35, v36);
        v190 = v38;
        v39 = v38;
        *&v193[0] = 0x100000003;
        v42 = objc_msgSend_valueAtCoord_(self, v38, v193, v40, v41);
        v188 = v43;
        v44 = v43;
        *&v193[0] = 0x200000000;
        v174 = objc_msgSend_valueAtCoord_(self, v43, v193, v45, v46);
        v48 = v47;
        *&v193[0] = 0x200000001;
        v206._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v47, v193, v49, v50);
        v206._decimal.w[1] = v51;
        *&v193[0] = 0x200000002;
        v204._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v51, v193, v52, v53);
        v204._decimal.w[1] = v54;
        *&v193[0] = 0x200000003;
        *&v203 = objc_msgSend_valueAtCoord_(self, v54, v193, v55, v56);
        *(&v203 + 1) = v57;
        *&v193[0] = 0x300000000;
        v60 = objc_msgSend_valueAtCoord_(self, v57, v193, v58, v59);
        v172 = v61;
        v173 = v60;
        *&v193[0] = 0x300000001;
        *&v202 = objc_msgSend_valueAtCoord_(self, v61, v193, v62, v63);
        *(&v202 + 1) = v64;
        *&v193[0] = 0x300000002;
        *&v201 = objc_msgSend_valueAtCoord_(self, v64, v193, v65, v66);
        *(&v201 + 1) = v67;
        *&v193[0] = 0x300000003;
        *&v200 = objc_msgSend_valueAtCoord_(self, v67, v193, v68, v69);
        *(&v200 + 1) = v70;
        v193[0] = v204;
        TSUDecimal::operator*=();
        v71 = v193[0];
        v193[0] = v201;
        TSUDecimal::operator*=();
        v197 = v193[0];
        v193[0] = v71;
        TSUDecimal::operator-=();
        v198 = v193[0];
        *&v193[0] = v32;
        *(&v193[0] + 1) = v34;
        TSUDecimal::operator*=();
        v72 = v193[0];
        v193[0] = v206;
        TSUDecimal::operator*=();
        v73 = v193[0];
        v193[0] = v202;
        TSUDecimal::operator*=();
        v194 = v193[0];
        v193[0] = v73;
        TSUDecimal::operator-=();
        v195 = v193[0];
        *&v193[0] = v37;
        *(&v193[0] + 1) = v39;
        TSUDecimal::operator*=();
        v196 = v193[0];
        v193[0] = v72;
        TSUDecimal::operator-=();
        v74 = v193[0];
        v193[0] = v206;
        TSUDecimal::operator*=();
        v75 = v193[0];
        v193[0] = v202;
        TSUDecimal::operator*=();
        v193[32] = v193[0];
        v193[0] = v75;
        TSUDecimal::operator-=();
        v193[33] = v193[0];
        *&v193[0] = v42;
        *(&v193[0] + 1) = v44;
        TSUDecimal::operator*=();
        v193[34] = v193[0];
        v193[0] = v74;
        TSUDecimal::operator+=();
        v199 = v193[0];
        *&v193[0] = v177;
        *(&v193[0] + 1) = v175;
        TSUDecimal::operator*=();
        v176 = *(&v193[0] + 1);
        v178 = *&v193[0];
        v193[0] = v204;
        TSUDecimal::operator*=();
        v76 = v193[0];
        v193[0] = v201;
        TSUDecimal::operator*=();
        v193[28] = v193[0];
        v193[0] = v76;
        TSUDecimal::operator-=();
        v193[29] = v193[0];
        *&v193[0] = v187;
        *(&v193[0] + 1) = v29;
        TSUDecimal::operator*=();
        v77 = v193[0];
        *(&v193[0] + 1) = v48;
        *&v193[0] = v174;
        TSUDecimal::operator*=();
        v78 = v193[0];
        *&v193[0] = v173;
        *(&v193[0] + 1) = v172;
        TSUDecimal::operator*=();
        v193[25] = v193[0];
        v193[0] = v78;
        TSUDecimal::operator-=();
        v193[26] = v193[0];
        *&v193[0] = v37;
        *(&v193[0] + 1) = v190;
        TSUDecimal::operator*=();
        v193[27] = v193[0];
        v193[0] = v77;
        TSUDecimal::operator-=();
        v79 = v193[0];
        *&v193[0] = v174;
        *(&v193[0] + 1) = v48;
        TSUDecimal::operator*=();
        v80 = v193[0];
        *&v193[0] = v173;
        *(&v193[0] + 1) = v172;
        TSUDecimal::operator*=();
        v193[22] = v193[0];
        v193[0] = v80;
        TSUDecimal::operator-=();
        v193[23] = v193[0];
        *&v193[0] = v42;
        *(&v193[0] + 1) = v188;
        TSUDecimal::operator*=();
        v193[24] = v193[0];
        v193[0] = v79;
        TSUDecimal::operator+=();
        v193[30] = v193[0];
        *&v193[0] = v181;
        *(&v193[0] + 1) = v179;
        TSUDecimal::operator*=();
        v193[31] = v193[0];
        *&v193[0] = v178;
        *(&v193[0] + 1) = v176;
        TSUDecimal::operator-=();
        v180 = *(&v193[0] + 1);
        v182 = *&v193[0];
        v193[0] = v206;
        TSUDecimal::operator*=();
        v81 = v193[0];
        v193[0] = v202;
        TSUDecimal::operator*=();
        v193[18] = v193[0];
        v193[0] = v81;
        TSUDecimal::operator-=();
        v193[19] = v193[0];
        *&v193[0] = v187;
        *(&v193[0] + 1) = v29;
        TSUDecimal::operator*=();
        v82 = v193[0];
        *&v193[0] = v174;
        *(&v193[0] + 1) = v48;
        TSUDecimal::operator*=();
        v83 = v193[0];
        *&v193[0] = v173;
        *(&v193[0] + 1) = v172;
        TSUDecimal::operator*=();
        v193[15] = v193[0];
        v193[0] = v83;
        TSUDecimal::operator-=();
        v193[16] = v193[0];
        *&v193[0] = v32;
        *(&v193[0] + 1) = v189;
        TSUDecimal::operator*=();
        v193[17] = v193[0];
        v193[0] = v82;
        TSUDecimal::operator-=();
        v84 = v193[0];
        *&v193[0] = v174;
        *(&v193[0] + 1) = v48;
        TSUDecimal::operator*=();
        v85 = v193[0];
        *&v193[0] = v173;
        *(&v193[0] + 1) = v172;
        TSUDecimal::operator*=();
        v193[12] = v193[0];
        v193[0] = v85;
        TSUDecimal::operator-=();
        v193[13] = v193[0];
        *&v193[0] = v42;
        *(&v193[0] + 1) = v188;
        TSUDecimal::operator*=();
        v193[14] = v193[0];
        v193[0] = v84;
        TSUDecimal::operator+=();
        v193[20] = v193[0];
        *&v193[0] = v184;
        *(&v193[0] + 1) = v183;
        TSUDecimal::operator*=();
        v193[21] = v193[0];
        *&v193[0] = v182;
        *(&v193[0] + 1) = v180;
        TSUDecimal::operator+=();
        v86 = v193[0];
        v193[0] = v206;
        TSUDecimal::operator*=();
        v87 = v193[0];
        v193[0] = v202;
        TSUDecimal::operator*=();
        v193[8] = v193[0];
        v193[0] = v87;
        TSUDecimal::operator-=();
        v193[9] = v193[0];
        *&v193[0] = v187;
        *(&v193[0] + 1) = v29;
        TSUDecimal::operator*=();
        v88 = v193[0];
        *&v193[0] = v174;
        *(&v193[0] + 1) = v48;
        TSUDecimal::operator*=();
        v89 = v193[0];
        *&v193[0] = v173;
        *(&v193[0] + 1) = v172;
        TSUDecimal::operator*=();
        v193[5] = v193[0];
        v193[0] = v89;
        TSUDecimal::operator-=();
        v193[6] = v193[0];
        *&v193[0] = v32;
        *(&v193[0] + 1) = v189;
        TSUDecimal::operator*=();
        v193[7] = v193[0];
        v193[0] = v88;
        TSUDecimal::operator-=();
        v90 = v193[0];
        *&v193[0] = v174;
        *(&v193[0] + 1) = v48;
        TSUDecimal::operator*=();
        v91 = v193[0];
        *&v193[0] = v173;
        *(&v193[0] + 1) = v172;
        TSUDecimal::operator*=();
        v193[2] = v193[0];
        v193[0] = v91;
        TSUDecimal::operator-=();
        v193[3] = v193[0];
        *&v193[0] = v37;
        *(&v193[0] + 1) = v190;
        TSUDecimal::operator*=();
        v193[4] = v193[0];
        v193[0] = v90;
        TSUDecimal::operator+=();
        v193[10] = v193[0];
        *&v193[0] = v186;
        *(&v193[0] + 1) = v185;
        TSUDecimal::operator*=();
        v193[11] = v193[0];
        v193[0] = v86;
LABEL_14:
        TSUDecimal::operator-=();
LABEL_16:
        v205 = v193[0];
        goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!width)
  {
LABEL_8:
    TSUDecimal::operator=();
    goto LABEL_17;
  }

  if (width == 1)
  {
    *&v193[0] = 0;
    v92 = objc_msgSend_valueAtCoord_(self, v7, v193, v9, v10);
LABEL_12:
    v205._decimal.w[0] = v92;
    v205._decimal.w[1] = v93;
    goto LABEL_17;
  }

LABEL_18:
  v150 = objc_msgSend_classifyMatrix(self, v7, v8, v9, v10);
  if ((v150 & 4) != 0)
  {
    goto LABEL_8;
  }

  if ((v150 - 1) < 3)
  {
    v92 = objc_msgSend_productOfDiagonal(self, v151, v152, v153, v154);
    goto LABEL_12;
  }

  if (v150 == 8 || v150 == 4)
  {
    goto LABEL_8;
  }

  TSUDecimal::operator=();
  objc_msgSend_pluDecompositionWithPivotDet_(self, v155, &v204, v156, v157);
  *&v203 = objc_msgSend_productOfDiagonal(*(*&v193[0] + 8), v158, v159, v160, v161);
  *(&v203 + 1) = v162;
  *&v202 = objc_msgSend_productOfDiagonal(*(*&v193[0] + 16), v162, v163, v164, v165);
  *(&v202 + 1) = v166;
  v206 = v204;
  TSUDecimal::operator*=();
  TSUDecimal::operator*=();
  v205 = v206;
  if ((TSUDecimal::isNaN(&v205) & 1) != 0 || TSUDecimal::isInf(&v205))
  {
    v205._decimal.w[0] = objc_msgSend_simpleRecursiveDeterminant(self, v167, v168, v169, v170);
    v205._decimal.w[1] = v171;
  }

  v206._decimal.w[0] = v193;
  sub_22107C2C0(&v206);
LABEL_17:
  v148 = v205._decimal.w[0];
  v149 = v205._decimal.w[1];
  result._decimal.w[1] = v149;
  result._decimal.w[0] = v148;
  return result;
}

- (TSUDecimal)simpleRecursiveDeterminant
{
  TSUDecimal::operator=();
  if (objc_msgSend_dimensions(self, v3, v4, v5, v6) >> 32)
  {
    v10 = 0;
    do
    {
      LODWORD(v22[0]) = 0;
      HIDWORD(v22[0]) = v10;
      v21._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v7, v22, v8, v9);
      v21._decimal.w[1] = v11;
      if ((TSUDecimal::isZero(&v21) & 1) == 0)
      {
        v19 = objc_msgSend_cofactorAtCoord_(self, v12, v22[0], v14, v15);
        v20 = v16;
        v23 = v21;
        TSUDecimal::operator*=();
        TSUDecimal::operator+=();
      }

      ++v10;
    }

    while (v10 < objc_msgSend_dimensions(self, v12, v13, v14, v15, v19, v20) >> 32);
  }

  v17 = v22[1];
  v18 = v22[2];
  result._decimal.w[1] = v18;
  result._decimal.w[0] = v17;
  return result;
}

- (TSUDecimal)cofactorAtCoord:(TSCEGridCoord)a3
{
  column = a3.column;
  row = a3.row;
  p_dimensions = &self->_dimensions;
  v7 = LOBYTE(a3.row) + LOBYTE(a3.column);
  v31.width = self->_dimensions.width - 1;
  v31.height = v31.width;
  v8 = [TSCEDecimalMatrix alloc];
  v15 = objc_msgSend_initWithDimensions_(v8, v9, &v31, v10, v11);
  LODWORD(v16) = 0;
  LODWORD(v17) = 0;
  v29 = 0;
  v30 = 0;
  do
  {
    if (v17 != column && v16 != row)
    {
      v28[0] = objc_msgSend_valueAtCoord_(self, v12, &v30, v13, v14);
      v28[1] = v18;
      objc_msgSend_setValue_atCoord_(v15, v18, v28, &v29, v19);
      v29 = TSCEGridDimensions::nextCoordRowMajorOrder(&v31, &v29);
    }

    v17 = TSCEGridDimensions::nextCoordRowMajorOrder(p_dimensions, &v30);
    v30 = v17;
    v16 = HIDWORD(v17);
  }

  while (v29.column != 0x7FFFFFFF && v29.row != 0x7FFFFFFF);
  v27 = 0;
  v21 = objc_msgSend_determinantWithError_(v15, v12, &v27, v13, v14);
  v23 = v22;
  v24 = v27;
  v32._decimal.w[0] = v21;
  v32._decimal.w[1] = v23;
  if (v7)
  {
    TSUDecimal::negate(&v32);
  }

  v25 = v32._decimal.w[0];
  v26 = v32._decimal.w[1];
  result._decimal.w[1] = v26;
  result._decimal.w[0] = v25;
  return result;
}

- (id)cofactorMatrix
{
  v3 = [TSCEDecimalMatrix alloc];
  v10 = objc_msgSend_initWithDimensions_(v3, v4, &self->_dimensions, v5, v6);
  if (self->_dimensions.height * self->_dimensions.width == 1)
  {
    TSUDecimal::operator=();
    v18 = 0;
    objc_msgSend_setValue_atCoord_(v10, v11, v19, &v18, v12);
  }

  else
  {
    v13 = 0;
    v18 = 0;
    do
    {
      v19[0] = objc_msgSend_cofactorAtCoord_(self, v7, v13, v8, v9);
      v19[1] = v14;
      objc_msgSend_setValue_atCoord_(v10, v14, v19, &v18, v15);
      v16 = TSCEGridDimensions::nextCoordRowMajorOrder(&self->_dimensions, &v18);
      v13 = v16;
      v18 = v16;
    }

    while (v16 != 0x7FFFFFFF && (v16 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  }

  return v10;
}

- (id)adjointMatrix
{
  v5 = objc_msgSend_cofactorMatrix(self, a2, v2, v3, v4);
  v10 = objc_msgSend_transpose(v5, v6, v7, v8, v9);

  return v10;
}

- (id)inverseWithError:(id *)a3
{
  if (self->_dimensions.height * self->_dimensions.width)
  {
    v23._decimal.w[0] = objc_msgSend_determinantWithError_(self, a2, a3, v3, v4);
    v23._decimal.w[1] = v7;
    if (!TSUDecimal::isZero(&v23))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v12 = objc_msgSend_adjointMatrix(self, v14, v15, v16, v17);
      objc_msgSend_multiplyByScalar_(v12, v18, &v22, v19, v20);
      goto LABEL_9;
    }

    if (*a3)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v13 = objc_msgSend_noMatrixInverseError(TSCEError, v8, v9, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_emptyArrayError(TSCEError, a2, a3, v3, v4);
  }

  v12 = 0;
  *a3 = v13;
LABEL_9:

  return v12;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end