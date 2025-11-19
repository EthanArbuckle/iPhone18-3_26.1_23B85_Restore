@interface SBLockElementFlipBookConfiguration
- (SBLockElementFlipBookConfiguration)init;
- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)a3;
- (void)configureLayoutMode:(int64_t)a3 withDescriptions:(id)a4;
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

- (void)configureLayoutMode:(int64_t)a3 withDescriptions:(id)a4
{
  descriptions = self->_descriptions;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(NSMutableDictionary *)descriptions setObject:v7 forKey:v8];
}

- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)a3
{
  descriptions = self->_descriptions;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)descriptions objectForKey:v4];

  return v5;
}

@end