@interface TSTLayoutSpaceBezierPathCacheKey
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation TSTLayoutSpaceBezierPathCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  v45 = 0;
  if (v5)
  {
    objc_msgSend_inset(self, v6, v7, v8, v9);
    v11 = v10;
    objc_msgSend_inset(v5, v12, v13, v14, v15);
    if (v11 == v20)
    {
      v21 = objc_msgSend_reoriginToZero(self, v16, v17, v18, v19);
      if (v21 == objc_msgSend_reoriginToZero(v5, v22, v23, v24, v25))
      {
        if (((v30 = objc_msgSend_gridRange(self, v26, v27, v28, v29), v32 = v31, v36 = objc_msgSend_gridRange(v5, v31, v33, v34, v35), v30 == -1) || v32 == -1 || v30 > v32 || HIDWORD(v30) == 0xFFFFFFFF || v32 >> 32 == 0xFFFFFFFF || HIDWORD(v30) > v32 >> 32) && (v36 == -1 || v37 == -1 || v36 > v37 || HIDWORD(v36) == 0xFFFFFFFF || v37 >> 32 == 0xFFFFFFFF || HIDWORD(v36) > v37 >> 32) || v30 == v36 && !((v36 ^ v30) >> 32) && v32 == v37 && !((v37 ^ v32) >> 32))
        {
          objc_msgSend_transform(self, v37, v38, v39, v40);
          objc_msgSend_transform(v5, v41, v42, v43, v44);
          if (CGAffineTransformEqualToTransform(&t1, &v47))
          {
            v45 = 1;
          }
        }
      }
    }
  }

  return v45;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTLayoutSpaceBezierPathCacheKey);
  v9 = objc_msgSend_gridRange(self, v5, v6, v7, v8);
  objc_msgSend_setGridRange_(v4, v10, v9, v10, v11);
  objc_msgSend_transform(self, v12, v13, v14, v15);
  v36[0] = v36[3];
  v36[1] = v36[4];
  v36[2] = v36[5];
  objc_msgSend_setTransform_(v4, v16, v36, v17, v18);
  objc_msgSend_inset(self, v19, v20, v21, v22);
  objc_msgSend_setInset_(v4, v23, v24, v25, v26);
  v31 = objc_msgSend_reoriginToZero(self, v27, v28, v29, v30);
  objc_msgSend_setReoriginToZero_(v4, v32, v31, v33, v34);
  return v4;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange
{
  bottomRight = self->_gridRange.bottomRight;
  topLeft = self->_gridRange.topLeft;
  result.var1 = bottomRight;
  result.var0 = topLeft;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

@end