@interface SBHImmutableIconGridSizeClassIconImageInfoMap
- (SBHImmutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)a3;
@end

@implementation SBHImmutableIconGridSizeClassIconImageInfoMap

- (SBHImmutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHImmutableIconGridSizeClassIconImageInfoMap;
  v5 = [(SBHIconGridSizeClassIconImageInfoMap *)&v9 initWithIconImageInfos:v4];
  if (v5)
  {
    v6 = [v4 copy];
    iconImageInfos = v5->_iconImageInfos;
    v5->_iconImageInfos = v6;
  }

  return v5;
}

@end