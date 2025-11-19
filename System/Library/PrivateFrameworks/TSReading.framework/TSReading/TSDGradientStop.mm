@interface TSDGradientStop
+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4;
+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5;
- (BOOL)isEqual:(id)a3;
- (TSDGradientStop)gradientStopWithColor:(id)a3;
- (TSDGradientStop)gradientStopWithInflection:(double)a3;
- (TSDGradientStop)initWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5;
- (TSDGradientStop)initWithGradientStop:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_setColor:(id)a3;
@end

@implementation TSDGradientStop

- (TSDGradientStop)initWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5
{
  v11.receiver = self;
  v11.super_class = TSDGradientStop;
  v8 = [(TSDGradientStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TSDGradientStop *)v8 p_setColor:a3];
    [(TSDGradientStop *)v9 p_setFraction:a4];
    [(TSDGradientStop *)v9 p_setInflection:a5];
  }

  return v9;
}

- (TSDGradientStop)initWithGradientStop:(id)a3
{
  if (self)
  {
    v4 = self;
    v5 = [a3 color];
    [a3 fraction];
    v7 = v6;
    [a3 inflection];

    return [(TSDGradientStop *)v4 initWithColor:v5 fraction:v7 inflection:v8];
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDGradientStop;
  [(TSDGradientStop *)&v3 dealloc];
}

+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4
{
  v4 = [[a1 alloc] initWithColor:a3 fraction:a4 inflection:0.5];

  return v4;
}

+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5
{
  v5 = [[a1 alloc] initWithColor:a3 fraction:a4 inflection:a5];

  return v5;
}

- (unint64_t)hash
{
  [(TSUColor *)self->mColor hash];
  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      v5 = v4;
      [v4 fraction];
      if (v6 == self->mFraction)
      {
        LODWORD(v4) = -[TSUColor isEqual:](self->mColor, "isEqual:", [v5 color]);
        if (v4)
        {
          [v5 inflection];
          LOBYTE(v4) = v7 == self->mInflection;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (void)p_setColor:(id)a3
{
  v5 = a3;

  self->mColor = a3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableGradientStop allocWithZone:a3];
  v5 = [(TSDGradientStop *)self color];
  [(TSDGradientStop *)self fraction];
  v7 = v6;
  [(TSDGradientStop *)self inflection];

  return [(TSDGradientStop *)v4 initWithColor:v5 fraction:v7 inflection:v8];
}

- (TSDGradientStop)gradientStopWithColor:(id)a3
{
  v5 = objc_opt_class();
  [(TSDGradientStop *)self fraction];
  v7 = v6;
  [(TSDGradientStop *)self inflection];

  return [v5 gradientStopWithColor:a3 fraction:v7 inflection:v8];
}

- (TSDGradientStop)gradientStopWithInflection:(double)a3
{
  v4 = [(TSDGradientStop *)self color];
  [(TSDGradientStop *)self fraction];

  return [TSDGradientStop gradientStopWithColor:"gradientStopWithColor:fraction:inflection:" fraction:v4 inflection:?];
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TSDGradientStop_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDGradientStop *__52__TSDGradientStop_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [objc_msgSend(*(a1 + 40) "color")];
  [*(a1 + 40) fraction];
  v5 = v4;
  [v2 fraction];
  v7 = TSDMixFloats(v5, v6, *(a1 + 48));

  return [TSDGradientStop gradientStopWithColor:v3 fraction:v7];
}

@end