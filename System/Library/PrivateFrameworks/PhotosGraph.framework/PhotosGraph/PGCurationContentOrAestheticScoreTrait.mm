@interface PGCurationContentOrAestheticScoreTrait
- (PGCurationContentOrAestheticScoreTrait)initWithMinimumContentScore:(double)score minimumAestheticScore:(double)aestheticScore;
@end

@implementation PGCurationContentOrAestheticScoreTrait

- (PGCurationContentOrAestheticScoreTrait)initWithMinimumContentScore:(double)score minimumAestheticScore:(double)aestheticScore
{
  v9.receiver = self;
  v9.super_class = PGCurationContentOrAestheticScoreTrait;
  v6 = [(PGCurationTrait *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PGCurationTrait *)v6 setMinimumScore:score];
    v7->_minimumAestheticScore = aestheticScore;
  }

  return v7;
}

@end