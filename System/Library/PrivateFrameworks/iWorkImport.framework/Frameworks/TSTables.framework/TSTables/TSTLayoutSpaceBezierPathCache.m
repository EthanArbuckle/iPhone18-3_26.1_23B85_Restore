@interface TSTLayoutSpaceBezierPathCache
- (id)bezierPathForGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6;
- (void)insertBezierPath:(id)a3 gridRange:(id)a4 transform:(CGAffineTransform *)a5 inset:(double)a6 reoriginToZero:(BOOL)a7;
@end

@implementation TSTLayoutSpaceBezierPathCache

- (id)bezierPathForGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6
{
  v6 = a6;
  var1 = a3.var1;
  var0 = a3.var0;
  if (a4)
  {
    v11 = *&a4->c;
    v38 = *&a4->a;
    v39 = v11;
    v12 = *&a4->tx;
  }

  else
  {
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    v38 = *MEMORY[0x277CBF2C0];
    v39 = v13;
    v12 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v40 = v12;
  v14 = objc_alloc_init(TSTLayoutSpaceBezierPathCacheKey);
  objc_msgSend_setGridRange_(v14, v15, var0, var1, v16);
  v37[0] = v38;
  v37[1] = v39;
  v37[2] = v40;
  objc_msgSend_setTransform_(v14, v17, v37, v18, v19);
  objc_msgSend_setInset_(v14, v20, v21, v22, v23, a5);
  objc_msgSend_setReoriginToZero_(v14, v24, v6, v25, v26);
  v30 = objc_msgSend_objectForKey_(self, v27, v14, v28, v29);
  v35 = objc_msgSend_copy(v30, v31, v32, v33, v34);

  return v35;
}

- (void)insertBezierPath:(id)a3 gridRange:(id)a4 transform:(CGAffineTransform *)a5 inset:(double)a6 reoriginToZero:(BOOL)a7
{
  if (a3)
  {
    v7 = a7;
    var1 = a4.var1;
    var0 = a4.var0;
    if (a5)
    {
      v12 = *&a5->c;
      v37 = *&a5->a;
      v38 = v12;
      v13 = *&a5->tx;
    }

    else
    {
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      v37 = *MEMORY[0x277CBF2C0];
      v38 = v14;
      v13 = *(MEMORY[0x277CBF2C0] + 32);
    }

    v39 = v13;
    v15 = a3;
    v16 = objc_alloc_init(TSTLayoutSpaceBezierPathCacheKey);
    objc_msgSend_setGridRange_(v16, v17, var0, var1, v18);
    v36[0] = v37;
    v36[1] = v38;
    v36[2] = v39;
    objc_msgSend_setTransform_(v16, v19, v36, v20, v21);
    objc_msgSend_setInset_(v16, v22, v23, v24, v25, a6);
    objc_msgSend_setReoriginToZero_(v16, v26, v7, v27, v28);
    v33 = objc_msgSend_copy(v15, v29, v30, v31, v32);

    objc_msgSend_setObject_forKey_(self, v34, v33, v16, v35);
  }
}

@end