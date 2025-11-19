@interface VFXTimingFunction
+ (id)functionWithCAMediaTimingFunction:(id)a3;
+ (id)functionWithMass:(float)a3 stiffness:(float)a4 damping:(float)a5 initialVelocity:(float)a6;
- (VFXTimingFunction)init;
- (VFXTimingFunction)initWithCoder:(id)a3;
- (VFXTimingFunction)initWithTimingFunctionRef:(__CFXTimingFunction *)a3;
- (double)perceptualDuration;
- (double)springCoefiscients;
- (double)springDuration;
- (float)bounce;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setBounce:(float)a3;
- (void)setDamping:(float)a3;
- (void)setInitialVelocity:(float)a3;
- (void)setMass:(float)a3;
- (void)setPerceptualDuration:(double)a3;
- (void)setSpringCoefiscients:(VFXTimingFunction *)self;
- (void)setStiffness:(float)a3;
@end

@implementation VFXTimingFunction

- (VFXTimingFunction)initWithTimingFunctionRef:(__CFXTimingFunction *)a3
{
  v7.receiver = self;
  v7.super_class = VFXTimingFunction;
  v4 = [(VFXTimingFunction *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_timingFunction = v5;
  }

  return v4;
}

- (VFXTimingFunction)init
{
  v5.receiver = self;
  v5.super_class = VFXTimingFunction;
  v2 = [(VFXTimingFunction *)&v5 init];
  if (v2)
  {
    sub_1AF120994(@"default");
    v2->_timingFunction = v3;
  }

  return v2;
}

- (void)dealloc
{
  timingFunction = self->_timingFunction;
  if (timingFunction)
  {
    CFRelease(timingFunction);
    self->_timingFunction = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXTimingFunction;
  [(VFXTimingFunction *)&v4 dealloc];
}

- (double)springCoefiscients
{
  v2 = 0;
  v3 = 0;
  sub_1AF120BE0(*(a1 + 8), &v3 + 1, &v3, &v2 + 1, &v2);
  return COERCE_DOUBLE(__PAIR64__(v3, HIDWORD(v3)));
}

+ (id)functionWithCAMediaTimingFunction:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = sub_1AF36FC84(a3, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [VFXTimingFunction alloc];
  v8 = objc_msgSend_initWithTimingFunctionRef_(v5, v6, v4, v7);

  return v8;
}

+ (id)functionWithMass:(float)a3 stiffness:(float)a4 damping:(float)a5 initialVelocity:(float)a6
{
  result = sub_1AF120B08(a3, a4, a5, a6);
  if (result)
  {
    v7 = result;
    v8 = [VFXTimingFunction alloc];
    v11 = objc_msgSend_initWithTimingFunctionRef_(v8, v9, v7, v10);
    CFRelease(v7);

    return v11;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (objc_msgSend_isSpring(self, a2, a3, v3))
  {
    objc_msgSend_springCoefiscients(self, v5, v6, v7);
    LODWORD(v9) = HIDWORD(v8);
    LODWORD(v11) = v10;
    LODWORD(v13) = v12;
    v17 = objc_msgSend_functionWithMass_stiffness_damping_initialVelocity_(VFXTimingFunction, v14, v15, v16, v8, v9, v11, v13);
  }

  else
  {
    v18 = objc_msgSend_caMediaTimingFunction(self, v5, v6, v7);
    v17 = objc_msgSend_functionWithCAMediaTimingFunction_(VFXTimingFunction, v19, v18, v20);
  }

  return v17;
}

- (double)perceptualDuration
{
  v8 = 0.0;
  if (objc_msgSend_isSpring(self, a2, v2, v3))
  {
    objc_msgSend_springCoefiscients(self, v5, v6, v7);
    if ((HIDWORD(v9) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      return sqrtf(*&v9 / *(&v9 + 1)) * 6.28318531;
    }
  }

  return v8;
}

- (double)springDuration
{
  v8 = 0.0;
  if (objc_msgSend_isSpring(self, a2, v2, v3))
  {
    objc_msgSend_springCoefiscients(self, v5, v6, v7);
    if ((HIDWORD(v9) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v10 == 0.0)
      {
        return 1000.0;
      }

      else
      {
        v11 = fmax((20.0 / v10), 1.0);
        return (v11 + v11) * 3.14159265 * sqrtf(*&v9 / *(&v9 + 1)) * *&v9;
      }
    }
  }

  return v8;
}

- (float)bounce
{
  isSpring = objc_msgSend_isSpring(self, a2, v2, v3);
  result = 0.0;
  if (isSpring)
  {
    objc_msgSend_springCoefiscients(self, v6, v7, v8, 0.0);
    v20 = v10;
    v12 = v11;
    v13 = v11;
    objc_msgSend_perceptualDuration(self, v14, v15, v16);
    v18 = v17 * v13 / (v20.f32[0] * 12.5663706);
    v19 = sqrtf(vmuls_lane_f32(v20.f32[0], v20, 1));
    if ((v12 / (v19 + v19)) <= 1.0)
    {
      return 1.0 - v18;
    }

    else
    {
      return 1.0 / v18 + -1.0;
    }
  }

  return result;
}

- (void)setSpringCoefiscients:(VFXTimingFunction *)self
{
  v4 = sub_1AF120B08(*&v2, *(&v2 + 1), *(&v2 + 2), *(&v2 + 3));
  v5 = sub_1AF120CF4(v4);
  *sub_1AF120CF4(self->_timingFunction) = *v5;
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setMass:(float)a3
{
  objc_msgSend_springCoefiscients(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v6, v7);
}

- (void)setStiffness:(float)a3
{
  objc_msgSend_springCoefiscients(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v6, v7);
}

- (void)setDamping:(float)a3
{
  objc_msgSend_springCoefiscients(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v6, v7);
}

- (void)setInitialVelocity:(float)a3
{
  objc_msgSend_springCoefiscients(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v6, v7);
}

- (void)setBounce:(float)a3
{
  if (objc_msgSend_isSpring(self, a2, v3, v4))
  {
    v6 = objc_alloc(MEMORY[0x1E69794A8]);
    objc_msgSend_perceptualDuration(self, v7, v8, v9);
    v35 = objc_msgSend_initWithPerceptualDuration_bounce_(v6, v10, v11, v12);
    objc_msgSend_mass(v35, v13, v14, v15);
    v17 = v16;
    objc_msgSend_stiffness(v35, v18, v19, v20);
    v22 = v21;
    objc_msgSend_damping(v35, v23, v24, v25);
    v27 = v26;
    objc_msgSend_initialVelocity(v35, v28, v29, v30);
    v32 = v31;
    v33 = sub_1AF120B08(v17, v22, v27, v32);
    v34 = sub_1AF120CF4(v33);
    *sub_1AF120CF4(self->_timingFunction) = *v34;
    if (v33)
    {
      CFRelease(v33);
    }
  }
}

- (void)setPerceptualDuration:(double)a3
{
  if (objc_msgSend_isSpring(self, a2, v3, v4))
  {
    v7 = objc_alloc(MEMORY[0x1E69794A8]);
    objc_msgSend_bounce(self, v8, v9, v10);
    v37 = objc_msgSend_initWithPerceptualDuration_bounce_(v7, v12, v13, v14, a3, v11);
    objc_msgSend_mass(v37, v15, v16, v17);
    v19 = v18;
    objc_msgSend_stiffness(v37, v20, v21, v22);
    v24 = v23;
    objc_msgSend_damping(v37, v25, v26, v27);
    v29 = v28;
    objc_msgSend_initialVelocity(v37, v30, v31, v32);
    v34 = v33;
    v35 = sub_1AF120B08(v19, v24, v29, v34);
    v36 = sub_1AF120CF4(v35);
    *sub_1AF120CF4(self->_timingFunction) = *v36;
    if (v35)
    {
      CFRelease(v35);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (sub_1AF120D3C(self->_timingFunction))
  {

    objc_msgSend_encodeBool_forKey_(a3, v5, 1, @"linear");
  }

  else
  {
    v7 = sub_1AF120BC4(self->_timingFunction);
    if (v7)
    {
      objc_msgSend_encodeBool_forKey_(a3, v6, 1, @"spring");
    }

    v8 = sub_1AF120CF4(self->_timingFunction);
    LODWORD(v9) = *v8;
    objc_msgSend_encodeFloat_forKey_(a3, v10, @"c0", v11, v9);
    LODWORD(v12) = v8[1];
    objc_msgSend_encodeFloat_forKey_(a3, v13, @"c1", v14, v12);
    LODWORD(v15) = v8[2];
    objc_msgSend_encodeFloat_forKey_(a3, v16, @"c2", v17, v15);
    LODWORD(v18) = v8[3];
    objc_msgSend_encodeFloat_forKey_(a3, v19, @"c3", v20, v18);
    if (v7)
    {
      LODWORD(v23) = v8[4];

      objc_msgSend_encodeFloat_forKey_(a3, v21, @"c4", v22, v23);
    }
  }
}

- (VFXTimingFunction)initWithCoder:(id)a3
{
  v31.receiver = self;
  v31.super_class = VFXTimingFunction;
  v6 = [(VFXTimingFunction *)&v31 init];
  if (v6)
  {
    if (objc_msgSend_decodeBoolForKey_(a3, v4, @"linear", v5))
    {
      sub_1AF120994(@"linear");
    }

    else
    {
      v10 = objc_msgSend_decodeBoolForKey_(a3, v7, @"spring", v8);
      objc_msgSend_decodeFloatForKey_(a3, v11, @"c0", v12);
      v14 = v13;
      objc_msgSend_decodeFloatForKey_(a3, v15, @"c1", v16);
      v18 = v17;
      objc_msgSend_decodeFloatForKey_(a3, v19, @"c2", v20);
      v22 = v21;
      objc_msgSend_decodeFloatForKey_(a3, v23, @"c3", v24);
      v28 = v27;
      if (v10)
      {
        objc_msgSend_decodeFloatForKey_(a3, v25, @"c4", v26);
        v9 = sub_1AF120A84(v14, v18, v22, v28, v29);
      }

      else
      {
        v9 = sub_1AF120C80(v14, v18, v22, v27);
      }
    }

    v6->_timingFunction = v9;
  }

  return v6;
}

@end