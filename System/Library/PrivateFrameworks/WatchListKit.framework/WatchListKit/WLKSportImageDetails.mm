@interface WLKSportImageDetails
- (WLKSportImageDetails)initWithDictionary:(id)a3;
@end

@implementation WLKSportImageDetails

- (WLKSportImageDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WLKSportImageDetails;
  v5 = [(WLKSportImageDetails *)&v13 init];
  if (v5)
  {
    v5->_disableGradient = [v4 wlk_BOOLForKey:@"disableGradient" defaultValue:0];
    v6 = [v4 wlk_numberForKey:@"height"];
    v5->_height = [v6 integerValue];

    v5->_isP3 = [v4 wlk_BOOLForKey:@"isP3" defaultValue:0];
    v7 = [v4 wlk_stringForKey:@"joeColor"];
    joeColor = v5->_joeColor;
    v5->_joeColor = v7;

    v5->_supportsLayeredImage = [v4 wlk_BOOLForKey:@"supportsLayeredImage" defaultValue:0];
    v9 = [v4 wlk_stringForKey:@"url"];
    url = v5->_url;
    v5->_url = v9;

    v11 = [v4 wlk_numberForKey:@"width"];
    v5->_width = [v11 integerValue];
  }

  return v5;
}

@end