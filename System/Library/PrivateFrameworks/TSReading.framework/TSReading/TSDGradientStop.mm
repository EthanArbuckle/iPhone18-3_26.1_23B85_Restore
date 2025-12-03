@interface TSDGradientStop
+ (id)gradientStopWithColor:(id)color fraction:(double)fraction;
+ (id)gradientStopWithColor:(id)color fraction:(double)fraction inflection:(double)inflection;
- (BOOL)isEqual:(id)equal;
- (TSDGradientStop)gradientStopWithColor:(id)color;
- (TSDGradientStop)gradientStopWithInflection:(double)inflection;
- (TSDGradientStop)initWithColor:(id)color fraction:(double)fraction inflection:(double)inflection;
- (TSDGradientStop)initWithGradientStop:(id)stop;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_setColor:(id)color;
@end

@implementation TSDGradientStop

- (TSDGradientStop)initWithColor:(id)color fraction:(double)fraction inflection:(double)inflection
{
  v11.receiver = self;
  v11.super_class = TSDGradientStop;
  v8 = [(TSDGradientStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TSDGradientStop *)v8 p_setColor:color];
    [(TSDGradientStop *)v9 p_setFraction:fraction];
    [(TSDGradientStop *)v9 p_setInflection:inflection];
  }

  return v9;
}

- (TSDGradientStop)initWithGradientStop:(id)stop
{
  if (self)
  {
    selfCopy = self;
    color = [stop color];
    [stop fraction];
    v7 = v6;
    [stop inflection];

    return [(TSDGradientStop *)selfCopy initWithColor:color fraction:v7 inflection:v8];
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDGradientStop;
  [(TSDGradientStop *)&v3 dealloc];
}

+ (id)gradientStopWithColor:(id)color fraction:(double)fraction
{
  v4 = [[self alloc] initWithColor:color fraction:fraction inflection:0.5];

  return v4;
}

+ (id)gradientStopWithColor:(id)color fraction:(double)fraction inflection:(double)inflection
{
  v5 = [[self alloc] initWithColor:color fraction:fraction inflection:inflection];

  return v5;
}

- (unint64_t)hash
{
  [(TSUColor *)self->mColor hash];
  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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

- (void)p_setColor:(id)color
{
  colorCopy = color;

  self->mColor = color;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableGradientStop allocWithZone:zone];
  color = [(TSDGradientStop *)self color];
  [(TSDGradientStop *)self fraction];
  v7 = v6;
  [(TSDGradientStop *)self inflection];

  return [(TSDGradientStop *)v4 initWithColor:color fraction:v7 inflection:v8];
}

- (TSDGradientStop)gradientStopWithColor:(id)color
{
  v5 = objc_opt_class();
  [(TSDGradientStop *)self fraction];
  v7 = v6;
  [(TSDGradientStop *)self inflection];

  return [v5 gradientStopWithColor:color fraction:v7 inflection:v8];
}

- (TSDGradientStop)gradientStopWithInflection:(double)inflection
{
  color = [(TSDGradientStop *)self color];
  [(TSDGradientStop *)self fraction];

  return [TSDGradientStop gradientStopWithColor:"gradientStopWithColor:fraction:inflection:" fraction:color inflection:?];
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TSDGradientStop_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
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