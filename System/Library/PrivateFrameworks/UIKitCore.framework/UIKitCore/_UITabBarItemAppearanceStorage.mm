@interface _UITabBarItemAppearanceStorage
- (UIOffset)titleOffset;
- (id)badgeTextAttributesForState:(unint64_t)state;
- (void)enumerateBadgeTextAttributesWithBlock:(id)block;
- (void)setBadgeTextAttributes:(id)attributes forState:(unint64_t)state;
@end

@implementation _UITabBarItemAppearanceStorage

- (void)setBadgeTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  v16 = attributesCopy;
  if (attributesCopy || (v7 = self->_badgeTextAttributesForState, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, attributesCopy = 0, v9))
  {
    if (self->_badgeTextAttributesForState)
    {
      if (attributesCopy)
      {
LABEL_5:
        v10 = [attributesCopy mutableCopy];
        badgeTextAttributesForState = self->_badgeTextAttributesForState;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
        [(NSMutableDictionary *)badgeTextAttributesForState setObject:v10 forKeyedSubscript:v12];

LABEL_8:
        attributesCopy = v16;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = self->_badgeTextAttributesForState;
      self->_badgeTextAttributesForState = v13;

      attributesCopy = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v15 = self->_badgeTextAttributesForState;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)v15 removeObjectForKey:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)badgeTextAttributesForState:(unint64_t)state
{
  badgeTextAttributesForState = self->_badgeTextAttributesForState;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v5 = [(NSMutableDictionary *)badgeTextAttributesForState objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (void)enumerateBadgeTextAttributesWithBlock:(id)block
{
  blockCopy = block;
  badgeTextAttributesForState = self->_badgeTextAttributesForState;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72___UITabBarItemAppearanceStorage_enumerateBadgeTextAttributesWithBlock___block_invoke;
  v7[3] = &unk_1E70F7948;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)badgeTextAttributesForState enumerateKeysAndObjectsUsingBlock:v7];
}

- (UIOffset)titleOffset
{
  horizontal = self->_titleOffset.horizontal;
  vertical = self->_titleOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end