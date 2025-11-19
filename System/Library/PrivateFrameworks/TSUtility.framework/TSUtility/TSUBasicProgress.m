@interface TSUBasicProgress
- (TSUBasicProgress)initWithMaxValue:(double)a3;
- (void)dealloc;
- (void)setIndeterminate:(BOOL)a3;
- (void)setValue:(double)a3;
@end

@implementation TSUBasicProgress

- (TSUBasicProgress)initWithMaxValue:(double)a3
{
  v7.receiver = self;
  v7.super_class = TSUBasicProgress;
  v4 = [(TSUProgress *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(TSUBasicProgressStorage);
    v4->mStorage = v5;
    [(TSUBasicProgressStorage *)v5 setMaxValue:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUBasicProgress;
  [(TSUProgress *)&v3 dealloc];
}

- (void)setValue:(double)a3
{
  [(TSUBasicProgressStorage *)self->mStorage setValue:a3];

  [(TSUProgress *)self protected_progressDidChange];
}

- (void)setIndeterminate:(BOOL)a3
{
  [(TSUBasicProgressStorage *)self->mStorage setIndeterminate:a3];

  [(TSUProgress *)self protected_progressDidChange];
}

@end