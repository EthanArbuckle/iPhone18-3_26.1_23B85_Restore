@interface TSDCounterRotateInfo
+ (CGAffineTransform)counterTransformForTransformInRoot:(SEL)a3;
+ (id)infoGeometryForTransformInRoot:(CGAffineTransform *)a3 isChildFlipped:(BOOL)a4;
+ (id)infoGeometryInRootIncludingCounterRotateIfNeededForDrawable:(id)a3;
+ (id)p_infoGeometryForCounterTransform:(CGAffineTransform *)a3 isChildFlipped:(BOOL)a4;
- (CGAffineTransform)counterTransform;
- (NSArray)childInfos;
- (TSDCounterRotateInfo)initWithChildInfo:(id)a3 parentGroup:(id)a4 counterTransform:(CGAffineTransform *)a5;
- (TSDDrawableInfo)childInfo;
- (TSDGroupInfo)parentGroup;
- (TSDInfo)parentInfo;
- (id)copyWithContext:(id)a3;
- (id)infoForSelectionPath:(id)a3;
- (void)clearBackPointerToParentInfoIfNeeded:(id)a3;
- (void)setCounterTransform:(CGAffineTransform *)a3;
- (void)setParentInfo:(id)a3;
@end

@implementation TSDCounterRotateInfo

- (TSDCounterRotateInfo)initWithChildInfo:(id)a3 parentGroup:(id)a4 counterTransform:(CGAffineTransform *)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = TSDCounterRotateInfo;
  v10 = [(TSDCounterRotateInfo *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_childInfo, v8);
    objc_storeWeak(&v11->_parentGroup, v9);
    v12 = *&a5->c;
    v15[0] = *&a5->a;
    v15[1] = v12;
    v15[2] = *&a5->tx;
    objc_msgSend_setCounterTransform_(v11, v13, v15);
  }

  return v11;
}

+ (id)infoGeometryForTransformInRoot:(CGAffineTransform *)a3 isChildFlipped:(BOOL)a4
{
  v4 = a4;
  v14 = 0u;
  v15 = 0u;
  v6 = *&a3->c;
  v10 = *&a3->a;
  v11 = v6;
  v12 = *&a3->tx;
  v13 = 0u;
  objc_msgSend_counterTransformForTransformInRoot_(a1, a2, &v10);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  v8 = objc_msgSend_p_infoGeometryForCounterTransform_isChildFlipped_(a1, v7, &v10, v4);

  return v8;
}

+ (id)p_infoGeometryForCounterTransform:(CGAffineTransform *)a3 isChildFlipped:(BOOL)a4
{
  v4 = a4;
  v6 = TSUIsTransformFlipped();
  v13 = *a3;
  TSUTransformAngleInDegrees();
  v8 = -v7;
  v9 = [TSDInfoGeometry alloc];
  valid = objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(v9, v10, 1, 1, v6 ^ v4, 0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 10.0, 10.0, v8, *&v13.a, *&v13.c, *&v13.tx);

  return valid;
}

+ (CGAffineTransform)counterTransformForTransformInRoot:(SEL)a3
{
  v4 = *&a4->c;
  *&v6.a = *&a4->a;
  *&v6.c = v4;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v6.tx = 0.0;
  v6.ty = 0.0;
  return CGAffineTransformInvert(retstr, &v6);
}

+ (id)infoGeometryInRootIncludingCounterRotateIfNeededForDrawable:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_geometry(v3, v4, v5);
  objc_opt_class();
  v9 = objc_msgSend_parentInfo(v3, v7, v8);
  v10 = TSUDynamicCast();

  if (objc_msgSend_wantsCounterRotationWhenNotSupportingParentRotationInRotatedParent(v3, v11, v12))
  {
    if ((objc_msgSend_supportsParentRotation(v3, v13, v14) & 1) == 0)
    {
      v15 = objc_msgSend_containingGroup(v3, v13, v14);

      if (v15)
      {
        v56 = 0;
        v57 = &v56;
        v58 = 0x5010000000;
        v59 = "";
        v16 = *(MEMORY[0x277CBF2C0] + 16);
        v60 = *MEMORY[0x277CBF2C0];
        v61 = v16;
        v62 = *(MEMORY[0x277CBF2C0] + 32);
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = sub_2767121E4;
        v55[3] = &unk_27A6CC718;
        v55[4] = &v56;
        objc_msgSend_performBlockWithTemporaryLayout_(v10, v13, v55);
        if (v10)
        {
          objc_msgSend_transformInRoot(v10, v17, v18);
        }

        else
        {
          memset(&v54, 0, sizeof(v54));
        }

        v19 = objc_msgSend_geometry(v3, v17, v18);
        v22 = v19;
        if (v19)
        {
          objc_msgSend_transform(v19, v20, v21);
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v23 = TSUIsTransformFlipped();
        v25 = objc_msgSend_infoGeometryForTransformInRoot_isChildFlipped_(TSDCounterRotateInfo, v24, &v54, v23);

        memset(&v54, 0, sizeof(v54));
        if (v25)
        {
          objc_msgSend_transform(v25, v26, v27);
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v28 = *(v57 + 3);
        *&t2.a = *(v57 + 2);
        *&t2.c = v28;
        *&t2.tx = *(v57 + 4);
        CGAffineTransformConcat(&v54, &t1, &t2);
        memset(&t1, 0, sizeof(t1));
        if (v6)
        {
          objc_msgSend_fullTransform(v6, v29, v30);
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        v51 = v54;
        CGAffineTransformConcat(&t1, &t2, &v51);
        v33 = objc_msgSend_widthValid(v6, v31, v32);
        v36 = objc_msgSend_heightValid(v6, v34, v35);
        t2 = t1;
        v38 = objc_msgSend_geometryFromFullTransform_widthValid_heightValid_(TSDInfoGeometry, v37, &t2, v33, v36);

        objc_opt_class();
        v41 = objc_msgSend_parentInfo(v10, v39, v40);
        v42 = TSUDynamicCast();

        _Block_object_dispose(&v56, 8);
        v10 = v42;
        v6 = v38;
      }
    }
  }

  if (v10)
  {
    do
    {
      v43 = objc_msgSend_geometry(v10, v13, v14);
      v45 = objc_msgSend_geometryWithParentGeometry_(v6, v44, v43);

      objc_opt_class();
      v48 = objc_msgSend_parentInfo(v10, v46, v47);
      v49 = TSUDynamicCast();

      v6 = v45;
      v10 = v49;
    }

    while (v49);
  }

  else
  {
    v45 = v6;
  }

  return v45;
}

- (void)setCounterTransform:(CGAffineTransform *)a3
{
  v5 = *&a3->a;
  v6 = *&a3->tx;
  *&self->_counterTransform.c = *&a3->c;
  *&self->_counterTransform.tx = v6;
  *&self->_counterTransform.a = v5;
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_childInfo);
  v11 = objc_msgSend_geometry(WeakRetained, v9, v10);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_transform(v11, v12, v13);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
  }

  v15 = TSUIsTransformFlipped();
  v16 = *&a3->c;
  v20 = *&a3->a;
  v21 = v16;
  v22 = *&a3->tx;
  v18 = objc_msgSend_p_infoGeometryForCounterTransform_isChildFlipped_(v7, v17, &v20, v15);
  objc_msgSend_setGeometry_(self, v19, v18);
}

- (TSDInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  return WeakRetained;
}

- (void)setParentInfo:(id)a3
{
  v5 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v5 && !v4)
  {
    sub_27680A8BC();
  }

  objc_storeWeak(&self->_parentGroup, v4);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  if (WeakRetained == v4)
  {

    objc_storeWeak(&self->_parentGroup, 0);
  }
}

- (id)copyWithContext:(id)a3
{
  v3 = a3;
  TSUSetCrashReporterInfo();
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDCounterRotateInfo copyWithContext:]", "[TSDCounterRotateInfo copyWithContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateInfo.m", 174);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 174, 1, "This should not be called on TSDCounterRotateInfo");

  TSUCrashBreakpoint();
  abort();
}

- (NSArray)childInfos
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_childInfo);
  v6[0] = WeakRetained;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v6, 1);

  return v4;
}

- (id)infoForSelectionPath:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDCounterRotateInfo infoForSelectionPath:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 185, 0, "We don't expect this to be called");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (TSDGroupInfo)parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  return WeakRetained;
}

- (TSDDrawableInfo)childInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_childInfo);

  return WeakRetained;
}

- (CGAffineTransform)counterTransform
{
  v3 = *&self[1].a;
  *&retstr->a = *&self->tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].c;
  return self;
}

@end