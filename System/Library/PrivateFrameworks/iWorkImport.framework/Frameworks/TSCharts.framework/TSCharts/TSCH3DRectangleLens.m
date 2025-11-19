@interface TSCH3DRectangleLens
- (TSCH3DRectangleLens)init;
- (float)height;
- (float)width;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)frustumRect;
- (id)narrowByNormalizedBounds:(void *)a3;
- (id)narrowedByNormalizedBounds:(void *)a3;
- (id)shiftByPercentage:(void *)a3;
- (id)shiftedByPercentage:(void *)a3;
- (void)deviceNormalize;
- (void)normalize;
- (void)setPerPixelSize:(void *)a3;
@end

@implementation TSCH3DRectangleLens

- (TSCH3DRectangleLens)init
{
  v9.receiver = self;
  v9.super_class = TSCH3DRectangleLens;
  v2 = [(TSCH3DRectangleLens *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_deviceNormalize(v2, v3, v4, v5, v6);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v38.receiver = self;
  v38.super_class = TSCH3DRectangleLens;
  v5 = [(TSCH3DLens *)&v38 copyWithZone:a3];
  if (v5)
  {
    objc_msgSend_left(self, v4, v6, v7, v8);
    objc_msgSend_setLeft_(v5, v9, v10, v11, v12);
    objc_msgSend_right(self, v13, v14, v15, v16);
    objc_msgSend_setRight_(v5, v17, v18, v19, v20);
    objc_msgSend_bottom(self, v21, v22, v23, v24);
    objc_msgSend_setBottom_(v5, v25, v26, v27, v28);
    objc_msgSend_top(self, v29, v30, v31, v32);
    objc_msgSend_setTop_(v5, v33, v34, v35, v36);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSCH3DRectangleLens;
  v4 = [(TSCH3DRectangleLens *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, self->_left, self->_right, self->_bottom, @"%@(left %f, right %f, bottom %f, top %f, near %f, far %f)", v4, self->_left, self->_right, self->_bottom, self->_top, self->super._near, self->super._far);

  return v6;
}

- (id)frustumRect
{
  *&v2 = self->_left;
  *&v3 = self->_right;
  *&v4 = self->_bottom;
  return MEMORY[0x2821F9670](TSCH3DFrustumRect, sel_rectWithLeft_right_bottom_top_, v2, v3, v4);
}

- (void)normalize
{
  self->_bottom = 0.0;
  self->_left = 0.0;
  self->_top = 1.0;
  self->_right = 1.0;
  __asm { FMOV            V0.2S, #-1.0 }

  *&self->super._near = -_D0;
}

- (void)deviceNormalize
{
  self->_bottom = -1.0;
  self->_left = -1.0;
  self->_top = 1.0;
  self->_right = 1.0;
  __asm { FMOV            V0.2S, #-1.0 }

  *&self->super._near = -_D0;
}

- (void)setPerPixelSize:(void *)a3
{
  self->_left = 0.0;
  self->_right = *a3;
  self->_bottom = 0.0;
  self->_top = *(a3 + 1);
}

- (float)width
{
  objc_msgSend_right(self, a2, v2, v3, v4);
  v7 = *&v6;
  objc_msgSend_left(self, v8, v6, v9, v10);
  return v7 - v11;
}

- (float)height
{
  objc_msgSend_top(self, a2, v2, v3, v4);
  v7 = *&v6;
  objc_msgSend_bottom(self, v8, v6, v9, v10);
  return v7 - v11;
}

- (id)narrowByNormalizedBounds:(void *)a3
{
  objc_msgSend_width(self, a2, v3, v4, v5);
  v9 = *&v8;
  objc_msgSend_height(self, v10, v8, v11, v12);
  v14 = *&v13;
  objc_msgSend_left(self, v15, v13, v16, v17);
  v19 = *&v18;
  objc_msgSend_bottom(self, v20, v18, v21, v22);
  v24 = v23;
  *&v25 = v19 + (*a3 * v9);
  objc_msgSend_setLeft_(self, v26, v25, v27, v28);
  *&v29 = v19 + (*(a3 + 2) * v9);
  objc_msgSend_setRight_(self, v30, v29, v31, v32);
  *&v33 = v24 + (*(a3 + 1) * v14);
  objc_msgSend_setBottom_(self, v34, v33, v35, v36);
  *&v37 = v24 + (*(a3 + 3) * v14);
  objc_msgSend_setTop_(self, v38, v37, v39, v40);
  return self;
}

- (id)narrowedByNormalizedBounds:(void *)a3
{
  v7 = objc_msgSend_copy(self, a2, v3, v4, v5);
  v12 = objc_msgSend_narrowByNormalizedBounds_(v7, v8, v9, v10, v11, a3);

  return v12;
}

- (id)shiftByPercentage:(void *)a3
{
  objc_msgSend_width(self, a2, v3, v4, v5);
  v9 = *&v8;
  objc_msgSend_height(self, v10, v8, v11, v12);
  LODWORD(v13) = *a3;
  LODWORD(v14) = *(a3 + 1);
  v15 = v9 * *a3;
  v17 = *&v16 * *&v14;
  objc_msgSend_left(self, v18, v16, v13, v14);
  *&v20 = v19 - v15;
  objc_msgSend_setLeft_(self, v21, v20, v22, v23);
  objc_msgSend_right(self, v24, v25, v26, v27);
  *&v29 = v28 - v15;
  objc_msgSend_setRight_(self, v30, v29, v31, v32);
  objc_msgSend_bottom(self, v33, v34, v35, v36);
  *&v38 = v37 - v17;
  objc_msgSend_setBottom_(self, v39, v38, v40, v41);
  objc_msgSend_top(self, v42, v43, v44, v45);
  *&v47 = v46 - v17;
  objc_msgSend_setTop_(self, v48, v47, v49, v50);
  return self;
}

- (id)shiftedByPercentage:(void *)a3
{
  v7 = objc_msgSend_copy(self, a2, v3, v4, v5);
  v12 = objc_msgSend_shiftByPercentage_(v7, v8, v9, v10, v11, a3);

  return v12;
}

@end