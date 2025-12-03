@interface TLKStars
- (void)setStarRating:(double)rating;
@end

@implementation TLKStars

- (void)setStarRating:(double)rating
{
  if (self->_starRating != rating)
  {
    self->_starRating = rating;
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

@end