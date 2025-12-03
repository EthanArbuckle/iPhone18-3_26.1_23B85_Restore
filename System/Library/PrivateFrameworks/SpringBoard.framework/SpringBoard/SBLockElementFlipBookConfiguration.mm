@interface SBLockElementFlipBookConfiguration
- (SBLockElementFlipBookConfiguration)init;
- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)mode;
- (void)configureLayoutMode:(int64_t)mode withDescriptions:(id)descriptions;
@end

@implementation SBLockElementFlipBookConfiguration

- (SBLockElementFlipBookConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SBLockElementFlipBookConfiguration;
  v2 = [(SBLockElementFlipBookConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    descriptions = v2->_descriptions;
    v2->_descriptions = v3;
  }

  return v2;
}

- (void)configureLayoutMode:(int64_t)mode withDescriptions:(id)descriptions
{
  descriptions = self->_descriptions;
  v6 = MEMORY[0x277CCABB0];
  descriptionsCopy = descriptions;
  v8 = [v6 numberWithInteger:mode];
  [(NSMutableDictionary *)descriptions setObject:descriptionsCopy forKey:v8];
}

- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)mode
{
  descriptions = self->_descriptions;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v5 = [(NSMutableDictionary *)descriptions objectForKey:v4];

  return v5;
}

@end