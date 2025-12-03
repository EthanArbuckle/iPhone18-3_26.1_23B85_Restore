@interface EQKitVBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)p_cacheErasableBounds;
- (EQKitVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitVBox

- (EQKitVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = EQKitVBox;
  result = [(EQKitCompoundBox *)&v6 initWithChildBoxes:boxes];
  if (result)
  {
    result->mPivotIndex = index;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_childBoxes(self, v9, v10, v11);
  v17 = objc_msgSend_pivotIndex(self, v13, v14, v15);

  return objc_msgSend_initWithChildBoxes_pivotIndex_(v8, v16, v12, v17);
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = self == equal;
  LOBYTE(self) = self == equal;
  if (equal)
  {
    if (!v4)
    {
      v6 = objc_opt_class();
      LODWORD(self) = objc_msgSend_isMemberOfClass_(equal, v7, v6, v8);
      if (self)
      {
        v12 = objc_msgSend_pivotIndex(selfCopy, v9, v10, v11);
        if (v12 == objc_msgSend_pivotIndex(equal, v13, v14, v15))
        {
          v19 = objc_msgSend_childBoxes(selfCopy, v16, v17, v18);
          self = objc_msgSend_childBoxes(equal, v20, v21, v22);
          if (v19 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            selfCopy2 = self;
            LOBYTE(self) = 0;
            if (v19 && selfCopy2)
            {

              LOBYTE(self) = objc_msgSend_isEqual_(v19, v23, selfCopy2, v24);
            }
          }
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitVBox;
  return [(EQKitCompoundBox *)&v3 hash];
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v41 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = EQKitVBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  if (context)
  {
    objc_msgSend_height(self, v8, v9, v10);
    v12 = v11;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = objc_msgSend_childBoxes(self, v13, v14, v15, 0);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v35, v40, 16);
    if (v18)
    {
      v22 = v18;
      v23 = y - v12;
      v24 = *v36;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v16);
          }

          v26 = *(*(&v35 + 1) + 8 * i);
          objc_msgSend_layoutHeight(v26, v19, v20, v21);
          v28 = v23 + v27;
          objc_msgSend_renderIntoContext_offset_(v26, v29, context, v30, x, v28);
          objc_msgSend_layoutDepth(v26, v31, v32, v33);
          v23 = v28 + v34;
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v35, v40, 16);
      }

      while (v22);
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v40 = *MEMORY[0x277D85DE8];
  objc_msgSend_height(self, a2, spec, v4);
  if ((*(spec + 6) | 2) == 2 && (v13 = v12, v37 = 0u, v38 = 0u, v35 = 0u, v36 = 0u, v14 = objc_msgSend_childBoxes(self, v9, v10, v11, 0), (v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v39, 16)) != 0))
  {
    v20 = v16;
    v21 = 0;
    v22 = y - v13;
    v23 = *v36;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v14);
        }

        v25 = *(*(&v35 + 1) + 8 * i);
        objc_msgSend_layoutHeight(v25, v17, v18, v19);
        v27 = v22 + v26;
        v21 |= objc_msgSend_appendOpticalAlignToSpec_offset_(v25, v28, spec, v29, x, v27);
        objc_msgSend_layoutDepth(v25, v30, v31, v32);
        v22 = v27 + v33;
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v35, v39, 16);
    }

    while (v20);
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  v40 = *MEMORY[0x277D85DE8];
  if (descendant == self)
  {
LABEL_12:
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_msgSend_height(self, a2, transform, descendant);
    v8 = v7;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = objc_msgSend_childBoxes(self, v9, v10, v11);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v35, v39, 16);
    if (v14)
    {
      v18 = v14;
      v19 = -v8;
      v20 = *v36;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v12);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          objc_msgSend_layoutHeight(v22, v15, v16, v17);
          v24 = v19 + v23;
          if (objc_msgSend_p_getTransform_fromDescendant_(v22, v25, transform, descendant))
          {
            v30 = *&transform->c;
            *&v33.a = *&transform->a;
            *&v33.c = v30;
            *&v33.tx = *&transform->tx;
            CGAffineTransformTranslate(&v34, &v33, 0.0, v24);
            v31 = *&v34.c;
            *&transform->a = *&v34.a;
            *&transform->c = v31;
            *&transform->tx = *&v34.tx;
            goto LABEL_12;
          }

          objc_msgSend_layoutDepth(v22, v26, v27, v28);
          v19 = v24 + v29;
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v35, v39, 16);
        LOBYTE(v14) = 0;
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objc_msgSend_height(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_depth(self, v10, v11, v12);
  v14 = v13;
  objc_msgSend_width(self, v15, v16, v17);
  v19 = v18;
  v23 = objc_msgSend_childBoxes(self, v20, v21, v22);
  v27 = objc_msgSend_pivotIndex(self, v24, v25, v26);
  return objc_msgSend_stringWithFormat_(v3, v28, @"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu", v29, v4, self, v9, v14, v19, v23, v27);
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  if (height || depth || width)
  {
    if (height)
    {
      *height = 0.0;
    }

    if (depth)
    {
      *depth = 0.0;
    }

    if (width)
    {
      *width = 0.0;
    }

    v9 = objc_msgSend_childBoxes(self, a2, height, depth);
    v13 = objc_msgSend_count(v9, v10, v11, v12);
    if (v13)
    {
      v17 = v13;
      v21 = v13 - 1;
      v22 = v13 - 1;
      if (objc_msgSend_pivotIndex(self, v14, v15, v16) < (v13 - 1))
      {
        v22 = objc_msgSend_pivotIndex(self, v18, v19, v20);
      }

      for (i = 0; v17 != i; ++i)
      {
        v24 = objc_msgSend_objectAtIndex_(v9, v18, i, v20);
        v26 = v24;
        if (i >= v22)
        {
          if (i <= v22)
          {
            if (height)
            {
              if (v22)
              {
                objc_msgSend_layoutHeight(v24, v18, v25, v20);
              }

              else
              {
                objc_msgSend_height(v24, v18, v25, v20);
              }

              *height = v29 + *height;
            }

            if (!depth)
            {
              goto LABEL_31;
            }

            if (v22 == v21)
            {
              objc_msgSend_depth(v26, v18, v25, v20);
            }

            else
            {
              objc_msgSend_layoutDepth(v26, v18, v25, v20);
            }

LABEL_29:
            heightCopy = depth;
LABEL_30:
            *heightCopy = v27 + *heightCopy;
            goto LABEL_31;
          }

          if (depth)
          {
            objc_msgSend_layoutVSize(v24, v18, v25, v20);
            goto LABEL_29;
          }
        }

        else if (height)
        {
          objc_msgSend_layoutVSize(v24, v18, v25, v20);
          heightCopy = height;
          goto LABEL_30;
        }

LABEL_31:
        if (width)
        {
          v30 = *width;
          objc_msgSend_width(v26, v18, v25, v20);
          if (v30 <= v32)
          {
            objc_msgSend_width(v26, v18, v31, v20);
          }

          else
          {
            v33 = *width;
          }

          *width = v33;
        }
      }
    }
  }
}

- (CGRect)p_cacheErasableBounds
{
  v53 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  objc_msgSend_height(self, a2, v2, v3);
  v10 = v9;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = objc_msgSend_childBoxes(self, v11, v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v48, v52, 16);
  if (v16)
  {
    v20 = v16;
    v21 = -v10;
    v22 = *v49;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        v24 = x;
        if (*v49 != v22)
        {
          objc_enumerationMutation(v14);
        }

        v25 = *(*(&v48 + 1) + 8 * i);
        objc_msgSend_layoutHeight(v25, v17, v18, v19, *&v46);
        v27 = v21 + v26;
        objc_msgSend_erasableBounds(v25, v28, v29, v30);
        x = v31;
        v33 = v32;
        v35 = v34;
        v47 = v27;
        v37 = v27 + v36;
        objc_msgSend_layoutDepth(v25, v38, v39, v40);
        v46 = v41;
        v54.origin.x = v24;
        v54.origin.y = y;
        v54.size.width = width;
        v54.size.height = height;
        if (CGRectIsEmpty(v54))
        {
          y = v37;
          width = v33;
          height = v35;
        }

        else
        {
          v55.origin.x = v24;
          v55.origin.y = y;
          v55.size.width = width;
          v55.size.height = height;
          v58.origin.x = x;
          v58.origin.y = v37;
          v58.size.width = v33;
          v58.size.height = v35;
          v56 = CGRectUnion(v55, v58);
          x = v56.origin.x;
          y = v56.origin.y;
          width = v56.size.width;
          height = v56.size.height;
        }

        v21 = v47 + v46;
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v48, v52, 16);
    }

    while (v20);
  }

  v42 = x;
  v43 = y;
  v44 = width;
  v45 = height;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

@end