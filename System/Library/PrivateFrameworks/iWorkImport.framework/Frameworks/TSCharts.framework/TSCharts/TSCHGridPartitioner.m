@interface TSCHGridPartitioner
- (CGAffineTransform)transform;
- (CGRect)sourceRect;
- (CGSize)targetSize;
- (TSCHGridPartitioner)initWithSourceRect:(CGRect)a3 gridWidth:(unint64_t)a4 gridHeight:(unint64_t)a5;
- (TSCHGridPartitioner)initWithSourceSize:(CGSize)a3 gridWidth:(unint64_t)a4 gridHeight:(unint64_t)a5;
- (unint64_t)gridKeyForSourcePoint:(CGPoint)a3;
@end

@implementation TSCHGridPartitioner

- (TSCHGridPartitioner)initWithSourceRect:(CGRect)a3 gridWidth:(unint64_t)a4 gridHeight:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v94.receiver = self;
  v94.super_class = TSCHGridPartitioner;
  v12 = [(TSCHGridPartitioner *)&v94 init];
  if (v12)
  {
    v16 = sub_27635F98C(a4, v11, v13, v14, v15);
    v21 = sub_27635F98C(a5, v17, v18, v19, v20);
    v95.origin.x = x;
    v95.origin.y = y;
    v95.size.width = width;
    v95.size.height = height;
    v96 = CGRectStandardize(v95);
    v22 = v96.origin.x;
    v23 = v96.origin.y;
    v24 = v96.size.width;
    v25 = v96.size.height;
    if (CGRectIsEmpty(v96) || (TSURectIsFinite() & 1) == 0)
    {
      if (TSUSizeIsEmpty())
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "CGRect p_adjustedRectFromRect(CGRect)");
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHGridPartitioner.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 32, 0, "require nonzero source size");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
      }

      if ((TSUSizeIsFinite() & 1) == 0)
      {
        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "CGRect p_adjustedRectFromRect(CGRect)");
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHGridPartitioner.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 36, 0, "require finite source size");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
      }

      if ((TSUPointIsFinite() & 1) == 0)
      {
        v68 = MEMORY[0x277D81150];
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "CGRect p_adjustedRectFromRect(CGRect)");
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHGridPartitioner.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 42, 0, "require finite source origin");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
      }

      TSURectWithOriginAndSize();
      v22 = v83;
      v23 = v84;
      v24 = v85;
      v25 = v86;
    }

    *(v12 + 3) = v22;
    *(v12 + 4) = v23;
    *(v12 + 5) = v24;
    *(v12 + 6) = v25;
    *(v12 + 1) = v16;
    *(v12 + 2) = v21;
    memset(&v93, 0, sizeof(v93));
    CGAffineTransformMakeTranslation(&v93, -v22, -v23);
    memset(&v92, 0, sizeof(v92));
    CGAffineTransformMakeScale(&v92, v16 / v24, v21 / v25);
    t1 = v93;
    v89 = v92;
    CGAffineTransformConcat(&v91, &t1, &v89);
    v87 = *&v91.c;
    *(v12 + 56) = *&v91.a;
    *(v12 + 72) = v87;
    *(v12 + 88) = *&v91.tx;
  }

  return v12;
}

- (TSCHGridPartitioner)initWithSourceSize:(CGSize)a3 gridWidth:(unint64_t)a4 gridHeight:(unint64_t)a5
{
  TSURectWithSize();

  return objc_msgSend_initWithSourceRect_gridWidth_gridHeight_(self, v8, v9, v10, v11, a4, a5);
}

- (unint64_t)gridKeyForSourcePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_sourceRect(self, a2, a3.x, a3.y, v3);
  v27.x = x;
  v27.y = y;
  if (!CGRectContainsPoint(v28, v27))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_msgSend_transform(self, v7, v8, v9, v10);
  objc_msgSend_targetSize(self, v11, y * v25 + v24 * x, v25, v26);
  TSUClamp();
  v13 = v12;
  objc_msgSend_targetSize(self, v14, v12, v15, v16);
  TSUClamp();
  v18 = v17;
  objc_msgSend_targetSize(self, v19, v17, v20, v21);
  return v13 + v22 * v18;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

@end