@interface SBHMutableIconGridSizeClassIconImageInfoMap
- (SBHMutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3 forGridSizeClass:(id)a4;
@end

@implementation SBHMutableIconGridSizeClassIconImageInfoMap

- (SBHMutableIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHMutableIconGridSizeClassIconImageInfoMap;
  v5 = [(SBHIconGridSizeClassIconImageInfoMap *)&v9 initWithIconImageInfos:v4];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    iconImageInfos = v5->_iconImageInfos;
    v5->_iconImageInfos = v6;
  }

  return v5;
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3 forGridSizeClass:(id)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v16 = a3;
  if (!self->_iconImageInfos)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    iconImageInfos = self->_iconImageInfos;
    self->_iconImageInfos = v13;
  }

  v15 = [MEMORY[0x1E696B098] sbh_valueWithSBIconImageInfo:{v11, v10, v9, v8}];
  [(NSMutableDictionary *)self->_iconImageInfos setObject:v15 forKey:v16];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SBHIconGridSizeClassIconImageInfoMap *)SBHImmutableIconGridSizeClassIconImageInfoMap allocWithZone:a3];

  return [(SBHIconGridSizeClassIconImageInfoMap *)v4 initWithIconGridSizeClassIconImageInfoMap:self];
}

@end