@interface EQKitHBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)p_cacheErasableBounds;
- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitHBox

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = EQKitHBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  if (a3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = objc_msgSend_childBoxes(self, v8, v9, v10, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v29, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          objc_msgSend_renderIntoContext_offset_(v19, v14, a3, v15, x, y);
          objc_msgSend_width(v19, v20, v21, v22);
          x = x + v23;
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v24, v29, 16);
      }

      while (v16);
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v56 = *MEMORY[0x277D85DE8];
  v9 = *(a3 + 6);
  if (v9 == 2)
  {
    objc_msgSend_width(self, a2, a3, v4);
    v24 = v23;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v28 = objc_msgSend_childBoxes(self, v25, v26, v27, 0);
    v32 = objc_msgSend_reverseObjectEnumerator(v28, v29, v30, v31);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v46, v54, 16);
    if (v12)
    {
      v37 = v12;
      v38 = x + v24;
      v39 = *v47;
LABEL_14:
      v40 = 0;
      while (1)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(v32);
        }

        v41 = *(*(&v46 + 1) + 8 * v40);
        objc_msgSend_width(v41, v34, v35, v36);
        v38 = v38 - v42;
        if (objc_msgSend_appendOpticalAlignToSpec_offset_(v41, v43, a3, v44, v38, y))
        {
          goto LABEL_21;
        }

        if (v37 == ++v40)
        {
          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v46, v54, 16);
          LOBYTE(v12) = 0;
          if (v37)
          {
            goto LABEL_14;
          }

          return v12;
        }
      }
    }
  }

  else
  {
    if (v9)
    {
      LOBYTE(v12) = 0;
      return v12;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = objc_msgSend_childBoxes(self, a2, a3, v4);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v50, v55, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v51;
LABEL_5:
      v17 = 0;
      while (1)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v50 + 1) + 8 * v17);
        if (objc_msgSend_appendOpticalAlignToSpec_offset_(v18, v13, a3, v14, x, y))
        {
          break;
        }

        objc_msgSend_width(v18, v19, v20, v21);
        x = x + v22;
        if (v15 == ++v17)
        {
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v50, v55, 16);
          LOBYTE(v12) = 0;
          if (v15)
          {
            goto LABEL_5;
          }

          return v12;
        }
      }

LABEL_21:
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if (a4 == self)
  {
LABEL_12:
    LOBYTE(v8) = 1;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = objc_msgSend_childBoxes(self, a2, a3, a4);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v25;
      v12 = 0.0;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          if (objc_msgSend_p_getTransform_fromDescendant_(v14, v9, a3, a4))
          {
            v19 = *&a3->c;
            *&v22.a = *&a3->a;
            *&v22.c = v19;
            *&v22.tx = *&a3->tx;
            CGAffineTransformTranslate(&v23, &v22, v12, 0.0);
            v20 = *&v23.c;
            *&a3->a = *&v23.a;
            *&a3->c = v20;
            *&a3->tx = *&v23.tx;
            goto LABEL_12;
          }

          objc_msgSend_width(v14, v15, v16, v17);
          v12 = v12 + v18;
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
        LOBYTE(v8) = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  return v8;
}

- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a3 && !a4 && !a5)
  {
    return;
  }

  if (a5)
  {
    *a5 = 0.0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = objc_msgSend_childBoxes(self, a2, a3, a4, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
  if (!v10)
  {
    v16 = 1;
    if (a3)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v14 = v10;
  v15 = *v29;
  v16 = 1;
  do
  {
    v17 = 0;
    do
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v28 + 1) + 8 * v17);
      objc_msgSend_vsize(v18, v11, v12, v13);
      if (v19 == 0.0)
      {
        goto LABEL_24;
      }

      if (a3)
      {
        if ((v16 & 1) != 0 || (v20 = *a3, objc_msgSend_height(v18, v11, v12, v13), v20 <= v21))
        {
          objc_msgSend_height(v18, v11, v12, v13);
        }

        else
        {
          v22 = *a3;
        }

        *a3 = v22;
      }

      if (a4)
      {
        if ((v16 & 1) != 0 || (v23 = *a4, objc_msgSend_depth(v18, v11, v12, v13), v23 <= v24))
        {
          objc_msgSend_depth(v18, v11, v12, v13);
        }

        else
        {
          v25 = *a4;
        }

        v16 = 0;
        *a4 = v25;
LABEL_24:
        if (!a5)
        {
          goto LABEL_26;
        }

LABEL_25:
        objc_msgSend_width(v18, v11, v12, v13);
        *a5 = v26 + *a5;
        goto LABEL_26;
      }

      v16 = 0;
      if (a5)
      {
        goto LABEL_25;
      }

LABEL_26:
      ++v17;
    }

    while (v14 != v17);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v28, v32, 16);
    v14 = v27;
  }

  while (v27);
  if (!a3)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v16)
  {
    *a3 = 0.0;
  }

LABEL_36:
  if (((a4 != 0) & v16) == 1)
  {
    *a4 = 0.0;
  }
}

- (CGRect)p_cacheErasableBounds
{
  v41 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = objc_msgSend_childBoxes(self, a2, v2, v3);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v36, v40, 16);
  if (v10)
  {
    v14 = v10;
    v15 = *v37;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        objc_msgSend_erasableBounds(v18, v11, v12, v13);
        v20 = v19;
        v22 = v21;
        r2 = v23;
        v25 = v16 + v24;
        objc_msgSend_width(v18, v26, v27, v28);
        v35 = v29;
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        if (CGRectIsEmpty(v42))
        {
          x = v25;
          y = v20;
          width = v22;
          height = r2;
        }

        else
        {
          v43.origin.x = x;
          v43.origin.y = y;
          v43.size.width = width;
          v43.size.height = height;
          v46.origin.x = v25;
          v46.origin.y = v20;
          v46.size.width = v22;
          v46.size.height = r2;
          v44 = CGRectUnion(v43, v46);
          x = v44.origin.x;
          y = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
        }

        v16 = v16 + v35;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v36, v40, 16);
    }

    while (v14);
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

@end