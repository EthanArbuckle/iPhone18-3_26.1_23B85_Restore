@interface WLKSportImageDetails
- (WLKSportImageDetails)initWithDictionary:(id)dictionary;
@end

@implementation WLKSportImageDetails

- (WLKSportImageDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = WLKSportImageDetails;
  v5 = [(WLKSportImageDetails *)&v13 init];
  if (v5)
  {
    v5->_disableGradient = [dictionaryCopy wlk_BOOLForKey:@"disableGradient" defaultValue:0];
    v6 = [dictionaryCopy wlk_numberForKey:@"height"];
    v5->_height = [v6 integerValue];

    v5->_isP3 = [dictionaryCopy wlk_BOOLForKey:@"isP3" defaultValue:0];
    v7 = [dictionaryCopy wlk_stringForKey:@"joeColor"];
    joeColor = v5->_joeColor;
    v5->_joeColor = v7;

    v5->_supportsLayeredImage = [dictionaryCopy wlk_BOOLForKey:@"supportsLayeredImage" defaultValue:0];
    v9 = [dictionaryCopy wlk_stringForKey:@"url"];
    url = v5->_url;
    v5->_url = v9;

    v11 = [dictionaryCopy wlk_numberForKey:@"width"];
    v5->_width = [v11 integerValue];
  }

  return v5;
}

@end