@interface TVPMediaItemProductPlacementInfo
- (TVPMediaItemProductPlacementInfo)initWithLocalizedProductPlacementInfoString:(id)string duration:(id)duration andImageURLStringFormat:(id)format;
- (id)description;
@end

@implementation TVPMediaItemProductPlacementInfo

- (TVPMediaItemProductPlacementInfo)initWithLocalizedProductPlacementInfoString:(id)string duration:(id)duration andImageURLStringFormat:(id)format
{
  stringCopy = string;
  durationCopy = duration;
  formatCopy = format;
  v15.receiver = self;
  v15.super_class = TVPMediaItemProductPlacementInfo;
  v12 = [(TVPMediaItemProductPlacementInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localizedInfoString, string);
    objc_storeStrong(&v13->_duration, duration);
    objc_storeStrong(&v13->_imageUrlStringFormat, format);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localizedInfoString = [(TVPMediaItemProductPlacementInfo *)self localizedInfoString];
  duration = [(TVPMediaItemProductPlacementInfo *)self duration];
  [duration doubleValue];
  v7 = v6;
  imageUrlStringFormat = [(TVPMediaItemProductPlacementInfo *)self imageUrlStringFormat];
  v9 = [v3 stringWithFormat:@"infoString - %@, duration - %f, urlString - %@", localizedInfoString, v7, imageUrlStringFormat];

  return v9;
}

@end