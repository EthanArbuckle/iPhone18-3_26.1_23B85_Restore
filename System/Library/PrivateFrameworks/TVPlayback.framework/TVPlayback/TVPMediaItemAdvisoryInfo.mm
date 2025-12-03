@interface TVPMediaItemAdvisoryInfo
- (TVPMediaItemAdvisoryInfo)initWithRatingDescription:(id)description;
- (id)description;
@end

@implementation TVPMediaItemAdvisoryInfo

- (TVPMediaItemAdvisoryInfo)initWithRatingDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = TVPMediaItemAdvisoryInfo;
  v6 = [(TVPMediaItemAdvisoryInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ratingDescription, description);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  ratingName = [(TVPMediaItemAdvisoryInfo *)self ratingName];
  ratingDescription = [(TVPMediaItemAdvisoryInfo *)self ratingDescription];
  v6 = [v3 stringWithFormat:@"ratingName - %@, ratingDescription - %@", ratingName, ratingDescription];

  return v6;
}

@end