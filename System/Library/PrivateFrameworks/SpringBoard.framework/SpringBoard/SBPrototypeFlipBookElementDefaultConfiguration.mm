@interface SBPrototypeFlipBookElementDefaultConfiguration
- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)a3;
- (void)configureLayoutMode:(int64_t)a3 withDescriptions:(id)a4;
@end

@implementation SBPrototypeFlipBookElementDefaultConfiguration

- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)a3
{
  layoutModeToDescriptions = self->_layoutModeToDescriptions;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)layoutModeToDescriptions objectForKey:v4];

  return v5;
}

- (void)configureLayoutMode:(int64_t)a3 withDescriptions:(id)a4
{
  v10 = a4;
  layoutModeToDescriptions = self->_layoutModeToDescriptions;
  if (!layoutModeToDescriptions)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = self->_layoutModeToDescriptions;
    self->_layoutModeToDescriptions = v7;

    layoutModeToDescriptions = self->_layoutModeToDescriptions;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)layoutModeToDescriptions setObject:v10 forKey:v9];
}

@end