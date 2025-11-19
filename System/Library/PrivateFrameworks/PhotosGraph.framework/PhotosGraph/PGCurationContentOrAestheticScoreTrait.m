@interface PGCurationContentOrAestheticScoreTrait
- (PGCurationContentOrAestheticScoreTrait)initWithMinimumContentScore:(double)a3 minimumAestheticScore:(double)a4;
@end

@implementation PGCurationContentOrAestheticScoreTrait

- (PGCurationContentOrAestheticScoreTrait)initWithMinimumContentScore:(double)a3 minimumAestheticScore:(double)a4
{
  v9.receiver = self;
  v9.super_class = PGCurationContentOrAestheticScoreTrait;
  v6 = [(PGCurationTrait *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PGCurationTrait *)v6 setMinimumScore:a3];
    v7->_minimumAestheticScore = a4;
  }

  return v7;
}

@end