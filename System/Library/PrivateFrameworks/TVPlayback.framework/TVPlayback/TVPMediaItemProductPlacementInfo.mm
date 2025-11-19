@interface TVPMediaItemProductPlacementInfo
- (TVPMediaItemProductPlacementInfo)initWithLocalizedProductPlacementInfoString:(id)a3 duration:(id)a4 andImageURLStringFormat:(id)a5;
- (id)description;
@end

@implementation TVPMediaItemProductPlacementInfo

- (TVPMediaItemProductPlacementInfo)initWithLocalizedProductPlacementInfoString:(id)a3 duration:(id)a4 andImageURLStringFormat:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TVPMediaItemProductPlacementInfo;
  v12 = [(TVPMediaItemProductPlacementInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localizedInfoString, a3);
    objc_storeStrong(&v13->_duration, a4);
    objc_storeStrong(&v13->_imageUrlStringFormat, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TVPMediaItemProductPlacementInfo *)self localizedInfoString];
  v5 = [(TVPMediaItemProductPlacementInfo *)self duration];
  [v5 doubleValue];
  v7 = v6;
  v8 = [(TVPMediaItemProductPlacementInfo *)self imageUrlStringFormat];
  v9 = [v3 stringWithFormat:@"infoString - %@, duration - %f, urlString - %@", v4, v7, v8];

  return v9;
}

@end