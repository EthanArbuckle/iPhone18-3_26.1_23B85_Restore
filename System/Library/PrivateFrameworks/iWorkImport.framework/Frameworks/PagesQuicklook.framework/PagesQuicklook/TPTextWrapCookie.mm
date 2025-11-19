@interface TPTextWrapCookie
+ (id)textWrapCookieForColumn:(id)a3 targetLayout:(id)a4;
- (CGAffineTransform)targetInverseTransformInRoot;
- (TPTextWrapCookie)initWithColumn:(id)a3 targetLayout:(id)a4;
- (TSWPLayoutTarget)target;
- (id)transformedWrapSegmentsForWrappable:(id)a3 canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)a4;
- (void)addFloatingWrappable:(id)a3;
- (void)setTarget:(id)a3;
@end

@implementation TPTextWrapCookie

+ (id)textWrapCookieForColumn:(id)a3 targetLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v14 = objc_msgSend_initWithColumn_targetLayout_(v8, v9, v10, v11, v12, v13, v7, v6);

  return v14;
}

- (TPTextWrapCookie)initWithColumn:(id)a3 targetLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = TPTextWrapCookie;
  v8 = [(TPTextWrapCookie *)&v24 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    floatingWrappables = v8->_floatingWrappables;
    v8->_floatingWrappables = v9;

    v11 = objc_alloc_init(MEMORY[0x277D812B8]);
    wrapSegmentsInverseTransformInRootDictionary = v8->_wrapSegmentsInverseTransformInRootDictionary;
    v8->_wrapSegmentsInverseTransformInRootDictionary = v11;

    objc_msgSend_setColumn_(v8, v13, v14, v15, v16, v17, v6);
    objc_msgSend_setTarget_(v8, v18, v19, v20, v21, v22, v7);
  }

  return v8;
}

- (void)setTarget:(id)a3
{
  v4 = a3;
  v5 = objc_storeWeak(&self->_target, v4);
  if (v4)
  {
    objc_msgSend_transformInRoot(v4, v6, v7, v8, v9, v10);
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  CGAffineTransformInvert(&v13, &v12);
  v11 = *&v13.c;
  *&self->_targetInverseTransformInRoot.a = *&v13.a;
  *&self->_targetInverseTransformInRoot.c = v11;
  *&self->_targetInverseTransformInRoot.tx = *&v13.tx;
}

- (void)addFloatingWrappable:(id)a3
{
  v19 = a3;
  if (objc_msgSend_wrapType(v19, v4, v5, v6, v7, v8) && objc_msgSend_wrapType(v19, v9, v10, v11, v12, v13) != 5)
  {
    objc_msgSend_addObject_(self->_floatingWrappables, v14, v15, v16, v17, v18, v19);
  }
}

- (id)transformedWrapSegmentsForWrappable:(id)a3 canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)a4
{
  v6 = a3;
  v12 = objc_msgSend_objectForKey_(self->_wrapSegmentsInverseTransformInRootDictionary, v7, v8, v9, v10, v11, v6);
  v18 = objc_msgSend_first(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_second(v12, v19, v20, v21, v22, v23);
  v31 = objc_msgSend_geometry(v6, v25, v26, v27, v28, v29);
  if (!v18 || (objc_msgSend_isEqual_(v24, v30, v32, v33, v34, v35, v31) & 1) == 0)
  {
    v36 = objc_msgSend_wrapSegments(v6, v30, v32, v33, v34, v35);
    v42 = objc_msgSend_copy(v36, v37, v38, v39, v40, v41);

    if (v42)
    {
      v46 = *&self->_targetInverseTransformInRoot.c;
      v64 = *&self->_targetInverseTransformInRoot.a;
      v65 = v46;
      v66 = *&self->_targetInverseTransformInRoot.tx;
      objc_msgSend_transformUsingAffineTransform_(v42, v43, v66, v46, v44, v45, &v64);
      v47 = *&a4->c;
      v64 = *&a4->a;
      v65 = v47;
      v66 = *&a4->tx;
      objc_msgSend_transformUsingAffineTransform_(v42, v48, v66, v47, v49, v50, &v64);
      v51 = objc_alloc(MEMORY[0x277D812A8]);
      second = objc_msgSend_initWithFirst_second_(v51, v52, v53, v54, v55, v56, v42, v31);
      objc_msgSend_setObject_forUncopiedKey_(self->_wrapSegmentsInverseTransformInRootDictionary, v58, v59, v60, v61, v62, second, v6);

      v18 = v42;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (TSWPLayoutTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (CGAffineTransform)targetInverseTransformInRoot
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

@end