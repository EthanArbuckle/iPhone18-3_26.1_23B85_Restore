@interface TSDGradientStop
+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4;
+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5;
- (BOOL)isEqual:(id)a3;
- (TSDGradientStop)gradientStopWithColor:(id)a3;
- (TSDGradientStop)gradientStopWithInflection:(double)a3;
- (TSDGradientStop)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDGradientStop)initWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5;
- (TSDGradientStop)initWithGradientStop:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDGradientStop

- (TSDGradientStop)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = objc_alloc(MEMORY[0x277D81180]);
  if (*(a3 + 3))
  {
    v8 = objc_msgSend_initWithMessage_(v6, v7, *(a3 + 3));
  }

  else
  {
    v8 = objc_msgSend_initWithMessage_(v6, v7, MEMORY[0x277D809E8]);
  }

  v10 = v8;
  v11 = objc_msgSend_initWithColor_fraction_inflection_(self, v9, v8, *(a3 + 8), *(a3 + 9));

  return v11;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v18 = a4;
  v9 = objc_msgSend_color(self, v6, v7);
  *(a3 + 4) |= 1u;
  v10 = *(a3 + 3);
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C9BAF0](v11);
    *(a3 + 3) = v10;
  }

  objc_msgSend_saveToMessage_(v9, v8, v10);

  objc_msgSend_fraction(self, v12, v13);
  *&v14 = v14;
  *(a3 + 4) |= 2u;
  *(a3 + 8) = LODWORD(v14);
  objc_msgSend_inflection(self, v15, v16);
  *&v17 = v17;
  *(a3 + 4) |= 4u;
  *(a3 + 9) = LODWORD(v17);
}

- (TSDGradientStop)initWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = TSDGradientStop;
  v9 = [(TSDGradientStop *)&v17 init];
  v11 = v9;
  if (v9)
  {
    objc_msgSend_p_setColor_(v9, v10, v8);
    objc_msgSend_i_setFraction_(v11, v12, v13, a4);
    objc_msgSend_p_setInflection_(v11, v14, v15, a5);
  }

  return v11;
}

- (TSDGradientStop)initWithGradientStop:(id)a3
{
  if (self)
  {
    v3 = self;
    v4 = a3;
    v7 = objc_msgSend_color(v4, v5, v6);
    objc_msgSend_fraction(v4, v8, v9);
    v11 = v10;
    objc_msgSend_inflection(v4, v12, v13);
    v15 = v14;

    v17 = objc_msgSend_initWithColor_fraction_inflection_(v3, v16, v7, v11, v15);
    return v17;
  }

  return self;
}

+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v9 = objc_msgSend_initWithColor_fraction_inflection_(v7, v8, v6, a4, 0.5);

  return v9;
}

+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  v11 = objc_msgSend_initWithColor_fraction_inflection_(v9, v10, v8, a4, a5);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && ((mFraction = self->mFraction, objc_msgSend_fraction(v5, v6, v7), mFraction == v11) || vabdd_f64(mFraction, v11) < fabs(v11 * 0.000000999999997)) && (mColor = self->mColor, objc_msgSend_color(v5, v9, v10), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(mColor) = objc_msgSend_isEqual_(mColor, v14, v13), v13, mColor))
  {
    objc_msgSend_inflection(v5, v15, v16);
    *&v17 = v17;
    mInflection = self->mInflection;
    v19 = *&v17 == mInflection;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableGradientStop, a2, a3);
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_fraction(self, v8, v9);
  v11 = v10;
  objc_msgSend_inflection(self, v12, v13);
  v16 = objc_msgSend_initWithColor_fraction_inflection_(v4, v14, v7, v11, v15);

  return v16;
}

- (TSDGradientStop)gradientStopWithColor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  objc_msgSend_fraction(self, v6, v7);
  v9 = v8;
  objc_msgSend_inflection(self, v10, v11);
  v14 = objc_msgSend_gradientStopWithColor_fraction_inflection_(v5, v12, v4, v9, v13);

  return v14;
}

- (TSDGradientStop)gradientStopWithInflection:(double)a3
{
  v5 = objc_msgSend_color(self, a2, v3);
  objc_msgSend_fraction(self, v6, v7);
  v9 = objc_msgSend_gradientStopWithColor_fraction_inflection_(TSDGradientStop, v8, v5);

  return v9;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_color(self, v8, v9);
  v13 = objc_msgSend_color(v7, v11, v12);
  v15 = objc_msgSend_blendedColorWithFraction_ofColor_(v10, v14, v13, a3);

  objc_msgSend_fraction(self, v16, v17);
  objc_msgSend_fraction(v7, v18, v19);
  TSUMixFloats();
  v21 = objc_msgSend_gradientStopWithColor_fraction_(TSDGradientStop, v20, v15);

  return v21;
}

@end