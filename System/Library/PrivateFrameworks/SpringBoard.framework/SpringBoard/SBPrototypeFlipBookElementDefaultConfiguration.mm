@interface SBPrototypeFlipBookElementDefaultConfiguration
- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)mode;
- (void)configureLayoutMode:(int64_t)mode withDescriptions:(id)descriptions;
@end

@implementation SBPrototypeFlipBookElementDefaultConfiguration

- (id)componentFlipBookDescriptionsForLayoutMode:(int64_t)mode
{
  layoutModeToDescriptions = self->_layoutModeToDescriptions;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v5 = [(NSMutableDictionary *)layoutModeToDescriptions objectForKey:v4];

  return v5;
}

- (void)configureLayoutMode:(int64_t)mode withDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  layoutModeToDescriptions = self->_layoutModeToDescriptions;
  if (!layoutModeToDescriptions)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = self->_layoutModeToDescriptions;
    self->_layoutModeToDescriptions = dictionary;

    layoutModeToDescriptions = self->_layoutModeToDescriptions;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  [(NSMutableDictionary *)layoutModeToDescriptions setObject:descriptionsCopy forKey:v9];
}

@end