@interface TSTLocalStylesKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSTLocalStylesKey

- (unint64_t)hash
{
  v5 = objc_msgSend_description(self, a2, v2, v3, v4);
  v10 = objc_msgSend_hash(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v9)
  {
    v10 = objc_msgSend_cellStyle(self, v5, v6, v7, v8);
    v19 = objc_msgSend_cellStyle(v9, v11, v12, v13, v14);
    if (v10 == v19)
    {
      isEqual = 1;
    }

    else
    {
      v24 = objc_msgSend_cellStyle(v9, v15, v16, v17, v18);
      if (v24)
      {
        v25 = objc_msgSend_cellStyle(self, v20, v21, v22, v23);
        v30 = objc_msgSend_cellStyle(v9, v26, v27, v28, v29);
        isEqual = objc_msgSend_isEqual_(v25, v31, v30, v32, v33);
      }

      else
      {
        isEqual = 0;
      }
    }

    v40 = objc_msgSend_textStyle(self, v36, v37, v38, v39);
    v49 = objc_msgSend_textStyle(v9, v41, v42, v43, v44);
    if (v40 == v49)
    {
      v64 = 1;
    }

    else
    {
      v54 = objc_msgSend_textStyle(v9, v45, v46, v47, v48);
      if (v54)
      {
        v55 = objc_msgSend_textStyle(self, v50, v51, v52, v53);
        v60 = objc_msgSend_textStyle(v9, v56, v57, v58, v59);
        v64 = objc_msgSend_isEqual_(v55, v61, v60, v62, v63);
      }

      else
      {
        v64 = 0;
      }
    }

    v35 = isEqual & v64;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TSTLocalStylesKey);
  v9 = objc_msgSend_cellStyle(self, v5, v6, v7, v8);
  objc_msgSend_setCellStyle_(v4, v10, v9, v11, v12);

  v17 = objc_msgSend_textStyle(self, v13, v14, v15, v16);
  objc_msgSend_setTextStyle_(v4, v18, v17, v19, v20);

  return v4;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_cellStyle(self, a2, v2, v3, v4);
  v12 = objc_msgSend_description(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_textStyle(self, v13, v14, v15, v16);
  v22 = objc_msgSend_description(v17, v18, v19, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(v6, v23, @"%@, %@", v24, v25, v12, v22);

  return v26;
}

@end