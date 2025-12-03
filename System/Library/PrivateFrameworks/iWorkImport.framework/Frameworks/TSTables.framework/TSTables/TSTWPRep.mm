@interface TSTWPRep
- (id)tableLayout;
- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
@end

@implementation TSTWPRep

- (id)tableLayout
{
  objc_opt_class();
  v7 = objc_msgSend_layout(self, v3, v4, v5, v6);
  v12 = objc_msgSend_parent(v7, v8, v9, v10, v11);
  v13 = TSUCheckedDynamicCast();

  return v13;
}

- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v11 = objc_msgSend_layout(self, v7, v8, v9, v10);
  v16 = objc_msgSend_tableLayout(self, v12, v13, v14, v15);
  CGContextSaveGState(context);
  objc_msgSend_maskRect(v11, v17, v18, v19, v20);
  v25 = objc_msgSend_cachedCellID(v11, v21, v22, v23, v24);
  v26 = 0x100000001;
  v31 = objc_msgSend_cachedMergeRange(v11, v27, v28, v29, v30);
  if (v31 != 0x7FFFFFFF && (v31 & 0xFFFF00000000) != 0x7FFF00000000 && v32 >> 32 && v32)
  {
    v36 = objc_msgSend_cachedMergeRange(v11, v32, v33, v34, v35);
    v25 = objc_msgSend_extendedPartitionRangeSingleSpaceIntersectionWithCellRange_(v16, v37, v36, v37, v38);
    v26 = v39;
  }

  sub_2211BF2D0(v16, v25, v26);
  if (v25 == objc_msgSend_cachedCellID(v11, v40, v41, v42, v43))
  {
    TSUAddPoints();
  }

  CGContextClipToRectSafe();
  v44.receiver = self;
  v44.super_class = TSTWPRep;
  [(TSDRep *)&v44 recursivelyDrawInContext:context keepingChildrenPassingTest:testCopy];

  CGContextRestoreGState(context);
}

@end