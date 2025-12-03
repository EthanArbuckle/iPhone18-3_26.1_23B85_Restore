@interface SBHIconStateUnarchivingSlugIconSource
- (id)leafIconForIdentifier:(id)identifier;
@end

@implementation SBHIconStateUnarchivingSlugIconSource

- (id)leafIconForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_leafAppIcons objectForKey:identifierCopy];
  if (!v5)
  {
    v5 = [(SBLeafIcon *)[SBHApplicationIcon alloc] initWithLeafIdentifier:identifierCopy applicationBundleID:identifierCopy];
    leafAppIcons = self->_leafAppIcons;
    if (!leafAppIcons)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = self->_leafAppIcons;
      self->_leafAppIcons = v7;

      leafAppIcons = self->_leafAppIcons;
    }

    [(NSMutableDictionary *)leafAppIcons setObject:v5 forKey:identifierCopy];
  }

  return v5;
}

@end