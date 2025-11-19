@interface VFXKeyframeAnimation
- (BOOL)autoreverses;
- (BOOL)isAdditive;
- (BOOL)isCumulative;
- (BOOL)isRemovedOnCompletion;
- (double)duration;
- (double)repeatDuration;
- (double)timeOffset;
- (float)repeatCount;
- (float)speed;
- (id)animationEvents;
- (id)biasValues;
- (id)continuityValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fillMode;
- (id)keyPath;
- (id)keyTimes;
- (id)tensionValues;
- (id)timingFunction;
- (id)timingFunctions;
- (id)values;
- (void)_clearCFXCache;
- (void)_convertToCA;
- (void)dealloc;
- (void)setAdditive:(BOOL)a3;
- (void)setAnimationEvents:(id)a3;
- (void)setAutoreverses:(BOOL)a3;
- (void)setBiasValues:(id)a3;
- (void)setCfxAnimation:(__CFXKeyframedAnimation *)a3;
- (void)setContinuityValues:(id)a3;
- (void)setCumulative:(BOOL)a3;
- (void)setDuration:(double)a3;
- (void)setFillMode:(id)a3;
- (void)setKeyPath:(id)a3;
- (void)setKeyTimes:(id)a3;
- (void)setRemovedOnCompletion:(BOOL)a3;
- (void)setRepeatCount:(float)a3;
- (void)setRepeatDuration:(double)a3;
- (void)setSpeed:(float)a3;
- (void)setTensionValues:(id)a3;
- (void)setTimeOffset:(double)a3;
- (void)setTimingFunction:(id)a3;
- (void)setTimingFunctions:(id)a3;
- (void)setValues:(id)a3;
@end

@implementation VFXKeyframeAnimation

- (void)dealloc
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    CFRelease(cfxAnimation);
    self->_cfxAnimation = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v4 dealloc];
}

- (void)_convertToCA
{
  v94 = *MEMORY[0x1E69E9840];
  self->_caReady = 1;
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    v91 = self;
    v90 = CFRetain(cfxAnimation);
    v4 = sub_1AF11D8C8(v90);
    v89 = sub_1AF11CA18(v4);
    v5 = sub_1AF11C9D0(v4);
    v6 = v5;
    v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v7, v5, v8);
    v12 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v10, v5, v11);
    v13 = sub_1AF11D654(v4);
    if (v5)
    {
      v14 = !v13;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = 0;
      do
      {
        v16 = sub_1AF11D674(v4, v15);
        v17 = sub_1AF11D680(v4, v15);
        v18 = sub_1AF11D68C(v4, v15);
        v22 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, v21, v16);
        objc_msgSend_addObject_(0, v23, v22, v24);
        v28 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, v27, v17);
        objc_msgSend_addObject_(0, v29, v28, v30);
        v34 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v31, v32, v33, v18);
        objc_msgSend_addObject_(0, v35, v34, v36);
        ++v15;
      }

      while (v6 != v15);
    }

    memset(__dst, 0, sizeof(__dst));
    v37 = sub_1AF11D698(v4);
    if (v6 && v37)
    {
      v38 = 0;
      v39 = 0.0;
      v40 = 1;
      do
      {
        v92 = v39;
        v41 = sub_1AF11D6CC(v4, v38);
        v45 = sub_1AF11D6B8(v4, v38);
        if ((v40 & 1) == 0)
        {
          LODWORD(v46) = HIDWORD(v92);
          LODWORD(v47) = HIDWORD(*v41);
          v48 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x1E69793D0], v42, v43, v44, v92, v46, *v41, v47);
          objc_msgSend_addObject_(0, v49, v48, v50);
        }

        v40 = 0;
        v39 = *v45;
        ++v38;
      }

      while (v6 != v38);
    }

    *&v53 = sub_1AF112A24(v90);
    if (v6)
    {
      v54 = 0;
      if (*&v53 == 0.0)
      {
        *&v53 = 1.0;
      }

      v55 = *&v53;
      while (1)
      {
        v56 = sub_1AF11CA60(v4, v54);
        sub_1AF11CAD0(v4, v54, __dst);
        v60 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v57, v58, v59, v56 / v55);
        objc_msgSend_addObject_(v9, v61, v60, v62);
        v66 = sub_1AF376790(__dst, v89, v65, v63, v64);
        if (!v66)
        {
          break;
        }

        objc_msgSend_addObject_(v12, v67, v66, v68);
        if (v6 == ++v54)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_29;
    }

LABEL_20:
    objc_msgSend_setKeyTimes_(v91, v51, v9, v52, v53);
    objc_msgSend_setValues_(v91, v69, v12, v70);
    objc_msgSend_setContinuityValues_(v91, v71, 0, v72);
    objc_msgSend_setTensionValues_(v91, v73, 0, v74);
    objc_msgSend_setBiasValues_(v91, v75, 0, v76);
    objc_msgSend_setTimingFunctions_(v91, v77, 0, v78);
    v79 = sub_1AF11CFA4(v4);
    if (sub_1AF11CEF0(v4) == 1)
    {
      v82 = MEMORY[0x1E69795B8];
      if (v79 == 2)
      {
        v82 = MEMORY[0x1E6979598];
      }
    }

    else
    {
      if (v79 > 2)
      {
LABEL_27:
        v83 = sub_1AF11C79C(v4);
        objc_msgSend_setDuration_(v91, v84, v85, v86, v83);
        sub_1AF298E6C(v91, v90);
LABEL_29:
        objc_msgSend_setCfxAnimation_(v91, v87, v90, v88);
        CFRelease(v90);
        return;
      }

      v82 = qword_1E7A7E490[v79];
    }

    objc_msgSend_setCalculationMode_(v91, v80, *v82, v81);
    goto LABEL_27;
  }
}

- (void)_clearCFXCache
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    CFRelease(cfxAnimation);
  }

  self->_cfxAnimation = 0;
}

- (id)values
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v6 values];
}

- (void)setValues:(id)a3
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, a3, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 setValues:a3];
}

- (id)keyTimes
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v6 keyTimes];
}

- (void)setKeyTimes:(id)a3
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, a3, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 setKeyTimes:a3];
}

- (id)timingFunctions
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v6 timingFunctions];
}

- (void)setTimingFunctions:(id)a3
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, a3, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 setTimingFunctions:a3];
}

- (id)tensionValues
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v6 tensionValues];
}

- (void)setTensionValues:(id)a3
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, a3, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 setTensionValues:a3];
}

- (id)continuityValues
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v6 continuityValues];
}

- (void)setContinuityValues:(id)a3
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, a3, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 setContinuityValues:a3];
}

- (id)biasValues
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v6 biasValues];
}

- (void)setBiasValues:(id)a3
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, a3, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 setBiasValues:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_caReady || !self->_cfxAnimation)
  {
    v21.receiver = self;
    v21.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v21 copyWithZone:a3];
  }

  else
  {
    v4 = objc_alloc_init(objc_opt_class());
    v5 = sub_1AF113C58(self->_cfxAnimation);
    objc_msgSend_setCfxAnimation_(v4, v6, v5, v7);
    CFRelease(v5);
    v11 = objc_msgSend_keyPath(self, v8, v9, v10);
    objc_msgSend_setKeyPath_(v4, v12, v11, v13);
    v17 = objc_msgSend_delegate(self, v14, v15, v16);
    objc_msgSend_setDelegate_(v4, v18, v17, v19);
  }

  return v4;
}

- (id)description
{
  if (self->_caReady)
  {
    v15.receiver = self;
    v15.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v15 description];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    objc_msgSend_duration(self, a2, v2, v3);
    v8 = v7;
    v12 = objc_msgSend_keyPath(self, v9, v10, v11);
    return objc_msgSend_stringWithFormat_(v6, v13, @"VFXKeyframeAnimation %p (duration=%f, keyPath:%@)", v14, self, v8, v12);
  }
}

- (void)setCfxAnimation:(__CFXKeyframedAnimation *)a3
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation != a3)
  {
    if (cfxAnimation)
    {
      CFRelease(cfxAnimation);
      self->_cfxAnimation = 0;
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_cfxAnimation = v6;
  }
}

- (void)setDuration:(double)a3
{
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      v7 = a3;
      sub_1AF1129D0(cfxAnimation, v7);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v9 setDuration:a3];
    return;
  }

  v8 = a3;

  sub_1AF1129D0(cfxAnimation, v8);
}

- (double)duration
{
  if (self->_cfxAnimation)
  {
    return sub_1AF112A24(self->_cfxAnimation);
  }

  v3.receiver = self;
  v3.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v3 duration];
  return result;
}

- (void)setKeyPath:(id)a3
{
  if (!self->_cfxAnimation)
  {
    goto LABEL_5;
  }

  v5 = sub_1AF28A40C(a3);
  sub_1AF112944(self->_cfxAnimation, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (self->_caReady)
  {
LABEL_5:
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 setKeyPath:a3];
  }
}

- (id)keyPath
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation && (v4 = sub_1AF112998(cfxAnimation)) != 0)
  {
    v5 = sub_1AF28A428(v4);

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v7 keyPath];
  }
}

- (void)setRepeatCount:(float)a3
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    sub_1AF112B00(cfxAnimation, a3);
  }

  if (self->_caReady)
  {
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    *&v6 = a3;
    [(VFXKeyframeAnimation *)&v7 setRepeatCount:v6];
  }
}

- (float)repeatCount
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112B54(cfxAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 repeatCount];
  }

  return result;
}

- (void)setRepeatDuration:(double)a3
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, v3, v4);
  }

  v7.receiver = self;
  v7.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v7 setRepeatDuration:a3];
}

- (double)repeatDuration
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 repeatDuration];
  return result;
}

- (void)setAutoreverses:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112B9C(cfxAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setAutoreverses:v3];
    return;
  }

  sub_1AF112B9C(cfxAnimation, a3);
}

- (BOOL)autoreverses
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112BFC(cfxAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 autoreverses];
  }
}

- (void)setTimeOffset:(double)a3
{
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF11307C(cfxAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setTimeOffset:a3];
    return;
  }

  sub_1AF11307C(cfxAnimation, a3);
}

- (double)timeOffset
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF1130D0(cfxAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 timeOffset];
  }

  return result;
}

- (void)setSpeed:(float)a3
{
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF113118(cfxAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = VFXKeyframeAnimation;
    *&v7 = a3;
    [(VFXKeyframeAnimation *)&v8 setSpeed:v7];
    return;
  }

  sub_1AF113118(cfxAnimation, a3);
}

- (float)speed
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF11316C(cfxAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 speed];
  }

  return result;
}

- (void)setRemovedOnCompletion:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112ECC(cfxAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setRemovedOnCompletion:v3];
    return;
  }

  sub_1AF112ECC(cfxAnimation, a3);
}

- (BOOL)isRemovedOnCompletion
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112E80(cfxAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 isRemovedOnCompletion];
  }
}

- (void)setFillMode:(id)a3
{
  cfxAnimation = self->_cfxAnimation;
  if (self->_caReady)
  {
    if (cfxAnimation)
    {
      v7 = sub_1AF290524(a3, a2, a3, v3);
      sub_1AF113614(cfxAnimation, v7);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v9 setFillMode:a3];
    return;
  }

  v8 = sub_1AF290524(a3, a2, a3, v3);

  sub_1AF113614(cfxAnimation, v8);
}

- (id)fillMode
{
  if (self->_cfxAnimation)
  {
    v2 = sub_1AF1135C8(self->_cfxAnimation);

    return sub_1AF290614(v2);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v4 fillMode];
  }
}

- (void)setAnimationEvents:(id)a3
{
  cfxAnimation = self->_cfxAnimation;
  if (self->_caReady)
  {
    if (cfxAnimation)
    {
      v7 = sub_1AF290784(a3, a2, a3, v3);
      sub_1AF113490(cfxAnimation, v7);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v9 = objc_msgSend_copy(a3, a2, a3, v3);
    v10.receiver = self;
    v10.super_class = VFXKeyframeAnimation;
    [(CAAnimation *)&v10 setAnimationEvents:v9];

    return;
  }

  v8 = sub_1AF290784(a3, a2, a3, v3);

  sub_1AF113490(cfxAnimation, v8);
}

- (id)animationEvents
{
  if (self->_cfxAnimation)
  {
    v2 = sub_1AF113448(self->_cfxAnimation);

    return sub_1AF290934(v2);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = VFXKeyframeAnimation;
    return [(CAAnimation *)&v4 animationEvents];
  }
}

- (void)setTimingFunction:(id)a3
{
  cfxAnimation = self->_cfxAnimation;
  if (self->_caReady)
  {
    if (cfxAnimation)
    {
      v6 = sub_1AF36FC84(a3, a2);
      sub_1AF112C48(cfxAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v8 setTimingFunction:a3];
    return;
  }

  v7 = sub_1AF36FC84(a3, a2);

  sub_1AF112C48(cfxAnimation, v7);
}

- (id)timingFunction
{
  if (self->_cfxAnimation)
  {
    result = sub_1AF112CC8(self->_cfxAnimation);
    if (result)
    {

      return sub_1AF36FD0C(result);
    }
  }

  else
  {
    v3.receiver = self;
    v3.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v3 timingFunction];
  }

  return result;
}

- (void)setAdditive:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112D10(cfxAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setAdditive:v3];
    return;
  }

  sub_1AF112D10(cfxAnimation, a3);
}

- (BOOL)isAdditive
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112E34(cfxAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 isAdditive];
  }
}

- (void)setCumulative:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112DC8(cfxAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setCumulative:v3];
    return;
  }

  sub_1AF112DC8(cfxAnimation, a3);
}

- (BOOL)isCumulative
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112D7C(cfxAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 isCumulative];
  }
}

@end