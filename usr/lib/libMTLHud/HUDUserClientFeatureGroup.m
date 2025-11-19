@interface HUDUserClientFeatureGroup
- (HUDUserClientFeatureGroup)initWithCategory:(unsigned int)a3;
@end

@implementation HUDUserClientFeatureGroup

- (HUDUserClientFeatureGroup)initWithCategory:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = HUDUserClientFeatureGroup;
  v4 = [(HUDUserClientFeatureGroup *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_category = a3;
    v6 = objc_opt_new();
    features = v5->_features;
    v5->_features = v6;
  }

  return v5;
}

@end