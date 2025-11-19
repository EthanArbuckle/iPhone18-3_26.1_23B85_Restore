@interface TSTLayoutContentCachedKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutContentCachedKey:(id)a3;
- (TSTLayoutContentCachedKey)initWithString:(id)a3 width:(double)a4 height:(double)a5 paragraphStyle:(id)a6 cellWraps:(BOOL)a7 valueType:(unsigned __int8)a8 paddingInsets:(UIEdgeInsets)a9 verticalAlignment:(int)a10 writingDirection:(int)a11 naturalAlignment:(int)a12 styleProvidingSource:(id)a13;
- (TSWPStyleProviding)styleProvidingSource;
- (UIEdgeInsets)paddingInsets;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSTLayoutContentCachedKey

- (TSTLayoutContentCachedKey)initWithString:(id)a3 width:(double)a4 height:(double)a5 paragraphStyle:(id)a6 cellWraps:(BOOL)a7 valueType:(unsigned __int8)a8 paddingInsets:(UIEdgeInsets)a9 verticalAlignment:(int)a10 writingDirection:(int)a11 naturalAlignment:(int)a12 styleProvidingSource:(id)a13
{
  right = a9.right;
  bottom = a9.bottom;
  left = a9.left;
  top = a9.top;
  v25 = a3;
  v26 = a6;
  v27 = a13;
  v36.receiver = self;
  v36.super_class = TSTLayoutContentCachedKey;
  v32 = [(TSTLayoutContentCachedKey *)&v36 init];
  if (v32)
  {
    v33 = objc_msgSend_copy(v25, v28, v29, v30, v31);
    string = v32->_string;
    v32->_string = v33;

    v32->_width = a4;
    v32->_height = a5;
    objc_storeStrong(&v32->_paragraphStyle, a6);
    v32->_cellWraps = a7;
    v32->_valueType = a8;
    v32->_paddingInsets.top = top;
    v32->_paddingInsets.left = left;
    v32->_paddingInsets.bottom = bottom;
    v32->_paddingInsets.right = right;
    v32->_verticalAlignment = a10;
    v32->_writingDirection = a11;
    v32->_naturalAlignment = a12;
    objc_storeWeak(&v32->_styleProvidingSource, v27);
  }

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_allocWithZone_(TSTLayoutContentCachedKey, a2, a3, v3, v4);
  v11 = objc_msgSend_string(self, v7, v8, v9, v10);
  objc_msgSend_width(self, v12, v13, v14, v15);
  v17 = v16;
  objc_msgSend_height(self, v18, v19, v20, v21);
  v23 = v22;
  v28 = objc_msgSend_paragraphStyle(self, v24, v25, v26, v27);
  v33 = objc_msgSend_cellWraps(self, v29, v30, v31, v32);
  v38 = objc_msgSend_valueType(self, v34, v35, v36, v37);
  objc_msgSend_paddingInsets(self, v39, v40, v41, v42);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v55 = objc_msgSend_verticalAlignment(self, v51, v52, v53, v54);
  v60 = objc_msgSend_writingDirection(self, v56, v57, v58, v59);
  v65 = objc_msgSend_naturalAlignment(self, v61, v62, v63, v64);
  v70 = objc_msgSend_styleProvidingSource(self, v66, v67, v68, v69);
  v74 = v65;
  v72 = objc_msgSend_initWithString_width_height_paragraphStyle_cellWraps_valueType_paddingInsets_verticalAlignment_writingDirection_naturalAlignment_styleProvidingSource_(v6, v71, v11, v28, v33, v38, v55, v60, v17, v23, v44, v46, v48, v50, v74, v70);

  return v72;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToLayoutContentCachedKey = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToLayoutContentCachedKey = objc_msgSend_isEqualToLayoutContentCachedKey_(self, v6, v5, v7, v8);
  }

  else
  {
    isEqualToLayoutContentCachedKey = 0;
  }

  return isEqualToLayoutContentCachedKey;
}

- (BOOL)isEqualToLayoutContentCachedKey:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    width = self->_width;
    objc_msgSend_width(v4, v5, v6, v7, v8);
    if (width == v15 || vabdd_f64(width, v15) < 0.00999999978) && ((height = self->_height, objc_msgSend_height(v9, v11, v12, v13, v14), height == v21) || vabdd_f64(height, v21) < 0.00999999978) && (cellWraps = self->_cellWraps, cellWraps == objc_msgSend_cellWraps(v9, v17, v18, v19, v20)) && (verticalAlignment = self->_verticalAlignment, verticalAlignment == objc_msgSend_verticalAlignment(v9, v23, v24, v25, v26)) && (writingDirection = self->_writingDirection, writingDirection == objc_msgSend_writingDirection(v9, v28, v29, v30, v31)) && (naturalAlignment = self->_naturalAlignment, naturalAlignment == objc_msgSend_naturalAlignment(v9, v33, v34, v35, v36)) && (valueType = self->_valueType, valueType == objc_msgSend_valueType(v9, v38, v39, v40, v41)) && (objc_msgSend_paddingInsets(v9, v43, v44, v45, v46), v48.f64[1] = v47, v50.f64[1] = v49, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_paddingInsets.top, v48), vceqq_f64(*&self->_paddingInsets.bottom, v50))))))
    {
      WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);
      v62 = objc_msgSend_styleProvidingSource(v9, v54, v55, v56, v57);
      if (WeakRetained == v62)
      {
        paragraphStyle = self->_paragraphStyle;
        v64 = objc_msgSend_paragraphStyle(v9, v58, v59, v60, v61);
        if (objc_msgSend_isEqual_(paragraphStyle, v65, v64, v66, v67))
        {
          string = self->_string;
          v73 = objc_msgSend_string(v9, v68, v69, v70, v71);
          isEqualToString = objc_msgSend_isEqualToString_(string, v74, v73, v75, v76);
        }

        else
        {
          isEqualToString = 0;
        }
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (UIEdgeInsets)paddingInsets
{
  top = self->_paddingInsets.top;
  left = self->_paddingInsets.left;
  bottom = self->_paddingInsets.bottom;
  right = self->_paddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);

  return WeakRetained;
}

@end