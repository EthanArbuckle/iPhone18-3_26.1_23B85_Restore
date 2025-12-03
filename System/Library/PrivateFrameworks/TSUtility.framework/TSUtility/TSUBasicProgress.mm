@interface TSUBasicProgress
- (TSUBasicProgress)initWithMaxValue:(double)value;
- (void)dealloc;
- (void)setIndeterminate:(BOOL)indeterminate;
- (void)setValue:(double)value;
@end

@implementation TSUBasicProgress

- (TSUBasicProgress)initWithMaxValue:(double)value
{
  v7.receiver = self;
  v7.super_class = TSUBasicProgress;
  v4 = [(TSUProgress *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(TSUBasicProgressStorage);
    v4->mStorage = v5;
    [(TSUBasicProgressStorage *)v5 setMaxValue:value];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUBasicProgress;
  [(TSUProgress *)&v3 dealloc];
}

- (void)setValue:(double)value
{
  [(TSUBasicProgressStorage *)self->mStorage setValue:value];

  [(TSUProgress *)self protected_progressDidChange];
}

- (void)setIndeterminate:(BOOL)indeterminate
{
  [(TSUBasicProgressStorage *)self->mStorage setIndeterminate:indeterminate];

  [(TSUProgress *)self protected_progressDidChange];
}

@end