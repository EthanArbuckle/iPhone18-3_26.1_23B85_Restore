@interface TLKStars
- (void)setStarRating:(double)a3;
@end

@implementation TLKStars

- (void)setStarRating:(double)a3
{
  if (self->_starRating != a3)
  {
    self->_starRating = a3;
    v4 = [(TLKObject *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKObject *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKObject *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

@end