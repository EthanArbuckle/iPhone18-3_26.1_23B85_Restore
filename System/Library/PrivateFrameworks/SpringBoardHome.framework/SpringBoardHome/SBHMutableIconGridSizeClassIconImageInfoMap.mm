@interface SBHMutableIconGridSizeClassIconImageInfoMap
- (SBHMutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)infos;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIconImageInfo:(SBIconImageInfo *)info forGridSizeClass:(id)class;
@end

@implementation SBHMutableIconGridSizeClassIconImageInfoMap

- (SBHMutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)infos
{
  infosCopy = infos;
  v9.receiver = self;
  v9.super_class = SBHMutableIconGridSizeClassIconImageInfoMap;
  v5 = [(SBHIconGridSizeClassIconImageInfoMap *)&v9 initWithIconImageInfos:infosCopy];
  if (v5)
  {
    v6 = [infosCopy mutableCopy];
    iconImageInfos = v5->_iconImageInfos;
    v5->_iconImageInfos = v6;
  }

  return v5;
}

- (void)setIconImageInfo:(SBIconImageInfo *)info forGridSizeClass:(id)class
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  infoCopy = info;
  if (!self->_iconImageInfos)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    iconImageInfos = self->_iconImageInfos;
    self->_iconImageInfos = v13;
  }

  v15 = [MEMORY[0x1E696B098] sbh_valueWithSBIconImageInfo:{v11, v10, v9, v8}];
  [(NSMutableDictionary *)self->_iconImageInfos setObject:v15 forKey:infoCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(SBHIconGridSizeClassIconImageInfoMap *)SBHImmutableIconGridSizeClassIconImageInfoMap allocWithZone:zone];

  return [(SBHIconGridSizeClassIconImageInfoMap *)v4 initWithIconGridSizeClassIconImageInfoMap:self];
}

@end