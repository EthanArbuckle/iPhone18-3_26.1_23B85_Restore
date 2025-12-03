@interface SUItemReviewStatistics
- (SUItemReviewStatistics)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SUItemReviewStatistics

- (SUItemReviewStatistics)initWithDictionary:(id)dictionary
{
  v13.receiver = self;
  v13.super_class = SUItemReviewStatistics;
  v4 = [(SUItemReviewStatistics *)&v13 init];
  if (v4)
  {
    v5 = [dictionary objectForKey:@"average-user-rating"];
    if (objc_opt_respondsToSelector())
    {
      [v5 floatValue];
      v4->_averageUserRating = v6;
    }

    v7 = [dictionary objectForKey:@"user-rating-count"];
    if (objc_opt_respondsToSelector())
    {
      v4->_numberOfUserRatings = [v7 intValue];
    }

    v8 = [dictionary objectForKey:@"user-rating-count-string"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
    {
      v4->_numberOfUserRatingsString = v8;
    }

    v9 = [dictionary objectForKey:@"user-review-count"];
    if (objc_opt_respondsToSelector())
    {
      numberOfUserRatings = [v9 intValue];
    }

    else
    {
      numberOfUserRatings = v4->_numberOfUserRatings;
    }

    v4->_numberOfUserReviews = numberOfUserRatings;
    numberOfUserRatingsString = [dictionary objectForKey:@"user-review-count-string"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSString *)numberOfUserRatingsString length])
    {
      numberOfUserRatingsString = v4->_numberOfUserRatingsString;
    }

    v4->_numberOfUserReviewsString = numberOfUserRatingsString;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUItemReviewStatistics;
  [(SUItemReviewStatistics *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  *(v5 + 8) = self->_averageUserRating;
  *(v5 + 16) = self->_numberOfUserRatings;
  *(v5 + 24) = [(NSString *)self->_numberOfUserRatingsString copyWithZone:zone];
  *(v5 + 32) = self->_numberOfUserReviews;
  *(v5 + 40) = [(NSString *)self->_numberOfUserReviewsString copyWithZone:zone];
  return v5;
}

@end