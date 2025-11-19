@interface KNAnimationEffect
+ (NSDictionary)defaultAttributes;
+ (id)updateDirectionAttributeValue:(int64_t)a3 andCustomTextDirectionValue:(unint64_t)a4 turnOffBounce:(BOOL)a5 turnOffMotionBlur:(BOOL)a6 forAttributes:(id)a7;
- (CATransform3D)mvpMatrixWithContext:(SEL)a3;
- (CATransform3D)mvpMatrixWithTexture:(SEL)a3 andFrame:(id)a4;
- (CATransform3D)perspectiveMVPMatrixWithContext:(SEL)a3;
- (CATransform3D)perspectiveMVPMatrixWithTexture:(SEL)a3 andFrame:(id)a4;
- (KNAnimationEffect)initWithAnimationContext:(id)a3;
@end

@implementation KNAnimationEffect

- (KNAnimationEffect)initWithAnimationContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = KNAnimationEffect;
  result = [(KNAnimationEffect *)&v5 init];
  if (result)
  {
    result->mAnimationContext = a3;
  }

  return result;
}

+ (NSDictionary)defaultAttributes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"KNBuildAttributesDefaultDuration";
  v4[0] = &unk_2884F3C78;
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v4, &v3, 1);
}

+ (id)updateDirectionAttributeValue:(int64_t)a3 andCustomTextDirectionValue:(unint64_t)a4 turnOffBounce:(BOOL)a5 turnOffMotionBlur:(BOOL)a6 forAttributes:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = objc_msgSend_mutableCopy(a7, a2, a3);
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, a3);
  objc_msgSend_setObject_forKey_(v12, v15, v14, @"KNBuildAttributesDirection");
  if (!objc_msgSend_objectForKey_(a7, v16, @"KNBuildCustomAttributesTextDelivery"))
  {
    objc_msgSend_setObject_forKey_(v12, v17, &unk_2884F3600, @"KNBuildCustomAttributesTextDelivery");
  }

  v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v17, a4);
  objc_msgSend_setObject_forKey_(v12, v19, v18, @"KNBuildCustomAttributesDeliveryOption");
  if (v9)
  {
    objc_msgSend_setObject_forKey_(v12, v20, MEMORY[0x277CBEC28], @"KNBuildCustomAttributesBounce");
  }

  if (v8)
  {
    objc_msgSend_setObject_forKey_(v12, v20, MEMORY[0x277CBEC28], @"KNBuildCustomAttributesMotionBlur");
  }

  return v12;
}

- (CATransform3D)mvpMatrixWithContext:(SEL)a3
{
  if (!objc_msgSend_isTransition(a4, a3, a4))
  {
    v10 = objc_msgSend_textures(a4, v7, v8);
    Object = objc_msgSend_firstObject(v10, v11, v12);
    if (objc_msgSend_isMetalRenderer(a4, v14, v15))
    {
      objc_msgSend_slideRect(self->mAnimationContext, v16, v17);
    }

    else
    {
      result = objc_msgSend_drawableFrame(a4, v16, v17);
      if (!self)
      {
        goto LABEL_8;
      }
    }

    result = objc_msgSend_mvpMatrixWithTexture_andFrame_(self, v18, Object);
    goto LABEL_9;
  }

  result = self->mAnimationContext;
  if (!result)
  {
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_9;
  }

  result = objc_msgSend_slideProjectionMatrix(result, v7, v8);
LABEL_9:
  *&retstr->m31 = v23;
  *&retstr->m33 = v24;
  *&retstr->m41 = v25;
  *&retstr->m43 = v26;
  *&retstr->m11 = v19;
  *&retstr->m13 = v20;
  *&retstr->m21 = v21;
  *&retstr->m23 = v22;
  return result;
}

- (CATransform3D)mvpMatrixWithTexture:(SEL)a3 andFrame:(id)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  TSDTransform3DMakeOrtho();
  v13 = objc_msgSend_parent(a4, v11, v12);
  objc_msgSend_frame(v13, v14, v15);
  v17 = v16;
  objc_msgSend_frame(a4, v18, v19);
  v21 = v17 + v20;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v22 = v21 - CGRectGetMinX(v45);
  v25 = objc_msgSend_parent(a4, v23, v24);
  objc_msgSend_frame(v25, v26, v27);
  v29 = v28;
  objc_msgSend_frame(a4, v30, v31);
  v32 = v29 + CGRectGetMaxY(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  MaxY = CGRectGetMaxY(v47);
  v34 = *&retstr->m33;
  *&v43.m31 = *&retstr->m31;
  *&v43.m33 = v34;
  v35 = *&retstr->m43;
  *&v43.m41 = *&retstr->m41;
  *&v43.m43 = v35;
  v36 = *&retstr->m13;
  *&v43.m11 = *&retstr->m11;
  *&v43.m13 = v36;
  v37 = *&retstr->m23;
  *&v43.m21 = *&retstr->m21;
  *&v43.m23 = v37;
  result = CATransform3DTranslate(&v44, &v43, v22, -(v32 - MaxY), 0.0);
  v39 = *&v44.m33;
  *&retstr->m31 = *&v44.m31;
  *&retstr->m33 = v39;
  v40 = *&v44.m43;
  *&retstr->m41 = *&v44.m41;
  *&retstr->m43 = v40;
  v41 = *&v44.m13;
  *&retstr->m11 = *&v44.m11;
  *&retstr->m13 = v41;
  v42 = *&v44.m23;
  *&retstr->m21 = *&v44.m21;
  *&retstr->m23 = v42;
  return result;
}

- (CATransform3D)perspectiveMVPMatrixWithContext:(SEL)a3
{
  if (!objc_msgSend_isTransition(a4, a3, a4))
  {
    v10 = objc_msgSend_textures(a4, v7, v8);
    Object = objc_msgSend_firstObject(v10, v11, v12);
    if (objc_msgSend_isMetalRenderer(a4, v14, v15))
    {
      objc_msgSend_slideRect(self->mAnimationContext, v16, v17);
    }

    else
    {
      result = objc_msgSend_drawableFrame(a4, v16, v17);
      if (!self)
      {
        goto LABEL_8;
      }
    }

    result = objc_msgSend_perspectiveMVPMatrixWithTexture_andFrame_(self, v18, Object);
    goto LABEL_9;
  }

  result = self->mAnimationContext;
  if (!result)
  {
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_9;
  }

  result = objc_msgSend_slideProjectionMatrix(result, v7, v8);
LABEL_9:
  *&retstr->m31 = v23;
  *&retstr->m33 = v24;
  *&retstr->m41 = v25;
  *&retstr->m43 = v26;
  *&retstr->m11 = v19;
  *&retstr->m13 = v20;
  *&retstr->m21 = v21;
  *&retstr->m23 = v22;
  return result;
}

- (CATransform3D)perspectiveMVPMatrixWithTexture:(SEL)a3 andFrame:(id)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = objc_msgSend_parent(a4, a3, a4);
  objc_msgSend_frame(v12, v13, v14);
  v16 = v15;
  objc_msgSend_frame(a4, v17, v18);
  v20 = v16 + v19;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v48 = v20 - CGRectGetMinX(v53);
  v23 = objc_msgSend_parent(a4, v21, v22);
  objc_msgSend_frame(v23, v24, v25);
  v27 = v26;
  objc_msgSend_frame(a4, v28, v29);
  v30 = v27 + CGRectGetMaxY(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v31 = v30 - CGRectGetMaxY(v55);
  objc_msgSend_fieldOfViewInRadians(self->mAnimationContext, v32, v33);
  v35 = tan(v34 * 0.5);
  v36 = height / (v35 + v35);
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  objc_msgSend_fieldOfViewInRadians(self->mAnimationContext, v37, v38);
  TSDTransform3DMakeProjection();
  memset(&v52, 0, sizeof(v52));
  CATransform3DMakeTranslation(&v52, width * -0.5 - x + x + v48, height * -0.5 - y + y - v31, -v36);
  a = v52;
  v39 = *&retstr->m33;
  *&b.m31 = *&retstr->m31;
  *&b.m33 = v39;
  v40 = *&retstr->m43;
  *&b.m41 = *&retstr->m41;
  *&b.m43 = v40;
  v41 = *&retstr->m13;
  *&b.m11 = *&retstr->m11;
  *&b.m13 = v41;
  v42 = *&retstr->m23;
  *&b.m21 = *&retstr->m21;
  *&b.m23 = v42;
  result = CATransform3DConcat(&v51, &a, &b);
  v44 = *&v51.m33;
  *&retstr->m31 = *&v51.m31;
  *&retstr->m33 = v44;
  v45 = *&v51.m43;
  *&retstr->m41 = *&v51.m41;
  *&retstr->m43 = v45;
  v46 = *&v51.m13;
  *&retstr->m11 = *&v51.m11;
  *&retstr->m13 = v46;
  v47 = *&v51.m23;
  *&retstr->m21 = *&v51.m21;
  *&retstr->m23 = v47;
  return result;
}

@end