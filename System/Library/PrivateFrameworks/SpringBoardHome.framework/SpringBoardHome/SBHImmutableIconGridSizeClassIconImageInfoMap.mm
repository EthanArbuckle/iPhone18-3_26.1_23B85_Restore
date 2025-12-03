@interface SBHImmutableIconGridSizeClassIconImageInfoMap
- (SBHImmutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)infos;
@end

@implementation SBHImmutableIconGridSizeClassIconImageInfoMap

- (SBHImmutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)infos
{
  infosCopy = infos;
  v9.receiver = self;
  v9.super_class = SBHImmutableIconGridSizeClassIconImageInfoMap;
  v5 = [(SBHIconGridSizeClassIconImageInfoMap *)&v9 initWithIconImageInfos:infosCopy];
  if (v5)
  {
    v6 = [infosCopy copy];
    iconImageInfos = v5->_iconImageInfos;
    v5->_iconImageInfos = v6;
  }

  return v5;
}

@end