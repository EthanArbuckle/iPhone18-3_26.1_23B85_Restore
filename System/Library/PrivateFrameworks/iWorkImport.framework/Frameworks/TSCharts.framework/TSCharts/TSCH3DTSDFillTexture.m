@interface TSCH3DTSDFillTexture
+ (id)textureWithTSDFill:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSCH3DTSDFillTexture)initWithTSDFill:(id)a3;
- (id)databufferForDataCache:(id)a3;
- (unint64_t)hash;
@end

@implementation TSCH3DTSDFillTexture

+ (id)textureWithTSDFill:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithTSDFill_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DTSDFillTexture)initWithTSDFill:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DTSDFillTexture;
  v6 = [(TSCH3DTexture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fill, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    if (v5)
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      objc_opt_class();
      v7 = TSUDynamicCast();
      v12 = v7;
      if (v6)
      {
        v13 = v7 == 0;
      }

      else
      {
        v13 = 1;
      }

      if ((v13 || (objc_msgSend_imageData(v6, v8, v9, v10, v11), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_context(v14, v15, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageData(v12, v20, v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend_context(v24, v25, v26, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), v29, v24, v19, v14, v19 == v29)) && (v40.receiver = self, v40.super_class = TSCH3DTSDFillTexture, [(TSCH3DTexture *)&v40 isEqual:v4]))
      {
        fill = self->_fill;
        v31 = v5[2];
        v32 = fill;
        v34 = v31;
        if (v32 | v34)
        {
          isEqual = objc_msgSend_isEqual_(v32, v33, v35, v36, v37, v34);
        }

        else
        {
          isEqual = 1;
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = TSCH3DTSDFillTexture;
  v3 = [(TSCH3DTexture *)&v9 hash];
  return v3 + objc_msgSend_hash(self->_fill, v4, v5, v6, v7);
}

- (id)databufferForDataCache:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  v9 = v4;
  if (!v4)
  {
    goto LABEL_35;
  }

  objc_msgSend_fillSize(v4, v5, v6, v7, v8);
  v11 = v10;
  v13 = v12;
  v14 = v11;
  v15 = v13;
  if (v11 >= 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = -v14;
  }

  if ((v16 & (v16 - 1)) != 0)
  {
    if (v14)
    {
      v17 = v11;
      do
      {
        v18 = v17;
        v19 = v17 & -v17;
        v17 ^= v19;
      }

      while (v19 != v18);
    }

    else
    {
      v18 = 0;
    }

    if (2 * v18 - v14 >= v14 - v18)
    {
      v14 = v18;
    }

    else
    {
      v14 = 2 * v18;
    }
  }

  if (v15 >= 0)
  {
    v20 = v13;
  }

  else
  {
    v20 = -v15;
  }

  if ((v20 & (v20 - 1)) != 0)
  {
    if (v15)
    {
      v21 = v13;
      do
      {
        v22 = v21;
        v23 = v21 & -v21;
        v21 ^= v23;
      }

      while (v23 != v22);
    }

    else
    {
      v22 = 0;
    }

    if (2 * v22 - v15 >= v15 - v22)
    {
      v15 = v22;
    }

    else
    {
      v15 = 2 * v22;
    }
  }

  v24 = v14 >= 1024 ? 1024 : v14;
  v25 = v15 >= 1024 ? 1024 : v15;
  v31 = __PAIR64__(v25, v24);
  if (v14 >= 1 && v15 >= 1)
  {
    v29 = objc_opt_class();
    v30 = 0;
    v26 = sub_2761D67F0(&v29, v9, &v31, 4);
  }

  else
  {
LABEL_35:

    v29 = objc_opt_class();
    v30 = 0;
    fill = self->_fill;
    v31 = 0x10000000100;
    v26 = sub_2761D68A0(&v29, fill, &v31, 4);
  }

  return v26;
}

@end