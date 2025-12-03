@interface TSDCAPropertyAnimationContextCache
- (TSDCAPropertyAnimationContextCache)initWithAnimation:(id)animation;
- (id)adjustedResultWithValue:(id)value;
- (id)interpolatedValueFrom:(id)from to:(id)to percent:(double)percent;
- (id)valueForKeyPath:(id)path atTime:(double)time animationCache:(id)cache;
@end

@implementation TSDCAPropertyAnimationContextCache

- (TSDCAPropertyAnimationContextCache)initWithAnimation:(id)animation
{
  animationCopy = animation;
  v17.receiver = self;
  v17.super_class = TSDCAPropertyAnimationContextCache;
  v7 = [(TSDCAAnimationContextCache *)&v17 initWithAnimation:animationCopy];
  if (v7)
  {
    v8 = objc_msgSend_keyPath(animationCopy, v5, v6);
    keyPath = v7->_keyPath;
    v7->_keyPath = v8;

    v7->_additive = objc_msgSend_isAdditive(animationCopy, v10, v11);
    if (objc_msgSend_isEqualToString_(v7->_keyPath, v12, @"transform.rotation") & 1) != 0 || (objc_msgSend_isEqualToString_(v7->_keyPath, v13, @"transform.rotation.x") & 1) != 0 || (objc_msgSend_isEqualToString_(v7->_keyPath, v13, @"transform.rotation.y"))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v7->_keyPath, v13, @"transform.rotation.z");
    }

    v7->_isAnimationKeyTypeOfRotation = isEqualToString;
    v7->_isAnimationKeyHidden = objc_msgSend_isEqualToString_(v7->_keyPath, v13, @"hidden");
    v7->_isAnimationKeyDoubleSided = objc_msgSend_isEqualToString_(v7->_keyPath, v15, @"doubleSided");
  }

  return v7;
}

- (id)valueForKeyPath:(id)path atTime:(double)time animationCache:(id)cache
{
  pathCopy = path;
  v11 = objc_msgSend_initialValues(cache, v9, v10);
  v13 = objc_msgSend_objectForKey_(v11, v12, pathCopy);

  v16 = objc_msgSend_keyPath(self, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v16, v17, pathCopy);

  if (isEqualToString)
  {
    v20 = objc_msgSend_valueAtTime_initialValue_(self, v19, v13, time);
  }

  else
  {
    v20 = v13;
  }

  v21 = v20;

  return v21;
}

- (id)adjustedResultWithValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    if (objc_msgSend_isAnimationKeyTypeOfRotation(self, v4, v5))
    {
      objc_msgSend_doubleValue(valueCopy, v7, v8);
      v12 = fmod(v9 + 3.14159265, 6.28318531) + -3.14159265;
      if (v12 < -3.14159265)
      {
        v12 = v12 + 6.28318531;
      }

      v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11, v12);
LABEL_11:
      v18 = v13;

      valueCopy = v18;
      goto LABEL_12;
    }

    if ((objc_msgSend_isAnimationKeyHidden(self, v7, v8) & 1) != 0 || objc_msgSend_isAnimationKeyDoubleSided(self, v14, v15))
    {
      objc_msgSend_floatValue(valueCopy, v14, v15);
      v16 = MEMORY[0x277CBEC28];
      if (v17 >= 0.5)
      {
        v16 = MEMORY[0x277CBEC38];
      }

      v13 = v16;
      goto LABEL_11;
    }
  }

LABEL_12:

  return valueCopy;
}

- (id)interpolatedValueFrom:(id)from to:(id)to percent:(double)percent
{
  fromCopy = from;
  toCopy = to;
  if (objc_msgSend_isObjectTypeCGColor(self, v10, v11))
  {
    v14 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v12, fromCopy);
    v16 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v15, toCopy);
    v18 = objc_msgSend_blendedColorWithFraction_ofColor_(v14, v17, v16, percent);
    v21 = objc_msgSend_CGColor(v18, v19, v20);

LABEL_7:
    goto LABEL_9;
  }

  if (objc_msgSend_isContentsAnimation(self, v12, v13))
  {
    objc_opt_class();
    v23 = TSUDynamicCast();
    v14 = v23;
    v31 = 0;
    v26 = 0uLL;
    v30 = 0u;
    if (v23)
    {
      objc_msgSend_TSDContentBlendValue(v23, v24, v25);
      v26 = v30;
    }

    v28 = v26;
    percentCopy = percent;
    v21 = objc_msgSend_valueWithContentBlend_(MEMORY[0x277CCAE60], v24, &v28);
    goto LABEL_7;
  }

  v21 = objc_msgSend_mixedObjectWithFraction_ofObject_(fromCopy, v22, toCopy, percent);
LABEL_9:

  return v21;
}

@end