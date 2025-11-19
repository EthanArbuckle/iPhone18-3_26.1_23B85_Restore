@interface TVPMediaItemAdvisoryInfo
- (TVPMediaItemAdvisoryInfo)initWithRatingDescription:(id)a3;
- (id)description;
@end

@implementation TVPMediaItemAdvisoryInfo

- (TVPMediaItemAdvisoryInfo)initWithRatingDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TVPMediaItemAdvisoryInfo;
  v6 = [(TVPMediaItemAdvisoryInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ratingDescription, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TVPMediaItemAdvisoryInfo *)self ratingName];
  v5 = [(TVPMediaItemAdvisoryInfo *)self ratingDescription];
  v6 = [v3 stringWithFormat:@"ratingName - %@, ratingDescription - %@", v4, v5];

  return v6;
}

@end